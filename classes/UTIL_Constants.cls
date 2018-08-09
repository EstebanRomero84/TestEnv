/************************************************************************

   @Author Sandeep Kumar
   @name UTIL_Constants
   @CreateDate 18/3/2014
   @Description UTIL Class for saving constant values used across classes. 

History of changes:
-------------------------------------------------------------------------
   Date                Developer                         Comments
-------------------------------------------------------------------------
   18/3/2014          sandeep.p.kuma@accenture.com        Created
   19/3/2014          nadeem.anwar@accenture.com          Added values
   25/3/2014          sushma.padmappa@accenture.com       Added Values for Sprint2 US9103
   25/3/2014          shilpa.mn@accenture.com             Added Values for Sprint2 US9103
   3/4/2014           y.a.wang@accenture.com              Added Values for Sprint2 US9600
   4/4/2014           k.a.manoharan@accenture.com         Added Value for Sprint2 US9553
   5/5/2014           v.manojkumar@accenture.com          Added value for Sprint3 US9556
   6/6/2014           s.boyapati@accenture.com            Added value for sprint3 US9552 && US 9142
   6/5/2014           y.a.wang@accenture.com              Added Values for Sprint14.3 -> US283 -> Chapter1
   7/5/2014           bowen.luo@accenture.com             Added Values for Sprint3 US9600 chapter5
   22/5/2014          k.a.manoharan@accenture.com         Added Values for Sprint4 US9553 chapter1
   22/5/2014          sushma.padmappa@accenture.com       Added Values for Sprint4 US9554
   28/5/2014          bowen.luo@accenture.com             Added Values for Sprint5 US1  chapter 4 & chapter 5
   29/5/2014          shanshan.yao@accenture.com          Added Values for R14.2 Sprint 5 Story 1 - Chapter 6
   25/3/2014          shilpa.mn@accenture.com             Added Values for Sprint5 US9103 Chapter 6
   3/6/2014           sushma.padmappa@accenture.com       Added Values for Sprint5 US9579
   3/6/2014           pratibha.bhosale@accenture.com      Added Values for ChangeRequestsStatusTriggerHelper class
   4/6/2014           bowen.luo@accenture.com             Added Values for Sprint5 US1 chapter4 & chapter5
   5/6/2014           s.boyapati@accenture.com            Added Values for aprint5 US 9580
   05/06/2014         shilpa.mn@accenture.com             Added Values for Sprint5 US1 Chapter 8
   06/06/2014         pratibha.bhosale@accenture.com      Added Values for AccountTriggerHelper class
   09/06/2014         pratibha.bhosale@accenture.com      Added Values for UserTriggerHelper class
   16/06/2014         pratibha.bhosale@accenture.com      Added Values for RoleTriggerHelper class
   16/6/2014          v.manojkumar                        Added Values for sprint5A->Us-315 Chapter 3 and 5
   26/06/2014         y.a.wang@accenture.com              Added Values for BUG #253320
   20/06/2014         pratibha.bhosale@accenture.com      Added Values for CutomerToCsgHelper class
   30/6/2014          changyuan.shao@accenture.com        Update for Sales - Rel2 - Story 319 Chapter 1 R14.2 - Sprint 5A
   07/07/2014         changyuan.shao@accenture.com        Added Values for US324 Opportunity Risks Remove QA Waived from Risk Tier
   07/07/2014         patrick.c.villarica@accenture.com   Added Values for Sprint 6 US 78
   08/07/2014         y.a.wang@accenture.com              Update for Sprint 6 US 81 Chapter1
   10/07/2014         shanshan.yao@accenture.com          Update for Sprint 6 US 81 Chapter1
   10/07/2014         y.a.wang@accenture.com              Update for Sprint 6 US 49 Chapter2
   10/07/2014         ranga.r.modampuri@accenture.com     Added values for US 37 Chapter 2 Competitor validations
   14/07/2014         y.a.wang@accenture.com              Update for fix defect 266218
   15/07/2014         nadeem.anwar@acenture.com           Added Values for Sprint 6 US 64 Chapter 2.
   15/07/2014         v.manojkumar@accenture.com          added values for Bug#268116/268129/257103
   16/07/2014         y.a.wang@accenture.com              Added Values for US49 Chapter 2
   07/08/2014         k.a.manoharan@accenture.com         Added Values for Defect 280822
   11/08/2014         y.a.wang@accenture.com              Update for fix defect 285186
   27/08/2014         changyuan.shao@accenture.com        Updated for defect #294994 filter admin profile for US49 validation
   27/08/2014         v.manojkumar@accenture.com          Updated for US-321
   25/09/2014         s.boyapati@accenture.com            Updated for US - 76 ch2
   06/10/2014         shilpa.mn@accenture.com             Updated for US - 75 chap6
   15/10/2014         y.a.wang@accenture.com              Updated for Defect 298881
   15/10/2014         changyuan.shao@accenture.com        Update for US#324970 Wrong approval process for AA and DCAL deals
   04/11/2014         y.a.wang@accenture.com              Updated for CR38
   11/17/2014         praveen.emmadi@accenture.com        Update for Defect #344664
   21/11/2014         y.a.wang@accenture.com              Updated for #342794(CR74)
   24/11/2014         jose.f.blasco@accenture.com         Update for Bug#354907
   27/11/2014         ana.m.gutierrez@accenture.com       Bug #354155
   28/11/2014         jeremy.jian.zhang@accenture.com     Update for #344864
   06/04/2015         james.d.michilina@accenture.com     Update for US#444199
   01/04/2015         changyuan.shao@accenture.com        Updated for defect #443667 - 15.2.1 PROD Cutover: CR role did not get updated on MC
   25/06/2015         pratibha.jadhav@accenture.com       Updated for US #458188 : SI # 429 - MMS Replay Mechanism for Async Processes (@future)
   29/09/2015         pratibha.jadhav@accenture.com       Updated for US #586 - Clone Refactor
   05/10/2015         v.manojkumar@accenture.com          update for Us#480679
   **************************************************************************/


public class UTIL_Constants 
{

  //**********performance and Exception R14.2 sprint 3 US 9552 & 9142 (bug no:217929)Begin***********
  // Variables to hold Integration Intent Type Constants
  public static final String INTEGRATION_INTENT_TYPE_PUBLISH_EVENT = 'Publish Event';
  public static final String INTEGRATION_INTENT_TYPE_RECEIVE_EVENT = 'Receive Event';
  public static final String INTEGRATION_INTENT_TYPE_DISPLAY_DATA = 'Display Data';
  public static final String INTEGRATION_INTENT_TYPE_PROVIDE_DATA = 'Provide Data';
  public static final String METHOD_CLASSNAME_OPPINTIGRATION_CLA = 'Opportunity_IntegrationFieldsPopulation';
  public static final String METHODNAME_OPPINTIGRATION_CLA = 'populateCodeFields';
  public static final String TRIGGER_NAME_OPRTRIGGER = 'OpportunityTrigger';
  public static final String TRIGGER_NAME_ACCTRIGGER = 'AccountsTrigger';
  public static final String ACCOUNT_METHODNAME = 'updateOpportunity';
  public static final String ACCOUNT_CLASS_BATCH = 'OM_R1_Account_Batch';
    
/*@description : 2016-02-18 - Added by neha.phutela - start*/
    public static final String STRATEGY_LEVEL ='3.- SG - Strategy Consulting';
     /*@description : 2016-04-8 - Added by neha.phutela - end*/
     
  // New Integration Intent Type:
  public static final String INTEGRATION_INTENT_TYPE_PUBLISH_EVENT_SNAPSHOT = 'Publish Event Snapshot';
  public static final String INTEGRATION_INTENT_TYPE_PUBLISH_EVENT_CR_ROLE_CHANGE = 'Publish Event CR Role Change';

  // Variables to hold Severity Constants
  public static final String SEVERITY_LOW = 'Low';
  public static final String SEVERITY_MEDIUM = 'Medium';
  public static final String SEVERITY_HIGH = 'High';
  //*********performance and Exception R14.2 sprint 3 US 9552 & 9142 (bug no:217929)End***************



  //Variables to hold Class constants
  public static final String SAMPLE_COMPLEXITY_CATEGORY =   'Assets - Transfer, Sale, Leasing, or Purchase';
  public static final String SAMPLE_COMPLEXITY_QUESTION1 = 'Purchase of IT hardware, software, telecom or hosting services paid from a US Accenture Company Code >= US$250K (Policy 0931)';
  public static final String SAMPLE_COMPLEXITY_QUESTION2 = 'Low CCI Client Budgeting';
  public static final String SAMPLE_COMPLEXITY_QUESTION3 = 'Client capital < US$1M (Policy 1030)';
  public static final String SAMPLE_COMPLEXITY_QUESTION4 = 'Low CCI OtheR';
  public static final String SAMPLE_COMPLEXITY_SOURCE =  'RISK/ORA SCOPE';
  public static final String CONSTANT_CLASSIFICATION_ALPHAPLUS = 'Alpha +';
  public static final String CONSTANT_CLASSIFICATION_ALPHA = 'Alpha';
  public static final String CONSTANT_CLASSIFICATION_BETA = 'Beta';
  public static final String CONSTANT_CLASSIFICATION_GAMMA = 'Gamma';
  public static final String CONSTANT_CLASSIFICATION_NA = 'N/A';
  public static final String CLASS_OM_R1_OPPORTUNITY_BATCH = 'OM_R1_Opportunity_Batch';
  public static final String CLASS_METHOD = 'updateRBE';
  /**************************Created by Sushma for defect fix no:213372 Begin******************************************/
  public static final String CONSTANT_APPROVERSTYPE_CB = 'CB';
  /**************************Created  by sushma for defect fix no:187417 and 204799 Begin************************************/
  public static final String CONSTANT_APPROVAL_LEVEL_FULL = 'Full';
  /**************************Updated  by patrick.c.villarica for US 78 Chapter 1 Start************************************/
  public static final String CONSTANT_APPROVAL_LEVEL_AUTOAPPROVE = 'AUTO APPROVER';
  /**************************Updated  by patrick.c.villarica for US 78 Chapter 1 End************************************/
  public static final String CONSTANT_APPROVAL_LEVEL_DCAL = 'DCAL';
  public static final String CONSTANT_MC_CLIENT_CLASSIFICATION_FONDATION = 'Foundation';
  public static final String CONSTANT_MC_CLIENT_CLASSIFICATION_PORTFOLIO = 'Portfolio';
  public static final String CONSTANT_MC_CLIENT_CLASSIFICATION_DIAMOND = 'Diamond';
  public static final String CONSTANT_MC_CLIENT_CLASSIFICATION_OPPORTUNISTIC = 'Opportunistic';
  public static final String CONSTANT_MC_CLIENT_CLASSIFICATION_REQUIRESATI = 'Requires ATI';  
  public static final String NULL_VALUE = '';
  public static final String RISK_TIER_3 = '3';
  /***** Modified by changyuan.shao for 14.2 US324 Risks Remove QA Waived from Risk Tier Begin ******************/
  //public static final String RISK_TIER_QAWAIVED = 'QA Waived';
  public static final String LAST_STAGE_REVIEWED_IN_QA_NOTREQUIRED = 'QA Not Required';
  /***** Modified by changyuan.shao for 14.2 US324 Risks Remove QA Waived from Risk Tier End ******************/
  public static final String RISK_TIER_2 = '2';
  public static final Decimal DEAL_VALUE_ONE_MILLION = 1000000;
  public static final Decimal DEAL_VALUE_TWO_MILLION = 2000000;
  public static final Decimal DEAL_VALUE_FIVE_MILLION = 5000000;
  public static final Decimal ZERO = 0;
  //*****Created by Jeremy for R14.2 US49 Chapter2 Begin
  public static final String SELLINGCOUNTRY_AUSTRILIA = 'Australia';
  //*****Created by Jeremy for R14.2 US49 Chapter2 End
  /**************************Created  by sushma for defect fix no:187417 and 204799 End************************************/
  public static final String METHOD_PROCESS_OPP_APPROVERS = 'processOppApprovers';
  /**************************Created by Shilpa for R14.1->Sprint2->US9103->Begin******************************************/
  public static final String CLASS_MsgBatchCleanup = 'MsgBatchCleanup';
  public static final String CLASS_MsgBatchRetry = 'MsgBatchRetry';
  public static final String METHOD_execute = 'execute';
  public static final String METHOD_getUserLoginsMap = 'getUserLoginsMap';
  public static final String METHOD_getPeopleRetireeWithdrawnMap = 'getPeopleRetireeWithdrawnMap';
  public static final String BATCHCLEANUP_CUSTOM_SETTING_RECORD = 'MsgBatchCleanup';
  public static final String BATCHRETRY_CUSTOM_SETTING_RECORD = 'MsgBatchRetry';
  public static final String BATCHRETRYQUERY = 'SELECT Id FROM Msg_Q__c WHERE Delivered__c = false And Outbound_Msg_Sent__c = TRUE and CreatedDate < LAST_N_DAYS:';
  public static final String BATCHCLEANUPQUERY = 'SELECT Id FROM Msg_Q__c WHERE Delivered__c = true and CreatedDate < N_DAYS_AGO:';
  public static final String CONVERSIONUSERNAME = 'UserName';
  public static final String WEB_SERVEICENAME = 'Web Service User';
  /**************************Created by Shilpa for R14.1->Sprint2->US9103->End******************************************/
  public static final String EMPTY = '';
  public static final String SEMICOLON = ';';
  public static final String WORKLOCATION_MESSAGE = ' is already selected as Primary Work Location';
  public static final String UNDERSCORE = '_';

  /**************Created by patrick.c.villarica 20140529 for US1 R14.2-Sprint 5 Begin *************/
  public static final String READ_ONLY = 'Read';
  public static final String FC_READ_ONLY = 'FC Read';
  public static final String OG_READ_ONLY = ' OG Read';
  public static final String OG_READ_EDIT = ' OG Edit';
  public static final String OU_READ_ONLY = ' Read';
  public static final String OU_READ_EDIT = ' Edit';
  public static final String MMS_PROFILE = 'MMS';
  /**************Created by patrick.c.villarica 20140529 for US1 R14.2-Sprint 5 End *************/

  //-------------------------Variable used in Class Opportunity_Outbound_Batch------------------------------------------//
  /**************************Created by sushma for R14.1->Sprint2->US9103-> update v.manojkumar R16.1 US#239 ->Begin ******************************************/
  public static final String CLASS_OPPORTUNITY_OUTBOUND_BATCH = 'Opportunity_Outbound_Batch';
  public static final String METHOD_CREATE_MEGQ = 'createmsgQ';
  public static final String EVENTID_DATA_SYNC1 = '16';
  public static final String EVENTID_DATA_SYNC2 = '17';
  public static final String EVENTID_DATA_SYNC3 = '505';
  public static final String EVENT_CONSTANT = 'EventConstant';
  public static final String WMU_Field = 'WorkManagementUnit__c';
  public static final String WMUID_Field = 'WorkManagementUnitID__c';
  public static final String SOBJECT_NAME = 'Name';
  public static final String ASSIGN_WMU = '21';
  public static final String UNASSIGN_WMU = '22';
  public static final String OBJECTNAME_ACCFPT = 'AccountFinancialPlanTemplate__c';
  public static final String OBJECTNAME_CCBIS = 'ClientChallengesBusinessIssues__c';
  public static final String OBJECTNAME_CPERCEPT = 'ClientPerception__c';
  public static final String OBJECTNAME_CONTACT = 'Contact';
  public static final String OBJECTNAME_OPPORTUNITY = 'Opportunity';
  public static final String OBJECTNAME_ORGNATION = 'OriginationIdeas__c';
  public static final String OBJECTNAME_SSUMMARY = 'StrategySummary__c';
  public static final String ASSIGN_ACCFPT = 'AccountFinancialPlanTemplateAssign';
  public static final String ASSIGN_CCBIS = 'ChallengesBusinessIssuesassgin';
  public static final String ASSIGN_CPERCEPT = 'ClientPerceptionassgin';
  public static final String ASSIGN_CONTACT = 'ContactAssign';
  public static final String ASSIGN_OPPORTUNITY = 'Opportunity assign';
  public static final String ASSIGN_ORGNATION = 'OriginationIdeasAssign';
  public static final String ASSIGN_SSUMMARY = 'StrategySummaryassgin';
  public static final String UNASSIGN_ACCFPT = 'AccountFinancialPlanTemplateUnassign';
  public static final String UNASSIGN_CCBIS = 'ChallengesBusinessIssuesUnassgin';
  public static final String UNASSIGN_CPERCEPT = 'ClientPerceptionUnassgin';
  public static final String UNASSIGN_CONTACT = 'ContactUnassign';
  public static final String UNASSIGN_OPPORTUNITY = 'OpportunityUnassign';
  public static final String UNASSIGN_ORGNATION = 'OriginationIdeasUnassign';
  public static final String UNASSIGN_SSUMMARY = 'StrategySummaryUnassgin';
  public static final String SOBJECT_NAMECONTACT = 'LastName';
  public static final String SOBJECT_NAMEFIRSTCONTACT = 'FirstName';
   public static final String SPAC = ' ';
  /**************************Created by sushma for R14.1->Sprint2->US9103->update v.manojkumar R16.1 US#239 ->End******************************************/


  //-------------------------Variable used in Class OpportunityRiskManagementController------------------------------------------//
  public static final String APPLICATION_NAME_MMS = 'Manage My Sales';
  public static final String CLASS_OPP_RISK_MANAGEMENT = 'OpportunityRiskManagementController';
  public static final String METHOD_SAVE = 'save';
  public static final String METHOD_SHOWPOPUP = 'showPopup';
  public static final String TRIGGER_OPP_RISK_MANAGEMENT = 'NULL';
  public static final String PAGE_REDIRECT_OPP_RISK_MANAGEMENT = '/';
  public static final String CLASS_Check_Available_Space = 'Check_Available_Space';

  /*****Created by changyuan.shao 20140630 for R14.2-Sprint 5A - Story 315 chapter9 Begin ****/
  public static final String CLASS_OPP_BATCH = 'OM_R1_Opportunity_Batch';
  /*****Created by changyuan.shao 20140630 for R14.2-Sprint 5A - Story 315 chapter9 End ****/

  //-----------------------Variables used in Class OpportunityHierarchyBatch---------------------------------------------------//
  public static final String HIERARCHY_LEVEL_CHILD = 'Child';
  public static final String HIERARCHY_LEVEL_PARENT = 'Parent';
  public static final String HIERARCHY_LEVEL_STANDALONE = 'Standalone';
  public static final String ERROR_MSG_CANNOT_CHANGE_ACCOUNT = 'To change the account, please break the parent child relationship between opportunities';
  public static final String ERROR_MSG_SAME_ACCOUNT_INFO = 'Parent Opportunity must be under the same master customer in order to be linked';
  public static final String ERROR_MSG_SAME_ACCOUNT_INFO_NOMC = 'Parent Opportunity must be linked to same CR since CR has no Master Customer in order to be linked';
  /*****Added by patrick.c.villarica 20140707 for R14.2-Sprint 6 - Story 78 chapter1 Begin ****/
  public static final String ERROR_MSG_NOT_ELIGIBLE_DCAL = 'Opportunity Not Eligible for DCAL Approval Process Override';
  /*****Added by patrick.c.villarica 20140707 for R14.2-Sprint 6 - Story 78 chapter1 End ****/
  public static final String PARENT_TYPE_MC = 'MC';
  /*****Added by y.a.wang 20140714 for defect 266218 Begin ****/
  public static final String PARENT_TYPE_FC = 'FC';
  /*****Added by y.a.wang 20140714 for defect 266218 End ****/

