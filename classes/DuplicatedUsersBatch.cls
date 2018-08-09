/**
 * @author Esteban Romero (esteban.romero@accenture.com)
 * @version 0.0.0
 * @description This class implements batchable. It is use to verify the existence of multiple people whith the same EID.
 * If so, it update Employment Status field in preexisting records properly.
 * Bug 213353: [Sales Team] Picklist showing wrong record when adding sales team member.
 *
 **/

global class DuplicatedUsersBatch implements Database.Batchable<sObject>, Database.Stateful {
	global Set<String> processedRecords = new Set<String> ();
	private final Datetime limitDate;
	private List<People__c> duplicatedPeopleToUpdate = new List<People__c> ();

	/**
	 * @description   Constructor. Set time interval
	 * @param		  NA
	 * @return		  NA
	 **/
	global DuplicatedUsersBatch() {
		Integer interval = (Integer) DuplicatedUsersBatch_Settings__c.getOrgDefaults().hours__c;
		limitDate = DateTime.now().addHours(- interval);
	}

	/**
	 * @description	  Gets invoked when the batch job starts. It obtains all People__c records created in the time interval set in constructor
	 * @param		  Context contains the job ID
	 * @returns		  The record set as a QueryLocator object that will be batched for execution
	 * @return        NA
	 * @throws        NA
	 */
	global Database.QueryLocator start(Database.BatchableContext BC) {
		String limitDateString = limitDate.formatGMT(UTIL_Constants.DATETIME_ISO_FORMAT);
		String query = 'SELECT Name, Employment_Status__c, CreatedDate ' +
					   'FROM People__c ' +
					   'WHERE CreatedDate >= ' + limitDateString + ' ' +
					   'AND (Employment_Status__c = null ' +
					       'OR Employment_Status__c = \''+ UTIL_Constants.EMPTY + '\' ' +
						   'OR Employment_Status__c = \''+ UTIL_Constants.ACTIVE + '\'' +
						') ' +
					   'ORDER BY Name, CreatedDate DESC';
		return Database.getQueryLocator(query);
	}

	/**
	 * @description	  Gets invoked when the batch job executes. Searchs for preexisting records with same EID of those in scope.
	 *				  If it finds any, gets the newest duplicated and compares its Employment_Status__c field
	 *                against the one in scope and update it.
	 * @param		  Context contains the job ID
	 * @param		  Scope contains the batch of records to process.
	 * @throws        NA
	 */
	global void execute(Database.BatchableContext BC, List<People__c> scope) {
		Set<String> recentlyCreatedPeopleSet = new Set<String> ();
		List<People__c> duplicatedPeople = new List<People__c> ();

		for (People__c people : scope) {
			if (String.isNotBlank(people.Name)) {
				//check is a record w/ same EID was proccessed in previous batches
				//look for records w/ same EID in this batch
				if (processedRecords.contains(people.Name)
					|| recentlyCreatedPeopleSet.contains(people.Name)
				) {
					analizePreexistingPeopleStatus(people);
				} else {
					recentlyCreatedPeopleSet.add(people.Name);
				}

			}
		}
		duplicatedPeople = ([SELECT Name, Employment_Status__c, CreatedDate
		                    FROM People__c
		                    WHERE(Name IN :recentlyCreatedPeopleSet AND CreatedDate < :limitDate
							    AND(Employment_Status__c = null 
									OR Employment_Status__c = :UTIL_Constants.EMPTY 
									OR Employment_Status__c = :UTIL_Constants.ACTIVE
								)
							)
		                    ORDER BY Name, CreatedDate DESC
		                    ]);

		if (duplicatedPeople.size() > 0) {
			Map<String, People__c> newestDuplictes = new Map<String, People__c> ();

			//get the newest duplicate for a particular EID
			for (People__c people : duplicatedPeople) {
				if (!newestDuplictes.keySet().contains(people.Name)) {
					newestDuplictes.put(people.Name, people);
				}
			}

			for (People__c people : newestDuplictes.values()) {
				analizePreexistingPeopleStatus(people);
			}
		}

		if (duplicatedPeopleToUpdate.size() > 0) {
			updateRecords(duplicatedPeopleToUpdate);
		}

		for (People__c people : scope) {
			processedRecords.add(people.Name);//addall();
		}
	}

	/**
	 * @description    Gets invoked when the batch job finishes.
	 * @param		   Context contains the job ID
	 * @return         NA
	 * @throws         NA
	 */
	global void finish(Database.BatchableContext BC) {

	}

	/**
	 * @description    Method to updates Employment Status field of duplicated records.
	 * @param          People__c duplicated
	 * @return         NA
	 * @throws         NA
	 */
	private void analizePreexistingPeopleStatus(People__c duplicated) {
		if (String.isBlank(duplicated.Employment_Status__c)) {
			duplicated.Employment_Status__c = UTIL_Constants.FORMERCONTRACTOR;
			duplicatedPeopleToUpdate.add(duplicated);
		} else {
			duplicated.Employment_Status__c = UTIL_Constants.WITHDRAWN;
			duplicatedPeopleToUpdate.add(duplicated);
		}
	}

	/**
	 * @description    Method to updates a list of People__c. It can handle DML exceptions 
	 * @param          List<People__c> peopleToUpdate people that will be updated
	 * @return         NA
	 * @throws         NA
	 */
	public static void updateRecords(List<People__c> peopleToUpdate) {
		Database.SaveResult[] srList = Database.update(peopleToUpdate, false);

		List<Database.SaveResult> srErrors = new List<Database.SaveResult> ();
		List<People__c> faildRecords = new List<People__c> ();

		for (Integer i = 0; i<srList.size(); i++) {
			if (!srList.get(i).isSuccess()) {
				srErrors.add(srList.get(i));
				faildRecords.add(peopleToUpdate.get(i));
			}
		}

		if (srErrors.size()> 0) {
			UTIL_LoggingService.logDmlResults(srErrors, null, faildRecords, UTIL_Constants.APPLICATION_NAME_MMS, 
				' DuplicatedUsersBatch', UTIL_Constants.METHOD_execute, null, LoggingLevel.ERROR
			);
		}
	}
}