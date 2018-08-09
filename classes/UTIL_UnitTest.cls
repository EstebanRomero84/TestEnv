public class UTIL_UnitTest  {
    public static string testUserName= 'dummyTest.UserName@accenture.com';
    public static string testUserName2= 'dummyTest.UserName2@accenture.com';

	public static People__c getPeople_c() {
        //user userrecord= getMMSAdminUser();
        //insert userrecord;
        People__c peopleSample=new People__c();
        peopleSample.Name='Testing';
        peopleSample.External_Name__c = testUserName;
        peopleSample.Employment_Status__c='Active';
        peopleSample.Employee_Number__c = '10101010';
        peopleSample.PeopleKey__c = '007';
        //peopleSample.MMS_User__c=userrecord.id;
        return peopleSample;
    }
    
    public static People__c getPeople() {
        user userrecordnew= getStandardMMSADIMNUser();
        insert userrecordnew;
        People__c peopleSample=new People__c();
        peopleSample.Name='UsrRlTst';
        peopleSample.External_Name__c = testUserName;
        //peopleSample.MMS_User__c=userrecordnew.id;
        
        return peopleSample;
    }
    
    public static People__c createPeople(Id dummyUser){
        //Create People record
        People__c ppl = new People__c();
        ppl.Name = 'dummy.user';
        ppl.Employee_Number__c = '1111111';
        ppl.Employment_Status__c='Active';
        ppl.PeopleKey__c = '007';
        //ppl.MMS_User__c = dummyUser;
        insert ppl;
        return ppl;
    }
    
    public static People__c createDummyPeople(Id dummyActiveUser){
        //Create People record
        People__c activePeople = new People__c();
        activePeople.Name = 'dummy.Activeuser';
        activePeople.Employee_Number__c = '11248880';
        activePeople.Employment_Status__c='Active';
        activePeople.PeopleKey__c = '007';
        //activePeople.MMS_User__c = dummyActiveUser;
        insert activePeople;
        return activePeople;
    }

	public static User getMMSAdminUser(){ 
        String orgId = UserInfo.getOrganizationId();
        String dateString = String.valueof(Datetime.now()).replace(' ','').replace(':','').replace('-','');
        Integer randomInt = Integer.valueOf(math.rint(math.random()*1000000));
        String uniqueName =orgId + dateString + randomInt;
        String aliasString = uniqueName.substring(18, 23);
        Id MMSAdminId = [Select Id,name from Profile Where Name = 'MMS Admin' Limit 1].Id;
        User MMSAdminUser = new User(
            alias = aliasString, 
            email = 'asd@test.com',
            emailencodingkey = 'UTF-8',
            lastname = 'Testing', 
            languagelocalekey = 'en_US',
            localesidkey = 'en_US',
            profileid = MMSAdminId,
            //Enterprise_ID__c = 'Testing',
            timezonesidkey = 'America/Chicago',
            username = uniqueName + testUserName2,
			IsActive = True);
        
        return MMSAdminUser;
    }

	public static User getStandardUser(){ 
        String orgId = UserInfo.getOrganizationId();
        String dateString = String.valueof(Datetime.now()).replace(' ','').replace(':','').replace('-','');
        Integer randomInt = Integer.valueOf(math.rint(math.random()*1000000));
        String uniqueName =orgId + dateString + randomInt;
        String aliasString = uniqueName.substring(18, 23);
        Id sysAdminId = [Select Id from Profile Where Name = 'MMS Admin' Limit 1].Id;
        User usr = new User(
            alias = aliasString, 
            email= 'asd@test.com',
            emailencodingkey='UTF-8',
            lastname='UsrRlTst', 
            languagelocalekey='en_US',
            localesidkey='en_US',
            profileid = sysAdminId,
            //Enterprise_ID__c = 'UsrRlTst',
            //timezonesidkey='Europe/London',
            username= uniqueName+testUserName,IsActive = True);
        return usr;
    }

	public static User getStandardMMSADIMNUser(){ 
        String orgId = UserInfo.getOrganizationId();
        String dateString = String.valueof(Datetime.now()).replace(' ','').replace(':','').replace('-','');
        Integer randomInt = Integer.valueOf(math.rint(math.random()*1000000));
        String uniqueName =orgId + dateString + randomInt;
        String aliasString = uniqueName.substring(18, 23);
        Id sysAdminId = [Select Id from Profile Where Name = 'MMS Admin' Limit 1].Id;
        User usr = new User(
            alias = aliasString, 
            email= 'asd@test.com',
            emailencodingkey='UTF-8',
            lastname='UsrRlTst1', 
            languagelocalekey='en_US',
            localesidkey='en_US',
            profileid = sysAdminId,
            //Enterprise_ID__c = 'UsrRlTst1',
            timezonesidkey='Europe/London',
            username= uniqueName+testUserName,IsActive = True);
        return usr;
    }
}