  /**************************Created by y.a.wang for R14.1->Sprint2->US9600->Begin******************************************/
  public static final String OMSTATUS_CD_E0001 = 'E0001';
  public static final String OMSTATUS_CD_E0002 = 'E0002';
  public static final String OMSTATUS_CD_E0005 = 'E0005';
  public static final String OMSTATUS_CD_E0006 = 'E0006';
  public static final String OMSTATUS_CD_E0007 = 'E0007';
  public static final String OMSTATUS_CD_E0008 = 'E0008';
  public static final String OMSTATUS_CD_E0009 = 'E0009';
  public static final String OMSTATUS_CD_E0012 = 'E0012';
  public static final String OMSTATUS_CD_E0013 = 'E0013';
  public static final String OMSTATUS_CD_E0014 = 'E0014';
  public static final String OMSTATUS_CD_E0015 = 'E0015';
  public static final String OMSTATUS_CD_E0016 = 'E0016';
  public static final String OMSTATUS_CD_E0017 = 'E0017';
  public static final String OMSTATUS_CD_E0018 = 'E0018';
  public static final String OMSTATUS_CD_E0019 = 'E0019';
  public static final String OMSTATUS_CD_E0020 = 'E0020';
  public static final String OMSTATUS_CD_E0021 = 'E0021';
  public static final String STAGE_CD_0A = '0A';
  public static final String STAGE_CD_1 = '1';
  public static final String STAGE_CD_2A = '2A';
  public static final String STAGE_CD_2B = '2B';
  public static final String STAGE_CD_3A = '3A';
  public static final String STAGE_CD_3B = '3B';
  public static final String STAGE_CD_C = 'C';
  public static final String STAGE_CD_CLOSED_WON = 'Closed - Won';
  public static final String STAGE_CD_CLOSED_LOST = 'Closed - Lost';
  public static final String STAGE_CD_CLOSED_CLIENT_WITHDRAWN = 'Closed - Client withdrawn';
  public static final String STAGE_CD_CLOSED_ACN_WITHDRAWN = 'Closed - ACN withdrawn';
  public static final String STAGE_CD_CLOSED = 'Closed';
  public static final String APPROVAL_STATUS_PENDING = 'Pending';
  public static final String APPROVAL_STATUS_TO_PENDING = 'Pending Approval';
  public static final String APPROVAL_STATUS_TO_NOTSUBMITTED = 'Not Submitted';
  public static final String APPROVAL_STATUS_REJECTED = 'Rejected';
  public static final String CATEGORY_STAGE = 'Stage';
  public static final String CATEGORY_CLASSIFICATION = 'Classification';
  public static final String CATEGORY_OPPPORTUNITYTEAMROLE = 'OpportunityTeamRole';
  public static final String CATEGORY_OPORTUNITYCONCLUDEDSTATUS = 'OpportunityConcludedStatus';
  public static final String CATEGORY_HIERARCHYLEVEL = 'HierarchyLevel';
  public static final String CATEGORY_PRICINGSTRUCTURE = 'PricingStructure';
  public static final String CATEGORY_DELIVERYCENTER = 'DeliveryCenter';
  public static final String CATEGORY_ATTRIBUTETYPE = 'AttributeType';
  public static final String CATEGORY_CRROLE = 'CRRole';
  public static final String CATEGORY_LOSTREASON = 'LostReason'; // Added by Bowen.Luo for R14.2->Sprint3->US9600->Chapter 5
  public static final String CATEGORY_SELLINGCOUNTRY = 'CRSellingCountry'; // Added by Bowen.Luo for R14.2->Sprint5->US1->Chapter 4
 public static final String CATEGORY_COUNTRY = 'Country';
  public static final String CATEGORY_OGID = 'OperatingGroup'; // Added by Bowen.Luo for R14.2->Sprint5->US1->Chapter 1
  public static final String CATEGORY_OUID = 'OperatingUnit'; // Added by Bowen.Luo for R14.2->Sprint5->US1->Chapter 1
  public static final String CATEGORY_CSGID = 'ClientServiceGroup'; // Added by Bowen.Luo for R14.2->Sprint5->US1->Chapter 5
  public static final String CATEGORY_SUBCLIENTSERVICEGROUP = 'SubClientServiceGroup'; // Added by Bowen.Luo for R14.2->Sprint5->US1->Chapter 5
  public static final String CATEGORY_INDUSTRY = 'Industry'; // Added by Shanshan.yao for R14.2->Sprint5->US1->Chapter 6
  public static final String CATEGORY_SALESTERRITORY = 'SalesTerritory'; // Added by Shanshan.yao for R14.2->Sprint5->US1->Chapter 6
  public static final String CATEGORY_SALESCREDITAPPROVALSTATUS = 'SalesCreditApprovalStatus'; // Added by Shanshan.yao for R14.2->Sprint6->US81->Chapter1
  public static final String CATEGORY_TYPEOFWORK = 'TOW'; // Added by sandeep.p.kumar Bug Fix : 260891

  /**************************Created by y.a.wang for R14.1->Sprint2->US9600->End******************************************/
  /**************************Created by v.manojkumar for R14.1 -> sprint2->Us-61 && R14.2->Sprint3->US9556->begin******************************************/
  public static final String METHOD_CLASSNAME = 'OpportunityHierarchyBatch';
  public static final String METHOD_NAME = 'changeAccountInfo';
  public static final String METHOD_NAME_PARENT = 'updateParentHierarchy';
  public static final String TRIGGER_NAME = '';
  public static final String CR_EVENT_CHANGEROLE = 'CR Role Changes';
  public static final string CR_METHOD_CLASSNAME = 'OM_R1_CustomerRole_Batch ';
  public static final String CR_METHOD_NAME = '';
  public static final String CR_TRIGGER_NAME = 'OM_R1_CustomerRole_Trigger';
  public static final string CR_ROLE_CODE = '';
  public static final String CRCUSTOM_SETTING_EVENT = '0020';
  public static final String CRCUSTOM_SETTING_AUTHORISED = 'ZAUT0008';
  public static final String CRCUSTOM_SETTING_DIRECTOR = 'ZPART002';
  public static final String CRCUSTOM_SETTING_CAL = 'ZPART001';
  public static final String CRCUSTOM_SETTING_GCAL = '00000014';
  /**************************Created by v.manojkumar for R14.1 -> sprint2->Us-61 && R14.2->Sprint3->US9556->End******************************************/

  /**************************Created by r.ortiz.cacerez for R18.2->Sprint4->US2360->Begin******************************************/
  public static final String CRCUSTOM_SETTING_GCQD_CODE = 'GCQD';  
  /**************************Created by r.ortiz.cacerez for R18.2->Sprint4->US2360->End******************************************/  
    
  /**************************Created by k.a.manoharan for R14.1->Sprint2->US9553->Begin******************************************/
  public static final String CUSTOM_SETTING_LINEITEM = 'LineItemValues';
  public static final String REQUEST_PARAMETER = 'opportunityId';
 
  public static final String SOURCE_NAME_LOG = 'GetOpportunity_REST';
  public static final String METHOD_NAME_LOG = 'doGet';
  public static final String LOG_MESSAGE = 'Request Processing';
  public static final String LOG_DESTN_URL = 'N/A';
  public static final String INTEGRATION_EVENT = 'PublishEvent';
  public static final String DUMMY_VALUE = 'Dummy Value';
  public static final String GLOBAL_AREA = 'Global';
  public static final String ROLE_CODE = 'GL';

  /**************************Created by k.a.manoharan for R14.1->Sprint2->US9553->End******************************************/

  /**************************Created by y.a.wang for Sprint14.3 -> US283 -> Chapter1->Begin******************************************/
  public static final String ATTRIBUTE_LEVEL_1_CLOUD = 'Cloud';
  public static final String ATTRIBUTE_LEVEL_1_CLOUD_PLATFORM = 'Accenture Cloud Platform';
 //cr 735 public static final String ATTRIBUTE_LEVEL_1_AI = 'Artificial Intelligence';
  public static final String ATTRIBUTE_LEVEL_1_SUSTAINABILITY = 'Sustainability';
  public static final String ATTRIBUTE_LEVEL_1_ACP = 'Hybrid Cloud';//US 966 Change validation of Cross SG Offerings
  public static final String ATTRIBUTE_LEVEL_1_SERVICE = 'Everything as a Service';
  public static final String ATTRIBUTE_LEVEL_1_SECURITY = 'Security'; //US 966 Change validation of Cross SG Offerings
  public static final String ATTRIBUTE_LEVEL_1_BLOCKCHAIN ='Blockchain';
  public static final String ATTRIBUTE_LEVEL_1_EXTENDED ='Extended Reality';
  public static final String ATTRIBUTE_TAB_CSGO = 'Cross Service Group Offering';
  public static final String ATTRIBUTE_LEVEL_1_FIELDNAME = 'OM_R1_ATTRIBUTE_LEVEL_1__c';
  public static final String ATTRIBUTE_LEVEL_2_FIELDNAME = 'OM_R1_ATTRIBUTE_LEVEL_2__c';
  public static final String ATTRIBUTE_DESCRIPTION_FIELDNAME = 'OM_R1_Description__c';
  public static final String ATTRIBUTE_RELATED_ISS_FIELDNAME = 'OM_R1_Related_ISS__c';
  public static final String ATTRIBUTE_NOT_APPLICABLE = 'Not Applicable';
  /**************************Created by y.a.wang for Sprint14.3 -> US283 -> Chapter1->End******************************************/
  /**************************Created by sushma for R14.2->Sprint4->US9554->Begin******************************************/
  public static final String JSON_MSGBODY = 'data';
  public static final String CLASS_POSTOPPUPDATERESTQAGPS = 'PostOpportunityUpdateREST_QAandGPS';
  public static final String CLASS_QARISKTIERUPDATE = 'QARiskTierUpdate';
  public static final String CLASS_QAREVIEWUPDATE = 'QAReviewUpdate';
  public static final String CLASS_GPSPRICINGUPDATE = 'PricingUpdateGPS';
  
  public static final String METHOD_PROCESSOPPORTUNITY = 'processOpportunity';
  public static final String METHOD_HANDLER = 'Handler';
  public static final string OPPORTUNITY_ID = 'OpportunityId';
  public static final string TOTAL_CONTIGENCY_AMT = 'TotalContingencyAmt';
  public static final string TOTAL_TARGET_PRICE = 'TotalTargetPrice';
  public static final string JSON_CURRENCY = 'Currency';
  public static final string TOW_CONSULTING = 'Consulting';
  public static final string OPP_LINE_ITEM = 'OpportunityLineItems';
  public static final string  ALLIANCE_REVENUE = 'AllianceUtilRevenue';
  public static final string SUBCONTRACT_COST = 'SubContractorCost';
  public static final string OTHERCOSTS = 'OtherCosts';
  public static final string TOTAL_PAYROL = 'TotalPayroll';
  public static final string SERVICE_REVENUE = 'ServicesRevenue';
  public static final string SOFTOTHER_REVENUE = 'SoftOtherRevenue';  
 // public static final string PRODCUCTCD = 'ProductCd';
  public static final string PRODUCTID = 'ProductId';
  public static final string SSTARGETPRICE = 'SsgTargetPrice';
  public static final string WorkHours = 'WorkHours';
  public static final string CREATEDDATETIME = 'CreateDateTime';
  public static final string SOURCETIMESTAMP = 'SourceTimeStamp';
  public static final string MINTDATE_TIME = '0001-01-01T00:00:00';
  public static final string BUSINESSEVENT_NAME = 'BusinessEventName';
  public static final string PRICINGVESRSION = 'Version';
  public static final string PRICINGUPDATE_EVENT = 'PricingUpdate';
  public static final string OPPROTUNITY = 'Opportunity';
  public static final string TOTAL_TARGET_MARGIN = 'TotalTargetMargin'; //Updated by k.a.manoharan as part of sprint 7 - 329 - Chap 8
  /**************************Created by sushma for R14.2->Sprint4->US9554->End******************************************/
   /**************************Created by manoj for R15.4 US344699- start******************************************/
  public static final string BUSINESSEVENT_FINALIZEDEVENT ='QualityReviewFinalized';
  public static final string BUSINESSEVENT_RISKTIERUPDATED ='QualityRiskTierUpdated';
  public static final string BUSINESSEVENT_PLANGROUPED ='QAOpportunityPlanGrouped';
  public static final string BUSINESSEVENT_PLANWAIVED ='QAOpportunityPlanWaived';
  public static final string BUSINESSEVENT_PLANACTIVATED ='QAOpportunityPlanActivated';
  public static final string BUSINESSEVENT_PLANUNGROUPED ='QAOpportunityPlanUngrouped';
  public static final string BUSINESSEVENT_PLANUNWAIVED ='QAOpportunityPlanUnwaived';
  public static final string BUSINESSEVENT_PLANDEACTIVATED ='QAOpportunityPlanDeactivated';
  public static final string QA_LASTQACOMPLTERD_DATE ='LastQACompletionDate';
  public static final string EVENTTIMESTAMP = 'EventTimestamp';
  public static final String CLASS_QAEVENTSUPDATE = 'QAEventsUpdate';
  public static final String WMUID = 'WmuId';
  public static final String WMU_CREATEEVENT = 'MMECreatedEvent';
  public static final String WMU_UPDATEEVENT = 'MMEUpdatedEvent';
  public static final String WMU_MOVEEVENT = 'MMEMoveEvent';
  public static final String WMU_DELETEEVENT = 'MMEDeletedEvent';
  public static final String WMU_REFRESHEVENT = 'MMERefreshEvent';
  public static final String WMUREF_OBJECT ='MasterCustomerNumber';
  public static final String WMU_NWEPARENT ='NewParentWMUID';
  public static final String WMU_WMUID ='WMUID';
  
 /**************************Created by manoj for R15.4 US344699 - End******************************************/
 
  /**************************Created by sushma for Defect #302364- start******************************************/
  public static final string GPSSYNCH_ERROR_MESSAGE = 'The Financials are currently synced with GPS. A change in the Financials cannot be performed in MMS. Go to GPS to make the change and then resync.';
  
  /**************************Created by sushma for Defect #302364 - End******************************************/
  /**************************Created by k.a.manoharan for R14.2->Sprint3->US9559->Start******************************************/

  public static final String ACCOUNT_ID_PARAMETER = 'accountID';
  public static final String SOURCE_ACCOUNT_NAME_LOG = 'AccountOpportunity_REST';
  public static final String ACCOUNT_METHOD_NAME_LOG = 'getAccountAccountOpportunityDTO';
  public static final String CR_ACCOUNT_TYPE = 'CR';
  public static final String MC_ACCOUNT_TYPE = 'MC';
  public static final String MCR_ACCOUNT_TYPE = 'MCR';
  public static final String STAGE_CD_WON = 'Closed - Won'; // -------update by manoj defect Bug#257103 -- ---- //

  /**************************Created by k.a.manoharan for R14.2->Sprint3->US9559->End******************************************/

  /**************************Created by nadeem.anwar for R14.2->Sprint3->US9564->Begin******************************************/
  public static final String DATE_NULL_ERROR_MESSAGE_ON_PAGE = 'Please Select Start Date and End Date';
  public static final String START_DATE_GREATER_ERROR_MESSAGE = 'Start Date must be same as or before End Date';
  public static final String START_DATE_AFTER_TODAY_MESSAGE_ERRORMSG = 'Start Date must be same as or before Today';
  public static final String START_AND_END_TIME_NULL_ERRORMSG = 'Please select start time and end time';
  public static final String END_TIME_BEFORE_START_TIME_ON_SAME_DAY = 'Start Time must be before End Time if on same day';
  public static final String BATCH_START_MESSAGE = 'Record update in progress';
  public static final String CLASS_NAME = 'ReplayMessagesBatchClass';

  /**************************Created by nadeem.anwar for R14.2->Sprint3->US9564->End******************************************/

  /**************************Created by k.a.manoharan for R14.2->Sprint4->US9553->Start******************************************/
  public static final String TOW_OUTSOURCING = 'Outsourcing';
  public static final String TOW_OUTSOURCING_CODE = 'Z002';
  public static final String TOW_CONSULTING_CODE = 'Z001';
  //public static final String CREATEDBY_ROLECODE = 'ZOPT0010';
  /*** -------update by manoj defect Bug#257103 Begin-- ---- ****/
  public static final String CREATEDBY_ROLECODE = 'CreatedBy';
  public static final String CREATEDBY_ROLECODE_DESC = 'Created By';
  public static final String CREATEDBY_ROLECREATED = 'Created';
  public static final String CREATEDBY_ROLECREATED_DESC = 'Created By';
  /**** -------update by manoj defect Bug#257103 --End ----****/
  public static final String ROLE_CAL = 'CAL';
  public static final String ROLE_QA_DIR = 'Client QA Director';
  public static final String ROLE_AUTH_USER = 'Authorized User';
  public static final String ROLE_GCAL = 'GCAL';
  public static final String SERVICE_GRP_MC = 'CNMC';
  public static final String SERVICE_GRP_AO = 'OAO';
  public static final String SERVICE_GRP_BPO = 'OBPO';
  public static final String SERVICE_GRP_IO = 'OIO';
  public static final String SERVICE_GRP_SI = 'CSI';
  public static final String SERVICE_GRP_STRATS = 'CSC';
  public static final String SERVICE_GRP_INFRA = 'CIC';
  public static final String SERVICE_GRP_TC = 'CNTC';
  public static final String STAGE_ZERO = 'Z00';
  public static final String CONSTANTS_NO = 'No';
  public static final String DOMINANT_TOW = 'DominantTOW';
  public static final String OTHER_TOW = 'OtherTOW';
  /**************************Created by k.a.manoharan for R14.2->Sprint4->US9553->End******************************************/

  /**************************Created by shilpa.mn for R14.2->Sprint5->US9103 Chapter6->Start******************************************/
  public static final String WIN_PROBABILITY = '0';
  public static final String WIN_PROBABILITY_REPLACE = '%';
  public static final String WIN_PROBABILITY_BLANK = '';
  /**************************Created by shilpa.mn for R14.2->Sprint5->US9103 Chapter6->End******************************************/

  /**************************Created by sushma for R14.2->Sprint5->US9579 ->Start******************************************/
  public static final String ROLE_OBJECT = 'Role__c';
  public static final String MC_TYPE_ROLE_UPDATE = 'MCRoleUpdated';
  public static final String CR_TYPE_ROLE_UPDATE = 'CRRoleUpdated';
  /*** -------update by manoj defect Bug#268116/268129 Begin-- ---- ****/
  public static final String CR_TYPE_ROLE_UPDATE_ROLECHANG = 'CRRoleUpdatedRoleChange';
  public static final String MC_TYPE_ROLE_UPDATE_ROLECHANG = 'MCRoleUpdatedRoleChange';
  public static final String MC_TYPE_ROLE_CUSTOMSETTING_NAME = 'MC Role Personnel Nbr';
  public static final String CR_TYPE_ROLE_CUSTOMSETTING_NAME = 'CR Role Personnel Nbr';
  public static final String CR_TYPE_ROLE_CHAGE = 'CR RoleCd Change';
  public static final String MC_TYPE_ROLE_CHAGE = 'MC RoleCd Change';
  /**** -------update by manoj defect Bug#268116/268129 --End ----****/
  public static final String CD_ROLECODE = 'CD';
  public static final String TA_ROLECODE = 'TA';
  public static final String ML_ROLECODE = 'ML';
  public static final String GL_ROLECODE = 'GL';
  public static final String CFM_ROLECODE = 'CFM';
  public static final String AP_ROLECODE = 'AP';
  public static final String EVENTFIFTEN = '15';
  public static final String EVENTCR = '504';
  public static final String EVENTMC = '104';
  public static final String OUT_BATCH_OPPORTUNITY = 'Opportunity';
  public static final String OUT_BATCH_ACCOUNT = 'Account';
  public static final String OUT_BATCH_CLASSNAME = 'Opportunity_Outbound_Batch';
  public static final String OUT_BATCH_METHODNAME = 'checkRule';
  public static final String METHOD_CHECKRULE_FUTURE = 'CheckRuleFuture';
  public static final String ROLE_ROLECHANG = 'RoleChange';
  public static final String OPP_REVS = 'REVS';
  public static final String OPP_GASH = 'GASH';
  public static final String OPP_NMSA = 'NMSA';
  public static final String OPP_CMSA = 'CMSA';
  public static final String OPP_RELYES = 'Y';
  public static final String OPP_RELYESS = 'Yes';
  public static final String OPP_MASTERCUSTOMER = 'Master Customer';
  public static final String OPP_CRACCOUNT = 'CR';
  public static final String MASTER_CUSTOMER_RESTRICTED = 'Master Customer Restricted';
  public static final String MCR_TYPE = 'MCR';
   public static final String EVENT_TYPE_ID_24  = '24';
  /**************************Created by sushma for R14.2->Sprint5->US9579->End******************************************/

