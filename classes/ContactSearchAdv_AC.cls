/************************************************************************

   @Author       Amanpreet Sidhu

   @name         ContactSearchAdv_AC 

   @CreateDate   15 Oct 2014

   @Description  Controller for Visualforce Page: ContactSearchAdv_VP

   @Story/Task:  Created for Story 297312 Task 5: Contact PublicVPrivate

************************************************************************

History of changes: 

-------------------------------------------------------------------------

   Date                Developer                         Comments   

-------------------------------------------------------------------------

    15 Oct 2014        amanpreet.sidhu@accenture.com     Created  

    16/12/2014         changyuan.shao@accenture.com          Modified for #364560 The search with First name or Last name and account is populating all account contacts

**************************************************************************/



public without sharing class ContactSearchAdv_AC {

    public String searchFirstName {get;set;} 

    public String searchLastName {get; set;}
    
    public String searchEmail {get; set;}

    public String searchAccount {get; set;}
    
    public String activeContact {get; set;}  ///// added by subra for SI#113 

    private String soql {get;set;}

    //public List<Contact> lstCon {get;set;}

	public List<Contact> lstCount {get;set;}//nuevo

    public boolean inputFieldCheck {get; set;}  // boolean flag to check the no. of search parameters entered by user

    public Integer RecPerPage {get; set;}

    private integer counter=0;    // used for controlling the offset inside the query

    public integer total_size;   // total size of the returned result used for pagination

	public Id filterId {get; set;}

    /*****Added by Shilpa for US 435012 - Chapter 8 - Starts ****/

    //private static ID recordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Master Customer').getRecordTypeId();

    /*****Added by Shilpa for US 435012 - Chapter 8 - Ends ****/

	public ApexPages.StandardSetController setCon {get;set;}
    

    public pageReference runSearch() {        

        Integer Total = 0;

        if(searchFirstName != '' && searchFirstName != null) {
            Total = 1;
        }        

        if(searchLastName != '' && searchLastName != null) {
            Total += 1;
        }       
        
        if(searchEmail != '' && searchEmail != null) {
            Total += 1;
        }

        if(searchAccount != '' && searchAccount != null) {
            Total += 1;
        }        

        if(Total < 2) {
            inputFieldCheck = true;
			lstCount=null;
        }else {
            inputFieldcheck = false;
            buildQuery();    
        }

        return null;
    }

    

    public void buildQuery() {

        String QueryWhere = '';
        String QueryContact = '';

        if(RecPerPage == null) {
            RecPerPage = 10;
        }

        QueryContact = 'Select Id, Name,AccountId, Email, Active_Contact__c, Account.Name, Title, ReportsTo.Name, ReportsToId,Owner__c,Owner__r.Name from Contact';
		
        if (searchFirstName != null && searchFirstName !=''){
      
			/*Modified for bug 35632*/
            if(searchFirstName.endsWith('*')){
                String formattedSearchFirstName=searchFirstName.remove('*');
                QueryWhere = BuildWhere(QueryWhere, ' (FirstName LIKE \'' + String.escapeSingleQuotes(formattedSearchFirstName) + '%\')');
            }
            else if(searchFirstName.startsWith('*')){
                String formattedSearchFirstName=searchFirstName.remove('*');
                QueryWhere = BuildWhere(QueryWhere, ' (FirstName LIKE \'%' + String.escapeSingleQuotes(formattedSearchFirstName) + '\')');
            }
            else{
              /*Changes for bug 35632 END*/
                QueryWhere = BuildWhere(QueryWhere, ' (FirstName LIKE \'%' + String.escapeSingleQuotes(searchFirstName) + '%\')');
            }
		}

        

        if (searchLastName != null && searchLastName !=''){
    
			/*Modified for bug 35632-START*/
            if(searchLastName.endsWith('*')){
                String formattedSearchLastName=searchLastName.remove('*');
                QueryWhere = BuildWhere(QueryWhere, ' (LastName LIKE \'' + String.escapeSingleQuotes(formattedSearchLastName) + '%\')');
            }
            else if(searchLastName.startsWith('*')){
                String formattedSearchLastName=searchLastName.remove('*');
                QueryWhere = BuildWhere(QueryWhere, ' (LastName LIKE \'%' + String.escapeSingleQuotes(formattedSearchLastName) + '\')');
            }
            else{
			/*Changes for bug 35632 END*/
                QueryWhere = BuildWhere(QueryWhere, ' (LastName LIKE \'%' + String.escapeSingleQuotes(searchLastName) + '%\')');
            }
	    }



		if (searchEmail != null && searchEmail !=''){
    
            if(searchEmail .endsWith('*')){
                String formattedsearchEmail=searchEmail.remove('*');
                QueryWhere = BuildWhere(QueryWhere, ' (Email LIKE \'' + String.escapeSingleQuotes(formattedsearchEmail) + '%\')');
            }
            else if(searchEmail.startsWith('*')){
                String formattedsearchEmail=searchEmail.remove('*');
                QueryWhere = BuildWhere(QueryWhere, ' (Email LIKE \'%' + String.escapeSingleQuotes(formattedsearchEmail) + '\')');
            }
            else{
                QueryWhere = BuildWhere(QueryWhere, ' (Email LIKE \'%' + String.escapeSingleQuotes(searchEmail) + '%\')');
            }
		}
    

        if (searchAccount != null && searchAccount !=''){
    
			if(searchAccount.endsWith('*')){
                String formattedSearchAccount=searchAccount.remove('*');
                QueryWhere = BuildWhere(QueryWhere, '((Account.Name LIKE \'' + String.escapeSingleQuotes(formattedSearchAccount) + '%\'))');
            }
            else if(searchAccount.startsWith('*')){
                String formattedSearchAccount=searchAccount.remove('*');
                QueryWhere = BuildWhere(QueryWhere, '(Account.Name LIKE \'%' + String.escapeSingleQuotes(formattedSearchAccount) + '\')');
            }
            else{
		/*Changes for bug 35632 END*/
                QueryWhere = BuildWhere(QueryWhere, '((Account.Name LIKE \'%' + String.escapeSingleQuotes(searchAccount) + '%\'))');
            }

		}

        /*****Added by Shilpa for US 435012 - Chapter 8 - Starts ****/

        //QueryWhere = BuildWhere(QueryWhere, '(Account.RecordtypeId = \''+recordTypeId+ '\')');    

       /*****Added by Shilpa for US 435012 - Chapter 8 - Ends ****/

        QueryContact += QueryWhere;    

        //lstCon = Database.query(QueryContact + ' order by ' + sortField + ' ' + sortDir + ' limit '+RecPerPage + ' offset ' +counter); 

        //List<Contact> lstCount = new List<Contact>();

        lstCount = Database.query(QueryContact + ' order by ' + sortField + ' ' + sortDir + ' LIMIT 40000');

		setCon = new ApexPages.StandardSetController(lstCount);
		setCon.setPageSize(RecPerPage);

        total_size = lstCount.size();

    }

    // Initialize setCon and return a list of records
    public List<Contact> getContacts() {
        return (List<Contact>) setCon.getRecords();
    }

    public String sortDir {
        get {
			if (sortDir == null) {
				sortDir = 'asc';
			} 
			return sortDir;
        }
        set;
    }



    public String sortField {
        get { 
			if (sortField == null) {
				sortField = 'Name'; 
			}
        return sortField; 
        }
        set;
    }

    

    public void toggleSort() {

    // simply toggle the direction

    sortDir = sortDir.equals('asc') ? 'desc' : 'asc';

    // run the query again

    runSearch();

  }

    

    public String BuildWhere(String QW, String Cond) {

        if (QW == '') {

            return ' WHERE ' + Cond;

        } else {

              /****** modified by changyuan.shao #364560 The search with First name or Last name and account is populating all account contacts Begin ******/

            //return QW + ' OR ' + Cond;

            return QW + ' AND ' + Cond;

            /****** modified by changyuan.shao #364560 The search with First name or Last name and account is populating all account contacts End ******/

        }

    }

    

    public PageReference Beginning() { //user clicked beginning
		setCon.first();
      //counter = 0;

      //buildQuery();

      return null;

   }



    public PageReference Previous() { //user clicked previous button
		setCon.previous();	
      //counter -= RecPerPage;

      //buildQuery();

      return null;

   }



   public PageReference Next() { //user clicked next button
		setCon.next();	
      //counter += RecPerPage;

      //buildQuery();

      return null;

   }



    public PageReference End() { //user clicked end

		setCon.last();
      //counter = total_size - math.mod(total_size, RecPerPage);

      //buildQuery();

      return null;

   }



   public Boolean getDisablePrevious() { 

      //this will disable the previous and beginning buttons

      //if (counter>0) return false; else return true;

	  return setCon.getHasPrevious();

   }



   public Boolean getDisableNext() { //this will disable the next and end buttons

      //if (counter + RecPerPage < total_size) return false; else return true;
	  return setCon.getHasNext();

   }



   public Integer getTotal_size() {

      return total_size;

   }



   public Integer getPageNumber() {

      //return counter/RecPerPage + 1;
	  return setCon.getPageNumber();

   }

   public String getFilterId() {

      //return counter/RecPerPage + 1;
	  return setCon.getFilterId();

   }


   public Integer getTotalPages() {

      if (math.mod(total_size, RecPerPage) > 0) {

         return total_size/setCon.getPageSize() + 1;

      } else {

         return (total_size/setCon.getPageSize());

      }

   }

    

    public PageReference ClearAll()

    {

        pagereference ref = new pageReference('/apex/ContactSearchAdv_VP');

        ref.setRedirect(true);

        return ref;

    }

    

    public list<SelectOption> getRecPerPageOption()

    {

        List<SelectOption> listsize = new List<SelectOption>();

        listsize.add(new SelectOption('10','10'));

        listsize.add(new SelectOption('25','25'));

        listsize.add(new SelectOption('50','50'));

        listsize.add(new SelectOption('100','100'));

        return listsize;

    }

}