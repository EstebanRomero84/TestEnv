@isTest
private class DuplicatedPeople_Test {

	@isTest
	private static void ifNewPeopleWithEmploymentStatusActive_HasPreexistingDuplicatesWithEmploymentStatusActive_DuplicatesStatusShouldBeUpdatedToWithdrawn() {
		//============================= Set Data Test ==================================
		Integer count = 5;
		Integer copies = 2;
		setNewPeople(UTIL_Constants.ACTIVE, count);
		setDuplicatedPeople(UTIL_Constants.ACTIVE, count, copies, timeInterval);

		//============================= End Data Test ==================================

		Test.startTest();
		Database.executeBatch(new DuplicatedUsersBatch());
		Test.stopTest();

		List<People__c> duplicatedPeople_DB = [SELECT Id, Name, Employment_Status__c, CreatedDate
		                                       FROM People__c
		                                       WHERE Id IN :duplicatedPeopleList
		                                       ORDER By CreatedDate DESC
		                                      ];

		for (Integer i = 0; i<count; i++) {
			System.assertEquals(UTIL_Constants.WITHDRAWN, duplicatedPeople_DB.get(i * copies).Employment_Status__c,
			                    'Employment status didn´t update to Withdrawn');
		}
	}

	@isTest
	private static void ifNewPeopleWithEmploymentStatusActive_HasPreexistingDuplicatesWithEmploymentStatusEmpty_DuplicatesStatusShouldBeUpdatedToFormerContractor() {
		//============================= Set Data Test ==================================
		Integer count = 5;
		Integer copies = 2;
		setNewPeople(UTIL_Constants.ACTIVE, count);
		setDuplicatedPeople(UTIL_Constants.EMPTY, count, copies, timeInterval);

		//============================= End Data Test ==================================

		Test.startTest();
		Database.executeBatch(new DuplicatedUsersBatch());
		Test.stopTest();

		List<People__c> duplicatedPeople_DB = [SELECT Id, Name, Employment_Status__c, CreatedDate
		                                       FROM People__c
		                                       WHERE Id IN :duplicatedPeopleList
		                                       ORDER By CreatedDate DESC
		                                      ];

		for (Integer i = 0; i<count; i++) {
			System.assertEquals(UTIL_Constants.FORMERCONTRACTOR, duplicatedPeople_DB.get(i * copies).Employment_Status__c,
			                    'Employment status didn´t update to Former Contractor');
		}

	}

	@isTest
	private static void ifNewPeopleWithEmploymentStatusEmpty_HasPreexistingDuplicatesWithEmploymentStatusActive_DuplicatesStatusShouldBeUpdatedToWithdrawn() {
		//============================= Set Data Test ==================================
		Integer count = 5;
		Integer copies = 2;
		setNewPeople(UTIL_Constants.EMPTY, count);
		setDuplicatedPeople(UTIL_Constants.ACTIVE, count, copies, timeInterval);

		//============================= End Data Test ==================================

		Test.startTest();
		Database.executeBatch(new DuplicatedUsersBatch());
		Test.stopTest();

		List<People__c> duplicatedPeople_DB = [SELECT Id, Name, Employment_Status__c, CreatedDate
		                                       FROM People__c
		                                       WHERE Id IN :duplicatedPeopleList
		                                       ORDER By CreatedDate DESC
		                                      ];

		for (Integer i = 0; i<count; i++) {
			System.assertEquals(UTIL_Constants.WITHDRAWN, duplicatedPeople_DB.get(i * copies).Employment_Status__c,
			                    'Employment status didn´t update to Withdrawn');
		}

	}

	@isTest
	private static void ifNewPeopleWithEmploymentStatusEmpty_HasPreexistingDuplicatesWithEmploymentStatusEmpty_DuplicatesStatusShouldBeUpdatedToFormerContractor() {
		//============================= Set Data Test ==================================
		Integer count = 5;
		Integer copies = 2;
		setNewPeople(UTIL_Constants.EMPTY, count);
		setDuplicatedPeople(UTIL_Constants.EMPTY, count, copies, timeInterval);

		//============================= End Data Test ==================================

		Test.startTest();
		Database.executeBatch(new DuplicatedUsersBatch());
		Test.stopTest();

		List<People__c> duplicatedPeople_DB = [SELECT Id, Name, Employment_Status__c, CreatedDate
		                                       FROM People__c
		                                       WHERE Id IN :duplicatedPeopleList
		                                       ORDER By CreatedDate DESC
		                                      ];

		for (Integer i = 0; i<count; i++) {
			System.assertEquals(UTIL_Constants.FORMERCONTRACTOR, duplicatedPeople_DB.get(i * copies).Employment_Status__c,
			                    'Employment status didn´t update to Former Contractor');
		}

	}

	@isTest
	private static void whenTwoOrMorePeopleWithSameEIDAreCreatedWithinBatchTimeInterval_theOldersShouldBeTreatedAsDuplicates() {
		//============================= Set Data Test ==================================
		Integer copies = 3;
		newPeopleList = createPeople(UTIL_Constants.ACTIVE, 1, copies);
		Database.insert(newPeopleList);
		//============================= End Data Test ==================================

		Test.startTest();
		Database.executeBatch(new DuplicatedUsersBatch());
		Test.stopTest();

		List<People__c> actualPeople_DB = [SELECT Id, Name, Employment_Status__c, CreatedDate
		                                   FROM People__c
		                                   WHERE Id IN :newPeopleList
		                                   ORDER By CreatedDate DESC];

		System.assertEquals(UTIL_Constants.ACTIVE, actualPeople_DB.get(0).Employment_Status__c, 'Enployment Status was modified');

		for (Integer i = 1; i<copies; i++) {
			System.assertEquals(UTIL_Constants.WITHDRAWN, actualPeople_DB.get(i).Employment_Status__c, 'This record wasn´t treated as duplicated');
		}
	}