  /* 03/06/2014  : Added Values for ChangeRequestsStatusTriggerHelper class  - by pratibha.bhosale@accenture.com : Start*/
  public static final String MMS_STRING = 'MMS';
  public static final String CHANGE_TO_SAP_HELPER = 'ChangeRequestsStatusTriggerHelper';
  public static final String CHANGE_TO_SAP_HELPER_DML_METHOD = 'performDMLOperations';
  public static final String CANCELLED_STR = 'Canceled';
  public static final String GLOBAL_CLIENT_CLASSIFICATION = 'Global Client Classification';
  public static final String CONSTANTS_YES = 'Yes';
  public static final String CLIENT_CLASSIFICATION_ATTRIBUTE = 'Client Classification Attribute';
  public static final String PARENT_ACCOUNT = 'Parent Account';
  public static final String PRIMARY_OG = 'PrimaryOG';
  public static final String PRODUCTS_OG = 'Products';
  public static final String RESOURCES_OG = 'Resources';
  public static final String HEALTH_AND_PUBLIC_SERVICE_OG = 'Health & Public Service';
  public static final String COMMUNICATIONS_MEDIA_AND_TECHNOLOGY_OG = 'Communications, Media & Technology';
  public static final String FINANCIAL_SERVICES_OG = 'Financial Services';
  public static final String PRD_OG = 'PRD';
  public static final String RES_OG = 'RES';
  public static final String H_AND_PS_OG = 'H&PS';
  public static final String CMT_OG = 'CMT';
  public static final String FS_OG = 'FS';
  public static final String NULL_VAL = '';
  public static final String COMMA_STR = ', ';
  public static final String HYPHEN_STR = '-';
  public static final String G2000_POSITION = 'G2000 Position';
  public static final String CURRENT_GCAL = 'Current GCAL';
  public static final String ROLE_NOT_EXISTS = 'role doesnt exist';
  public static final String CURRENT_TAL = 'Current TAL';
  public static final String CURRENT_MCAL = 'Current MCAL';
  public static final String ROLE_TAL = 'TAL';
  public static final String ROLE_MCAL = 'MCAL';
  public static final String NEW_GCAL_CREATED = 'New GCAL Created';
  public static final String NEW_TAL_CREATED = 'New TAL Created';
  public static final String NEW_MCAL_CREATED = 'New MCAL Created';
  public static final String GCAL_DELETED = 'GCAL Deleted';
  public static final String MCAL_DELETED = 'MCAL Deleted';
  public static final String TAL_DELETED = 'TAL Deleted';
  public static final String TA_ROLE_CODE = 'TA';
  public static final String ML_ROLE_CODE = 'ML';
  public static final String STATUS_STR = 'Status';
  public static final String CLIENT_NAME = 'Client Name';
  public static final String ACCOUNT_STR = 'Account';
  public static final String MASTER_CUSTOMER = 'Master Customer';

  /************** Added by Praveen 12/17/2014 ***************/
  public static final String MMS_ADMIN = 'MMS Admin';
  public static final String MMS_ADMIN_LIGHTNING = 'MMS Admin Lightning';

  /* 03/06/2014  : Added Values for ChangeRequestsStatusTriggerHelper class  - by pratibha.bhosale@accenture.com : End*/
  
  public static final String CHARACTERISTICS_TAB  = 'CHARACTERISTICS';
  public static final String THE_NEW_TAB  = 'THE NEW';
  public static final String SERVICE_GROUP_TAB  = 'SERVICE GROUP OFFERINGS';
  public static final String PRODUCTS_TAB  = 'PRODUCT & PLATFORMS';
  public static final String ALLIANCES_TAB  = 'ALLIANCE AND PARTNERS';

  /***** 05/06/2014  : Added Values for GetCustomerDetail_REST class  - by s.boyapati@accenture.com : start  ***/
  public static final INTEGER STATUS_CODE_400  = 400;
  public static final INTEGER STATUS_CODE_404  = 404;
  public static final INTEGER STATUS_CODE_500  = 500;
  
  /***** 05/06/2014  : Added Values for GetCustomerDetail_REST class  - by s.boyapati@accenture.com : End  ***/

  /**************************Created by Shilpa for R14.2->Sprint5->US#1:Chapter 8->Start******************************************/
  public static final String ROLE_CFM = 'CFM';
  public static final String ROLE_CD = 'CD';
  public static final String GEO_AREA_GLOBAL = 'Global';
  public static final String GEO_AREA_NONGLOBAL = 'NonGlobal';
  public static final String GEO_AREA_CR = 'CR';
  public static final String GEO_AREA_AUTHORISED = 'Authorized User';
  public static final String GEO_AREA_AUTHORISEDUSER = 'Authorized';
  /**************************Created by Shilpa for R14.2->Sprint5->US#1:Chapter 8->Start******************************************/
  /**************************Created by v.manojkumar for R14.2 -> sprint5A->Us-315 Chapter 3 and 5 ->begin******************************************/
  public static final String SERVICEGROUPSC = 'MC';
  public static final String STRATEGY_TAB = 'Strategy';
  public static final String NULL_TAB = 'Null';
  public static final String SCATTRIBUTE_TYPE = 'Strategy Offerings';
  public static final INTEGER PERCENT_NULL = Null;
  public static final INTEGER PERCENT_ZERRO = 0;
  public static final String MODESETTING_EDIT = 'edit';
  public static final String MODESETTING_READONLY = 'readonly';
  public static final String DESCRIPTION_NULL = 'Null';
  public static final String DESCRIPTION_NONE = '--None--';
  public static final String ERROR_SELECT_VALUE = 'You have to select a value';
  public static final String ERROR_ZERO_VALUE = ' cannot allow zero values' ;
  public static final String ERROR_GREATER_100 = ' should not be greater than 100%';
  public static final String ERROR_ADD_100 = ' should add 100%';
  public static final String ERROR_DUPLICATED = ' should not be duplicated';
  public static final String SERVICE_GROUP = '';
  public static final String GLOBAL_GROUP = '';
  public static final String MCCOREOFFERING = '';
  public static final String SELECTOPTION_NULL = '';
  public static final String SELECTOPTION_NONE = '--None--';
  public static final String ATTRIBUTE_LEVEL_1 = 'OM_R1_ATTRIBUTE_LEVEL_1__C';
  public static final String ATTRIBUTE_LEVEL_2 = 'OM_R1_ATTRIBUTE_LEVEL_2__C';
  public static final String MCDescription = 'OM_R1_Description__c';
  public static final String MCSSG = 'OM_R1_SSG__c';
  public static final String PRIZE_SSG = 'ssg';
  public static final String TOTL_REVENUES = 'revenue';
  public static final String SELECTOPTION_N_A = 'N/A';
  public static final String SELECTOPTION_BLANK = '-- ';
  public static final String SOURCE_NAME_LOGATT = 'OM_R1_OpportunityAttributeController';
  public static final String METHOD_NAME_LOATTINIT = 'init';
  public static final String METHOD_NAME_LOATTADD = 'DoAdd';
  public static final String METHOD_NAME_LOATTSAVE = 'DoSave';
  public static final String METHOD_NAME_LOATTDELETE = 'DoSave';
  /**************************Created by v.manojkumar for R14.2 -> sprint5A->Us-315 Chapter 3 and 5 ->begin******************************************/

  /* 06/06/2014  : Added Values for AccountTriggerHelper class  - by pratibha.bhosale@accenture.com : Start*/
  public static final String ACCOUNT_HELPER = 'AccountsTriggerHelper';
  public static final String INSERT_STR = 'Insert';
  public static final String POST_STR = 'POST';
  public static final String AFTER_INSERT_STR = 'AFTER INSERT';
  public static final String UPDATE_STR = 'Update';
  public static final String PUT_STR = 'PUT';
  public static final String AFTER_UPDATE_STR = 'AFTER UPDATE';
  public static final String AFTER_DELETE_STR = 'AFTER DELETE';
  public static final String AFTER_UNDELETE_STR = 'AFTER UNDELETE';
  public static final String WEB_SERVICE_3658_STR = '3658 -Web Service';
  public static final String WEB_SERVICE_3658_NICKNAME = '3658-web service';
  public static final String ANA_GUTIERREZ_STR = 'Ana Gutierrez';
  /* 06/06/2014  : Added Values for AccountTriggerHelper class  - by pratibha.bhosale@accenture.com : End*/

  /* 09/06/2014  : Added Values for UserTriggerHelper class  - by pratibha.bhosale@accenture.com : Start*/
  public static final String PEOPLE_URL_STR = 'https://people.accenture.com/Experience.aspx?accountname=';
  public static final String TRUE_STR = 'TRUE';
  public static final String NEW_LINE_STR = '\n';
  public static final String ACCENTURE_CHATTER_REGULAR_USER = 'Accenture Chatter Regular User';
  public static final String ACCENTURE_DOMAIN_STR = '@accenture.com';
  /* 09/06/2014  : Added Values for UserTriggerHelper class  - by pratibha.bhosale@accenture.com : End*/

  /* 16/06/2014  : Added Values for RoleTriggerHelper class  - by pratibha.bhosale@accenture.com : Start*/
  public static final String COMPLETED_STR = 'Completed';
  public static final String ROLE_HELPER = 'RoleTriggerHelper';
  public static final String ROLE_HELPER_DML_METHOD = 'performDMLOperations';
  public static final String CURRENT_ACCOUNT_PLAN_ADMIN = 'Current Account Plan Admin';
  public static final String ROLE_ACCOUNT_PLAN_ADMIN = 'Account Plan Admin';
  public static final String ACCOUNT_PLAN_ADMIN_DELETED = 'Account Plan Admin Deleted';
  public static final String NEW_ACCOUNT_PLAN_ADMIN_CREATED = 'New Account Plan Admin Created';
  /* 16/06/2014  : Added Values for RoleTriggerHelper class  - by pratibha.bhosale@accenture.com : End*/

  /********* 26/06/2014 Added by y.a.wang for BUG #253320 Begin ************/
  //SG
  //public static final String PRODUCT_TYPE_CD_MC = 'CNMC';
  public static final String PRODUCT_TYPE_CD_MC = 'CNMC';
  public static final String PRODUCT_TYPE_CD_TC = 'CNTC';
  public static final String PRODUCT_TYPE_CD_SI = 'CSI';
  public static final String PRODUCT_TYPE_CD_IO = 'OIO';
  public static final String PRODUCT_TYPE_CD_AO = 'OAO';
  public static final String PRODUCT_TYPE_CD_BPO = 'OBPO';
  public static final String PRODUCT_TYPE_CD_OBPO = 'BPO';
  public static final String PRODUCT_TYPE_CD_IC = 'CIC';
   public static final String PRODUCT_TYPE_CD_SC = 'CSC';
   public static final String PRODUCT_TYPE_BPO = 'Business Process Outsourcing';
   
   //As per MSIL-901 and Defect-512434 New AO,IC,IO,SI Attribute Validation-vishal.gulati
  public static final String PRODUCT_TYPE_AO = 'Application Outsourcing';
  public static final String PRODUCT_TYPE_TC = 'Technology Consulting';
  public static final String PRODUCT_TYPE_IO = 'Infrastructure Outsourcing';
  public static final String PRODUCT_TYPE_IC = 'Infrastructure Consulting';
  public static final String PRODUCT_TYPE_SI = 'System Integration';
   
  //TOW
  public static final String PRODUCT_TYPE_CD_CONSULTING = 'Consulting';
  public static final String PRODUCT_TYPE_CD_OUTSOURCING = 'Outsourcing';
  public static final String PRODUCT_TYPE_CD_BOTH = 'Consulting/Outsourcing';
  /********* 26/06/2014 Added by y.a.wang for BUG #253320 End ************/
  /*********30/06/2014 Added by sushma.apdmappa for US 315 Chapter 8 Begin*********/
  /********* 10/07/2014 Added by y.a.wang for US49 chapter2 Begin ************/
  public static final String DELIVERY_LEAD_AO_ROLE = 'Delivery Lead - AO';
  public static final String DELIVERY_LEAD_IO_ROLE = 'Delivery Lead - IO';
  public static final String DELIVERY_LEAD_SI_ROLE = 'Delivery Lead - SI';
  /********* 21/11/2014 Commented by neha.phutela for Defect#351778 uncommented by Adiya dubey ************/
  public static final String DELIVERY_LEAD_TC_ROLE = 'Delivery Lead - TC';
  /*********21/11/2014 Added by neha.phutela for Defect#351778 Begin *********/
  public static final String DELIVERY_LEAD_SC_ROLE = 'Delivery Lead - SC';
  /*********21/11/2014 Added by neha.phutela for Defect#351778 End *********/
  public static final String DELIVERY_LEAD_IC_ROLE = 'Delivery Lead - IC';
  public static final String DELIVERY_LEAD_MC_BPE_ROLE='Delivery Lead - MC (BPE)';
  public static final String DELIVERY_LEAD_BPO_ROLE='Delivery Lead - BPO';
  /**********22/12/2014 Added by f.matutelasarte for Defect#371241 ***********/
  public static final String DELIVERY_LEAD = 'Delivery Lead';
  public static final String RELATIONSHIP_LEAD = 'Relationship Lead';
  /**********22/12/2014 end f.matutelasarte for Defect#371241 ***********/
  public static final String SOLUTION_ARCH_BPO_ROLE= 'Solution Arch - BPO';
  public static final String SOLUTION_ARCH_MC_BPE_ROLE='Solution Arch - MC (BPE)';
  public static final String SOLUTION_ARCH_AO_ROLE = 'Solution Arch - AO';
  public static final String SOLUTION_ARCH_IO_ROLE = 'Solution Arch - IO';
  public static final String SOLUTION_ARCH_SI_ROLE = 'Solution Arch - SI';
  public static final String SOLUTION_ARCH_SC_ROLE = 'Solution Arch - SC';
  public static final String SOLUTION_ARCH_IC_ROLE = 'Solution Arch - IC';
  public static final String SOLUTION_ARCH_TC_ROLE = 'Solution Arch - TC';
  public static final String SOLN_ENTERPRISE_ARCH_CROSS_SG = 'SOLN/Enterprise Arch -Cross SG';
  public static final String SOLUTION_ARCH = 'Solution Arch';
  public static final String SALES_CAPTURE_OPPORTUNITY_DIRECTOR = 'Sales Capture';
  public static final String SALES_CAPTURE_OPPORTUNITY_DIRECTOR_PREFY17 = 'Sales Capture - Opp Director';
  public static final String SALES_CAPTURE_OTHER='Sales Capture - Other';
  public static final String OPPORTUNITY_QA_DIRECTOR = 'Opportunity QA Director';
  /********* 10/07/2014 Added by y.a.wang for US49 chapter2 End ************/
  public static final String CMT_NORTH_AMERICA_OU = 'CMT NORTH AMERICA OU';
  public static final String CMT_EUROPE_ASGR = 'CMT Europe ASGR';
  public static final String CMT_EUROPE_GALLIA = 'CMT EUROPE Gallia';
  public static final String CMT_EUROPE_Nordic = 'CMT EUROPE Nordic';
  public static final String CMT_EUROPE_UKANDIreland = 'CMT EUROPE UK/Ireland';
  public static final String CMT_AAPAC_Japan = 'CMT AAPAC Japan';
  public static final String CMT_AAPAC_ANZ = 'CMT AAPAC ANZ';
  public static final String CMT_EUROPE_IGEM = 'CMT EUROPE IGEM';
  public static final String CMT_LATIN_AMERICA = 'CMT LATIN AMERICA';
  public static final String CMT_EUROPE_SPAI = 'CMT EUROPE SPAI';
  public static final String CMT_AAPAC_Greater_China = 'CMT AAPAC Greater China';
  public static final String CMT_AAPAC_India = 'CMT AAPAC Greater China';
  public static final String CMT_AAPAC_ASEAN = 'CMT AAPAC ASEAN';
  public static final String CMT_AAPAC_South_Korea = 'CMT AAPAC ASEAN';
  /*********30/06/2014 Added by sushma.apdmappa for US 315 Chapter 8 End*********/
  /*********02/07/2014 Added by mallareddy.illuri for US 9554 Chapter 1 Begin*********/
  public static final String EXCEPTION_MESSAGE = 'expected a valid value';
  
  public static final String ERROR_CODE = 'Error Code';
  public static final String ERROR_DESCRIPTION = 'Error Description';
  public static final String INVALID_VALUE = 'E006';
  public static final String WRONG_PARAMETER = 'Wrong parameters';
  public static final String TOWCD_OUTSOURCING = 'O';
  public static final String TOWCD_CONSULTING_OUTSOURCING = 'CO';
  public static final String INVALID_TYPEOFWORK = 'E005 :Opportunity of type Outsourcing cannot be synched in MMS';
  public static final String INVALD_TOW_ECODE = 'E005';
  public static final String INVALD_TOW_EDESCRIPTION = 'Opportunity of type Outsourcing cannot be synched in MMS';
  public static final String EXCEPTION_MESSAGE1 = 'Cannot parse';
  public static final String DATE_ECODE = 'E007';
  public static final String DATE_EDESCRIPTION = 'Wrong Date parameter';
  public static final String SOURCED_FROM = 'GPS';
  //US1830 Filter Opportunities for C2C Pricing Integrations Start
  public static final String INVALID_HIERARCHY = 'E008 :Opportunity of type Revenue Sharing, MSA or Gain Sharing cannot be synched in MMS';
  //public static final String INVALD_HIERARCHY_ECODE = 'E008';
  //public static final String INVALD_HIERARCHY_EDESCRIPTION = 'Opportunity of type Revenue Sharing, MSA or Gain Sharing cannot be synched in MMS'; 
  //US1830 Filter Opportunities for C2C Pricing Integrations End
  /********** Modified for CR 194 - Shilpa - Starts**********/
  public static final String SOURCED_MMS = 'MMS';
  /********** Modified for CR 194 - Shilpa - Ends**********/
  /********** Modified for CR 444 - Neha - Starts**********/
  public static final String SOURCED_C2C = 'C2C';
  public static final String CLASS_C2CPRICINGUPDATE ='PricingUpdateC2C';
  public static final String SOLUTION_CONTINGENCY='SolutionContingencyEvent';
  public static final string C2CSYNCH_ERROR_MESSAGE = 'The Financials are currently synced with C2C. A change in the Financials cannot be performed in MMS. Go to C2C to make the change and then resync.';
  /********** Modified for CR 444 - Neha - Ends**********/
  /*************10/07/2014 added by ranga.r.modampuri for US 37 chapter 2 Begin*********/
  public static final String SELECTED_COMPETITOR_NAME_SOLESOURCE = 'SOLE SOURCE';
  public static final String SELECTED_COMPETITOR_NAME_OTHER = 'OTHERS';
  public static final String SELECTED_COMPETITOR_NAME_UNKNOWN_ATTHISTIME = 'UNKNOWN AT THIS TIME';

  /*************10/07/2014 added by ranga.r.modampuri for US 37 chapter 2 End*********/
  /*************15/07/2014 added by narender.g.veeragoni for US 9600 chapter 8 Begin*********/
  public static final String MSA_Indicator = 'MSAIndicator';
  public static final String Hierarchy_Type = 'HierarchyType';

