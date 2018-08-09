/**
 * @author Esteban Romero (esteban.romero@accenture.com)
 * @version 0.0.0
 * @description Class to schedule DuplicatedUsersBatch batchable class.
 * Bug 213353: [Sales Team] Picklist showing wrong record when adding sales team member.
 *
 **/
global class DuplicatedPeople_Schedulable implements Schedulable {
	private static DuplicatedUsersBatch_Settings__c settingsBatch = DuplicatedUsersBatch_Settings__c.getOrgDefaults();

	/**
	 * @description Executes the scheduled Apex job. 
	 * @param		sc contains the job ID
	 */ 
	global void execute(SchedulableContext sc) {
		DuplicatedUsersBatch batch = new  DuplicatedUsersBatch();
        Id batchId = database.executeBatch(batch, (Integer)settingsBatch.BatchSize__c);
	}

	/**
      * @description       Method to schedule the batch class
      * @param             void
      * @return            Id
    */
    public static Id SchedulerMethod(){
        
        String jobId;
        list<CronTrigger> ct =new list<CronTrigger>();
        try{		
            //get list of job in crontab
            List<CronJobDetail> cronList =  [SELECT Id, Name, JobType FROM CronJobDetail];       
            
            //check if already exist a job running with the same name, if exists update this
            for(CronJobDetail cronJob:cronList){
                if( settingsBatch.JobName__c.equals( cronJob.Name ) ){
                    jobId = cronJob.id;
                    break;
                }    
            }    

            ct = [SELECT Id, CronExpression, TimesTriggered, NextFireTime,State FROM CronTrigger WHERE CronJobDetailId = :jobId]; 

            DuplicatedPeople_Schedulable  scheduleBatch = new DuplicatedPeople_Schedulable();    
            //get string time interval from custom setting ProcessSurveyResponsesBatchSettings__c to schedule the job 
            String timeinterval = settingsBatch.StringForTimeInterval__c;
            
            //check if the same job was already running, if not schedule the job
            if(ct.size() == 0){
                jobId = System.schedule(settingsBatch.JobName__c, timeinterval , scheduleBatch);
            }
            //return jobId scheduled
            return jobId;
        }catch(Exception ex){
            UTIL_LoggingService.logHandledException(ex, Userinfo.getOrganizationId(),UTIL_Constants.APPLICATION_NAME_MMS, 
                                                    'DuplicatedPeople_Schedulable', 'SchedulerMethod',null,LoggingLevel.ERROR);
            //return null if some error happened and the job wasn't launched
            return null;
        } 
    }
}