	@isTest
	private static void testDMLExceptionHandling() {
		//============================= Set Data Test ==================================
		Integer count = 5;
		setNewPeople(UTIL_Constants.ACTIVE, count);
		List<People__c> people_DMLException = [SELECT Employment_Status__c FROM People__c WHERE Id IN :newPeopleList];

		for (People__c people : people_DMLException) {
			people.Employment_Status__c = 'To Long Name   -------------------------------------------------------------------------------' +
			'-------------------------------------------------------------------------------------------------------------' +
			'--------------------------------------------------------------------------------------------------------------';
		}
		//============================= End Data Test ==================================

		Test.startTest();
		DuplicatedUsersBatch.updateRecords(people_DMLException);
		Test.stopTest();

		List<ExceptionLog__c> exLogs = [SELECT ClassName__c, MethodName__c, ExceptionDetails__c, ExceptionCode__c, ExceptionDescription__c, ExceptionType__c
		                                FROM ExceptionLog__c];

		System.assertEquals(count, exLogs.size());
	}

	@isTest
	private static void whenTwoOrMoreRecordsAreProcessedInDiferentBatches_TheOldersShouldBeTreatedAsDuplicates() {
		//============================= Set Data Test ==================================
		Integer copies = 2;

		newPeopleList = createPeople(UTIL_Constants.ACTIVE, 1, copies);
		Database.insert(newPeopleList);

		/**
		 *	In test context, executeBatch() can be call only once. In order to test multiple calls we have to simulate the 'previous batch'.
		 *	In this case, we have to manually add records to ?processedRecords? and modify its createdDate so they are not queried in the scope.
		 */
		People__c processedPeople = [SELECT Id, Name, Employment_Status__c, CreatedDate
		                             FROM People__c 
									 WHERE Id = :newPeopleList.get(0).Id 
									 LIMIT 1];
		Test.setCreatedDate(processedPeople.Id, DateTime.now().addHours(- timeInterval - 1));

		//============================= End Data Test ==================================
		Test.startTest();
		DuplicatedUsersBatch batch = new DuplicatedUsersBatch();
		batch.processedRecords.add(processedPeople.Name);

		Database.executeBatch(batch);
		Test.stopTest();

		List<People__c> actualPeople_DB = [SELECT Id, Name, Employment_Status__c, CreatedDate
		                                   FROM People__c
		                                   WHERE Id IN :newPeopleList
		                                   ORDER By CreatedDate DESC
		                                   ];//LIMIT 1];
		System.assertEquals(UTIL_Constants.WITHDRAWN, actualPeople_DB.get(0).Employment_Status__c, 'This record wasn´t treated as duplicated');
	}




	//===================================================================================
	static List<People__c> duplicatedPeopleList;
	static List<People__c> newPeopleList;
	static DuplicatedUsersBatch_Settings__c batchSettings;
	static Integer timeInterval = 25;


	@TestSetup
	private static void setBatchSettings() {
		DuplicatedUsersBatch_Settings__c batchSettingss = new DuplicatedUsersBatch_Settings__c();
		batchSettingss.Hours__c = timeInterval;
		batchSettingss.JobName__c = 'Duplicated People';
		batchSettingss.StringForTimeInterval__c = 'Some cron string';
		batchSettingss.BatchSize__c = 200;
		Database.insert(batchSettingss);
	}

	/**
	 * @description Create People__c objects with a specific Employment status.
	 * @param	String status set E´nployment_Status__c field
	 * @param	Integer count 
	 * @param	Integer copies
	 * @param	Integer timeInterval
	 * @return	NA
	 **/
	private static List<People__c> createPeople(String status, Integer count, Integer copies) {
		List<People__c> peopleList = new List<People__c>();
		for (Integer i = 0; i<count; i++) {
			for (Integer j = 0; j<copies; j++) {
				People__c people = UTIL_UnitTest.getPeople_c();
				people.Name = 'Test Name ' + i;
				people.Employment_Status__c = status;
				peopleList.add(people);
			}
		}
		return peopleList;
	}


	/**
	 * @description Create People__c objects with a specific Employment status and modifies its CreatedDate to set it in the past.
	 * @param	String status set E´nployment_Status__c field
	 * @param	Integer count. Number of different names
	 * @param	Integer copies. Number of copies with same name
	 * @param	Integer timeInterval
	 * @return	NA
	 **/
	private static void setDuplicatedPeople(String status, Integer count, Integer copies, Integer timeInterval) {
		duplicatedPeopleList = createPeople(status, count, copies);
		Database.insert(duplicatedPeopleList);

		duplicatedPeopleList = [SELECT Id, Name, Employment_Status__c, CreatedDate FROM People__c WHERE Id IN :duplicatedPeopleList];

		for (Integer i = 0; i<duplicatedPeopleList.size(); i++) {
			DateTime twoDaysEgo = DateTime.now().addHours(- timeInterval - 1).addMinutes(- i);
			Test.setCreatedDate(duplicatedPeopleList.get(i).Id, twoDaysEgo);
		}
		Database.update(duplicatedPeopleList);
	}

	private static void setNewPeople(String status, Integer count) {
		newPeopleList = duplicatedPeopleList = createPeople(status, count, 1);
		Database.insert(newPeopleList);
	}
}