  /*************15/07/2014 added by narender.g.veeragoni for US 9600 chapter 8 End*********/
  /* 20/06/2014  : Added Values for CutomerToCsgHelper class  - by pratibha.bhosale@accenture.com : Start*/
  public static final String BOTH_OU_AND_CSG_BLANK = 'Both OU and CSG are blank - one must be populated';
  public static final String POPULATE_EITHER_OU_AND_CSG = 'Both OU and CSG are populated - only one should be populated';
  /* 20/06/2014  : Added Values for CutomerToCsgHelper class  - by pratibha.bhosale@accenture.com : End*/

  /*****Created by y.a.wang 20140709 for Sprint 6 US 81 Chapter1 Begin ****/
  public static final String APPROVALSTATUS_NONE = 'NN';
  public static final String APPROVALSTATUS_NOTSUBMITTED = 'NOS';
  /*****Created by y.a.wang 20140709 for Sprint 6 US 81 Chapter1 End ****/
  /********* 08/07/2014 Added by raj.kishore.prasad for Story 61 - Chapter 6 - Renegotiation Validations ************/
  public static final String ERROR_MSG_RENEGOTIATION_PARENT = 'This Opportunity has been renegotiated and cannot be a parent opportunity';
  public static final String ERROR_MSG_RENEGOTIATION_BRK_LIST = 'You can not break renegotiations from this list';
  /********* 26/06/2014 Added by raj.kishore.prasad for Story 61 - Chapter 6 - Renegotiation Validations ************/

  /****created by subra 10-july-2014 for sprint 6 US 9103 chapter 9 start *****/
  public static final String ren = 'REN';
  /****created by subra 10-july-2014 for sprint 6 US 9103 chapter 9 end*****/

  /**************************Created  by nadeem.anwar as part of US 64 chapter 2 Begin************************************/
  public static final String UPDATE_HIERARCHYTYPE_OF_STANDALONE_OPPORTUNITY = 'None';
  public static final String IGNORE_NONE_FROM_HIERARCHY_TYPE = 'None';
  /**************************Created  by nadeem.anwar as part of US 64 chapter 2 end************************************/

  /**************************Created  by y.a.wang for US 49 Chapter 2 Begin************************************/
  public static final String CR_ROLE_CLIENT_ACCOUNT_LEAD = 'CAL';
  public static final String CLIENT_ACCOUNT_LEAD = 'Client Account Lead';
  public static final String CR_ROLE_CLIENT_QA_DIRECTOR = 'Client QA Director';
  public static final String FIELD_ENTERPRISEID_IN_ROLE = 'EnterpriseID of Person in Role';
  public static final String FIELD_PERCENTAGE = 'Percentage';
  public static final String ERRORMESSAGE_PARAM1 = '{0}';
  public static final String ERRORMESSAGE_PARAM2 = '{1}';
  public static final String CONSTANTS_TIMES = 'times';
  public static final String CONSTANTS_BLANK = ' ';
  public static final String ANYVALUE = 'Any Value';
  /**************************Created  by y.a.wang for US 49 Chapter 2 End************************************/
  public static final String HIERARCHY_TYPE_GAINSHARING = 'Gain Sharing';
  //**********end Bug no: 276650******************//
  public static final String HIERARCHY_TYPE_REVENUESHARE = 'Revenue Sharing';
  //US1830 Filter Opportunities for C2C Pricing Integrations Start
  public static final String HIERARCHY_TYPE_MSA = 'MSA';
  //US1830 Filter Opportunities for C2C Pricing Integrations End

  /*************************Created by k.a.manoharan for defect fix 280822 Start*******/
  public static final String CHILDFROMIND_CD = 'Z02';
  public static final String EXTENSIONIND_CD = 'Z01';
  public static final String RENEGOTIATIONIND_CD = 'Z03';
  /*************************Created by k.a.manoharan for defect fix 280822 End*******/
  /********* 11/08/2014 Added by y.a.wang for defect 285186 Begin ************/
 // public static final String CSG_AAPAC_ANZ = 'AAPAC ANZ';
  public static final String CSG_AAPAC_ANZK = 'AAPAC ANZK';
  public static final String CSG_AAPAC_Japan = 'AAPAC Japan';
  public static final String CSG_EUROPE_ASGR = 'Europe ASGR';
  public static final String CSG_EUROPE_Nordic = 'EUROPE Nordic';
  public static final String CSG_EUROPE_UKIreland = 'EUROPE UK/Ireland';
  public static final String CSG_NA = ' NA ';

  public static final String CSG_AAPAC_ASEAN = 'AAPAC ASEAN';
  public static final String CSG_AAPAC_Greater_China = 'AAPAC Greater China';
  public static final String CSG_AAPAC_India = 'AAPAC India';
  //public static final String CSG_AAPAC_South_Korea = 'AAPAC South Korea';
  public static final String CSG_EUROPE_Gallia = 'EUROPE Gallia';
  //public static final String CSG_EUROPE_IGEM = 'EUROPE IGEM';
  public static final String CSG_EUROPE_ICEG = 'EUROPE ICEG';
  public static final String CSG_LATIN_AMERICA = 'LATIN AMERICA';
  //public static final String CSG_EUROPE_SPAI = 'EUROPE SPAI';
  public static final String CSG_EUROPE_IBERIA = 'EUROPE Iberia';
  public static final String CSG_AAPAC_MET = 'AAPAC MET';
  public static final String CSG_AAPAC_AFRICA = 'AAPAC AFRICA';
  public static final String CMT_NA_CANADA = 'CMT NA Canada';

  /********* 11/08/2014 Added by y.a.wang for defect 285186 chapter2 End ************/

  /*************************Created by k.a.manoharan for defect fix 280822 Start*******/
  public static final String WBS_FLAG = 'WBS_Creation_Sent_Flag__c';
  public static final String WBS_EVENTTYPE_ID = '18';
  public static final String COMPANY_CODE = 'CompanyCode';
  public static final String ROLE_GCAL_CODE = '14';
  public static final String ROLE_CAL_CODE = 'ZPART001';
  public static final String ROLE_QA_DIR_CODE = 'ZPART002';
  public static final String ROLE_AUTH_USER_CODE = 'ZAUT0008';

  /*************************Created by k.a.manoharan for defect fix 280822 End*******/

  public static final String EXCEPTION_PERFORMANCE_LOG = 'IsLogEnabled';

  /*** Modified by changyuan.shao 2014-08-27 defect #294994 filter admin profile for US49 validation begin ***/
  public static final String SYS_ADMIN = 'System Administrator';
  public static final String SYS_3658_ADMIN = '3658SysAdmin';
  /*** Modified by changyuan.shao 2014-08-27 defect #294994 filter admin profile for US49 validation end ***/

  /*** Modified by Nadeem.anwar 2014-08-28 defect Client Level Secutity begin *******************************/
  public static final String MMS_CLIENT_TEAM_PROFILE = 'MMS Client Team Profile';
  public static final String ACCT_PLAN_ADMIN = 'Account Plan Admin';
  public static final String AM_ADMIN = 'Admin';
  public static final String LEGAL_CLIENT_TEAM_PROFILE = 'Legal Client Team Profile';
  public static final String LEGAL_CLIENT_TEAM_LIGHTNING_PROFILE = 'MMS CT Profile Lightning';
  /*** Modified by Nadeem.anwar 2014-08-28 defect Client Level Secutity end *********************************/
    
  public static final String READ_MMS_CLIENT_TEAM_PROFILE = 'Read MMS Client Team Profile';
    
  //US800
  public static final String MMS_CAMPAIGN_MANAGER_PROFILE = 'MMS Campaign Manager Profile';

  /**************************Created  by v.manojkumar as part of R15.1 sprint 7 US 321 Begin************************************/
  public static final String OG_HPS = 'Health & Public Service';
  public static final String VIEW_BYSTAGE = 'By Stage';
  public static final String VIEW_BYFUNCTION = 'By Functional Grouping';
  public static final String R_BYSTAGE = 'Opportunity by Stage For H&PS';
  public static final String R_BYSTAGENONHPS = 'Opportunity by Stage For NON H&PS';
  public static final String R_BYFUNCTION_GROUP = 'Opportunity Edit';
  public static final String SWITCH_CLASS_NAME = 'Switch_View_Onclick';
  public static final String SWITCH_CLASS_NAME_METHOD = 'recordtypecahng';
  public static final String GET_PROFILE_NAMECT = 'MMS Client Team Profile';
  /**************************Created  by v.manojkumar as part of R15.1 sprint 7 US 321 end************************************/

  /**************************Created  by s.boyapati as part of R15.1 sprint 7 US 76 ch2 start************************************/
  public static final String APPROVE = 'APPROVE';
  public static final String APPROVE_L = 'Approve';
  public static final String APPROVED = 'APP';
  public static final String NONE = 'None';
  public static final String NORESPONSE = 'No Response';
  public static final String DEALTEAMNONCOMP = 'Deal Team Non-Compliant';
  public static final String NO = 'NO';
  public static final String REJECT = 'REJECT';
  public static final String REJECT_L = 'Reject';
  public static final String REJECTED = 'REJ';
  public static final String RESHAPE = 'RSH';
  public static final String RESHAPE_L = 'Reshape';
  public static final String CONTINGENT_APPROVED = 'CAPP';
  public static final String CONTINGENT_APPROVED_L = 'Approve with Conditions';
  public static final String APPROVED_LOWERCASE = 'Approved';
  public static final String NONCOMPLIANT = 'NCOM';
  public static final String DELEGATED = 'Delegated';
  public static final String SUBMIT_FOR_REVIEW = 'Submit for Review';
  public static final String IN_PROGRESS = 'In Progress';
  public static final String BLOCK = 'Block';
   
  /************************Added By y.a.wang for CR38 Begin************************/
  public static final String OVERLAP_APPROVER = 'OAPP';
  /************************Added By y.a.wang for CR38 End************************/
  /************************Added By jose.f.blasco for bug#354907 Begin************************/
  public static final String REVIEWER = 'REV';
  /************************Added By jose.f.blasco for bug#354907 End************************/
  public static final String IDCOLON = 'Id:';

  /**************************Created  by s.boyapati as part of R15.1 sprint 7 US 76 ch2 End************************************/

  /**************************Created  by Shilpa.mn for  sprint 8 US 75 ch6 Start************************************/
  public static final String INACTIVE = 'InActive';
  public static final String RETIREE = 'Retiree';
  /**************************Created  by Shilpa.mn  for CR 134 Start************************************/
  public static final String ACTIVE = 'Active';
  /**************************Created  by Shilpa.mn  for CR 134 Start************************************/
  /**************************Updated  by y.a.wang for 359053 Start************************************/
  //public static final String ENTERPRISEID = 'Enter enterprise Id';
  //public static final String ENTERPRISEID = 'Enter enterprise ID';
  public static final String ENTERPRISEID = '99999998';
  /**************************Updated  by y.a.wang for 359053 end************************************/
  //Bug 394092 Start
  public static final String UNASSIGNED_APPROVER = 'Unassigned - Map Approver';
  //Bug 394092 End
  public static final String CLASS_RemoveInactiveApproversBatch = 'RemoveInactiveApprovers_Batch';

  public static final String ERROR = 'Approver Name/Names need to be populated to progress to the next sales stage.';
  /**************************Created  by Shilpa.mn for  sprint 8 US 75 ch6 End************************************/
  public static final String CLASS_insertAccountAndOpportunityTeamBatch = 'insertAccountAndOpportunityTeam_Batch';
  /**************************Created  by neha.phutela for 15.4 user activation/deactibvation Start************************************/
  public static final String CLASS_UserInactivityDeactivation_Batch='UserInactivityDeactivation_Batch';
   public static final String STATUSNEW='New';
  public static final String CLASS_UserTriggerHelper='UserTriggerHelper';
  public static final String MESSAGE = 'Message';
  public static final String CANACTIVATE = 'CANACTIVATE';
  public static final String NOLICENSE = 'NOLICENSE';
  public static final String ACTIVATED = 'ACTIVATED';
  public static final String NOTEXIST = 'NOTEXIST';
  public static final String NOTELIGIBLE = 'NOTELIGIBLE';
  public static final String REQUEST_ENTERPRISEID ='enterpriseId';
  public static final String CLASS_REACTIVATEUSERRECORD_REST ='ReActivateUserRecord_REST';
  public static final String METHOD_REACTIVATE ='reactivate';
  public static final String METHOD_USERLICENSE ='userLicense';
  public static final String REQUEST_ACTIVATEUSER='activateUser';
  public static final String SUMOMESSAGE=':**@licensesshort**:';
  public static final String SALESFORCE='Salesforce';
  public static final String WITHDRAWN='Withdrawn';

  // MERO
  public static final String FORMERCONTRACTOR='Former Contractor'; 
  //

/**************************Created  by neha.phutela for 15.4 user activation/deactibvation End************************************/  
  /**************************Created  by y.a.wang for Defect 298881 Start************************************/
  /**************************Updated  by y.a.wang for 342794(CR74) Start************************************/
  //public static final Set<String> ASW_PRODUCT_CODE_SET = new Set<String>{'SUBSG032', 'SUBSG033','SUBSG034','SUBSG035','SUBSG036','SUBSG061','SUBSG062'};
  public static final Set<String> ASW_PRODUCT_CODE_SET = new Set<String> {'SUBSG032', 'SUBSG033', 'SUBSG034', 'SUBSG035', 'SUBSG036', 'SUBSG061', 'SUBSG062', 'SUBSG101', 'SUBSG102'};
  /**************************Updated  by y.a.wang for 342794(CR74) End************************************/
  /**************************Created  by y.a.wang for Defect 298881 End************************************/

  /***** Created by bowen.luo for 15.1 Story73->chapter2 in Sprint 9  Begin **************************/
  public static final String RISK_PROFILE_HIGH = '1';
  public static final String SELF_ASSESSMENT_HIGH = '1- High';
  /***** Created by bowen.luo for 15.1 Story73->chapter2 in Sprint 9  End ******************/

  /***** Created by changyuan.shao for 15.1 US#324970 Wrong approval process for AA and DCAL deals Begin *****/
  public static final String SELF_ASSESSMENT_1 = '1- High';
  public static final String SELF_ASSESSMENT_2 = '2- Above  Normal';
  public static final String SELF_ASSESSMENT_3 = '3-Normal';
  /***** Created by changyuan.shao for 15.1 US#324970 Wrong approval process for AA and DCAL deals End *****/
  /***** Created by narender.g.veeragoni for 15.1 US#328292 in Sprint 9 Start *****/
  public static final String STAGE_ONE = 'Stage 1';
  public static final String STAGE_ONE_NOT_COMPLETED = 'Stage 1 not Completed';
  public static final String STAGE_TWO = 'Stage 2';
  public static final String STAGE_TWO_NOT_COMPLETED = 'Stage 2 not Completed';
  public static final String STAGE_THREE = 'Stage 3';
  public static final String STAGE_ZERO_NOT_COMPLETED = 'Stage 0 not Completed';
  public static final String STAGE_ONE_COMPLETED = 'Stage 1 Completed';
  public static final String STAGE_TWO_COMPLETED = 'Stage 2 Completed';
  public static final String STAGE_ZERO_COMPLETED = 'Stage 0 Completed';
  /***** Created by narender.g.veeragoni for 15.1 US#328292 in Sprint 9 End *****/
  public static final String UNAPPROVED_RECORD_TYPE = 'Unapproved  OCT';
  public static final String MANUAL_RECORD_TYPE = 'Unapproved manual';
  public static final String APPROVER_BY_STAGE_OBJECT = 'OM_R1_Approvers_By_Stage__c';
  // added by praveen on 11/17/2014 for Defect : 344664
  public static final String ABYSTAGE_SOURCE_RISK = 'Risk';
  public static final String ABYSTAGE_SOURCE_REVENUE = 'Revenue';
  public static final String ABYSTAGE_SOURCE_CCI = 'CCI';
  public static final String ABYSTAGE_SOURCE_SG = 'SG';
  public static final String ABYSTAGE_SOURCE_PRICE = 'Price';
  /**************************Created  by v.manojkumar as part of R15.1 sprint 9 CR-60 Begin************************************/
  public static final String IS_EXTENSION_YES = 'Yes';
  public static final String IS_EXTENSIONn_NO = 'No';
  public static final String ISEXTENSIONYES = 'Y';
  public static final String ISEXTENSIONNO = 'N';
  /**************************Created  by v.manojkumar as part of R15.1 sprint 9 CR-60 end************************************/

  //ana.m.gutierrez - Bug #354155 - Right address in email service for Approvers by Stage
  public static final String MMSAPPROVALADDRESS = 'MMSApproval';
  //ana.m.gutierrez - Bug #354155 - Right address in email service for Approvers by Stage

  //ana.m.gutierrez - Bug #412693 - manage.mysales mailbox address (required to send mail to Approvers by Stage)
  public static final String MMSORGWIDEADDRESS = 'manage.mysales@accenture.com';
  //ana.m.gutierrez - Bug #412693 - manage.mysales mailbox address (required to send mail to Approvers by Stage)
  public static final String ROLE_GCQD = 'Global Client QA Director'; // Added as part of CSAT 2016 US
  public static final String ORG_ROLE_GCAL = 'GCAL';
  public static final String ROLE_GAL = 'Global Client Account Lead'; //changes as Global Client Account Lead from GCAL as part of bug#436473 by narender.g.veeragoni

  //ana.m.gutierrez - #360211
  public static final String BASE_CLASS_APPROVERS = 'OG Approver';
  public static final set<String> Win_Probability_CMT = new set<String> {'1%', '10%', '30%', '50%', '70%', '90%', '100%'};
  public static final set<String> Win_Probability_FS = new set<String> {'5%', '10%', '15%', '20%', '25%', '30%', '35%', '40%', '45%', '50%', '55%', '60%', '65%', '70%', '75%', '80%', '85%', '90%', '95%', '100%'};
  public static final set<String> Win_Probability_HPS = new set<String> {'10%', '30%', '35%', '50%', '70%', '90%', '100%'};
  public static final set<String> Win_Probability_PRD = new set<String> {'1%', '10%', '30%', '50%', '70%', '90%', '100%'};
  public static final set<String> Win_Probability_RES = new set<String> {'1%', '10%', '30%', '50%', '70%', '90%', '100%'};
  public static final String WIN_PROBABILITY_ERROR = 'The Win Probability is not valid for the Operating Group associated with this opportunity. Please select a valid Win Probability.';
  public static final String CMT = 'Communications, Media & Technology';
  public static final String FS = 'Financial Services';
  public static final String HPS = 'Health & Public Service';
  public static final String PRD = 'Products';
  public static final String RES = 'Resources';
  public static final String PROCESS_OVERRIDE_DESC_FULL = 'Full';
  public static final String PROCESS_OVERRIDE_DESC_DCAL = 'DCAL';
  public static final String PROCESS_OVERRIDE_DESC_NONE = 'NONE';
  public static final String RECORD_TYPE_MASTER = 'Master';
  /**************************Bug #366096: PERFORMANCE: Minimize SOQL Queries for Opportunity Visual Force Page. sandeep.p.kuma START************************************/
  public static final String STR_ISS = 'Industry Sub Segment';
  public static final String STR_AS = 'Accenture Software';
  public static final String STR_ALL = 'Alliances';
  public static final String STR_CSGP = 'Cross Service Group Offering';
  public static final String STR_BS = 'Business Service';
  public static final String STR_CP = 'Consulting Practice';
  public static final String STR_MA = 'Mergers & Acquisitions';
  public static final String STR_MPI = 'Microsoft Platform Information';
  public static final String STR_AD = 'Accenture Digital';
  public static final String STR_TO = 'TGP Offerings';
  /**************************Bug #366096: PERFORMANCE: Minimize SOQL Queries for Opportunity Visual Force Page. sandeep.p.kuma END************************************/
  public static final String CR_RECORD = 'CR';
  /******added by facundo.dario.nicora for Bug35555&35447 Start******/
  public static final String FC_RECORD = 'Financial Customer';
  /******added by facundo.dario.nicora for Bug3555&35447 End******/
  public static final String MC_RECORD = 'Master Customer';
  public static final String MCR_RECORD = 'Master Customer Restricted';
  public static final String ACCOUNT_COMPETITOR_RECORDTYPE_NAME = 'Competitor';
  
