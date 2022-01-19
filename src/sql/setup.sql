CREATE TABLE "ApplicationConfig"  (
     "ConfigId"         NUMBER(10,0)
    ,"ConfigKey"        VARCHAR2(50), 
	,"ConfigValue"      VARCHAR2(250)
    ,CONSTRAINT         "ApplicationConfig_PK" PRIMARY KEY ("ConfigId")
);
grant select, insert, update, delete on "ApplicationConfig" to "ERGISUSER";
--
CREATE TABLE "Bibliography" (
     "OBJECTID"          NUMBER(10,0) NOT NULL ENABLE
    ,"BibliographyID"    NUMBER(10,0)
    ,"PUID"              NUMBER(10,0) NOT NULL ENABLE
    ,"CEQRID"            VARCHAR2(12)
    ,"Digital"           VARCHAR2(1)
    ,"TimePeriodMonth"   NUMBER(10,0)
    ,"TimePeriodYear"    VARCHAR2(10)
    ,"Author"            VARCHAR2(255)
    ,"Title"             VARCHAR2(255)
    ,"SHPOPr"            VARCHAR2(15)
    ,"FileName"          VARCHAR2(1000)
    ,CONSTRAINT         "Bibliography_PK" PRIMARY KEY ("OBJECTID"));
grant select, insert, update, delete on "Bibliography" to "ERGISUSER";
--
CREATE TABLE "Document" (
     "OBJECTID"             NUMBER(10,0) NOT NULL ENABLE
    ,"DocumentID"           NUMBER(10,0)
    ,"PUID"                 NUMBER(10,0) NOT NULL ENABLE
    ,"DocumentTypeID"       NUMBER(10,0)
    ,"DtRequested"          TIMESTAMP(3)
    ,"DtReceived"           TIMESTAMP(3)
    ,"DtOut"                TIMESTAMP(3)
    ,"DocumentInitials"     VARCHAR2(3)
    ,"FileName"             VARCHAR2(1000)
    ,CONSTRAINT             "Document_PK" PRIMARY KEY ("OBJECTID"));
grant select, insert, update, delete on "Document" to "ERGISUSER";
--
CREATE TABLE "DocumentKey" (
     "KeyID"                NUMBER(10,0)
     ,"KeyLabel"            VARCHAR2(255)
     ,"KeyFieldName"        VARCHAR2(50)
     ,"AltKeyFieldName"     VARCHAR2(50)
     ,CONSTRAINT            "DocumentKey_PK" PRIMARY KEY ("KeyID"));
grant select, insert, update, delete on "DocumentKey" to "ERGISUSER";
--
CREATE TABLE "KeyValue" (
     "ObjectId"             NUMBER(10,0)
    ,"Code"                 VARCHAR2(50)
    ,"Name"                 VARCHAR2(255)
    ,"AlternateName"        VARCHAR2(255)
    ,"SubCategory"          VARCHAR2(50)
    ,"Category"             VARCHAR2(50)
    ,"IsDefaultSelected"    VARCHAR2(1)
    ,"SortOrder"            NUMBER(10,0)
	 CONSTRAINT             "KeyValue_PK" PRIMARY KEY ("ObjectId"));
grant select, insert, update, delete on "KeyValue" to "ERGISUSER";
--
CREATE TABLE "LargeText" (
     "ObjectId"             NUMBER(10,0)
    ,"ReferenceId"          NUMBER(10,0)
    ,"Type"                 VARCHAR2(20)
    ,"Description"          NCLOB
    ,CONSTRAINT             "LargeText_PK" PRIMARY KEY ("ObjectId"));
grant select, insert, update, delete on "LargeText" to "ERGISUSER";
--
CREATE TABLE "ORACLESITE" (
     "OBJECTID"             NUMBER(10,0) NOT NULL ENABLE
    ,"SHAPE"                mdsys.sdo_geometry
    ,"SITEID"               NUMBER(10,0) NOT NULL ENABLE
    ,"PUID"                 NUMBER(10,0) NOT NULL ENABLE
    ,"SITENAME"             VARCHAR2(50)
    ,"BBL"                  VARCHAR2(10)
    ,"ADDRESS"              VARCHAR2(50)
    ,"ATLPCIMPACTID"        NUMBER(10,0)
    ,"ATFEDIMPACTID"        NUMBER(10,0)
    ,"AYRESOURCEDECLARED"   VARCHAR2(1)
    ,"AYIMPACTID"           NUMBER(10,0)
    ,"SITETYPEID"           NUMBER(10,0)
    ,"TIMEPERIODID"         NUMBER(10,0)
    ,"FINDINGID"            NUMBER(10,0)
    ,"REVIEWTYPEID"         NUMBER(10,0)
    ,"RESEARCHTYPEID"       NUMBER(10,0)
    ,"LASTUPDATEDDATE"      TIMESTAMP (3)
    ,"SE_ANNO_CAD_DATA"     BLOB 
	,CONSTRAINT             "ORACLESITE_PK" PRIMARY KEY ("OBJECTID"));
grant select, insert, update, delete on "ORACLESITE" to "ERGISUSER";
--
CREATE TABLE "Project" (
     "OBJECTID"                 NUMBER(10,0) NOT NULL ENABLE
    ,"PUID"                     NUMBER(10,0) NOT NULL ENABLE
    ,"AgencyProjectID"          VARCHAR2(20)
    ,"AgencyProjectIDPrevious"  VARCHAR2(20)
    ,"AgencyID"                 NUMBER(10,0)
    ,"ProjectName"              VARCHAR2(100)
    ,"ATimpact"                 VARCHAR2(1)
    ,"AYimpact"                 VARCHAR2(1)
    ,"AYDesignated"             VARCHAR2(1)
    ,"AYPending"                VARCHAR2(1)
    ,"DtAppCompleted"           TIMESTAMP(3)
    ,"DtOpened"                 TIMESTAMP(3)
    ,"DtDue"                    TIMESTAMP(3)
    ,"DtATSent"                 TIMESTAMP(3)
    ,"DtATReceived"             TIMESTAMP(3)
    ,"DtAYsent"                 TIMESTAMP(3)
    ,"DtAYReceived"             TIMESTAMP(3)
    ,"DtLegalSent"              TIMESTAMP(3)
    ,"DtLegalReceived"          TIMESTAMP(3)
    ,"DtCompleted"              TIMESTAMP(3)
    ,"StatusId"                 NUMBER(10,0)
    ,"ReviewerInitials"         VARCHAR2(3)
    ,"SHPOPr"                   VARCHAR2(20)
    ,"LastUpdatedBy"            VARCHAR2(255)
    ,"DtLastUpdated"            TIMESTAMP(3)
    ,CONSTRAINT                 "Project_PK" PRIMARY KEY ("OBJECTID"));
grant select, insert, update, delete on "Project" to "ERGISUSER";


