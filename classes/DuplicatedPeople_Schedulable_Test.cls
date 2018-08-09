@isTest
private class DuplicatedPeople_Schedulable_Test {

	@isTest
	private static void testSchedulerMethod() {

		Test.startTest();
		Id jobId = DuplicatedPeople_Schedulable.SchedulerMethod();
		Test.stopTest();

		List<CronTrigger> cTrigger = [SELECT Id, CronExpression
		                        FROM CronTrigger];

		DuplicatedUsersBatch_Settings__c settingsBatch = DuplicatedUsersBatch_Settings__c.getOrgDefaults();
		
		System.assertEquals(1, cTrigger.size());
		System.assertEquals(jobId, cTrigger.get(0).Id);
		System.assertEquals(settingsBatch.StringForTimeInterval__c, cTrigger.get(0).CronExpression);
	}

	@isTest
	private static void ifSchedulerMethodIsColledMoreThanOnce_itShouldScheduleOnlyOneJob() {

		Test.startTest();
		Id firstJobId = DuplicatedPeople_Schedulable.SchedulerMethod();
		Id secondJobId = DuplicatedPeople_Schedulable.SchedulerMethod();
		Test.stopTest();

		List<CronTrigger> cTrigger = [SELECT Id, CronExpression
		                        FROM CronTrigger];
		
		System.assertEquals(1, cTrigger.size());
		System.assertEquals(firstJobId, cTrigger.get(0).Id);
	}

	@isTest
	private static void testExceptionHandling() {
		//============================= Set Data Test ==================================
		DuplicatedUsersBatch_Settings__c batchSettings = DuplicatedUsersBatch_Settings__c.getOrgDefaults();
		batchSettings.StringForTimeInterval__c = 'Fail cron expression';
		Database.update(batchSettings);
		//============================= End Data Test ==================================

		Test.startTest();
		Id jobId = DuplicatedPeople_Schedulable.SchedulerMethod();
		Test.stopTest();

		List<ExceptionLog__c> exLogs = [SELECT ClassName__c, MethodName__c, ExceptionDetails__c,
										ExceptionCode__c, ExceptionDescription__c, ExceptionType__c
		                                FROM ExceptionLog__c];

		System.assertEquals(1, exLogs.size());
	}

	//===================================================================================

	@testSetup
	static void setTestData() {
		DuplicatedUsersBatch_Settings__c batchSettings;
		batchSettings = new DuplicatedUsersBatch_Settings__c();
		batchSettings.Hours__c = 25;
		batchSettings.JobName__c = 'Duplicated People';
		batchSettings.StringForTimeInterval__c = '0 0 0 ? * *';
		batchSettings.BatchSize__c = 200;
		Database.insert(batchSettings);
	}
}