  public static final String METHOD_CREATE_ACCOUNT_PLAN = 'createAccountPlan';
  public static final String CLASS_OM_R1_ACCOUNT_BATCH = 'OM_R1_Account_Batch';
  /**************************Created by Manoj for R15.2->Sprint10->US366648->Begin******************************************/
  public static final String CMT_TemplateName = 'Three Year Financial Template CMT';
  public static final String HPS_TemplateName = 'Three Year Financial Template HPS';
  public static final String FS_TemplateName = 'Three Year Financial Template FS';
  public static final String RES_TemplateName = 'Three Year Financial Template RES';
  public static final String PRD_TemplateName = 'Three Year Financial Template PRD';
  public static final String REPORT_NAME = 'MAESTRO';
  /**************************Created by Manoj for R15.2->Sprint10->US366648->End******************************************/
  /**************************Created by Neha for R15.2->Sprint10->US369167->Begin******************************************/
  public static final String AccountSubstring = 'Account';
  public static final String AccountPlanSubstring = 'AccountPlan__c';
  public static final String OriginationIdeaSubstring = 'OriginationIdeas__c';
  public static final String AccountFinancialPlanSubstring = 'AccountFinancialPlan__c';
  public static final String StrategySummarySubstring = 'StrategySummary__c';
  public static final String ClientPerceptionSubstring = 'ClientPerception__c';
  public static final String BusinessImperativeSubstring = 'ClientChallengesBusinessIssues__c';
  public static final String ThreeYearFinancialPlanTemplateSubstring = 'AccountFinancialPlanTemplate__c';
  /**************************Created by Neha for R15.2->Sprint10->US369167->End******************************************/

  /**************************Created by nadeem.anwar for R15.2->Sprint10->US371291->Begin******************************************/
  public static final String EXPORT_COMPLIANCE_CLASS_NAME = 'exportComplianceController';
  public static final String EXPORT_COMPLIANCE_MULTISELECT_FIELD1 = 'ZOEC000001__c';
  public static final String EXPORT_COMPLIANCE_MULTISELECT_FIELD2 = 'ZOEC000002__c';
  public static final String EXPORT_COMPLIANCE_OPPORTUNITY = 'Opportunity__c';
  public static final String EXPORT_COMPLIANCE_OPPORTUNITY_ID = 'Id';
  public static final String EXPORT_COMPLIANCE_OPPORTUNITY_IDS = 'oppId';
  /**************************Created by nadeem.anwar for R15.2->Sprint10->US371291->End******************************************/
  /**************************Created by mallareddy.illuri for R15.2->Sprint10->US371291 and CR 144->Begin******************************************/
  public static final String RBE_TECHNOLOGY = 'Technology';
  public static final String RBE_OG = 'OG';
  public static final String RBE_DIGITAL = 'Digital';
  public static final String RBE_AVANADE = 'Avanade';
  public static final String RBE_STRATEGY = 'Strategy';
  public static final String RBE_OPIS = 'Operations - Infrastructure Services';
  public static final String RBE_OPBPO = 'Operations ? BPO';
  public static final String RESPONSIBLE_ENTITY_CODE = 'ResponsibleEntity';
  /**************************Created by mallareddy.illuri for R15.2->Sprint10->US371291 and CR 144->End******************************************/
  public static final string CLASS_MassDeleteObjects = 'Mass_Delete_Objects';
  public static final String WL_STATUS_ELIGIBLE = 'Eligible';
  public static final String WL_STATUS_REQUESTED = 'Requested';
  public static final String WL_STATUS_WAIVED = 'Waived';
  public static final String WL_STATUS_COMPLETED = 'Completed';
  public static final String MMSORGWIDEADDRESSNAME = 'manage.mysales';
  public static final String WL_HTMLTEMPLATE = 'WinLossHTMLEmail';
  public static final String MMSeBANNER = 'MMSeBanner';
  /**************************Created by james.d.michilina for R15.3->US#444199->End******************************************/
  public static final string ACCENTURE_WIN_THEME_COLOR_GREEN = 'green';
  public static final string ACCENTURE_WIN_THEME_COLOR_ORANGE = 'orange';
  public static final string ACCENTURE_WIN_THEME_COLOR_RED = 'red';
  public static final string OCP_FIELD_BUYER_VALUE = 'BuyerValue__c';
  public static final string OCP_FIELD_CLIENT_PERCEPTION = 'ClientPerception';
  

  /**
  * @author       : kiril.minev
  * @date         : 04/09/2015
  * @description  : Variables will be used to request opportunity record type id by name leverging the following syntax
  *                 Example: Schema.SObjectType.Opportunity.getRecordTypeInfosByName().get(UTIL_Constants.OPPORTUNITY_RECORD_TYPE_NAME_EDIT).getRecordTypeId();
  */
  public static final String OPPORTUNITY_RECORD_TYPE_NAME_EDIT = 'Opportunity Edit';
  public static final String OPPORTUNITY_RECORD_TYPE_NAME_NEW = 'Opportunity New';
  
    /*** Modified by changyuan.shao 20150401 for defect #443667 15.2.1 PROD Cutover: CR role did not get updated on MC Begin ***/
    public static final String STR_OWNER = 'Owner';
    /*** Modified by changyuan.shao 20150401 for defect #443667 15.2.1 PROD Cutover: CR role did not get updated on MC End ***/
    /******CR 201 - SI 433 _DNBM_Enable Opp Ordering on NBM Schedule - Shilpa - Starts******/
    public static final String CLASS_Edit_All_NBMController = 'Edit_All_NBMController';
    public static final String METHOD_getChangedNBM = 'getChangedNBM';
     public static final String CLASS_Edit_All_NewBusinessMeetingController = 'Edit_All_NewBusinessMeetingController';
    public static final String METHOD_getChangedOppNBM = 'getChangedOppNBM';
    /******CR 201 - SI 433 _DNBM_Enable Opp Ordering on NBM Schedule - Shilpa - Ends******/
    
    /********* 25/06/2015 Added by pratibha.jadhav for US #458188 : SI # 429 - MMS Replay Mechanism for Async Processes (@future) : Start ************/
    public static final String STACKSTRACE_STRING = ' StackTrace: ';
    public static final String PASSED_STR = 'Passed';
    public static final String FAILED_STR = 'Failed';
    public static final String NOT_STARTED_STR = 'Not Started';
    public static final String MAX_COUNT_STR = 'Max Count';    
    public static final String FUTURE_STR = ':**@Future**:';    
    public static final String SUCCESS_STR = 'Success';
   /********* 25/06/2015 Added by pratibha.jadhav for US #458188 : SI # 429 - MMS Replay Mechanism for Async Processes (@future) : End ************/
    /********* Added by mallareddy for US #465070 : Start ************/
    public static final String PERFORM_DML_OPERATIONS = 'performDMLOperations';
    public static final String SG_OAO = '3.- SG - Application Outsourcing';
    public static final String SG_BPO = '3.- SG - Business Process Outsourcing';
    public static final String SG_SI = '3.- SG - System Integration';
    public static final String SG_SC = '3.- SG - Strategy Consulting';
    public static final String SG_IO = '3.- SG - Infrastructure Outsourcing';
    public static final String SG_TC = '3.- SG - Technology Consulting';
    public static final String SG_IC = '3.- SG - Infrastructure Consulting';
    public static final String SG_MC = '3.- SG - Management Consulting';
    public static final String SG_TOTAL = '1.- Total';
    /********* Added by mallareddy for US #465070 : End ************/
    
    public static final String CONNECTION_STATUS = 'Accepted';
    
        /********** Added By Kavitha - US 435012 - Chapter-5 begin **********/  
    public static final String AUTHORITY_READ = 'Read';
    public static final String AUTHORITY_NONE = 'None';
    public static final String AUTHORITY_EDIT = 'Edit';  
    /********** Added By Kavitha - US 435012 - Chapter-5 end **********/  
    
    public static final String CREATE_APPROVAL_SNAPSHOT= 'createApprovalSnapshot'; 
    public static final String OM_R1_OPPORTUNITY_BATCH_STR = 'OM_R1_Opportunity_Batch'; 
    
    public static final String CREATE_MISSING_APPROVAL_SNAPSHOT= 'missingApprovalSnapshot';
    
    /********** Added By narender.g.veeragonifor the CR-225 begin **********/
    public static final String UPDATE_EXCHANGERATE_BATCH= 'UpdateExchangeRate_Batch'; 
    public static final String EXCECUTE_EXCHANGERATE = 'execute';
    /********** Added By narender.g.veeragonifor the CR-225  end **********/ 
    public static final String CD_PERMISSIONSET = 'Commercial_Director';
    public static final String CPMLEAD_PERMISSIONSET = 'CPM_Lead';
    public static final String MC_AUTHORISED_ROLECD = 'ZAUT7000';
    
    /*
    * @description : 2015-09-29 - Updated by pratibha.jadhav for US #586 - Opportunity Clone Refactor : Start
    */
    public static final String OPP_STR = 'Opportunity__c';
    public static final String OM_R1_OPP_STR = 'OM_R1_Opportunity__c';
    public static final String OPP_ID = 'OpportunityId';
    public static final String ATT_STR = 'att';
    public static final String ROLE_STR = 'role';
    public static final String LINE_STR = 'line';
    public static final Integer STR_MAX_LIMIT = 131072; //BUG 134388
    public static final String CONST_STR = '@@__#';
    /*
    * @description : 2015-09-29 - Updated by pratibha.jadhav for US #586 - Opportunity Clone Refactor : End
    */ 
    /*
    * @description : 2015-10-11 - Updated by neha.phutela for US SI440  : Start
    */ 
    public static final String OPPOR_ID= 'OpportunityId__c';
    public static final String DELIVERY_TEAM = 'deliveryTeam';
    /*
    * @description : 2015-10-11 - Updated by neha.phutela for US SI440  : End
    */
    /* @description : 2015-10-12 - Updated by mallareddy for US SI414  :  Start
    */ 
    public static final string PAGE_ID = 'id';
    public static final String URL_SLASH = '/';
    /* @description : 2015-10-12 - Updated by mallareddy for US SI414  : End
    */
  
  /*
    * @description : 2015-10-11 - Updated by kavitha.hegde for MSIL - 580 # - Remove description based logic for attribute : Start
    */
    public static final string MPI_DESCRIPTION1 = 'NO MICROSOFT';
    public static final string MPI_DESCRIPTION2= 'MICROSOFT IS THE PRIMARY PLATFORM';
    public static final string MPI_DESCRIPTION3= 'MICROSOFT PLATFORM IS PART OF SOLUTIONM';
    /*
    * @description : 2015-10-11 - Updated by kavitha.hegde for MSIL - 580 # - Remove description based logic for attribute : End
    */
    /*
    * @description : 2015-10-12 - Added by pratibha.jadhav for US #671 : Start
    */
    public static final String OPP_DESCRIPTION_STR =  ' (...)';
    public static final String REVERT_WL_STATUS_STR =  'Revert Eligible Win Loss Status';
    public static final String SET_WL_STATUS_ELIGIBLE_STR =  'Set Opportunity Win Loss Status as Eligible';  
    /*
    * @description : 2015-10-12 - Added by pratibha.jadhav for US #671 : End
    */
     /*
    * @description : 2015-10-16 - Added by narender.g.veeragoni for US #671 : Start
    */
     public static final String ACCOUNT_HIERARCHY_UPDATE_OPP = 'AccountHierarchyUpdateOnOpp_Batch';
     /*
    * @description : 2015-10-12 - Added by narender.g.veeragoni for US #671 : End
    */
     /*
    * @description : 2015-10-16 - Added by aditya.a.dubey for US #650 : Start
    */
     public static final String CAMPAIGN_TEAM_MEMBER_FAILURE = 'CampaignTeamMemberShareBatch';
     public static final String CAMPAIGN_OPP_SHARE_FAILURE = 'CampaignSecurityBatchOPPShare';
     Public static final String CAMPAIGN_TEAM_CUSTOM_VALUE = 'Campaign Time';
     /*
    * @description : 2015-10-12 - Added by aditya.a.dubey for US #650 : End
    */
    /*
    * @description : 2015-11-17 - Added by v.manojkumarfor US #498734 : Start
    */
     public static final String CONTACT_HELPER = 'ContactTriggerHelper';
     public static final String CONTACT_HELPER_METHOD = 'sendEmailNotification';
     public static final String CONTACT_TRIGGER = 'ContactTrigger';
     public static final String EMAILID = '@accenture.com';
     public static final String ASSIGNEVENT = '21'; //as paer of bug#498722
     public static final String UNASSIGNEVENT = '22'; //as paer of bug#498722
     
     /*
    * @description : 2015-11-17 - Added by v.manojkumarfor US #498734 : End
    */
    
    /*
    * @description : 2015-12-28 - Added by v.manojkumarfor US #755 : Start
    */
     public static final String ACCOUNTPLANSTATESUPDATE = '21';
     public static final String UPDATETHREEYEARFINANCIAL = '27';
     public static final String DOWNLOADTHREEYEARFINANCIAL = '26';
     public static final String CLASS_AURA = 'FileUploadController';
     public static final String METHOD_AURA_POSTUHISTORY = 'postFPlanUploadHistory';
     public static final String METHOD_AURA_PPT = 'CreatPptrecord';
     public static final String METHOD_AURA_TEMP = 'dorequestTrmp';
     public static final String METHOD_AURA_REPORT = 'doRequestReport';
     public static final String METHOD_AURA_SUMHISTORY = 'getlistSummaryHistory';
     public static final String METHOD_AURA_GETHISTORY = 'getlistHistory';
     public static final String FILE_DOWNLOAD_CONTINUATION_PATTERN = 'FileDownloadContinuationPattern';
     public static final String METHOD_GET_FILEID = 'getFileID';
     public static final String METHOD_GETACCOUNTPLAN_TEMPLATE = 'getAccountplanTemplate';
     public static final String METHOD_GETACCOUNTPLAN_REPORT = 'getAccountplanTemplate';
     public static final String METHOD_AURA_ACTIVECHILDACCPLANCOUNT = 'activeChildAccPlanCount';
     /*
    * @description : 2015-12-28 - Added by v.manojkumarfor US #755 : End
    */
     
     //@description : 2015-12-28 - Added by subra.boyapati for US #877 GP : start
     public static final String ATTRIBUTECODE = 'ZSTRATE070';     
     public static final String ATTRIBUTETYPECODE = 'ZATTRIB010';
     public static final String ACCENTUREDIGITALATT = '2.- BDIM - Accenture Digital';
     //@description : 2015-12-28 - Added by subra.boyapati for US #877 GP : end

     /*
    * @description : 2016-01-07 - Added by narender.g.veeragoni for US #468 : Start
    */
     public static final String EDIT_ACCESS = 'Edit';
     public static final String ORIGINATION_IDEA_PROCESSOR = 'OriginationIdeaProcessor';
     public static final String INSERT_ORIGINATION_SHARINGTABLE = 'insertOrginationSharingTable';
     /*
    * @description : 2016-01-07 - Added by narender.g.veeragoni for US #468 : End
    */

