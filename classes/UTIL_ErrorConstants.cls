/**
  * @author        Urmi Chatterjee
  * @date          09/10/2013
  * @description   UTIL Class for saving constant values used across classes for Error Handling.
  */

public with sharing class UTIL_ErrorConstants {
    
        //Variables to hold Class constants
        public static final Integer EXCEPTION_CODE_SIZE_LIMIT = 100;    
        public static final Integer EXCEPTION_DETAILS_SIZE_LIMIT = 32768;
      
        public static final String PREFIX_FW = 'fw: ';
        public static final String PREFIX_FWD = 'fwd: ';
        public static final String PREFIX_RE = 're:';
        public static final String CAUSED_BY = 'caused by:';
        public static final String PREFIX_CLASS = 'Class.';
        public static final String PREFIX_TRIGGER = 'Trigger.';
        public static final String LINE_NO = ': line';
        public static final String EXCEPTION_CODE_FILTER = 'first error:';
        public static final String START_APEX_SCRIPT = 'Apex script';
        public static final String IDENTIFY_TRIGGER = 'Apex script unhandled trigger';
        public static final String SANDBOX_EMAIL = 'Sandbox';
        public static final String USER = 'user/organization'; 
        public static final String BATCH_CLASS_NAME = 'BATCH_PurgeOldExcption';
        public static final String BATCH_METHOD_NAME = 'execute';
        public static final String DML_EXCEPTION = 'System.DMLException';
        public static final String BATCH_CUSTOM_SETTING_RECORD = 'ExceptionRecordDeletionFilter';
        public static final String PAGINATION_CUSTOM_SETTING_RECORD = 'ExceptionSearch';
        public static final String SEVERITY_LEVEL_CUSTOM_SETTING_RECORD = 'LogLevelError';
        //public static final String SYSTEM_ADMIN_PROFILE_ID = '00ei00000014rRp';
        
        public static final String SYSTEM_ADMIN_PROFILE_ID = ''; //LogSeverityLevelValue__c.getInstance().System_Admin_profile_ID__c; Harcodeado para evitar crear la custom settings
        public static final String SEVERITY_LEVEL_ERROR = 'ERROR';
        public static final String SEVERITY_LEVEL_FOR_DEFECT = '1 - Low';
        public static final String DEFECT = 'Defect';        
        public static final String BLANK_SPACE = '';
        public static final String RELATED_OBJECT = 'Related Object : ';
        public static final String OTHER_EXCEPTION = 'Miscellaneous Exception';
        public static final String COLON = ':';
        public static final String APOSTROPHE = '\'';
        public static final String DOUBLE_QUOTE = '\"';
        public static final String FULLSTOP = '.';
        public static final String FORWARD_SLASH = '/';
        public static final String ERROR_APPLICATION = 'Error Logging Framework';
        public static final String ERROR_LOG_CLASS = 'UTIL_LoggingService';
        public static final String UNHANDLED_ERROR_LOG_METHOD = 'processExceptionEmail';
        
        public static final String RECORD_ID = 'Record Id:';
        public static final String ENTER = '\n';
        public static final String HEADER = 'Name,Exception Type,Exception Code,Class,Method,Apex Trigger,Handled,No. of Times Occured,Converted to Defect,Severity,Context User\r\n';
        public static final String DATE_FORMAT = 'MM/dd/YYYY';
        public static final String DATE_NULL_ERROR_MESSAGE = 'Please Select Start Date and End Date';
        public static final String START_DATE_GREATER_MESSAGE = 'Start Date must be same as or before End Date';
        public static final String START_DATE_AFTER_TODAY_MESSAGE = 'Start Date must be same as or before Today';
        public static final String EXCEPTION_SEARCH_CLASS = 'VFC_ExceptionSearch';
        public static final String EXCEPTION_SEARCH_METHOD = 'search';
        public static final String GENERIC_ERROR_MESSAGE = 'Exception Occured';
        public static final String DELETE_EXCEPTION = 'deleteException';
        public static final String CONVERT_EXCEPTION = 'convertException';
        public static final String CONVERT_TO_CSV_LINK = '/apex/VFP_ExportToCSV';
        
        public static final String BATCH_PFLOG_CS = 'PerformanceLogDeletionFilter';
        public static final String BATCH_PURGE_PFLOG = 'BATCH_PurgeOldPerformanceLog';
        public static final String QUERY_PURGE_PFLOG = 'SELECT Id FROM PerformanceLog__c WHERE CreatedDate = N_DAYS_AGO:';
         /************error constsnts created by ranga.r.modampuri 14/07/2014   START******************/ 
        public static final String MUST_ENTER_COMPETITOR_NAME=' You must enter the Other Competitor name ';
        public static final String CANT_ADD_COMPETITORS_TO_SOLESOURCE_DEAL='You cannot add competitors to a Sole Source deal';
        public static final String CANT_ADD_COMPETITOR_WHEN_UNKNOWN_ATTHIS_TIME='You cannot add competitors when the competirors are Unknown at this time';
        public static final String CANT_FLAG_SOLESOURCE_A_COMPETITIVEDEAL='You cannot flag Sole Source a competitive deal';
        public static final String CANT_ADD_UNKNOWNATTHIS_TIME_WHEN_KNOWN='You cannot add Unknown at this time when there are known competitors';
        public static final String COMPETITOR_CANT_ADDED_TWICE='Competitor cannot be added twice';
        public static final String BUYER_VALUE_CANT_ADDED_TWICE='Buyer Value cannot be added twice';
        /************error constants created by Praveen.K.Emmadi 12/29/2015   ******************/  
        public static final String Key_BUYER_VALUE_CANT_ADDED_TWICE='This Key Buyer is already on the opportunity.  If they have multiple decision roles you can edit the existing record, otherwise please select a new Key Buyer.';
        public static final String WHEN_COMPETITOR_OTHER_ONLY='You must select OTHERS before editing Other Competitor name';
           /***********error constsnts created by ranga.r.modampuri 14/07/2014   END******************/ 
        public static final String DONT_LEFT_AS_BLANK_COMPETITOR = 'You cannot save Record with Blank Competitors';
        public static final String NOT_ALLOWED_EDIT = 'You are not allowed to edit the approved stage';

        
}