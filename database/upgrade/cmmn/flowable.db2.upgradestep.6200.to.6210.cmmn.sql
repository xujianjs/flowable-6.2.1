
ALTER TABLE ACT_CMMN_CASEDEF ADD DGRM_RESOURCE_NAME_ VARCHAR(4000);

ALTER TABLE ACT_CMMN_CASEDEF ADD HAS_START_FORM_KEY_ SMALLINT;

CALL SYSPROC.ADMIN_CMD ('REORG TABLE ACT_CMMN_CASEDEF');

ALTER TABLE ACT_CMMN_DEPLOYMENT_RESOURCE ADD GENERATED_ SMALLINT;

CALL SYSPROC.ADMIN_CMD ('REORG TABLE ACT_CMMN_DEPLOYMENT_RESOURCE');

ALTER TABLE ACT_CMMN_RU_CASE_INST ADD LOCK_TIME_ TIMESTAMP;

CALL SYSPROC.ADMIN_CMD ('REORG TABLE ACT_CMMN_RU_CASE_INST');

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD ITEM_DEFINITION_ID_ VARCHAR(255);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD ITEM_DEFINITION_TYPE_ VARCHAR(255);

CALL SYSPROC.ADMIN_CMD ('REORG TABLE ACT_CMMN_RU_PLAN_ITEM_INST');

INSERT INTO ACT_CMMN_DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('2', 'flowable', 'changelog-xml/cmmn/6210.xml', CURRENT TIMESTAMP, 3, '7:72a1f3f4767524ec0e22288a1621ebb9', 'addColumn tableName=ACT_CMMN_CASEDEF; addColumn tableName=ACT_CMMN_DEPLOYMENT_RESOURCE; addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST', '', 'EXECUTED', NULL, NULL, '3.5.3', '2985402968');