    /*@description : 2015-12-31 - Added by vandana.vadodaria US #765 : Start*/
    public static final String ACCOUNTPLANOBJECT = 'AccountPlan__c';
    public static final String ACCOUNTPLANMCACCOUNT = 'AccountID__c';
    public static final String ACCOUNTPLANSTATUS = 'Status__c';
    public static final String ACCOUNTPLANID = 'Id';
    public static final String ACCOUNTPLANOPERATIONGROUP = 'OperatingGroup__c';
    public static final String ACCOUNTPLANCREATEDBYID = 'LastModifiedbyNM__c';
    public static final String ACCOUNTPLANWORKMANAGEMENTUNIT = 'WorkManagementUnitId__c';
    public static final String ACCOUNTPLANSTATUSUPDATEEVENT = 'FinancialPlanStatusUpdatedEvent';
    public static final String FINANCIALPLANUPLOADHISTORYOBJECT = 'FinancialPlanUploadHistory__c';
    public static final String FINANCIALPLANUPLOADHISTORYMCACCOUNT = 'MCAccount__c';
    public static final String FINANCIALPLANUPLOADHISTORYFILEID = 'FileID__c'; 
    public static final String FINANCIALPLANUPLOADHISTORYID = 'Id';
    public static final String FINANCIALPLANUPLOADHISTORYOPERATIONGROUP = 'OperatingGroup__c';
    public static final String FINANCIALPLANUPLOADHISTORYUPLOADEDBY = 'UploadByEnterpriseNn__c';
    public static final String FINANCIALPLANUPLOADHISTORYWORKMANAGEMENTUNIT = 'WorkManagementUnitID__c';
    public static final String ACCOUNTSUMMARYDOWNLOADHISTORY = 'AccountSummaryDownloadHistory__c';
    public static final String ACCOUNTSUMMARYDOWNLOADHISTORYACCOUNTID = 'AccountID__c';
    public static final String ACCOUNTSUMMARYDOWNLOADHISTORYID = 'Id';
    public static final String ACCOUNTSUMMARYDOWNLOADHISTORYACCOUNTPLAN = 'Accountplan__c';
    public static final String ACCOUNTSUMMARYDOWNLOADHISTORYOPERATIONGROUP = 'OperatingGroup__c';
    public static final String ACCOUNTSUMMARYDOWNLOADHISTORYWORKMANAGEMENTUNIT = 'WorkManagementUnit__c';
    public static final String ACCOUNTSUMMARYDOWNLOADHISTORYDOWNLOADPPTWITHCHILD = 'DownloadPPTWithChild__c';
    public static final String CALLBACKUSERNAME = 'CallBackUserName';
    public static final String CALLBACKUSERNAMEVALUE = 'Call Back';
    public static final String SYSADMINPROFILE = 'System Administrator';
    public static final String ERRORMESSAGEACCOUNTPLANSTATUS = 'Status of a Parent Account Plan which has children cannot be updated.';
    //public static final String ERRORMESSAGEACCOUNTPLANFINANCIALPLAN = 'Status of an Account Plan which has no Financial Plan cannot be updated.';
    public static final String ERRORMESSAGEACCOUNTPLANFINANCIALPLAN = 'Status of an Account Plan which has no Financial Plan for this year cannot be updated.';
    public static final String ERRORMESSAGEACCOUNTPLANPARENTFINANCIALPLAN = 'This Account Plan Financial Plan is documented at the Children Level. Please contact your OG SEPL for support.';
    public static final String ACCOUNTPLANPARENTRECORDTYPENAME = 'Parent';
    public static final String ACCOUNTPLANCHILDRECORDTYPENAME = 'Child';
    public static final String MCACCOUNTRECORDTYPENAME = 'Master Customer';
    public static final String PARENTACCOUNTPLAN = 'ParentAccountPlan__c';
    public static final String MCMANAGINGDIRECTOR = 'MCManagingDirector__c';
    public static final String CRCLIENTACCOUNTLEAD = 'CRClientAccountLead__c';
    public static final String MCTECHNOLOGYACCOUNTLEAD = 'MCTechnologyAccountLead__c';
    public static final String OMR1ORIGINATIONLEAD = 'OM_R1_Origination_Lead__c';
    public static final String OMR1NEGOTIATOR = 'OM_R1_Negotiator__c';
    public static final String OMR1DEALSHAPER = 'OM_R1_Deal_Shaper__c';
    public static final String OMR1BIDMANAGER = 'OM_R1_Bid_Manager__c';
    public static final String OMR1KEYMEMBERSOFOPPTEAM = 'OM_R1_Key_Members_of_Opp_Team__c';
    public static final String OMR1DELIVERYLEADIO = 'OM_R1_Delivery_Lead_IO__c';
    public static final String OMR1DELIVERYLEADBPO = 'OM_R1_Delivery_Lead_BPO__c';
    public static final String OMR1DELIVERYLEADAO = 'OM_R1_Delivery_Lead_AO__c';
    public static final String DELIVERYLEADSC = 'DeliveryLeadSC__c';
    public static final String OMR1DELIVERYLEADSI = 'OM_R1_Delivery_Lead_SI__c';
    public static final String OMR1DELIVERYLEADMC = 'OM_R1_Delivery_Lead_MC__c';
    public static final String OMR1DELIVERYLEADTC = 'OM_R1_Delivery_Lead_TC__c';
    public static final String RELATIONSHIPLEAD = 'Relationship_Lead__c';
    public static final String DELIVERYLEADIC = 'DeliveryLeadIC__c';
    public static final String OMR1SOLUTIONARCHTC = 'OM_R1_Solution_Arch_TC__c';
    public static final String SOLUTIONARCHIC = 'SolutionArchIC__c';
    public static final String SOLUTIONARCHSC = 'SolutionArchSC__c';
    public static final String OMR1SOLUTIONARCHSI = 'OM_R1_Solution_Arch_SI__c';
    public static final String OMR1SOLUTIONARCHMC = 'OM_R1_Solution_Arch_MC__c';
    public static final String OMR1SOLUTIONARCHIO = 'OM_R1_Solution_Arch_IO__c';
    public static final String OMR1SOLUTIONARCHBPO = 'OM_R1_Solution_Arch_BPO__c';
    public static final String OMR1SOLUTIONARCHAO = 'OM_R1_Solution_Arch_AO__c';
    public static final String OMR1OPPORTUNITYCONTACT = 'OM_R1_Opportunity_Contact__c';
    public static final String OMR1OPPORTUNITYQADIRECTOR = 'OM_R1_Opportunity_QA_Director__c';
    public static final String OMR1OPPORTUNITYDIRECTOR = 'OM_R1_Opportunity_Director__c';
    public static final String OMR1SALESLEADOTHER = 'OM_R1_Sales_Lead_Other__c';
    /*@description : 2015-12-31 - Added by vandana.vadodaria US #765 : End*/
    /*@description : 2015-12-31 - Added by v.manojkumaria US #755 : Start*/
    public static final String LOG_CLASSNAEM = 'FinancialPlanUploadHelper';
    public static final String LOG_INSERFIED_METHODNAME = 'insertLocalFileToFeeditem';
    public static final String LOG_VALID_MTHOD = 'validateFilesUpdateStatus';
    public static final String FINPLAN_STATES_SUCESS = 'Successful';
    public static final String FINPLAN_STATES_FAILED = 'Failed';
    public static final String FILE_REST_METHOD = 'POST';
    public static final String FILE_REST_METHOD_HEADER_TRPE = 'content-type';
    public static final String FILE_REST_METHOD_HEADER_LENTH = 'Content-Length';
    public static final String FILE_REST_METHOD_HEADER_HOST = 'Host';
    public static final String FILE_REST_METHOD_HEADER_CONNECT = 'Connection';
    public static final String FILE_REST_METHOD_HEADER_KEEP_ALIVE = 'keep-alive';
    public static final String FILE_REST_METHOD_HEADER_DATE = 'Date';
    public static final String FILE_REST_METHOD_ERROR = 'Error:';
    public static final String FILE_REST_MANAGEMENT_SLAA = '//';
    public static final String FILE_REST_APP_URL = 'application/json;charset=utf-8';
    public static final String FILE_REST_APP_AUTHORIZATION = 'Authorization';
    public static final String FILE_REST_APP_BEARER = 'Bearer';
    public static final String FILE_REST_GET_TYPE_UNAME = 'grant_type=password&username=';
    public static final String FILE_REST_GET_TYPE_PWS = '&password=';
    public static final String FILE_REST_GET_TYPE_SCOPE = '&scope=';
    public static final String FILE_REST_HASH_SHA256 = 'SHA256';
    public static final String FILE_REST_SECURITY_DETAILS = 'MyApUserDetails';
    public static final String FILE_REST_FORMAT = 'json';
    public static final String FILE_REST_FEDERATIONURL = 'FederationURL';
    public static final String FILE_REST_APIPORTALURL = 'ApiPortalURL';
    public static final String FILE_REST_APIPORTALCREDENTIALS = 'ApiPortalDetails';
    public static final String FILE_REST_SALESFORCEBASEURL = 'SalesforceBaseURL';
    public static final String FILE_REST_AUTHENTICATIONURL = 'AuthenticationURL';
    public static final String CONTINUATION_TIME = 'ContinuationTime';
    public static final String METHOD_AURA_ACPLANTEMP = 'getAccountplanTemplate';
    public static final String METHOD_AURA_ACCPREPORT = 'getAccountplanReport';

    /*@description : 2015-12-31 - Added by v.manojkumar US #755 : End*/

    /********Added by Bug 41090 ****Start**********/
    public static final String CLIENT_CHALLENGES_BUSINESS_ISSUES_HELPER='ClientChallengesBusinessIssuesHelper';
    public static final String CHECK_CLIENT_BUSINESS_NEED_OG_OU='ClientChallengesBusinessIssuesHelper';
    public static final String INSERT_CBN_SHARING_TABLE='insertCbnSharingTable';
    public static final String UPDATE_CLIENT_BUSINESS_NEED='updateClientBusinessNeed';
    /********Added by Bug 41090 *****End*********/
    /********Added by Bug 44446 ****Start**********/
    public static final String SOURCE_NAME_LOG_TEMPLATE='dorequestTrmp';
    public static final String LOG_MESSAGE_TEMPLATE='Request Processing';
    public static final String LOG_DESTN_URL_TEMPLATE='URL';
    public static final String SOURCE_NAME_LOG_REPORT='doRequestReport';
    public static final String LOG_MESSAGE_REPORT='Request Processing';
    /********Added by Bug 44446 *****End*********/
    /*@description : 2016-02-02 - Added by vandana.vadodaria CR #390 : Start*/
    public static final String UPLOADINGFILEMESSAGE = 'Uploading File...';
    public static final String UPLOADPUSHTOPICNAME = 'UploadFile';
    public static final String DOWNLOADPUSHTOPICNAME = 'DownloadPPT';
    public static final String DOWNLOADINGINGFILEMESSAGE = 'Downloading File';
    public static final String UPLOADINGFILESUCCESSKEY = 'MyAPErrorImportSuccess';
    public static final String  MYAPERRORMCSECURITYACCESS = 'MyAPErrorMasterClientSecutiryAccess';
    /*@description : 2016-02-02 - Added by vandana.vadodaria CR #390 : End*/
    public static final String REQUEST_START = 'Request Initiated';
    public static final String REQUEST_COMPLETE = 'Request Completed';
    public static final String MYAP_STR = 'MYAP';
    public static final String DOWNLOAD_3YF_TEMPLATE = 'Download 3YF Template';
    public static final String DOWNLOAD_3Y_CLIENT_REPORT = 'Download 3Y Client Report';
    public static final String FILE_UPLOAD = 'File Upload';
    /*@description : 2016-02-17 - Added by narender.g.veeragoni - defect#40793: Start*/
    public static final String STATUC_READY_FOR_REVIEW = 'Ready for Review';
    public static final String STATUS_COMPLETED = 'Completed';
    public static final String STATUS_UPDATE_REQUIRED = 'Update Required';
    /*@description : 2016-02-17 - Added by narender.g.veeragoni - defect#40793 : End*/

    /*@description : 2016-02-17 - Added by narender.g.veeragoni - defect#48948: Start*/
    public static final String STATUS_NOT_STARTED = 'Not Started';
    public static final String STATUS_READY_FOR_REVIEW = 'Ready for Review';
    public static final String STATUS_SUCCESSFULL = 'Successful';
    public static final String UPDATE_ACCPLANSTATUS_FROM_UPLOADRESULT = 'updateAccPlanStatusFromUploadResult';
    public static final String FINANCIALPLANUPLOADHELPER = 'FinancialPlanUploadHelper';
    public static final String STATUS_INACTIVE = 'Inactive';
    
    

    /*@description : 2016-02-17 - Added by narender.g.veeragoni - defect#48948 : End*/
    
    /*@description : 2016-02-18 - Added by pratibha.jadhav - defect#54470: Start*/
    public static final String PUSH_TOPIC_STR = 'PushTopic';
    public static final String LIBRARIES_STR = 'Libraries';
    public static final String PUSH_TOPIC_BATCH_CLASS_STR = 'PushTopic_BATCH';
    public static final String LIBRARIES_BATCH_CLASS_STR = 'Libraries_BATCH';
    public static final String WORKING_LIBRARIES_STR = 'MYAP Working Libraries';
    /*@description : 2016-02-18 - Added by pratibha.jadhav - defect#54470: End*/
     /*@description : 2016-02-18 - Added by v.manojkumar - coderivew start*/
    public static final String ERROR_ACCSUMMARY_CHATREPORT = 'Account Plan Status Summary Chart arguments cannot be null!';
    public static final String PARENT_ACCOUNTPLAN = 'Parent';
    public static final String CHILD_ACCOUNTPLAN = 'Child';
    public static final String ACCOUNT_STATUS_CHATER_SUM = 'Account Plan Status Summary Chart:';
    public static final String CLIENT_PERCEPTION_CHART = 'Client Perception Chart';
   /*@description : 2016-02-18 - Added by v.manojkumar - coderivew End*/
   /*@description : 2016-03-16 - Added by v.manojkumar - US-1164 start*/
    public static final String CUSTOM_VALIDAION_ERROR = 'FIELD_CUSTOM_VALIDATION_EXCEPTION';
    public static final String BRACK_COLOR_TAGE = '</br><font size="1" color="green"> </br>';
    public static final String FONT_TAGE = '</font>';
    public static final String BR_TAGE = '</br>';
    public static final String BRACK_COLORSS_TAGE = '</br><font size="1" color="green';
    /*@description : 2016-03-16 - Added by v.manojkumar - US-1164 End*/
    /********Added by facundo.dario.nicora  for Bug51560 - Start********/       
    public static final Set<String> ADR_EXCEPT_PRODUCT_CODE_SET = new Set<String> {'SUBSG101'};         
    /********Added by facundo.dario.nicora  for Bug51560 - End********/
    /*@description : 2016-04-14 - Added by narender.g.veeragoni - UserStory#1166-Chapter1: Start*/
    public static final String OPPORTUNITY_CLIENTBUISNESSNEED = 'OpportunityClientBuisnessNeed';
    public static final String CREATE_OPPCBN_BASED_ON_SALESTEAMROLE = 'createOppCBNBasedonSalesTeamRole';
    public static final String SYSADMIN = 'System Administrator';
    public static final String SYSADMIN3658 = '3658SysAdmin';
    /*@description : 2016-04-14 - Added by narender.g.veeragoni - UserStory#1166-Chapter1 : End*/ 
    /*@description : 2016-04-14 - Added by manoj - Bug#99990 Start*/
    public static final String ACC_ROLE_CDAL = 'CDAL';
    public static final String ACC_ROLE_ASAE = 'ASAE';
    public static final String SERVICE_MRDR_NAME = 'MRDR';
    public static final String REST_GET_TYPE = 'grant_type=password&username=';
    public static final String REST_GET_PASSWORD = '&password=';
    public static final String URL_Q_MARK = '?';
    public static final String URL_API_KEY = 'api_key=';
    public static final String URL_SIG = '&sig=';
    /*@description : 2016-04-14 - Added by manoj - Bug#99990 End*/  
    /*@description : 2016-06-20 - Added by manoj - MSIL-1273 Start*/
    
    public static final String PRISING_MMP = 'OpportunityFinancialDataEvent';
    public static final String PRISING_MMP_VERSION = '4.6.6';
    public static final String PRISING_MMP_VERSION2 = '';
    public static final String LIST_NO_ROWS = 'List has no rows for assignment to SObject';
  /*Added by neha for MSIL1485 Start*/
    public static final String BUSINESSEVENT_DATA_SYNC = 'QADataSync';
      /*Added by neha for MSIL1485 End*/    
    public static final String LIST_MORE_ROWS = 'List has more than 1 row for assignment to SObject';
    public static final String SOURCEFROM_DTO_MMP = 'OMR1SourcedFrom';
    public static final String START_DATE_DTO_MMP = 'StartDate';
    public static final String END_DATE_DTO_MMP = 'EndDate';
    public static final String SOLUTION_ANOUNT_DTO_MMP = 'SolutionContingencyAmount';
    public static final String INACTIVE_PRODUCT_MMP = 'FIELD_INTEGRITY_EXCEPTION';
    public static final String MMP_MINTDATE_TIME = '0001-01-01T00:00:00.0000000-00:00';
    public static final String MMP_MINTDATE_TIME_POSITIVE = '0001-01-01T00:00:00.0000000+00:00';
    public static final String MMP_CREATE_OFFSET = 'CreatedDateTimeUtc';
    public static final string MMP_OPP_LINE_ITEM = 'Products';
    public static final string MMP_ALLIANCE_REVENUE = 'AllianceUtilizationRevenue';
    public static final string MMP_SUBCONTRACT_COST = 'SubContractorCost';
    public static final string MMP_OTHERCOSTS = 'OtherContractDeliveryCost';
    public static final string MMP_TOTAL_PAYROL = 'PayrollCost';
    public static final string MMP_SERVICE_REVENUE = 'ServicesRevenue';
    public static final string MMP_SOFTOTHER_REVENUE = 'SoftwareOtherRevenue';
    public static final string MMP_PRODUCTID = 'ProductId';
    public static final string MMP_WorkHours = 'WorkHours';
    /*@description : 2017-01-13 - Added by e.martinez.quiroga - MSIL-#1744 CR#523 Begin*/
    public static final string MMP_PRODUCT_PHASES = 'Phases';
    public static final string MMP_PRODUCT_TYPE_OUTSOURCING = 'Outsourcing';
    public static final string MMP_PRODUCT_TYPE_CONSULTING = 'Consulting';
    public static final string MMP_PRODUCT_PHASENAME = 'PhaseName';
    public static final string MMP_PRODUCT_PHASENAME_TRANSFORMATION = 'Transformation';
    public static final string MMP_PRODUCT_PHASENAME_TRANSITION = 'Transition'; 
    public static final string MMP_PRODUCT_PHASENAME_SERVICEDELIVERY = 'Service Delivery';
    public static final string MMP_PRODUCT_PHASESTARTDATE = 'PhaseStartDate';
    public static final string MMP_PRODUCT_PHASEENDDATE = 'PhaseEndDate';
    /*@description : 2017-01-13 - Added by e.martinez.quiroga - MSIL-#1744 CR#523 End*/    
    public static final string MMP_CURRENCY = 'CurrencyCode';
    public static final String SOURCED_FROM_MMP = 'MMP';
    /*@description : 2016-06-20 - Added by manoj - MSIL-1273 End*/
    /*@description : 2016-12-20 - Added by e.martinez.quiroga - MSIL-1786 Begin*/     
    public static final string MMP_PRICING_VERSION_ID = 'PricingVersionId';
    /*@description : 2016-12-20 - Added by e.martinez.quiroga - MSIL-1786 End*/    
   /*@description : 2016-06-27 - Added by amol.kodge -US- 1464 Begin*/     
     public static final Integer Total_Products = 1;
     public static final Integer converted_Revenue = 10000000;
     /*@description : 2016-06-27 - Added by amol.kodge -US- 1464 End*/ 
     /*@description : 2016-06-30 - Added by manoj - MSIL-1487 Begin*/     
     public static final String ASSIGN_ACCPLAN = 'AccountPlanAssign';
     public static final String UNASSIGN_ACCPLAN = 'AccountPlanUnassign';
     public static final String OBJECTNAME_ACCPLAN = 'AccountPlan__c';
     /*@description : 2016-06-30 - Added by manoj - MSIL-1487 End*/
     /*@description : 2016-07-04 - Added by neha - MSIL-1406 Begin*/     
     public static final String WMU_ASSIGNED='WorkManagementUnitAssignedEvent';
     public static final String WMU_UNASSIGNED='WorkManagementUnitUnAssignedEvent';
      /*@description : 2016-07-04 - Added by neha - MSIL-1406 End*/
      /*@description : 2016-06-29 - Added by vandana.vadodaria US#128536 : Start*/
      public static final String OPPROTUNITYSTAGE0A='0A';
      public static final String OPPROTUNITYSTAGE1='1';
      public static final String OPPROTUNITYSTAGE2A='2A';
      public static final String OPPROTUNITYSTAGE2B='2B';
      public static final String OPPROTUNITYSTAGE3A='3A';
      public static final String OPPROTUNITYSTAGE3B='3B';
      public static final String OPPROTUNITYSTAGECLOSEDWON ='Closed - Won';
      public static final String OPPROTUNITYSTAGECLOSEDLOST ='Closed - Lost';
      public static final String OPPROTUNITYSTAGECLOSEDCLIENTWITHDRAWN ='Closed - Client withdrawn';
      public static final String OPPROTUNITYSTAGECLOSEDACNWITHDRAWN ='Closed - ACN withdrawn';
      public static final String OPPROTUNITYSTAGECLOSED ='Closed';
      public static final String SALES_CREDIT_APPROVED_STATUS='Approved';
      public static final String SALES_CREDIT_NOT_APPROVED_STATUS='Not Approved';
      public static final String SALES_CREDIT_CONTRIBUTABLE_YES='Yes';
      public static final String SALES_CREDIT_CONTRIBUTABLE_YESREQUIRESAPPROVAL='YesRequiresApproval';
      /*@description : 2016-06-29 - Added by vandana.vadodaria US#128536 : End*/
      /********Created for Story 1466 - Chapter 4 : Start********/ 
      public static final String ACCOUNT_BATCH_FOR_UPDATE_OPP ='AccountBatchForUpdateOpp';
      public static final String EXCECUTE_ACCOUNTBATCHFORUPDATE = 'execute';
      /********Created for Story 1466 - Chapter 4 : End********/      
          
       public static final String CLASSNAMRFORBATCHFAILURENOTIFICATION = 'BatchFailureNotification';
       public static final String BatchCLass_EXCEPTION = '**BatchClassFailedOrAbortNotification**';
       public static final String ERRORCODE = 'BatchClassFailedOrAbort'; 
       public static final String BATCHFALIURENOTIFIACTION_ERROR_MESSAGE = 'due to following error --> ';
       //Added as a part of bug 120009
       public static final String CALLBACKUSERENTERPRISEID = 'callback.user'; 
       public static final String EVENT_CALL = 'Event';  
       /*******************created as US-1362  Start ********/
       public static final String WPPAPPROVAL_BATCH = 'WPPApproval_Batch'; 
       public static final String WPPAPPROVAL_BATCH_EXECUTE = 'execute';  
       public static final String WPPAPPROVAL_SCHEDULABLE = 'WppApproval_Schedulable'; 
       public static final String WPPAPPROVAL_SCHEDULABLE_EXECUTE = 'SchedulerMethod';
       public static final String WPPAPPROVAL_APPROVALSTATUS_SUBMITTED = 'APP';
       /*******************created as US-1362  End ********/
       
       public static final String WPPRESULT = 'WPPRES001';
       public static final Set<String> serviveGroupLevel = new Set<String> {
            'OAO',
             'OBPO',
             'CIC',
             'OIO',
             'CNTC',          
             'CNMC',         
             'CSI',
             'CSC' 
            };
      public static final String TRANSFORMATIONSTARTDT_DATE_DTO_MMP = 'SSGOutTransformationStartDt';
      public static final String TRANSFORMATIONENDDT_DATE_DTO_MMP = 'SSGOutTransformationendDt';
      public static final String TRANSITIONSTARTDT_DATE_DTO_MMP = 'SSGOutTransitionStartDt';
      public static final String TRANSITIONENDDT_DATE_DTO_MMP = 'SSGOutTransitionEndDt';
      public static final String SSGOUTRUNSTARTDT_DATE_DTO_MMP = 'SSGOutRunStartDt';
      public static final String SSGOUTRUNENDDT_DATE_DTO_MMP = 'SSGOutRunEndDt';
       
        /********* Added by anusha.vemula for Single salesforce US #13544  : Start ************/
        public static String profileName=[Select Id,Name from Profile where Id=:userinfo.getProfileId()].Name;
        public static final String EMAIL = 'Email';
        public static final String OCM = 'OCM';
        public static final String OTHER_MARKETING_CAMPAIGN = 'OtherMarketingCampaign';
        public static final String EVENTS = 'Events';
        //public static ID marketingCampOCMRecordTypeId = Schema.SObjectType.Campaign.getRecordTypeInfosByName().get(System.Label.Marketing_CampaignRecordTypeOCM).getRecordTypeId();
        //public static ID marketingCampEventsRecordTypeId = Schema.SObjectType.Campaign.getRecordTypeInfosByName().get(System.Label.Marketing_CampaignRecordTypeEvent).getRecordTypeId();
        //public static ID marketingCampEmailRecordTypeId = Schema.SObjectType.Campaign.getRecordTypeInfosByName().get(System.Label.Marketing_CampaignRecordTypeEmail).getRecordTypeId();
        //public static ID marketingCampOtherRecordTypeId = Schema.SObjectType.Campaign.getRecordTypeInfosByName().get(System.Label.Marketing_CampaignRecordTypeOtherMarketing).getRecordTypeId();
        //public static ID salesCampRecordTypeId = Schema.SObjectType.Campaign.getRecordTypeInfosByName().get(System.Label.Sales_CampaignRecordType).getRecordTypeId();
        /********* Added by anusha.vemula for Single salesforce US #13544  : End ************/

         /********Added by deepika.k.sharma for US-518108 :Start *******/ 
        //public static ID salesCampEffRecordTypeId = Schema.SObjectType.Campaign.getRecordTypeInfosByName().get(System.Label.Sales_EffectivenessRecordType).getRecordTypeId();
        /********Added by deepika.k.sharma for US-518108 :End *******/
    
        /*@description : 2016-11-15 - Added by amar.kumar.nag For US-Portfolio Entry Point : Start*/
        public static final String OGParameter = 'OG';
        public static final String OUParameter = 'OU';
        public static final String CSGParameter = 'CSG';
        public static final String MCNbrParameter = 'MCNbr';
        public static final String GUParameter = 'GU';
        public static final String CountryParameter = 'Country';
        public static final String SGParameter = 'SG';
        public static final String IndustryParameter = 'Industry';
    
        public static final String TrendVsPeerToggleParameter = 'PT';
        public static final String PeerComparisonParameter = 'PG';
        public static final String MetricToDisplayParameter = 'PM';
        /*@description : 2016-11-15 - Added by amar.kumar.nag For US-Portfolio Entry Point : End*/
        
    public static final String CREATE_QUESTIONARIE = 'create_Questionarie';

    /********Created for Story 1690 : Start********/
    public static final String CONSTANT_APPROVAL_LEVEL_ASPILOT = 'AS Pilot';
    public static final String PRODUCT_TYPE_CODE_SG = 'SG';
    /********Created for Story 1690 : End********/

    /********Created for CR#270: Start********/
    public static final String OPPORTUNITY_KEY_BUYER_HELPER_CLASSNAME = 'OpportunityKeyBuyerHelper';
    public static final String INSERT_OPP_CONTACT_ROLE_METHODNAME = 'InsertUpdateOppContactRole';
    public static final String DELETE_OPP_CONTACT_ROLE_METHODNAME = 'deleteOppContactRole';
    /********Created for CR#270: End********/
    /*Created for Bug 156853 START*/
       public static final String UPDATECONTACTS_SCHEDULABLE = 'UpdateContacts_Schedulable'; 
       public static final String UPDATECONTACTS_SCHEDULABLE_EXECUTE = 'SchedulerMethod';
       public static final String CLASS_UpdateContacts_Batch='UpdateContacts_Batch';
       /*Created for Bug 156853 END*/
       
        /*Created for Bug 391457 START*/    
       public static final String PROCESS_ERRORLOG_BATCH_SCHEDULABLE= 'Process_Errorlog_Batch_Schedulable';
       public static final String PROCESS_ERRORLOG_BATCH_SCHEDULABLE_EXECUTE = 'SchedulerMethod';
       
       public static final String UPDATEERRORLOG_BATCH_SCHEDULABLE = 'UpdateErrorlog_Batch_Schedulable'; 
       public static final String UPDATEERRORLOG_BATCH_SCHEDULABLE_EXECUTE = 'SchedulerMethod'; 
       
       public static final String CLASS_UpdateErrorlog_Batch='UpdateErrorlog_Batch';
       public static final String CLASS_Process_Errorlog_Batch='Process_Errorlog_Batch';
        /*Created for Bug 391457 END*/
       
    /********* Added by anna.rose.r.gomez for Single salesforce US #13544  : Start ************/
    //public static ID contentBusinessStrategyRecordTypeId = Schema.SObjectType.Content__c.getRecordTypeInfosByName().get('Content – Accenture Strategy').getRecordTypeId();
    //public static ID contentParentRecordTypeId = Schema.SObjectType.Content__c.getRecordTypeInfosByName().get('Content – Parent').getRecordTypeId();
    /********* Added by anna.rose.r.gomez for Single salesforce US #13544  : End ************/
    
    /********* Added by von.c.v.villaruel for Single Salesforce US#184042 : Start ************/
    public static final String C_LEVEL_EXECUTIVE_PL_VALUE1 = 'Yes';
    public static final String C_LEVEL_EXECUTIVE_PL_VALUE2 = 'No';
    /********* Added by von.c.v.villaruel for Single salesforce US#184042 : End ************/
    
     /********* Added by von.c.v.villaruel for Single Salesforce US#236503 : Start ************/
    //public static final Integer MAX_CAMP_MEMBER_QUERY_IN_REPORT = integer.ValueOf(System.Label.Adobe_MaxCampaignMemberQueryInReport);
    public static final String ADOBE_REFERRING_DOMAIN_TWITTER = 'TWITTER';
    public static final String ADOBE_REFERRING_DOMAIN_LINKEDIN = 'LINKEDIN';
    public static final String ADOBE_REFERRING_DOMAIN_PAID = 'PAID';
    public static final String ADOBE_REFERRING_DOMAIN_SEARCH = 'SEARCH';
    public static final String ADOBE_ACCENTURE_EMAIL = '@accenture.com';
    public static final String ADOBE_ACCENTURE_FEDERAL_EMAIL = '@accenturefederal.com';
    /********* Added by von.c.v.villaruel for Single salesforce US#236503 : End ************/
    
    /********* Added by gabriel.a.loy for Single Salesforce US#1438 : Start ************/    
    public static final String CHILD_INACTIVE_ERROR_MESSAGE = 'This Account Plan - Financial Plan is inactive. Please contact your OG SEPL for support';
    public static final String PARENT_WITH_ACTIVE_CHILD_ERROR = 'This Account Plan – Financial Plan is documented at the Children Level. Please contact your OG SEPL for support';    
    /********* Added by gabriel.a.loy for Single Salesforce US#1438 : End ************/
       
    /********* Added by gabriel.a.loy for Single Salesforce US#1856 : Start ************/
    public static final String STATUS_IN_PROGRESS = 'In Progress';
    public static final String READY_FOR_REVIEW = 'Ready for Review';
    public static final String UPDATE_REQUIRED = 'Update Required';
    public static final String COMPLETED = 'Completed';
    public static final String STRATEGIC_CREATION_ERROR_MESSAGE ='Strategic Plan status for NEW children should either be:  None, In Progress or Inactive.';
    /********* Added by gabriel.a.loy for Single Salesforce US#1856 : End ************/    

    public static final String STR_FBS = 'Function Business Services';
    public static final String STR_IBS = 'Industry Business Services';
    public static final String STAGE_0A = 'Stage 0A';
    public static final String DQC_CHECKLIST = 'Deal Qualification Checklist';
    public static final Set<String> SET_STAGES_EXCEPT = new Set<String> { '0A','Closed'};
    public static final Set<String> SET_STAGES_CLOSED = new Set<String> { STAGE_CD_CLOSED_WON, STAGE_CD_CLOSED_LOST, STAGE_CD_CLOSED_CLIENT_WITHDRAWN,STAGE_CD_CLOSED_ACN_WITHDRAWN, STAGE_CD_CLOSED }; 
    public static final Set<String> SET_STAGES_CLOSED_NO_ATTRIBUTES = new Set<String> { STAGE_CD_CLOSED_LOST, STAGE_CD_CLOSED_CLIENT_WITHDRAWN,
      STAGE_CD_CLOSED_ACN_WITHDRAWN };
    public static final Set<String> SET_STAGES_ALL_CLOSED_LOST = new Set<String> { STAGE_CD_CLOSED_LOST, STAGE_CD_CLOSED_CLIENT_WITHDRAWN,
    STAGE_CD_CLOSED_ACN_WITHDRAWN, STAGE_CD_CLOSED}; 
      
    /**
    * @description : Added by pratibha.jadhav -> R17.3 -> CBP : Start
    */
    public static final String STAGE_CD_CLOSED_DUPLICATE = 'Closed - Duplicate';
    public static final String AUTHORITY_ALL = 'All'; 
    public static final String MC_ROLE_AP_TEAM_IND_CUSTOMSETTING_NAME =  'MC Role AP Team Member Ind';
    public static final String ROLE_APTEAM_INDCHANGE = 'APTeamIndChange';
    public static final String MC_TYPE_ROLE_UPDATE_APTEAM_INDCHANGE = 'MCRoleUpdatedAPTeamIndChange';   
    public static final String SOURCED_FROM_CBP = 'CBP';   
    public static final String SOURCED_FROM_MMB = 'MMB';     
    /**
    * @description : Added by pratibha.jadhav -> R17.3 -> CBP : End
    */
    /*@description : 2017-04-04 - Added by e.martinez.quiroga - MSIL-1992 Begin*/
    public static final string OPP_TOTAL_SOL_CONT_PCT_GPS_C2C = 'TotalContingencyPct';
    /*@description : 2017-04-04 - Added by e.martinez.quiroga - MSIL-1992 End*/
    /*@description : 2017-04-07 - Added by e.martinez.quiroga - MSIL-1991 Begin*/
    public static final string OPP_TOTAL_SOL_CONT_PCT = 'DealContingencyPercentage';
    public static final string SSG_TOTAL_SOL_CONT_PCT = 'ContingencyPercentage';
    /*@description : 2017-04-07 - Added by e.martinez.quiroga - MSIL-1991 End*/ 
    
    /**
    * @description : Added by amar.kumar.nag -> R17.3 MSIL-1948 : Start
    */
    
    public static final string DQC_SAVE_AND_NEW_ERROR = 'Error: A new Deal Qualification Checklist cannot be created.';
    public static final string DQC_REQUIRED_VALIDATION_ERROR = 'The Deal Qualification Checklist is required to progress to Stage 1 and beyond.\n\n';
    public static final string DQC_YES_VALUE = 'Yes';
    public static final string DQC_NO_VALUE = 'No';
    public static final string REQUIRED_VALUE = 'Required';
    public static final string NOTREQUIRED_VALUE = 'Not Required';
    
    public static final string STAGE0A = '0A';
    public static final string STAGE_CLOSED_LOST = 'Closed - Lost';
    public static final string STAGE_CLOSED_ACNWITHDRAWN = 'Closed - ACN withdrawn';
    public static final string STAGE_CLOSED_CLIENTWITHDRAWN = 'Closed - Client withdrawn';
    public static final string STAGE_CLOSED_DUPLICATE = 'Closed - Duplicate';
    /**
    * @description : Added by amar.kumar.nag -> R17.3 MSIL-1948 : End
    */
    //Added by m.agudo.ballesteros -> MSIL 1943 Vote Rule error : Start
    public static final string VOTE_TRIGGER_ERROR = 'Insufficient access rights on object id';
    public static final string MMS_CAMPAIGN_ADMIN_NEW = 'MMS Campaign Admin New';
    //Added by m.agudo.ballesteros -> MSIL 1943 Vote Rule error : End
    
     /********* Added by MANOJ for Long Vf page: Start ************/
    public static final String MMBCLASSNAME_VFPAGE = 'MyWaveDashboardPage_Controller';
    public static final String MMBMETHODNAME_VFPAGE = 'MyWaveDashboardPage_Controller';
    public static final String MMB_ERROR_EXP = 'Dashboard name is null';
     /********* Added by MANOJ for Long Vf page:  : End ************/  
     
    /***** @description : Added by amar.kumar.nag -> R17.3 CR-601 : Start ******/
    public static final String COMPETITIVE_SOLE_SOURCED = 'SOLE SOURCED';
    /***** @description : Added by amar.kumar.nag -> R17.3 CR-601 : End ********/
    
    /********* Added by c.a.diaz.hernandez for CSAT : Start ************/
    
    public static final String CS_PLAN_CHILD = 'Child';
    public static final String CS_PLAN_PARENT = 'Parent';
    
    public static final String CS_OWNER = 'CS Plan Owner Name';
    public static final String CS_COORDINATOR = 'CS Coordinator Name';
    public static final String CS_APPROVER = 'CS Plan Approver Name';
    
    public static final String ROLE_COORDINATOR = 'Client Satisfaction Coordinator';
    public static final String CRCUSTOM_SETTING_COORDINATOR = 'CO';

    public static final String CS_APPROVEDSTATUS = 'Approved';
    public static final String CS_WAIVEDSTATUS = 'Waived';
    public static final String CS_DRAFTSTATUS = 'Draft';
    
    public static final String CS_SALESDONOTCONTACTVALUE = 'Need Approval to Contact this Person';
    
    public static final String CS_ACCOUNTWAIVEDSTATUS = 'Waived';
    
    public static final String CS_SURVEYQUESTIONTYPEFREETEXT = 'ShortAnswer';
    public static final String CS_SURVEYQUESTIONTYPERATING = 'Rating';
    public static final String CS_SURVEYQUESTIONTYPENETPROMOTER = 'NetPromoter';
    public static final String CS_SURVEYQUESTIONTYPEMULTIPLECHOICE = 'MultipleChoice';
    
    public static final String CS_ADMINPERMISSIONSET = 'ClientSatisfactionAdmin';
    public static final String CS_CTPERMISSIONSET = 'ClientSatisfactionClientTeam';
    
    /********* Added by c.a.diaz.hernandez for CSAT : End ************/ 
    /********* Added by r.ortiz.cacerez for CSAT 5/30/2017 ************/
    public static final String CS_SURVEYSTATUSACTIVE = 'Active';
    public static final String CS_SURVEYSTATUSREQUIRESVERIFICATION = 'Requires Verification';
    public static final String CS_SURVEYSTATUSPENDING = 'Survey Pending';
    public static final String CS_SURVEYSTATUSSURVEYSENT = 'Survey Sent';
    public static final String CS_SURVEYSTATUSREMINDERSENT = 'Reminder Sent';
    public static final String CS_SURVEYSTATUSNORESPONSE = 'No Response';
    public static final String CS_SURVEYSTATUSRESPONSERECEIVED = 'Response Received';
    public static final String CS_SURVEYSTATUSELECTRONICSURVEYDECLINED = 'Electronic Survey Declined';
    public static final String CS_SURVEYSTATUSREQUESTEDINPERSONDISCUSSION ='Requested In-Person Discussion';
    public static final String CS_SURVEYSTATUSEXEMPT = 'Exempt';
    public static final String CS_SURVEYSTATUSCANCELLED = 'Cancelled'; 
    public static final String CS_SURVEYTYPEELECTRONIC = 'Electronic';
    public static final String CS_SURVEYTYPEMANUAL = 'Manual';

    public static final String CS_SURVEYSTATUSBATCHSETTINGS = 'BatchSettings';
    public static final String CS_EMAILTEMPLATEINVITATION = 'Invitation';
    public static final String CS_EMAILTEMPLATEREMINDER = 'Reminder';
    
    public static final String CS_PARTICIPANTURLLINKDO = 'do';
    public static final String CS_PARTICIPANTURLLINKDONT = 'dont';
    public static final String CS_PARTICIPANTURLLINKDATAPRIVACY = 'dataprivacy';
    
    
    public static final String CS_LANGUAGEGERMAN = 'German';
    public static final String CS_LANGUAGEFRENCH = 'French'; 
    public static final String CS_LANGUAGEITALIAN = 'Italian';
    public static final String CS_LANGUAGESPANISH = 'Spanish';
    public static final String CS_LANGUAGEENGLISHUS = 'English - US';
    public static final String CS_LANGUAGEENGLISHUKAU = 'English (UK/AU)';
    public static final String CS_LANGUAGEJAPANESE = 'Japanese';
    public static final String CS_LANGUAGECZECH = 'Czech';
    
    public static final String CS_SURVEYTEMPLATETYPECS = 'CS'; 
    
    public static final String CS_SFEMAILTEMPLATEINVITATION = 'CS Email Template Invitation';
    public static final String CS_SFEMAILTEMPLATEREMINDER = 'CS Email Template Reminder';

    public static final String CS_RESPONSENOBASIS = 'No Basis';
    
    public static final String CS_PARTNONESCORE = 'None';
    public static final String CS_PARTLOWSCORE = 'Low Score';
    
    public static final String CS_SURVEYANSWERCLASSIFICATIONSCHEDULE = 'Schedule a meeting';
    public static final String CS_SURVEYANSWERCLASSIFICATIONIDONOTWISHPARTICIPATE = 'Opt-out';
    
    public static final String CS_CONTACTCSUITE = 'C-Suite';
    public static final String CS_CONTACTKEYBUYER = 'Key Buyer';
    public static final String CS_CONTACTKEYBUYERANDCSUITE = 'Key Buyer and C-Suite';
    
    public static final String CS_EIDSEEPRDCONTACT = 'See.PRDContact';
    
    public static final String CS_ADMINCSATUSER = 'Adm CSAT';
    public static final String CS_CTCSATUSER = 'CT CSAT';
    
    public static final String TRADE_COMPLIANCE_TEMPLATE = 'TradeCompliance';
    public static final String EMAIL_SEND_SWITCH = 'IsMailSent';
    
    public static final String Q1_NON_NO = 'ZEC0000116'; 
    public static final String Q2_NON_NO = 'ZEC0000208'; 
    public static final String Q3_NON_NO = 'ZEC0000302'; 
    
    public static final String Q4_NON_NO = 'ZEC0000402';
    public static final String OTHER_STR = 'Other';

    public static final String QUESTION4 = 'Question4';
    public static final String SELLING_COUNTRY = 'Selling Country:';
    public static final String PRIM_WORK_LOCATION = 'Primary Work Location:';
    
    public static final String OTHER_WORK_LOCATIONS = 'Other Work Locations:';
    
    public static final String DELIVERY_CENTER = 'Delivery Center:';
    
    public static final String CR_SELLING_COUNTRY = 'Selling Country (CR):';
                                                                      
    public static final String ALB_STR = 'ALB';
    public static final String COMMASTR = ',';
    public static final string CSG = 'CSG';
    public static final string OU = 'OU';
    public static final string OG = 'OG';
    public static final String OCTREVENUE_AUTOMATION_BATCH = 'OCTRevenueAutomationProcessBatch';
    public static final String OCTRISK_AUTOMATION_BATCH = 'OCTRiskAutomationProcessBatch';
    public static final String OCT_AUTOMATION_BATCH = 'OCTAutomationProcessBatch';  
                                                                
                                                                       
                                                                      
    public static final String PROCESSED = 'Processed';

    public static final String FAILED = 'Failed';
    public static final String PERFORMLOGIC = 'PerformLogic';
    public static final String ALL = 'ALL';
    
    public static final String PROD_OG = 'PROD';
    public static final String REV_TOL = 'RevTolerance';
    public static final String CCI_TOL = 'CCITolerance';                                                
    
    
    public static final String OCT_MIN_VALUE = '-900000000000000000';
    public static final String OCT_MAX_VALUE = '900000000000000000';
    public static final String OCT_MIN_VALUE_16_2 = '-9000000000000000.00';                                                   
    public static final String OCT_MAX_VALUE_16_2 = '9000000000000000.00';
                                                              
    public static final String COMPCRIT = 'ComplexityCriteria';
    public static final String RISK = 'Risk';
                                                                
    public static final String REVENUE = 'Revenue';
    
    public static final String CCI = 'CCI';
    
    public static final String PRICE = 'Price';
    public static final String SG = 'SG';

    public static final String CBA = 'CBA';
    
    public static final String CB = 'CB';
    public static final String FINAL_CONSTANT = 'Final';
    public static final Map<String, String> OG_SHORT_DESC = new Map<String, String> {
                CMT_OG => COMMUNICATIONS_MEDIA_AND_TECHNOLOGY_OG,
                PROD_OG => PRODUCTS_OG,             
                H_AND_PS_OG => HEALTH_AND_PUBLIC_SERVICE_OG,
                RES_OG => RESOURCES_OG ,
                FS_OG => FINANCIAL_SERVICES_OG             
            };
    
    public static final String SURVEYSTATUSCOMPLETEDGETFEEDBACK = 'Completed';
    /*********Added by r.ortiz.cacerez for GetFeedback encryption process*********/
    public static final String CUSTOMSETTINGENCRYPTKEYRECORDNAME = 'GetFeedBackKey';
    public static final String DELETEGETFEEDBACKDATARECORDNAME = 'DeleteGetFeedbackData';
    
    /*********Added by mary.lynn.s.mejos for CampaignUpdate*********/
    public static Boolean isUpdateFromCampaign = false;
    /* MSIL 1711 catch block method name constant start*/
    public static final String AVGRELATIONSHIPSTRENGTH_CALCULATON_METHODNAME = 'updateAvgRelationshipinOpp';
   /* MSIL 1711 catch block method name constant end*/
   /*@description : 2017-07-03 - Added by sanjay - MSIL-1986 Begin*/
     public static final String ASSIGN_CSPLAN = 'CsPlanAssign';
     public static final String UNASSIGN_CSPLAN = 'CsPlanUnassign';
     public static final String OBJECTNAME_CSPLAN = 'ClientSatisfactionPlan__c';   
     public static final String CSPLAN_WMU_FIELD = 'WMUId__c';
     public static final String CSPLAN_MC_SAPID = 'MasterClientNumber__c';
    /*@description : 2017-07-03 - Added by sanjay - MSIL-1986 End*/
    public static final string READY_TO_PROCESS = 'ReadyToProcess';
    /***** @description : Added by pratibha.jadhav 18.0.1 FF Rel WPP-EDD story : Start ********/
    public static final String EDD_SERVICE_CLASS ='EDD_ServiceClass';
    public static final String EXCECUTE_EDD_SERVICE_CLASS = 'execute';
    public static final String OTHER_COMBINATIONS = 'OTHER COMBINATIONS';
    public static final Decimal ONE_VALUE = 1;
    public static final String BPO_STR = 'BPO';
    public static final String IO_STR = 'IO';
    public static final String WPPRES001 = 'WPPRES001';
    public static final String WPPRES002 = 'WPPRES002';
    public static final String WPPRES003 = 'WPPRES003';
    public static final String WPPRES004 = 'WPPRES004'; 
    public static final Decimal EDD_OUTCOMETO_CHECK = 20;
    public static final String EDD_DAILY_BATCH_JOB = 'EDD-Update-DailyBatchJob';
    public static final String INVOKE_EDD_DAILY_BATCH_JOB = 'EDD-Invoke-DailyBatchJob';
    public static final String EDD_SCHEDULABLE ='EDD_SchedulerClass';
    public static final String EDD_SCHEDULER_METHOD = 'eddBatchSchedulerMethod';
    public static final String INVOKE_EDD_SCHEDULABLE ='EDD_InvokeAPISchedulerClass';
    public static final String INVOKE_EDD_SCHEDULER_METHOD = 'eddInvokeBatchSchedulerMethod';
    public static final String WPP_EDD_HELPER_CLASS ='WPPEDDOutcomeHelper';
    public static final String UPDATE_OPP_WPP_METHOD = 'updateOppWppFields';
    public static final String INVOKE_EDD_API_METHOD = 'sendWPPOutcomeToEDD';
    public static final String ERROR_STR = 'error';
    public static final String POPULATE_SSG = 'populateSSGFields';
    /***** @description : Added by pratibha.jadhav 18.0.1 FF Rel WPP-EDD story : End ********/
    public static final String FS_EUROPE_OU = 'FS EUROPE OU';
    public static final String FS_EUROPE_IBERIA = 'FS Europe Iberia';
    
    public static final String FY19 = 'FY19';
    
    public static final String CONSTANT_APPROVAL_LEVEL_CAPCO = 'CapCo';
    public static final Decimal DEAL_VALUE_HUNDRED_MILLION = 100000000;
    
    /***** Added by von.c.v.villaruel for added for US#448747: CR 682: Marketing Web to Lead Implementation ***/
    public static final Set<String> SET_ASYNC_APEX_JOB_STATUS = new Set<String>{'Queued','Processing','Preparing', 'Holding'}; 
    /***** END US#448747 *******/
    /*@description : 2017-06-11 - Added by devi.a.pillai@accenture.com - MSIL-2059 End*/
    public static final string QUALIFICATION_AND_COMPLETE='DQC and Full Win Strategy';
    public static final string COMPLETE='Complete';
    public static final string CAPCO_DOCUMENTS='CapCo Documents';
    public static final string CTA_SUMMARY='CTA Summary';
    public static final string QA_SUMMARY='QA Summary';
    public static final string RISK_ASSESSMENT='Risk Assessment High Risk & Action Summary';
    public static final string CLIENT_EXPECTATION='Client Expectations Summary';
    public static final string DEAL_QUALIFICATION='Deal Qualification Checklist';
    public static final string UPLOAD='Upload';
    public static final string RELATIONSHIP_STRATEGY='Relationship Strategy & Key Buyers';
    public static final string POWER_MAP='Power Map';
    public static final string COMPLEXITY_CRITERIA='Complexity Criteria';
    public static final string COMPETITIVE_STRATEGY='Competitive Strategy';
    public static final string COMPETITIVE='COMPETITIVE';
    public static final string COMPETITIVE_POSITIONING='Competitor Positioning & Win Themes';
    public static final string STRATEGIES='Strategies';
    public static final string SALES_TEAM='Sales Team';
    public static final string STRATEGY_CONSULTING= 'Strategy Consulting';
    public static final string MANAGEMENT_CONSULTING='Management Consulting';
    public static final string STRONG='Strong';
    public static final string FINANCIAL_SCORECARD='Financial Scorecard';
    public static final string DELIVERY_TEAMS='Delivery Team';
    public static final string OFFERING_ASSETS='Offerings/Assets/APP';
    public static final string CLIENT_OVERVIEW='Client Overview';
    public static final string OPPORTUNITY_OVERVIEW = 'Opportunity Overview';
    public static final string RELATIONSHIP_ATTRIBUTE='1.Relationship  Strategy';
    public static final string COMPETITIVE_ATTRIBUTE='2.Competitive Strategy';
    public static final string SOLUTION_ATTRIBUTE='3.Solution Strategy';
    public static final string PRICING_ATTRIBUTE='4.Pricing & Negotiation Strategy';
    public static final string WIN_ATTRIBUTE='5.Win Strategy';
    
    /***** END US#2059 *******/
    /**************************Created by amar.kumar.nag for R18.0.2 -> US-433272 -> Begin******************************************/
    public static final Set<String> GAMMA_DEAL_APPROVAL_BY_STAGE_SET = new Set<String> {
        '1',
        '2A',
        '2B',
        '3A'
    };
    public static final String GAMMA_APPROVAL_SOURCE = 'Qualification';
     /**************************Created by amar.kumar.nag for R18.0.2 -> US-433272 -> End********************************************/
     /***** @description : Added by narender.g.veeragoni 18.1 EDD Staleness : Start ********/
    public static final String EDD_STAGE_HELPER_CLASS ='WPPEDDStageHelper';
    public static final String WPP_EDD_OUTCOME_OBJ = 'WPPEDDOutcome__c';
    /***** @description : Added by narender.g.veeragoni 18.1 EDD Staleness : End ********/
    public static final String ACCENTURE_SOFTWARE_CD = 'ZATTRIB001';
    public static final String ALLIANCES_CD = 'ZATTRIB002';
    public static final String CONSULTING_PRACTICE_CD = 'ZATTRIB003';
    public static final String BUSINESS_SERVICE_CD = 'ZATTRIB004';
    public static final String INDUSTRY_SUB_SEGMENT_CD = 'ZATTRIB005';
    public static final String STRATEGY_OFFERINGS_CD = 'ZATTRIB006';
    public static final String MERGE_ACQUISITIONS_CD = 'ZATTRIB007';
    public static final String TGP_OFFERINGS_CD = 'ZATTRIB008';
    public static final String MICROSOFT_PLATFORM_INFORMATION_CD = 'ZATTRIB009';
    public static final String ACCENTURE_DIGITAL_CD = 'ZATTRIB010';
    public static final String CROSS_SERVICE_GROUP_OFFERINGS_CD = 'ZATTRIB011';
    public static final String NEW_DESC_ONUSE_ERROR = 'The new description is on use.';
    public static final String LVL1_NEW_DESC_ONUSE_ERROR = 'The new level 1 description is on use.';
    public static final String LVL2_NEW_DESC_ONUSE_ERROR = 'The new level 2 description is on use.';
    public static final String NEW_DESC_ZIN_ERROR = 'The new description is inactive.';
    public static final String LVL1_NEW_DESC_ZIN_ERROR = 'The new level 1 description is inactive.';
    public static final String LVL2_NEW_DESC_ZIN_ERROR = 'The new level 2 description is inactive.';
    public static final String ACTION_CREATE = 'Create';
    public static final String ACTION_UPDATE = 'Update';
    public static final String ACTION_ACTIVATE = 'Activate';
    public static final String ACTION_RETIRE = 'Retire';
    public static final String ACTION_REMAPPING = 'Remapping';
    public static final String LVL1_LVL2_NOT_ATT_ERROR = ' attributes does not need level 1 or level 2 details, please review it and save again.';
    public static final String LVL1_ATT_ERROR = ' attributes need a level 1 attribute, please fill it, and save again.';
    public static final String LVL1_LVL2_ATT_ERROR = ' attributes need a level 1 and level 2 attributes, please fill it, and save again.';
    public static final String ISS_ATT_ERROR = ' attributes need level 1 and level 2 attributes, please fill it, save again and then complete the related ISS code/s.';
    public static final String VALID_UPDATE_ERROR ='You need to provide a valid update when performing the Update Action.';
    public static final String VALID_TGP_UPDATE_ERROR ='You need to provide a valid update when performing the Update Action on TGP attribute.';
    public static final String VALID_BS_CP_UPDATE_ERROR ='You need to provide a valid update when performing the Update Action on BS/CP attribute.';
    public static final String CURRENT_DESC_INVALID_ERROR ='The current description does not refer to any existing attribute, please select a valid one.';
    public static final String CURRENT_LVL1_DESC_INVALID_ERROR ='The current level 1 description does not refer to any existing attribute, please select a valid one.';
    public static final String CURRENT_LVL2_DESC_INVALID_ERROR ='The current level 2 description does not refer to any existing attribute, please select a valid one.';
    public static final String ISS_INDUSTRY_REQUIRED_ERROR = 'Please select the related Industry for the ISS Attribute';
    public static final String NO_TYPE_SELECTED = 'Please select a valid type in order to save';
    public static final String INVALID_REFERENCE = 'You need a description and a code to mark this as Ready to process';
    public static final String INVALID_LEVEL_1 = 'You need a description and a code on Level 1 section to mark this as Ready to process';
    public static final String INVALID_LEVEL_2 = 'You need a description and a code on Level 2 section to mark this as Ready to process';
    public static final String ZINACTIVE = 'ZINACTIVE';
    public static final String ZINACTIVE2 = 'zInactive';
    public static final String NOT_APPLICABLE = 'NOT APPLICABLE';
    public static final String NOT_LAST_CODE = 'nolastcode';
    public static final String IN_DEVELOPMENT = 'In Development';
    public static final String READY_PROCESS = 'Ready to Process';
    public static final String INVALID_LAST_CODE = 'There is no existing attribute codes in the reference table for this attribute type.';
    public static final String DOCKETAUTOMATIONPROCESSBATCHEXECUTION = 'DocketAutomationProcessBatchExecution';
    public static final String EXECUTEBATCH = 'executeBatch';
    public static final String DESC_REPEATED = 'DESC_REPEATED';
    public static final String SZERO = '0';
    public static final String ZETA = 'Z';
    public static final String INDUSTRY_C = 'Industry__c';
    public static final String MAXCODEISS = 'maxCodeIss';
    public static final String PRODUCTCODE = 'ProductCode';
    public static final String NAME = 'Name';
    public static final String ATTTYPECDFIELD = 'AttributeTypeCd__c';
    public static final String ATTTYPEFIELD = 'Attribute_Type__c';
    public static final String MAXCODEOMR1 = 'maxCodeOmr1';
    public static final String MAXCODEOMR1LV1 = 'maxCodeOmr1Lvl1';
    public static final String MAXCODEOMR1LV2 = 'maxCodeOmr1Lvl2';
    public static final String MAXCODEDOC = 'maxCodeDocket';
    public static final String MAXCODEDOCLV1 = 'maxCodeDocketLvl1';
    public static final String MAXCODEDOCLV2 = 'maxCodeDocketLvl2';
    public static final String ERRORCASE = 'ERROR';
    public static final String ATTRIBUTEOBJECT = 'OM_R1_Attribute_Cloned__c';
    public static final string MAXATTID = 'maxAttId';
	public static final string SSG_CONSTANT ='SSG';
    /***** Added by von.c.v.villaruel 18.1.2 MSIL 2462 Account - Adobe Record Type : Start ********/
    //public static ID adobeAnonymousVisitorsRecordTypeId = Schema.SObjectType.Adobe__c.getRecordTypeInfosByName().get(System.Label.Adobe_RecordType_Anonymous_Visitors).getRecordTypeId();
    //public static ID adobeKnownVisitorsRecordTypeId = Schema.SObjectType.Adobe__c.getRecordTypeInfosByName().get(System.Label.Adobe_RecordType_Known_Visitors).getRecordTypeId();
    //public static ID adobeRawAnonymousVisitorsRecordTypeId = Schema.SObjectType.AdobeRawData__c.getRecordTypeInfosByName().get(System.Label.Adobe_RecordType_Anonymous_Visitors).getRecordTypeId();
    //public static ID adobeRawKnownVisitorsRecordTypeId = Schema.SObjectType.AdobeRawData__c.getRecordTypeInfosByName().get(System.Label.Adobe_RecordType_Known_Visitors).getRecordTypeId();
    /***** Added by von.c.v.villaruel 18.1.2 MSIL 2462 Account - Adobe Record Type : End ********/
    
    /**
    * @description : Added by devi.a.pillai -> R18.2 -> CBP : Start
    */
    public static final String CBP_HELPER_CLASS = 'ClientBusinessProjectionHelper';
    public static final String UPDATE_PROJECTION = 'updateProjectionDataForOpportunity'; 
    public static final String CLIENT_BUSINESS_PROJECTION = 'Client Business Projection'; 
    public static final String OPP_PRODUCT_BATCH ='OM_R1_Opportunity_Product_Batch';
    public static final String UPDATE_PHASING_SRC = 'phasingSourceUpdate';
    public static final String PROJECTIONUPDATECBPREST = 'ProjectionUpdateCBP_REST';
    public static final String PROCESSCBP = 'processCBP';
    public static final String BATCHSIZEGREATERTHAN50 = 'Batch size greater than 50'; 
    public static final String NORECORDFOUND = 'No record found';
    public static final String PROJECTION_PERCENTAGE = 'ProjectionPct';    
    public static final String PHASING_SOURCE_FROM = 'PhasingSourcedFrom';
    public static final String OPPORTUNITIES = 'Opportunities';
    public static final String OPPORTUNITYID = 'OpportunityId';
    public static final String FAIL_MSG = 'FAIL';
    public static final String SUCCESS_MSG = 'SUCCESS';
    public static final String PARTIAL_SUCCESS = 'Partial Success :';
    public static final String FILE_HEADER_JSON = 'application/json';
    public static final String OPPORTUNITIES_UPDATE_FAILED = ' Opportunities Failed to Update - ';
    public static final String OPPORTUNITIES_NOT_FOUND = ' Opportunities Not Found - ';
	public static final String ROLES_PARAM_FOR_CBP = 'roles';														 
    /**
    * @description : Added by devi.a.pillai -> R18.2 -> CBP : End
    */ 
    /**
    * @Description : Added by deepika.k.sharma -> MSIL  2451  : Start
    */
    public static final String Campaign_Accounts ='Campaign Accounts';
    public static final String Campaign_Team ='Campaign Team';
    public static final String Campaign_Approvers ='Campaign Approvers';
    public static final String Campaign_Type ='Sales Campaign';
    public static final String Campaign_Type_SE ='Sales Effectiveness';
    public static final String Campaign_Status ='Submitted for Approval';
    public static final String Campaign_Status_InProgress ='In Progress';
    public static final String Error_Start ='Empty ';
    public static final String Error_End =' need(s) to be filled to submit the campaign for approval';
    public static final String User_Profile ='MMS Admin';
    public static final String User_Profile_SysAd ='System Administrator';
    public static final String User_Profile_NonMMS ='Non MMS Admin';
    public static final String Error_InProgress_NonMMS ='You are not allowed to set up this campaign as In Progress.';
    /**
    * @Description : Added by deepika.k.sharma -> MSIL  2451  : End
    */
    /**
    * @Description : Added by vishaka.varma.vimal -> MSIL 2488 : Start
    */
    public static final String CCI_INTEGRATED_AMT = 'CCIIntegrated';
    public static final String CCI_INTEGRATED_PERCENT = 'CCIIntegratedPct';
    public static final String CCI_AMT = 'CCIAmt';
    public static final String CCI_PERCENT = 'CCIPct';
    /**
    * @Description : Added by vishaka.varma.vimal -> MSIL 2488 : End
    */
    /**
    * @Description : Added by vishaka.varma.vimal -> MSIL 2165 : Start
    */
    public static final String SSG_TARGET_PRICE = 'SSGTargetPrice';
    /**
    * @Description : Added by vishaka.varma.vimal -> MSIL 2165 : End
    */
    /**
    * @description : Added by s.chintapally -> R18.2 -> MSIL-1975 : Start
    */
    public static final String SSG_PRICING_STRUCTURE = 'SSGPricingStructure';
    /**
    * @description : Added by s.chintapally -> R18.2 -> MSIL-1975 : End
    */
    /**
    * @Description : Added by vishaka.varma.vimal -> CR 744 (MSIL 1760) : Start
    */
    public static final string SSGTARGETMARGIN = 'SsgTargetMargin';
    public static final string SSG_TARGET_MARGIN = 'SSGTargetMargin';
    /**
    * @Description : Added by vishaka.varma.vimal -> CR 744 (MSIL 1760) : End
    */
	public static final string DATETIME_ISO_FORMAT = 'yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX';
    }