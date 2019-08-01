/*
 Navicat Premium Data Transfer

 Source Server         : postgres_localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 110001
 Source Host           : localhost:5432
 Source Catalog        : bladex_flow
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110001
 File Encoding         : 65001

 Date: 01/08/2019 11:17:08
*/


-- ----------------------------
-- Sequence structure for act_evt_log_log_nr__seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "act_evt_log_log_nr__seq";
CREATE SEQUENCE "act_evt_log_log_nr__seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for act_hi_tsk_log_id__seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "act_hi_tsk_log_id__seq";
CREATE SEQUENCE "act_hi_tsk_log_id__seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for act_app_appdef
-- ----------------------------
DROP TABLE IF EXISTS "act_app_appdef";
CREATE TABLE "act_app_appdef" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "version_" int4 NOT NULL,
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_name_" varchar(4000) COLLATE "pg_catalog"."default",
  "description_" varchar(4000) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_app_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "act_app_databasechangelog";
CREATE TABLE "act_app_databasechangelog" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "filename" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dateexecuted" timestamp(6) NOT NULL,
  "orderexecuted" int4 NOT NULL,
  "exectype" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "md5sum" varchar(35) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "comments" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default",
  "liquibase" varchar(20) COLLATE "pg_catalog"."default",
  "contexts" varchar(255) COLLATE "pg_catalog"."default",
  "labels" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_app_databasechangelog
-- ----------------------------
BEGIN;
INSERT INTO "act_app_databasechangelog" VALUES ('1', 'flowable', 'org/flowable/app/db/liquibase/flowable-app-db-changelog.xml', '2019-08-01 11:14:44.941879', 1, 'EXECUTED', '8:496fc778bdf2ab13f2e1926d0e63e0a2', 'createTable tableName=ACT_APP_DEPLOYMENT; createTable tableName=ACT_APP_DEPLOYMENT_RESOURCE; addForeignKeyConstraint baseTableName=ACT_APP_DEPLOYMENT_RESOURCE, constraintName=ACT_FK_APP_RSRC_DPL, referencedTableName=ACT_APP_DEPLOYMENT; createIndex...', '', NULL, '3.6.3', NULL, NULL, '4629284892');
INSERT INTO "act_app_databasechangelog" VALUES ('3', 'flowable', 'org/flowable/app/db/liquibase/flowable-app-db-changelog.xml', '2019-08-01 11:14:44.954037', 2, 'EXECUTED', '8:f1f8aff320aade831944ebad24355f3d', 'createIndex indexName=ACT_IDX_APP_DEF_UNIQ, tableName=ACT_APP_APPDEF', '', NULL, '3.6.3', NULL, NULL, '4629284892');
COMMIT;

-- ----------------------------
-- Table structure for act_app_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "act_app_databasechangeloglock";
CREATE TABLE "act_app_databasechangeloglock" (
  "id" int4 NOT NULL,
  "locked" bool NOT NULL,
  "lockgranted" timestamp(6),
  "lockedby" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_app_databasechangeloglock
-- ----------------------------
BEGIN;
INSERT INTO "act_app_databasechangeloglock" VALUES (1, 'f', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_app_deployment
-- ----------------------------
DROP TABLE IF EXISTS "act_app_deployment";
CREATE TABLE "act_app_deployment" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default",
  "deploy_time_" timestamp(6),
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_app_deployment_resource
-- ----------------------------
DROP TABLE IF EXISTS "act_app_deployment_resource";
CREATE TABLE "act_app_deployment_resource" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_bytes_" bytea
)
;

-- ----------------------------
-- Table structure for act_cmmn_casedef
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_casedef";
CREATE TABLE "act_cmmn_casedef" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "version_" int4 NOT NULL,
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_name_" varchar(4000) COLLATE "pg_catalog"."default",
  "description_" varchar(4000) COLLATE "pg_catalog"."default",
  "has_graphical_notation_" bool,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dgrm_resource_name_" varchar(4000) COLLATE "pg_catalog"."default",
  "has_start_form_key_" bool
)
;

-- ----------------------------
-- Table structure for act_cmmn_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_databasechangelog";
CREATE TABLE "act_cmmn_databasechangelog" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "filename" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dateexecuted" timestamp(6) NOT NULL,
  "orderexecuted" int4 NOT NULL,
  "exectype" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "md5sum" varchar(35) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "comments" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default",
  "liquibase" varchar(20) COLLATE "pg_catalog"."default",
  "contexts" varchar(255) COLLATE "pg_catalog"."default",
  "labels" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_cmmn_databasechangelog
-- ----------------------------
BEGIN;
INSERT INTO "act_cmmn_databasechangelog" VALUES ('1', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2019-08-01 11:14:44.726809', 1, 'EXECUTED', '8:8b4b922d90b05ff27483abefc9597aa6', 'createTable tableName=ACT_CMMN_DEPLOYMENT; createTable tableName=ACT_CMMN_DEPLOYMENT_RESOURCE; addForeignKeyConstraint baseTableName=ACT_CMMN_DEPLOYMENT_RESOURCE, constraintName=ACT_FK_CMMN_RSRC_DPL, referencedTableName=ACT_CMMN_DEPLOYMENT; create...', '', NULL, '3.6.3', NULL, NULL, '4629284549');
INSERT INTO "act_cmmn_databasechangelog" VALUES ('2', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2019-08-01 11:14:44.745381', 2, 'EXECUTED', '8:65e39b3d385706bb261cbeffe7533cbe', 'addColumn tableName=ACT_CMMN_CASEDEF; addColumn tableName=ACT_CMMN_DEPLOYMENT_RESOURCE; addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST', '', NULL, '3.6.3', NULL, NULL, '4629284549');
INSERT INTO "act_cmmn_databasechangelog" VALUES ('3', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2019-08-01 11:14:44.760777', 3, 'EXECUTED', '8:c01f6e802b49436b4489040da3012359', 'addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_CASE_INST; createIndex indexName=ACT_IDX_PLAN_ITEM_STAGE_INST, tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableNam...', '', NULL, '3.6.3', NULL, NULL, '4629284549');
INSERT INTO "act_cmmn_databasechangelog" VALUES ('4', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2019-08-01 11:14:44.77726', 4, 'EXECUTED', '8:e40d29cb79345b7fb5afd38a7f0ba8fc', 'createTable tableName=ACT_CMMN_HI_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_MIL_INST; addColumn tableName=ACT_CMMN_HI_MIL_INST', '', NULL, '3.6.3', NULL, NULL, '4629284549');
INSERT INTO "act_cmmn_databasechangelog" VALUES ('6', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2019-08-01 11:14:44.786077', 5, 'EXECUTED', '8:10e82e26a7fee94c32a92099c059c18c', 'createIndex indexName=ACT_IDX_CASE_DEF_UNIQ, tableName=ACT_CMMN_CASEDEF', '', NULL, '3.6.3', NULL, NULL, '4629284549');
INSERT INTO "act_cmmn_databasechangelog" VALUES ('7', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2019-08-01 11:14:44.810331', 6, 'EXECUTED', '8:530bc81a1e30618ccf4a2da1f7c6c043', 'renameColumn newColumnName=CREATE_TIME_, oldColumnName=START_TIME_, tableName=ACT_CMMN_RU_PLAN_ITEM_INST; renameColumn newColumnName=CREATE_TIME_, oldColumnName=CREATED_TIME_, tableName=ACT_CMMN_HI_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_P...', '', NULL, '3.6.3', NULL, NULL, '4629284549');
COMMIT;

-- ----------------------------
-- Table structure for act_cmmn_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_databasechangeloglock";
CREATE TABLE "act_cmmn_databasechangeloglock" (
  "id" int4 NOT NULL,
  "locked" bool NOT NULL,
  "lockgranted" timestamp(6),
  "lockedby" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_cmmn_databasechangeloglock
-- ----------------------------
BEGIN;
INSERT INTO "act_cmmn_databasechangeloglock" VALUES (1, 'f', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_cmmn_deployment
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_deployment";
CREATE TABLE "act_cmmn_deployment" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default",
  "deploy_time_" timestamp(6),
  "parent_deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_cmmn_deployment_resource
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_deployment_resource";
CREATE TABLE "act_cmmn_deployment_resource" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_bytes_" bytea,
  "generated_" bool
)
;

-- ----------------------------
-- Table structure for act_cmmn_hi_case_inst
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_hi_case_inst";
CREATE TABLE "act_cmmn_hi_case_inst" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "business_key_" varchar(255) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "parent_id_" varchar(255) COLLATE "pg_catalog"."default",
  "case_def_id_" varchar(255) COLLATE "pg_catalog"."default",
  "state_" varchar(255) COLLATE "pg_catalog"."default",
  "start_time_" timestamp(6),
  "end_time_" timestamp(6),
  "start_user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "callback_id_" varchar(255) COLLATE "pg_catalog"."default",
  "callback_type_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_cmmn_hi_mil_inst
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_hi_mil_inst";
CREATE TABLE "act_cmmn_hi_mil_inst" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "time_stamp_" timestamp(6) NOT NULL,
  "case_inst_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "case_def_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "element_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_cmmn_hi_plan_item_inst
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_hi_plan_item_inst";
CREATE TABLE "act_cmmn_hi_plan_item_inst" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "state_" varchar(255) COLLATE "pg_catalog"."default",
  "case_def_id_" varchar(255) COLLATE "pg_catalog"."default",
  "case_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "stage_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "is_stage_" bool,
  "element_id_" varchar(255) COLLATE "pg_catalog"."default",
  "item_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "item_definition_type_" varchar(255) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "last_available_time_" timestamp(6),
  "last_enabled_time_" timestamp(6),
  "last_disabled_time_" timestamp(6),
  "last_started_time_" timestamp(6),
  "last_suspended_time_" timestamp(6),
  "completed_time_" timestamp(6),
  "occurred_time_" timestamp(6),
  "terminated_time_" timestamp(6),
  "exit_time_" timestamp(6),
  "ended_time_" timestamp(6),
  "last_updated_time_" timestamp(6),
  "start_user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "reference_id_" varchar(255) COLLATE "pg_catalog"."default",
  "reference_type_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "entry_criterion_id_" varchar(255) COLLATE "pg_catalog"."default",
  "exit_criterion_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_cmmn_ru_case_inst
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_ru_case_inst";
CREATE TABLE "act_cmmn_ru_case_inst" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "business_key_" varchar(255) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "parent_id_" varchar(255) COLLATE "pg_catalog"."default",
  "case_def_id_" varchar(255) COLLATE "pg_catalog"."default",
  "state_" varchar(255) COLLATE "pg_catalog"."default",
  "start_time_" timestamp(6),
  "start_user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "callback_id_" varchar(255) COLLATE "pg_catalog"."default",
  "callback_type_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "lock_time_" timestamp(6),
  "is_completeable_" bool
)
;

-- ----------------------------
-- Table structure for act_cmmn_ru_mil_inst
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_ru_mil_inst";
CREATE TABLE "act_cmmn_ru_mil_inst" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "time_stamp_" timestamp(6) NOT NULL,
  "case_inst_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "case_def_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "element_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_cmmn_ru_plan_item_inst
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_ru_plan_item_inst";
CREATE TABLE "act_cmmn_ru_plan_item_inst" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "case_def_id_" varchar(255) COLLATE "pg_catalog"."default",
  "case_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "stage_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "is_stage_" bool,
  "element_id_" varchar(255) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "state_" varchar(255) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "start_user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "reference_id_" varchar(255) COLLATE "pg_catalog"."default",
  "reference_type_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "item_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "item_definition_type_" varchar(255) COLLATE "pg_catalog"."default",
  "is_completeable_" bool,
  "is_count_enabled_" bool,
  "var_count_" int4,
  "sentry_part_inst_count_" int4,
  "last_available_time_" timestamp(3),
  "last_enabled_time_" timestamp(3),
  "last_disabled_time_" timestamp(3),
  "last_started_time_" timestamp(3),
  "last_suspended_time_" timestamp(3),
  "completed_time_" timestamp(3),
  "occurred_time_" timestamp(3),
  "terminated_time_" timestamp(3),
  "exit_time_" timestamp(3),
  "ended_time_" timestamp(3),
  "entry_criterion_id_" varchar(255) COLLATE "pg_catalog"."default",
  "exit_criterion_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_cmmn_ru_sentry_part_inst
-- ----------------------------
DROP TABLE IF EXISTS "act_cmmn_ru_sentry_part_inst";
CREATE TABLE "act_cmmn_ru_sentry_part_inst" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 NOT NULL,
  "case_def_id_" varchar(255) COLLATE "pg_catalog"."default",
  "case_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "plan_item_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "on_part_id_" varchar(255) COLLATE "pg_catalog"."default",
  "if_part_id_" varchar(255) COLLATE "pg_catalog"."default",
  "time_stamp_" timestamp(6)
)
;

-- ----------------------------
-- Table structure for act_co_content_item
-- ----------------------------
DROP TABLE IF EXISTS "act_co_content_item";
CREATE TABLE "act_co_content_item" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "mime_type_" varchar(255) COLLATE "pg_catalog"."default",
  "task_id_" varchar(255) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "content_store_id_" varchar(255) COLLATE "pg_catalog"."default",
  "content_store_name_" varchar(255) COLLATE "pg_catalog"."default",
  "field_" varchar(400) COLLATE "pg_catalog"."default",
  "content_available_" bool DEFAULT false,
  "created_" timestamp(6),
  "created_by_" varchar(255) COLLATE "pg_catalog"."default",
  "last_modified_" timestamp(6),
  "last_modified_by_" varchar(255) COLLATE "pg_catalog"."default",
  "content_size_" int8 DEFAULT 0,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_co_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "act_co_databasechangelog";
CREATE TABLE "act_co_databasechangelog" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "filename" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dateexecuted" timestamp(6) NOT NULL,
  "orderexecuted" int4 NOT NULL,
  "exectype" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "md5sum" varchar(35) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "comments" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default",
  "liquibase" varchar(20) COLLATE "pg_catalog"."default",
  "contexts" varchar(255) COLLATE "pg_catalog"."default",
  "labels" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_co_databasechangelog
-- ----------------------------
BEGIN;
INSERT INTO "act_co_databasechangelog" VALUES ('1', 'activiti', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2019-08-01 11:14:44.385299', 1, 'EXECUTED', '8:7644d7165cfe799200a2abdd3419e8b6', 'createTable tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_taskid, tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_procid, tableName=ACT_CO_CONTENT_ITEM', '', NULL, '3.6.3', NULL, NULL, '4629284351');
INSERT INTO "act_co_databasechangelog" VALUES ('2', 'flowable', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2019-08-01 11:14:44.398737', 2, 'EXECUTED', '8:fe7b11ac7dbbf9c43006b23bbab60bab', 'addColumn tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_scope, tableName=ACT_CO_CONTENT_ITEM', '', NULL, '3.6.3', NULL, NULL, '4629284351');
COMMIT;

-- ----------------------------
-- Table structure for act_co_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "act_co_databasechangeloglock";
CREATE TABLE "act_co_databasechangeloglock" (
  "id" int4 NOT NULL,
  "locked" bool NOT NULL,
  "lockgranted" timestamp(6),
  "lockedby" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_co_databasechangeloglock
-- ----------------------------
BEGIN;
INSERT INTO "act_co_databasechangeloglock" VALUES (1, 'f', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_de_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "act_de_databasechangelog";
CREATE TABLE "act_de_databasechangelog" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "filename" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dateexecuted" timestamp(6) NOT NULL,
  "orderexecuted" int4 NOT NULL,
  "exectype" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "md5sum" varchar(35) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "comments" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default",
  "liquibase" varchar(20) COLLATE "pg_catalog"."default",
  "contexts" varchar(255) COLLATE "pg_catalog"."default",
  "labels" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_de_databasechangelog
-- ----------------------------
BEGIN;
INSERT INTO "act_de_databasechangelog" VALUES ('1', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2019-08-01 11:15:20.699493', 1, 'EXECUTED', '8:e70d1d9d3899a734296b2514ccc71501', 'createTable tableName=ACT_DE_MODEL; createIndex indexName=idx_proc_mod_created, tableName=ACT_DE_MODEL; createTable tableName=ACT_DE_MODEL_HISTORY; createIndex indexName=idx_proc_mod_history_proc, tableName=ACT_DE_MODEL_HISTORY; createTable tableN...', '', NULL, '3.6.3', NULL, NULL, '4629320613');
INSERT INTO "act_de_databasechangelog" VALUES ('3', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2019-08-01 11:15:20.714118', 2, 'EXECUTED', '8:3a9143bef2e45f2316231cc1369138b6', 'addColumn tableName=ACT_DE_MODEL; addColumn tableName=ACT_DE_MODEL_HISTORY', '', NULL, '3.6.3', NULL, NULL, '4629320613');
COMMIT;

-- ----------------------------
-- Table structure for act_de_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "act_de_databasechangeloglock";
CREATE TABLE "act_de_databasechangeloglock" (
  "id" int4 NOT NULL,
  "locked" bool NOT NULL,
  "lockgranted" timestamp(6),
  "lockedby" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_de_databasechangeloglock
-- ----------------------------
BEGIN;
INSERT INTO "act_de_databasechangeloglock" VALUES (1, 'f', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_de_model
-- ----------------------------
DROP TABLE IF EXISTS "act_de_model";
CREATE TABLE "act_de_model" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "model_key" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(4000) COLLATE "pg_catalog"."default",
  "model_comment" varchar(4000) COLLATE "pg_catalog"."default",
  "created" timestamp(6),
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "last_updated" timestamp(6),
  "last_updated_by" varchar(255) COLLATE "pg_catalog"."default",
  "version" int4,
  "model_editor_json" text COLLATE "pg_catalog"."default",
  "thumbnail" bytea,
  "model_type" int4,
  "tenant_id" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_de_model_history
-- ----------------------------
DROP TABLE IF EXISTS "act_de_model_history";
CREATE TABLE "act_de_model_history" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "model_key" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(4000) COLLATE "pg_catalog"."default",
  "model_comment" varchar(4000) COLLATE "pg_catalog"."default",
  "created" timestamp(6),
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "last_updated" timestamp(6),
  "last_updated_by" varchar(255) COLLATE "pg_catalog"."default",
  "removal_date" timestamp(6),
  "version" int4,
  "model_editor_json" text COLLATE "pg_catalog"."default",
  "model_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "model_type" int4,
  "tenant_id" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_de_model_relation
-- ----------------------------
DROP TABLE IF EXISTS "act_de_model_relation";
CREATE TABLE "act_de_model_relation" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_model_id" varchar(255) COLLATE "pg_catalog"."default",
  "model_id" varchar(255) COLLATE "pg_catalog"."default",
  "relation_type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_dmn_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "act_dmn_databasechangelog";
CREATE TABLE "act_dmn_databasechangelog" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "filename" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dateexecuted" timestamp(6) NOT NULL,
  "orderexecuted" int4 NOT NULL,
  "exectype" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "md5sum" varchar(35) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "comments" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default",
  "liquibase" varchar(20) COLLATE "pg_catalog"."default",
  "contexts" varchar(255) COLLATE "pg_catalog"."default",
  "labels" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_dmn_databasechangelog
-- ----------------------------
BEGIN;
INSERT INTO "act_dmn_databasechangelog" VALUES ('1', 'activiti', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2019-08-01 11:14:44.107764', 1, 'EXECUTED', '8:c8701f1c71018b55029f450b2e9a10a1', 'createTable tableName=ACT_DMN_DEPLOYMENT; createTable tableName=ACT_DMN_DEPLOYMENT_RESOURCE; createTable tableName=ACT_DMN_DECISION_TABLE', '', NULL, '3.6.3', NULL, NULL, '4629284058');
INSERT INTO "act_dmn_databasechangelog" VALUES ('2', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2019-08-01 11:14:44.126839', 2, 'EXECUTED', '8:47f94b27feb7df8a30d4e338c7bd5fb8', 'createTable tableName=ACT_DMN_HI_DECISION_EXECUTION', '', NULL, '3.6.3', NULL, NULL, '4629284058');
INSERT INTO "act_dmn_databasechangelog" VALUES ('3', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2019-08-01 11:14:44.132822', 3, 'EXECUTED', '8:ac17eae89fbdccb6e08daf3c7797b579', 'addColumn tableName=ACT_DMN_HI_DECISION_EXECUTION', '', NULL, '3.6.3', NULL, NULL, '4629284058');
INSERT INTO "act_dmn_databasechangelog" VALUES ('4', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2019-08-01 11:14:44.140014', 4, 'EXECUTED', '8:f73aabc4529e7292c2942073d1cff6f9', 'dropColumn columnName=PARENT_DEPLOYMENT_ID_, tableName=ACT_DMN_DECISION_TABLE', '', NULL, '3.6.3', NULL, NULL, '4629284058');
INSERT INTO "act_dmn_databasechangelog" VALUES ('6', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2019-08-01 11:14:44.147178', 5, 'EXECUTED', '8:646c6a061e0b6e8a62e69844ff96abb0', 'createIndex indexName=ACT_IDX_DEC_TBL_UNIQ, tableName=ACT_DMN_DECISION_TABLE', '', NULL, '3.6.3', NULL, NULL, '4629284058');
COMMIT;

-- ----------------------------
-- Table structure for act_dmn_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "act_dmn_databasechangeloglock";
CREATE TABLE "act_dmn_databasechangeloglock" (
  "id" int4 NOT NULL,
  "locked" bool NOT NULL,
  "lockgranted" timestamp(6),
  "lockedby" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_dmn_databasechangeloglock
-- ----------------------------
BEGIN;
INSERT INTO "act_dmn_databasechangeloglock" VALUES (1, 'f', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_dmn_decision_table
-- ----------------------------
DROP TABLE IF EXISTS "act_dmn_decision_table";
CREATE TABLE "act_dmn_decision_table" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "version_" int4,
  "key_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_name_" varchar(255) COLLATE "pg_catalog"."default",
  "description_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_dmn_deployment
-- ----------------------------
DROP TABLE IF EXISTS "act_dmn_deployment";
CREATE TABLE "act_dmn_deployment" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "deploy_time_" timestamp(6),
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default",
  "parent_deployment_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_dmn_deployment_resource
-- ----------------------------
DROP TABLE IF EXISTS "act_dmn_deployment_resource";
CREATE TABLE "act_dmn_deployment_resource" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_bytes_" bytea
)
;

-- ----------------------------
-- Table structure for act_dmn_hi_decision_execution
-- ----------------------------
DROP TABLE IF EXISTS "act_dmn_hi_decision_execution";
CREATE TABLE "act_dmn_hi_decision_execution" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "decision_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "start_time_" timestamp(6),
  "end_time_" timestamp(6),
  "instance_id_" varchar(255) COLLATE "pg_catalog"."default",
  "execution_id_" varchar(255) COLLATE "pg_catalog"."default",
  "activity_id_" varchar(255) COLLATE "pg_catalog"."default",
  "failed_" bool DEFAULT false,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default",
  "execution_json_" text COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
DROP TABLE IF EXISTS "act_evt_log";
CREATE TABLE "act_evt_log" (
  "log_nr_" int4 NOT NULL DEFAULT nextval('act_evt_log_log_nr__seq'::regclass),
  "type_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "time_stamp_" timestamp(6) NOT NULL,
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "data_" bytea,
  "lock_owner_" varchar(255) COLLATE "pg_catalog"."default",
  "lock_time_" timestamp(6),
  "is_processed_" int2 DEFAULT 0
)
;

-- ----------------------------
-- Table structure for act_fo_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "act_fo_databasechangelog";
CREATE TABLE "act_fo_databasechangelog" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "filename" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dateexecuted" timestamp(6) NOT NULL,
  "orderexecuted" int4 NOT NULL,
  "exectype" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "md5sum" varchar(35) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "comments" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default",
  "liquibase" varchar(20) COLLATE "pg_catalog"."default",
  "contexts" varchar(255) COLLATE "pg_catalog"."default",
  "labels" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_fo_databasechangelog
-- ----------------------------
BEGIN;
INSERT INTO "act_fo_databasechangelog" VALUES ('1', 'activiti', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2019-08-01 11:14:44.257713', 1, 'EXECUTED', '8:033ebf9380889aed7c453927ecc3250d', 'createTable tableName=ACT_FO_FORM_DEPLOYMENT; createTable tableName=ACT_FO_FORM_RESOURCE; createTable tableName=ACT_FO_FORM_DEFINITION; createTable tableName=ACT_FO_FORM_INSTANCE', '', NULL, '3.6.3', NULL, NULL, '4629284208');
INSERT INTO "act_fo_databasechangelog" VALUES ('2', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2019-08-01 11:14:44.269617', 2, 'EXECUTED', '8:986365ceb40445ce3b27a8e6b40f159b', 'addColumn tableName=ACT_FO_FORM_INSTANCE', '', NULL, '3.6.3', NULL, NULL, '4629284208');
INSERT INTO "act_fo_databasechangelog" VALUES ('3', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2019-08-01 11:14:44.276052', 3, 'EXECUTED', '8:abf482518ceb09830ef674e52c06bf15', 'dropColumn columnName=PARENT_DEPLOYMENT_ID_, tableName=ACT_FO_FORM_DEFINITION', '', NULL, '3.6.3', NULL, NULL, '4629284208');
INSERT INTO "act_fo_databasechangelog" VALUES ('5', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2019-08-01 11:14:44.2847', 4, 'EXECUTED', '8:b4be732b89e5ca028bdd520c6ad4d446', 'createIndex indexName=ACT_IDX_FORM_DEF_UNIQ, tableName=ACT_FO_FORM_DEFINITION', '', NULL, '3.6.3', NULL, NULL, '4629284208');
COMMIT;

-- ----------------------------
-- Table structure for act_fo_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "act_fo_databasechangeloglock";
CREATE TABLE "act_fo_databasechangeloglock" (
  "id" int4 NOT NULL,
  "locked" bool NOT NULL,
  "lockgranted" timestamp(6),
  "lockedby" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_fo_databasechangeloglock
-- ----------------------------
BEGIN;
INSERT INTO "act_fo_databasechangeloglock" VALUES (1, 'f', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_fo_form_definition
-- ----------------------------
DROP TABLE IF EXISTS "act_fo_form_definition";
CREATE TABLE "act_fo_form_definition" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "version_" int4,
  "key_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_name_" varchar(255) COLLATE "pg_catalog"."default",
  "description_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_fo_form_deployment
-- ----------------------------
DROP TABLE IF EXISTS "act_fo_form_deployment";
CREATE TABLE "act_fo_form_deployment" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "deploy_time_" timestamp(6),
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default",
  "parent_deployment_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_fo_form_instance
-- ----------------------------
DROP TABLE IF EXISTS "act_fo_form_instance";
CREATE TABLE "act_fo_form_instance" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "form_definition_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "task_id_" varchar(255) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(255) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(255) COLLATE "pg_catalog"."default",
  "submitted_date_" timestamp(6),
  "submitted_by_" varchar(255) COLLATE "pg_catalog"."default",
  "form_values_id_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_fo_form_resource
-- ----------------------------
DROP TABLE IF EXISTS "act_fo_form_resource";
CREATE TABLE "act_fo_form_resource" (
  "id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "resource_bytes_" bytea
)
;

-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
DROP TABLE IF EXISTS "act_ge_bytearray";
CREATE TABLE "act_ge_bytearray" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(64) COLLATE "pg_catalog"."default",
  "bytes_" bytea,
  "generated_" bool
)
;

-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
DROP TABLE IF EXISTS "act_ge_property";
CREATE TABLE "act_ge_property" (
  "name_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "value_" varchar(300) COLLATE "pg_catalog"."default",
  "rev_" int4
)
;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
BEGIN;
INSERT INTO "act_ge_property" VALUES ('common.schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('next.dbid', '1', 1);
INSERT INTO "act_ge_property" VALUES ('identitylink.schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('entitylink.schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('eventsubscription.schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('task.schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('variable.schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('job.schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('schema.version', '6.5.0.1', 1);
INSERT INTO "act_ge_property" VALUES ('schema.history', 'create(6.5.0.1)', 1);
INSERT INTO "act_ge_property" VALUES ('cfg.execution-related-entities-count', 'true', 1);
INSERT INTO "act_ge_property" VALUES ('cfg.task-related-entities-count', 'true', 1);
COMMIT;

-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_actinst";
CREATE TABLE "act_hi_actinst" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 DEFAULT 1,
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "act_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "call_proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "act_name_" varchar(255) COLLATE "pg_catalog"."default",
  "act_type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "assignee_" varchar(255) COLLATE "pg_catalog"."default",
  "start_time_" timestamp(6) NOT NULL,
  "end_time_" timestamp(6),
  "duration_" int8,
  "delete_reason_" varchar(4000) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_attachment";
CREATE TABLE "act_hi_attachment" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "description_" varchar(4000) COLLATE "pg_catalog"."default",
  "type_" varchar(255) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "url_" varchar(4000) COLLATE "pg_catalog"."default",
  "content_id_" varchar(64) COLLATE "pg_catalog"."default",
  "time_" timestamp(6)
)
;

-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_comment";
CREATE TABLE "act_hi_comment" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "type_" varchar(255) COLLATE "pg_catalog"."default",
  "time_" timestamp(6) NOT NULL,
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "action_" varchar(255) COLLATE "pg_catalog"."default",
  "message_" varchar(4000) COLLATE "pg_catalog"."default",
  "full_msg_" bytea
)
;

-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_detail";
CREATE TABLE "act_hi_detail" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "act_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "var_type_" varchar(64) COLLATE "pg_catalog"."default",
  "rev_" int4,
  "time_" timestamp(6) NOT NULL,
  "bytearray_id_" varchar(64) COLLATE "pg_catalog"."default",
  "double_" float8,
  "long_" int8,
  "text_" varchar(4000) COLLATE "pg_catalog"."default",
  "text2_" varchar(4000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_hi_entitylink
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_entitylink";
CREATE TABLE "act_hi_entitylink" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "link_type_" varchar(255) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "ref_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "ref_scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "ref_scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "hierarchy_type_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_identitylink";
CREATE TABLE "act_hi_identitylink" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id_" varchar(255) COLLATE "pg_catalog"."default",
  "type_" varchar(255) COLLATE "pg_catalog"."default",
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_procinst";
CREATE TABLE "act_hi_procinst" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 DEFAULT 1,
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "business_key_" varchar(255) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time_" timestamp(6) NOT NULL,
  "end_time_" timestamp(6),
  "duration_" int8,
  "start_user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "start_act_id_" varchar(255) COLLATE "pg_catalog"."default",
  "end_act_id_" varchar(255) COLLATE "pg_catalog"."default",
  "super_process_instance_id_" varchar(64) COLLATE "pg_catalog"."default",
  "delete_reason_" varchar(4000) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "callback_id_" varchar(255) COLLATE "pg_catalog"."default",
  "callback_type_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_taskinst";
CREATE TABLE "act_hi_taskinst" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 DEFAULT 1,
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "task_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "task_def_key_" varchar(255) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "parent_task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "description_" varchar(4000) COLLATE "pg_catalog"."default",
  "owner_" varchar(255) COLLATE "pg_catalog"."default",
  "assignee_" varchar(255) COLLATE "pg_catalog"."default",
  "start_time_" timestamp(6) NOT NULL,
  "claim_time_" timestamp(6),
  "end_time_" timestamp(6),
  "duration_" int8,
  "delete_reason_" varchar(4000) COLLATE "pg_catalog"."default",
  "priority_" int4,
  "due_date_" timestamp(6),
  "form_key_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "last_updated_time_" timestamp(6)
)
;

-- ----------------------------
-- Table structure for act_hi_tsk_log
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_tsk_log";
CREATE TABLE "act_hi_tsk_log" (
  "id_" int4 NOT NULL DEFAULT nextval('act_hi_tsk_log_id__seq'::regclass),
  "type_" varchar(64) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "time_stamp_" timestamp(6) NOT NULL,
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "data_" varchar(4000) COLLATE "pg_catalog"."default",
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
DROP TABLE IF EXISTS "act_hi_varinst";
CREATE TABLE "act_hi_varinst" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 DEFAULT 1,
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "var_type_" varchar(100) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "bytearray_id_" varchar(64) COLLATE "pg_catalog"."default",
  "double_" float8,
  "long_" int8,
  "text_" varchar(4000) COLLATE "pg_catalog"."default",
  "text2_" varchar(4000) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "last_updated_time_" timestamp(6)
)
;

-- ----------------------------
-- Table structure for act_id_bytearray
-- ----------------------------
DROP TABLE IF EXISTS "act_id_bytearray";
CREATE TABLE "act_id_bytearray" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "bytes_" bytea
)
;

-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
DROP TABLE IF EXISTS "act_id_group";
CREATE TABLE "act_id_group" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "type_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_id_info
-- ----------------------------
DROP TABLE IF EXISTS "act_id_info";
CREATE TABLE "act_id_info" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "user_id_" varchar(64) COLLATE "pg_catalog"."default",
  "type_" varchar(64) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default",
  "value_" varchar(255) COLLATE "pg_catalog"."default",
  "password_" bytea,
  "parent_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
DROP TABLE IF EXISTS "act_id_membership";
CREATE TABLE "act_id_membership" (
  "user_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for act_id_priv
-- ----------------------------
DROP TABLE IF EXISTS "act_id_priv";
CREATE TABLE "act_id_priv" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for act_id_priv_mapping
-- ----------------------------
DROP TABLE IF EXISTS "act_id_priv_mapping";
CREATE TABLE "act_id_priv_mapping" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "priv_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "group_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_id_property
-- ----------------------------
DROP TABLE IF EXISTS "act_id_property";
CREATE TABLE "act_id_property" (
  "name_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "value_" varchar(300) COLLATE "pg_catalog"."default",
  "rev_" int4
)
;

-- ----------------------------
-- Records of act_id_property
-- ----------------------------
BEGIN;
INSERT INTO "act_id_property" VALUES ('schema.version', '6.5.0.1', 1);
COMMIT;

-- ----------------------------
-- Table structure for act_id_token
-- ----------------------------
DROP TABLE IF EXISTS "act_id_token";
CREATE TABLE "act_id_token" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "token_value_" varchar(255) COLLATE "pg_catalog"."default",
  "token_date_" timestamp(6),
  "ip_address_" varchar(255) COLLATE "pg_catalog"."default",
  "user_agent_" varchar(255) COLLATE "pg_catalog"."default",
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "token_data_" varchar(2000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
DROP TABLE IF EXISTS "act_id_user";
CREATE TABLE "act_id_user" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "first_" varchar(255) COLLATE "pg_catalog"."default",
  "last_" varchar(255) COLLATE "pg_catalog"."default",
  "display_name_" varchar(255) COLLATE "pg_catalog"."default",
  "email_" varchar(255) COLLATE "pg_catalog"."default",
  "pwd_" varchar(255) COLLATE "pg_catalog"."default",
  "picture_id_" varchar(64) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
DROP TABLE IF EXISTS "act_procdef_info";
CREATE TABLE "act_procdef_info" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "info_json_id_" varchar(64) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
DROP TABLE IF EXISTS "act_re_deployment";
CREATE TABLE "act_re_deployment" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "deploy_time_" timestamp(6),
  "derived_from_" varchar(64) COLLATE "pg_catalog"."default",
  "derived_from_root_" varchar(64) COLLATE "pg_catalog"."default",
  "parent_deployment_id_" varchar(255) COLLATE "pg_catalog"."default",
  "engine_version_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
DROP TABLE IF EXISTS "act_re_model";
CREATE TABLE "act_re_model" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "last_update_time_" timestamp(6),
  "version_" int4,
  "meta_info_" varchar(4000) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(64) COLLATE "pg_catalog"."default",
  "editor_source_value_id_" varchar(64) COLLATE "pg_catalog"."default",
  "editor_source_extra_value_id_" varchar(64) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
DROP TABLE IF EXISTS "act_re_procdef";
CREATE TABLE "act_re_procdef" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "key_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "version_" int4 NOT NULL,
  "deployment_id_" varchar(64) COLLATE "pg_catalog"."default",
  "resource_name_" varchar(4000) COLLATE "pg_catalog"."default",
  "dgrm_resource_name_" varchar(4000) COLLATE "pg_catalog"."default",
  "description_" varchar(4000) COLLATE "pg_catalog"."default",
  "has_start_form_key_" bool,
  "has_graphical_notation_" bool,
  "suspension_state_" int4,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "derived_from_" varchar(64) COLLATE "pg_catalog"."default",
  "derived_from_root_" varchar(64) COLLATE "pg_catalog"."default",
  "derived_version_" int4 NOT NULL DEFAULT 0,
  "engine_version_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_ru_actinst
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_actinst";
CREATE TABLE "act_ru_actinst" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4 DEFAULT 1,
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "act_id_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "call_proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "act_name_" varchar(255) COLLATE "pg_catalog"."default",
  "act_type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "assignee_" varchar(255) COLLATE "pg_catalog"."default",
  "start_time_" timestamp(6) NOT NULL,
  "end_time_" timestamp(6),
  "duration_" int8,
  "delete_reason_" varchar(4000) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_ru_deadletter_job
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_deadletter_job";
CREATE TABLE "act_ru_deadletter_job" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "exclusive_" bool,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "process_instance_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "element_id_" varchar(255) COLLATE "pg_catalog"."default",
  "element_name_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "exception_stack_id_" varchar(64) COLLATE "pg_catalog"."default",
  "exception_msg_" varchar(4000) COLLATE "pg_catalog"."default",
  "duedate_" timestamp(6),
  "repeat_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_type_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_cfg_" varchar(4000) COLLATE "pg_catalog"."default",
  "custom_values_id_" varchar(64) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_ru_entitylink
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_entitylink";
CREATE TABLE "act_ru_entitylink" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "create_time_" timestamp(6),
  "link_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "ref_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "ref_scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "ref_scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "hierarchy_type_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_event_subscr";
CREATE TABLE "act_ru_event_subscr" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "event_type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "event_name_" varchar(255) COLLATE "pg_catalog"."default",
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "activity_id_" varchar(64) COLLATE "pg_catalog"."default",
  "configuration_" varchar(255) COLLATE "pg_catalog"."default",
  "created_" timestamp(6) NOT NULL,
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(64) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_execution";
CREATE TABLE "act_ru_execution" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "business_key_" varchar(255) COLLATE "pg_catalog"."default",
  "parent_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "super_exec_" varchar(64) COLLATE "pg_catalog"."default",
  "root_proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "act_id_" varchar(255) COLLATE "pg_catalog"."default",
  "is_active_" bool,
  "is_concurrent_" bool,
  "is_scope_" bool,
  "is_event_scope_" bool,
  "is_mi_root_" bool,
  "suspension_state_" int4,
  "cached_ent_state_" int4,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "start_act_id_" varchar(255) COLLATE "pg_catalog"."default",
  "start_time_" timestamp(6),
  "start_user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "lock_time_" timestamp(6),
  "is_count_enabled_" bool,
  "evt_subscr_count_" int4,
  "task_count_" int4,
  "job_count_" int4,
  "timer_job_count_" int4,
  "susp_job_count_" int4,
  "deadletter_job_count_" int4,
  "var_count_" int4,
  "id_link_count_" int4,
  "callback_id_" varchar(255) COLLATE "pg_catalog"."default",
  "callback_type_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_ru_history_job
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_history_job";
CREATE TABLE "act_ru_history_job" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "lock_exp_time_" timestamp(6),
  "lock_owner_" varchar(255) COLLATE "pg_catalog"."default",
  "retries_" int4,
  "exception_stack_id_" varchar(64) COLLATE "pg_catalog"."default",
  "exception_msg_" varchar(4000) COLLATE "pg_catalog"."default",
  "handler_type_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_cfg_" varchar(4000) COLLATE "pg_catalog"."default",
  "custom_values_id_" varchar(64) COLLATE "pg_catalog"."default",
  "adv_handler_cfg_id_" varchar(64) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_identitylink";
CREATE TABLE "act_ru_identitylink" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "group_id_" varchar(255) COLLATE "pg_catalog"."default",
  "type_" varchar(255) COLLATE "pg_catalog"."default",
  "user_id_" varchar(255) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_job";
CREATE TABLE "act_ru_job" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_exp_time_" timestamp(6),
  "lock_owner_" varchar(255) COLLATE "pg_catalog"."default",
  "exclusive_" bool,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "process_instance_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "element_id_" varchar(255) COLLATE "pg_catalog"."default",
  "element_name_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "retries_" int4,
  "exception_stack_id_" varchar(64) COLLATE "pg_catalog"."default",
  "exception_msg_" varchar(4000) COLLATE "pg_catalog"."default",
  "duedate_" timestamp(6),
  "repeat_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_type_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_cfg_" varchar(4000) COLLATE "pg_catalog"."default",
  "custom_values_id_" varchar(64) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_ru_suspended_job
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_suspended_job";
CREATE TABLE "act_ru_suspended_job" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "exclusive_" bool,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "process_instance_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "element_id_" varchar(255) COLLATE "pg_catalog"."default",
  "element_name_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "retries_" int4,
  "exception_stack_id_" varchar(64) COLLATE "pg_catalog"."default",
  "exception_msg_" varchar(4000) COLLATE "pg_catalog"."default",
  "duedate_" timestamp(6),
  "repeat_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_type_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_cfg_" varchar(4000) COLLATE "pg_catalog"."default",
  "custom_values_id_" varchar(64) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_task";
CREATE TABLE "act_ru_task" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "task_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "parent_task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "description_" varchar(4000) COLLATE "pg_catalog"."default",
  "task_def_key_" varchar(255) COLLATE "pg_catalog"."default",
  "owner_" varchar(255) COLLATE "pg_catalog"."default",
  "assignee_" varchar(255) COLLATE "pg_catalog"."default",
  "delegation_" varchar(64) COLLATE "pg_catalog"."default",
  "priority_" int4,
  "create_time_" timestamp(6),
  "due_date_" timestamp(6),
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "suspension_state_" int4,
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "form_key_" varchar(255) COLLATE "pg_catalog"."default",
  "claim_time_" timestamp(6),
  "is_count_enabled_" bool,
  "var_count_" int4,
  "id_link_count_" int4,
  "sub_task_count_" int4
)
;

-- ----------------------------
-- Table structure for act_ru_timer_job
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_timer_job";
CREATE TABLE "act_ru_timer_job" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_exp_time_" timestamp(6),
  "lock_owner_" varchar(255) COLLATE "pg_catalog"."default",
  "exclusive_" bool,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "process_instance_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_def_id_" varchar(64) COLLATE "pg_catalog"."default",
  "element_id_" varchar(255) COLLATE "pg_catalog"."default",
  "element_name_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "retries_" int4,
  "exception_stack_id_" varchar(64) COLLATE "pg_catalog"."default",
  "exception_msg_" varchar(4000) COLLATE "pg_catalog"."default",
  "duedate_" timestamp(6),
  "repeat_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_type_" varchar(255) COLLATE "pg_catalog"."default",
  "handler_cfg_" varchar(4000) COLLATE "pg_catalog"."default",
  "custom_values_id_" varchar(64) COLLATE "pg_catalog"."default",
  "create_time_" timestamp(6),
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;

-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
DROP TABLE IF EXISTS "act_ru_variable";
CREATE TABLE "act_ru_variable" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "rev_" int4,
  "type_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "execution_id_" varchar(64) COLLATE "pg_catalog"."default",
  "proc_inst_id_" varchar(64) COLLATE "pg_catalog"."default",
  "task_id_" varchar(64) COLLATE "pg_catalog"."default",
  "scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "sub_scope_id_" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type_" varchar(255) COLLATE "pg_catalog"."default",
  "bytearray_id_" varchar(64) COLLATE "pg_catalog"."default",
  "double_" float8,
  "long_" int8,
  "text_" varchar(4000) COLLATE "pg_catalog"."default",
  "text2_" varchar(4000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "act_evt_log_log_nr__seq"
OWNED BY "act_evt_log"."log_nr_";
SELECT setval('"act_evt_log_log_nr__seq"', 2, false);
ALTER SEQUENCE "act_hi_tsk_log_id__seq"
OWNED BY "act_hi_tsk_log"."id_";
SELECT setval('"act_hi_tsk_log_id__seq"', 2, false);

-- ----------------------------
-- Indexes structure for table act_app_appdef
-- ----------------------------
CREATE INDEX "act_idx_app_def_dply" ON "act_app_appdef" USING btree (
  "deployment_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "act_idx_app_def_uniq" ON "act_app_appdef" USING btree (
  "key_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "version_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "tenant_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_app_appdef
-- ----------------------------
ALTER TABLE "act_app_appdef" ADD CONSTRAINT "act_app_appdef_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_app_databasechangeloglock
-- ----------------------------
ALTER TABLE "act_app_databasechangeloglock" ADD CONSTRAINT "act_app_databasechangeloglock_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table act_app_deployment
-- ----------------------------
ALTER TABLE "act_app_deployment" ADD CONSTRAINT "act_app_deployment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_app_deployment_resource
-- ----------------------------
CREATE INDEX "act_idx_app_rsrc_dpl" ON "act_app_deployment_resource" USING btree (
  "deployment_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_app_deployment_resource
-- ----------------------------
ALTER TABLE "act_app_deployment_resource" ADD CONSTRAINT "pk_app_deployment_resource" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_cmmn_casedef
-- ----------------------------
CREATE INDEX "act_idx_case_def_dply" ON "act_cmmn_casedef" USING btree (
  "deployment_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "act_idx_case_def_uniq" ON "act_cmmn_casedef" USING btree (
  "key_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "version_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "tenant_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_cmmn_casedef
-- ----------------------------
ALTER TABLE "act_cmmn_casedef" ADD CONSTRAINT "act_cmmn_casedef_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_cmmn_databasechangeloglock
-- ----------------------------
ALTER TABLE "act_cmmn_databasechangeloglock" ADD CONSTRAINT "act_cmmn_databasechangeloglock_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table act_cmmn_deployment
-- ----------------------------
ALTER TABLE "act_cmmn_deployment" ADD CONSTRAINT "act_cmmn_deployment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_cmmn_deployment_resource
-- ----------------------------
CREATE INDEX "act_idx_cmmn_rsrc_dpl" ON "act_cmmn_deployment_resource" USING btree (
  "deployment_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_cmmn_deployment_resource
-- ----------------------------
ALTER TABLE "act_cmmn_deployment_resource" ADD CONSTRAINT "pk_cmmn_deployment_resource" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_cmmn_hi_case_inst
-- ----------------------------
ALTER TABLE "act_cmmn_hi_case_inst" ADD CONSTRAINT "act_cmmn_hi_case_inst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_cmmn_hi_mil_inst
-- ----------------------------
ALTER TABLE "act_cmmn_hi_mil_inst" ADD CONSTRAINT "act_cmmn_hi_mil_inst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_cmmn_hi_plan_item_inst
-- ----------------------------
ALTER TABLE "act_cmmn_hi_plan_item_inst" ADD CONSTRAINT "act_cmmn_hi_plan_item_inst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_cmmn_ru_case_inst
-- ----------------------------
CREATE INDEX "act_idx_case_inst_case_def" ON "act_cmmn_ru_case_inst" USING btree (
  "case_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_case_inst_parent" ON "act_cmmn_ru_case_inst" USING btree (
  "parent_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_cmmn_ru_case_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_case_inst" ADD CONSTRAINT "act_cmmn_ru_case_inst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_cmmn_ru_mil_inst
-- ----------------------------
CREATE INDEX "act_idx_mil_case_def" ON "act_cmmn_ru_mil_inst" USING btree (
  "case_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_mil_case_inst" ON "act_cmmn_ru_mil_inst" USING btree (
  "case_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_cmmn_ru_mil_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_mil_inst" ADD CONSTRAINT "act_cmmn_ru_mil_inst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_cmmn_ru_plan_item_inst
-- ----------------------------
CREATE INDEX "act_idx_plan_item_case_def" ON "act_cmmn_ru_plan_item_inst" USING btree (
  "case_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_plan_item_case_inst" ON "act_cmmn_ru_plan_item_inst" USING btree (
  "case_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_plan_item_stage_inst" ON "act_cmmn_ru_plan_item_inst" USING btree (
  "stage_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_cmmn_ru_plan_item_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_plan_item_inst" ADD CONSTRAINT "pk_cmmn_plan_item_inst" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_cmmn_ru_sentry_part_inst
-- ----------------------------
CREATE INDEX "act_idx_sentry_case_def" ON "act_cmmn_ru_sentry_part_inst" USING btree (
  "case_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_sentry_case_inst" ON "act_cmmn_ru_sentry_part_inst" USING btree (
  "case_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_sentry_plan_item" ON "act_cmmn_ru_sentry_part_inst" USING btree (
  "plan_item_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_cmmn_ru_sentry_part_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_sentry_part_inst" ADD CONSTRAINT "pk_cmmn_sentry_part_inst" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_co_content_item
-- ----------------------------
CREATE INDEX "idx_contitem_procid" ON "act_co_content_item" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_contitem_scope" ON "act_co_content_item" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_contitem_taskid" ON "act_co_content_item" USING btree (
  "task_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_co_content_item
-- ----------------------------
ALTER TABLE "act_co_content_item" ADD CONSTRAINT "act_co_content_item_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_co_databasechangeloglock
-- ----------------------------
ALTER TABLE "act_co_databasechangeloglock" ADD CONSTRAINT "act_co_databasechangeloglock_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table act_de_databasechangeloglock
-- ----------------------------
ALTER TABLE "act_de_databasechangeloglock" ADD CONSTRAINT "act_de_databasechangeloglock_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table act_de_model
-- ----------------------------
CREATE INDEX "idx_proc_mod_created" ON "act_de_model" USING btree (
  "created_by" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_de_model
-- ----------------------------
ALTER TABLE "act_de_model" ADD CONSTRAINT "act_de_model_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table act_de_model_history
-- ----------------------------
CREATE INDEX "idx_proc_mod_history_proc" ON "act_de_model_history" USING btree (
  "model_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_de_model_history
-- ----------------------------
ALTER TABLE "act_de_model_history" ADD CONSTRAINT "act_de_model_history_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE "act_de_model_relation" ADD CONSTRAINT "act_de_model_relation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table act_dmn_databasechangeloglock
-- ----------------------------
ALTER TABLE "act_dmn_databasechangeloglock" ADD CONSTRAINT "act_dmn_databasechangeloglock_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table act_dmn_decision_table
-- ----------------------------
CREATE UNIQUE INDEX "act_idx_dec_tbl_uniq" ON "act_dmn_decision_table" USING btree (
  "key_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "version_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "tenant_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_dmn_decision_table
-- ----------------------------
ALTER TABLE "act_dmn_decision_table" ADD CONSTRAINT "act_dmn_decision_table_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_dmn_deployment
-- ----------------------------
ALTER TABLE "act_dmn_deployment" ADD CONSTRAINT "act_dmn_deployment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_dmn_deployment_resource
-- ----------------------------
ALTER TABLE "act_dmn_deployment_resource" ADD CONSTRAINT "act_dmn_deployment_resource_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_dmn_hi_decision_execution
-- ----------------------------
ALTER TABLE "act_dmn_hi_decision_execution" ADD CONSTRAINT "act_dmn_hi_decision_execution_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_evt_log
-- ----------------------------
ALTER TABLE "act_evt_log" ADD CONSTRAINT "act_evt_log_pkey" PRIMARY KEY ("log_nr_");

-- ----------------------------
-- Primary Key structure for table act_fo_databasechangeloglock
-- ----------------------------
ALTER TABLE "act_fo_databasechangeloglock" ADD CONSTRAINT "act_fo_databasechangeloglock_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table act_fo_form_definition
-- ----------------------------
CREATE UNIQUE INDEX "act_idx_form_def_uniq" ON "act_fo_form_definition" USING btree (
  "key_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "version_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "tenant_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_fo_form_definition
-- ----------------------------
ALTER TABLE "act_fo_form_definition" ADD CONSTRAINT "act_fo_form_definition_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_fo_form_deployment
-- ----------------------------
ALTER TABLE "act_fo_form_deployment" ADD CONSTRAINT "act_fo_form_deployment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_fo_form_instance
-- ----------------------------
ALTER TABLE "act_fo_form_instance" ADD CONSTRAINT "act_fo_form_instance_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_fo_form_resource
-- ----------------------------
ALTER TABLE "act_fo_form_resource" ADD CONSTRAINT "act_fo_form_resource_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ge_bytearray
-- ----------------------------
CREATE INDEX "act_idx_bytear_depl" ON "act_ge_bytearray" USING btree (
  "deployment_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE "act_ge_bytearray" ADD CONSTRAINT "act_ge_bytearray_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_ge_property
-- ----------------------------
ALTER TABLE "act_ge_property" ADD CONSTRAINT "act_ge_property_pkey" PRIMARY KEY ("name_");

-- ----------------------------
-- Indexes structure for table act_hi_actinst
-- ----------------------------
CREATE INDEX "act_idx_hi_act_inst_end" ON "act_hi_actinst" USING btree (
  "end_time_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_act_inst_exec" ON "act_hi_actinst" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "act_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_act_inst_procinst" ON "act_hi_actinst" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "act_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_act_inst_start" ON "act_hi_actinst" USING btree (
  "start_time_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_actinst
-- ----------------------------
ALTER TABLE "act_hi_actinst" ADD CONSTRAINT "act_hi_actinst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_hi_attachment
-- ----------------------------
ALTER TABLE "act_hi_attachment" ADD CONSTRAINT "act_hi_attachment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_hi_comment
-- ----------------------------
ALTER TABLE "act_hi_comment" ADD CONSTRAINT "act_hi_comment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_hi_detail
-- ----------------------------
CREATE INDEX "act_idx_hi_detail_act_inst" ON "act_hi_detail" USING btree (
  "act_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_detail_name" ON "act_hi_detail" USING btree (
  "name_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_detail_proc_inst" ON "act_hi_detail" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_detail_task_id" ON "act_hi_detail" USING btree (
  "task_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_detail_time" ON "act_hi_detail" USING btree (
  "time_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_detail
-- ----------------------------
ALTER TABLE "act_hi_detail" ADD CONSTRAINT "act_hi_detail_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_hi_entitylink
-- ----------------------------
CREATE INDEX "act_idx_hi_ent_lnk_scope" ON "act_hi_entitylink" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "link_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_ent_lnk_scope_def" ON "act_hi_entitylink" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "link_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_entitylink
-- ----------------------------
ALTER TABLE "act_hi_entitylink" ADD CONSTRAINT "act_hi_entitylink_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_hi_identitylink
-- ----------------------------
CREATE INDEX "act_idx_hi_ident_lnk_procinst" ON "act_hi_identitylink" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_ident_lnk_scope" ON "act_hi_identitylink" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_ident_lnk_scope_def" ON "act_hi_identitylink" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_ident_lnk_task" ON "act_hi_identitylink" USING btree (
  "task_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_ident_lnk_user" ON "act_hi_identitylink" USING btree (
  "user_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_identitylink
-- ----------------------------
ALTER TABLE "act_hi_identitylink" ADD CONSTRAINT "act_hi_identitylink_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_hi_procinst
-- ----------------------------
CREATE INDEX "act_idx_hi_pro_i_buskey" ON "act_hi_procinst" USING btree (
  "business_key_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_pro_inst_end" ON "act_hi_procinst" USING btree (
  "end_time_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table act_hi_procinst
-- ----------------------------
ALTER TABLE "act_hi_procinst" ADD CONSTRAINT "act_hi_procinst_proc_inst_id__key" UNIQUE ("proc_inst_id_");

-- ----------------------------
-- Primary Key structure for table act_hi_procinst
-- ----------------------------
ALTER TABLE "act_hi_procinst" ADD CONSTRAINT "act_hi_procinst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_hi_taskinst
-- ----------------------------
CREATE INDEX "act_idx_hi_task_inst_procinst" ON "act_hi_taskinst" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_task_scope" ON "act_hi_taskinst" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_task_scope_def" ON "act_hi_taskinst" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_task_sub_scope" ON "act_hi_taskinst" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_taskinst
-- ----------------------------
ALTER TABLE "act_hi_taskinst" ADD CONSTRAINT "act_hi_taskinst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_hi_tsk_log
-- ----------------------------
ALTER TABLE "act_hi_tsk_log" ADD CONSTRAINT "act_hi_tsk_log_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_hi_varinst
-- ----------------------------
CREATE INDEX "act_idx_hi_procvar_exe" ON "act_hi_varinst" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_procvar_name_type" ON "act_hi_varinst" USING btree (
  "name_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "var_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_procvar_proc_inst" ON "act_hi_varinst" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_procvar_task_id" ON "act_hi_varinst" USING btree (
  "task_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_var_scope_id_type" ON "act_hi_varinst" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_hi_var_sub_id_type" ON "act_hi_varinst" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_varinst
-- ----------------------------
ALTER TABLE "act_hi_varinst" ADD CONSTRAINT "act_hi_varinst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_id_bytearray
-- ----------------------------
ALTER TABLE "act_id_bytearray" ADD CONSTRAINT "act_id_bytearray_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_id_group
-- ----------------------------
ALTER TABLE "act_id_group" ADD CONSTRAINT "act_id_group_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_id_info
-- ----------------------------
ALTER TABLE "act_id_info" ADD CONSTRAINT "act_id_info_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_id_membership
-- ----------------------------
CREATE INDEX "act_idx_memb_group" ON "act_id_membership" USING btree (
  "group_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_memb_user" ON "act_id_membership" USING btree (
  "user_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_id_membership
-- ----------------------------
ALTER TABLE "act_id_membership" ADD CONSTRAINT "act_id_membership_pkey" PRIMARY KEY ("user_id_", "group_id_");

-- ----------------------------
-- Uniques structure for table act_id_priv
-- ----------------------------
ALTER TABLE "act_id_priv" ADD CONSTRAINT "act_uniq_priv_name" UNIQUE ("name_");

-- ----------------------------
-- Primary Key structure for table act_id_priv
-- ----------------------------
ALTER TABLE "act_id_priv" ADD CONSTRAINT "act_id_priv_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_id_priv_mapping
-- ----------------------------
CREATE INDEX "act_idx_priv_group" ON "act_id_priv_mapping" USING btree (
  "group_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_priv_mapping" ON "act_id_priv_mapping" USING btree (
  "priv_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_priv_user" ON "act_id_priv_mapping" USING btree (
  "user_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE "act_id_priv_mapping" ADD CONSTRAINT "act_id_priv_mapping_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_id_property
-- ----------------------------
ALTER TABLE "act_id_property" ADD CONSTRAINT "act_id_property_pkey" PRIMARY KEY ("name_");

-- ----------------------------
-- Primary Key structure for table act_id_token
-- ----------------------------
ALTER TABLE "act_id_token" ADD CONSTRAINT "act_id_token_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_id_user
-- ----------------------------
ALTER TABLE "act_id_user" ADD CONSTRAINT "act_id_user_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_procdef_info
-- ----------------------------
CREATE INDEX "act_idx_procdef_info_json" ON "act_procdef_info" USING btree (
  "info_json_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_procdef_info_proc" ON "act_procdef_info" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table act_procdef_info
-- ----------------------------
ALTER TABLE "act_procdef_info" ADD CONSTRAINT "act_uniq_info_procdef" UNIQUE ("proc_def_id_");

-- ----------------------------
-- Primary Key structure for table act_procdef_info
-- ----------------------------
ALTER TABLE "act_procdef_info" ADD CONSTRAINT "act_procdef_info_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_re_deployment
-- ----------------------------
ALTER TABLE "act_re_deployment" ADD CONSTRAINT "act_re_deployment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_re_model
-- ----------------------------
CREATE INDEX "act_idx_model_deployment" ON "act_re_model" USING btree (
  "deployment_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_model_source" ON "act_re_model" USING btree (
  "editor_source_value_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_model_source_extra" ON "act_re_model" USING btree (
  "editor_source_extra_value_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_re_model
-- ----------------------------
ALTER TABLE "act_re_model" ADD CONSTRAINT "act_re_model_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Uniques structure for table act_re_procdef
-- ----------------------------
ALTER TABLE "act_re_procdef" ADD CONSTRAINT "act_uniq_procdef" UNIQUE ("key_", "version_", "derived_version_", "tenant_id_");

-- ----------------------------
-- Primary Key structure for table act_re_procdef
-- ----------------------------
ALTER TABLE "act_re_procdef" ADD CONSTRAINT "act_re_procdef_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_actinst
-- ----------------------------
CREATE INDEX "act_idx_ru_acti_end" ON "act_ru_actinst" USING btree (
  "end_time_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ru_acti_exec" ON "act_ru_actinst" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ru_acti_exec_act" ON "act_ru_actinst" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "act_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ru_acti_proc" ON "act_ru_actinst" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ru_acti_proc_act" ON "act_ru_actinst" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "act_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ru_acti_start" ON "act_ru_actinst" USING btree (
  "start_time_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_actinst
-- ----------------------------
ALTER TABLE "act_ru_actinst" ADD CONSTRAINT "act_ru_actinst_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_deadletter_job
-- ----------------------------
CREATE INDEX "act_idx_deadletter_job_custom_values_id" ON "act_ru_deadletter_job" USING btree (
  "custom_values_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_deadletter_job_exception_stack_id" ON "act_ru_deadletter_job" USING btree (
  "exception_stack_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_deadletter_job_execution_id" ON "act_ru_deadletter_job" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_deadletter_job_proc_def_id" ON "act_ru_deadletter_job" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_deadletter_job_process_instance_id" ON "act_ru_deadletter_job" USING btree (
  "process_instance_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_djob_scope" ON "act_ru_deadletter_job" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_djob_scope_def" ON "act_ru_deadletter_job" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_djob_sub_scope" ON "act_ru_deadletter_job" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE "act_ru_deadletter_job" ADD CONSTRAINT "act_ru_deadletter_job_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_entitylink
-- ----------------------------
CREATE INDEX "act_idx_ent_lnk_scope" ON "act_ru_entitylink" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "link_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ent_lnk_scope_def" ON "act_ru_entitylink" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "link_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_entitylink
-- ----------------------------
ALTER TABLE "act_ru_entitylink" ADD CONSTRAINT "act_ru_entitylink_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_event_subscr
-- ----------------------------
CREATE INDEX "act_idx_event_subscr" ON "act_ru_event_subscr" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_event_subscr_config_" ON "act_ru_event_subscr" USING btree (
  "configuration_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE "act_ru_event_subscr" ADD CONSTRAINT "act_ru_event_subscr_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_execution
-- ----------------------------
CREATE INDEX "act_idx_exe_parent" ON "act_ru_execution" USING btree (
  "parent_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_exe_procdef" ON "act_ru_execution" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_exe_procinst" ON "act_ru_execution" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_exe_root" ON "act_ru_execution" USING btree (
  "root_proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_exe_super" ON "act_ru_execution" USING btree (
  "super_exec_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_exec_buskey" ON "act_ru_execution" USING btree (
  "business_key_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_execution
-- ----------------------------
ALTER TABLE "act_ru_execution" ADD CONSTRAINT "act_ru_execution_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Primary Key structure for table act_ru_history_job
-- ----------------------------
ALTER TABLE "act_ru_history_job" ADD CONSTRAINT "act_ru_history_job_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_identitylink
-- ----------------------------
CREATE INDEX "act_idx_athrz_procedef" ON "act_ru_identitylink" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ident_lnk_group" ON "act_ru_identitylink" USING btree (
  "group_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ident_lnk_scope" ON "act_ru_identitylink" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ident_lnk_scope_def" ON "act_ru_identitylink" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ident_lnk_user" ON "act_ru_identitylink" USING btree (
  "user_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_idl_procinst" ON "act_ru_identitylink" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_tskass_task" ON "act_ru_identitylink" USING btree (
  "task_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE "act_ru_identitylink" ADD CONSTRAINT "act_ru_identitylink_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_job
-- ----------------------------
CREATE INDEX "act_idx_job_custom_values_id" ON "act_ru_job" USING btree (
  "custom_values_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_job_exception_stack_id" ON "act_ru_job" USING btree (
  "exception_stack_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_job_execution_id" ON "act_ru_job" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_job_proc_def_id" ON "act_ru_job" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_job_process_instance_id" ON "act_ru_job" USING btree (
  "process_instance_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_job_scope" ON "act_ru_job" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_job_scope_def" ON "act_ru_job" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_job_sub_scope" ON "act_ru_job" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_job
-- ----------------------------
ALTER TABLE "act_ru_job" ADD CONSTRAINT "act_ru_job_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_suspended_job
-- ----------------------------
CREATE INDEX "act_idx_sjob_scope" ON "act_ru_suspended_job" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_sjob_scope_def" ON "act_ru_suspended_job" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_sjob_sub_scope" ON "act_ru_suspended_job" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_suspended_job_custom_values_id" ON "act_ru_suspended_job" USING btree (
  "custom_values_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_suspended_job_exception_stack_id" ON "act_ru_suspended_job" USING btree (
  "exception_stack_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_suspended_job_execution_id" ON "act_ru_suspended_job" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_suspended_job_proc_def_id" ON "act_ru_suspended_job" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_suspended_job_process_instance_id" ON "act_ru_suspended_job" USING btree (
  "process_instance_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE "act_ru_suspended_job" ADD CONSTRAINT "act_ru_suspended_job_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_task
-- ----------------------------
CREATE INDEX "act_idx_task_create" ON "act_ru_task" USING btree (
  "create_time_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_task_exec" ON "act_ru_task" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_task_procdef" ON "act_ru_task" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_task_procinst" ON "act_ru_task" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_task_scope" ON "act_ru_task" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_task_scope_def" ON "act_ru_task" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_task_sub_scope" ON "act_ru_task" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_task
-- ----------------------------
ALTER TABLE "act_ru_task" ADD CONSTRAINT "act_ru_task_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_timer_job
-- ----------------------------
CREATE INDEX "act_idx_timer_job_custom_values_id" ON "act_ru_timer_job" USING btree (
  "custom_values_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_timer_job_exception_stack_id" ON "act_ru_timer_job" USING btree (
  "exception_stack_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_timer_job_execution_id" ON "act_ru_timer_job" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_timer_job_proc_def_id" ON "act_ru_timer_job" USING btree (
  "proc_def_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_timer_job_process_instance_id" ON "act_ru_timer_job" USING btree (
  "process_instance_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_tjob_scope" ON "act_ru_timer_job" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_tjob_scope_def" ON "act_ru_timer_job" USING btree (
  "scope_definition_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_tjob_sub_scope" ON "act_ru_timer_job" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE "act_ru_timer_job" ADD CONSTRAINT "act_ru_timer_job_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Indexes structure for table act_ru_variable
-- ----------------------------
CREATE INDEX "act_idx_ru_var_scope_id_type" ON "act_ru_variable" USING btree (
  "scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_ru_var_sub_id_type" ON "act_ru_variable" USING btree (
  "sub_scope_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scope_type_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_var_bytearray" ON "act_ru_variable" USING btree (
  "bytearray_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_var_exe" ON "act_ru_variable" USING btree (
  "execution_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_var_procinst" ON "act_ru_variable" USING btree (
  "proc_inst_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "act_idx_variable_task_id" ON "act_ru_variable" USING btree (
  "task_id_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_variable
-- ----------------------------
ALTER TABLE "act_ru_variable" ADD CONSTRAINT "act_ru_variable_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Foreign Keys structure for table act_app_appdef
-- ----------------------------
ALTER TABLE "act_app_appdef" ADD CONSTRAINT "act_fk_app_def_dply" FOREIGN KEY ("deployment_id_") REFERENCES "act_app_deployment" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_app_deployment_resource
-- ----------------------------
ALTER TABLE "act_app_deployment_resource" ADD CONSTRAINT "act_fk_app_rsrc_dpl" FOREIGN KEY ("deployment_id_") REFERENCES "act_app_deployment" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_cmmn_casedef
-- ----------------------------
ALTER TABLE "act_cmmn_casedef" ADD CONSTRAINT "act_fk_case_def_dply" FOREIGN KEY ("deployment_id_") REFERENCES "act_cmmn_deployment" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_cmmn_deployment_resource
-- ----------------------------
ALTER TABLE "act_cmmn_deployment_resource" ADD CONSTRAINT "act_fk_cmmn_rsrc_dpl" FOREIGN KEY ("deployment_id_") REFERENCES "act_cmmn_deployment" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_cmmn_ru_case_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_case_inst" ADD CONSTRAINT "act_fk_case_inst_case_def" FOREIGN KEY ("case_def_id_") REFERENCES "act_cmmn_casedef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_cmmn_ru_mil_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_mil_inst" ADD CONSTRAINT "act_fk_mil_case_def" FOREIGN KEY ("case_def_id_") REFERENCES "act_cmmn_casedef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_cmmn_ru_mil_inst" ADD CONSTRAINT "act_fk_mil_case_inst" FOREIGN KEY ("case_inst_id_") REFERENCES "act_cmmn_ru_case_inst" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_cmmn_ru_plan_item_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_plan_item_inst" ADD CONSTRAINT "act_fk_plan_item_case_def" FOREIGN KEY ("case_def_id_") REFERENCES "act_cmmn_casedef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_cmmn_ru_plan_item_inst" ADD CONSTRAINT "act_fk_plan_item_case_inst" FOREIGN KEY ("case_inst_id_") REFERENCES "act_cmmn_ru_case_inst" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_cmmn_ru_sentry_part_inst
-- ----------------------------
ALTER TABLE "act_cmmn_ru_sentry_part_inst" ADD CONSTRAINT "act_fk_sentry_case_def" FOREIGN KEY ("case_def_id_") REFERENCES "act_cmmn_casedef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_cmmn_ru_sentry_part_inst" ADD CONSTRAINT "act_fk_sentry_case_inst" FOREIGN KEY ("case_inst_id_") REFERENCES "act_cmmn_ru_case_inst" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_cmmn_ru_sentry_part_inst" ADD CONSTRAINT "act_fk_sentry_plan_item" FOREIGN KEY ("plan_item_inst_id_") REFERENCES "act_cmmn_ru_plan_item_inst" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE "act_de_model_relation" ADD CONSTRAINT "fk_relation_child" FOREIGN KEY ("model_id") REFERENCES "act_de_model" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_de_model_relation" ADD CONSTRAINT "fk_relation_parent" FOREIGN KEY ("parent_model_id") REFERENCES "act_de_model" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE "act_ge_bytearray" ADD CONSTRAINT "act_fk_bytearr_depl" FOREIGN KEY ("deployment_id_") REFERENCES "act_re_deployment" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_id_membership
-- ----------------------------
ALTER TABLE "act_id_membership" ADD CONSTRAINT "act_fk_memb_group" FOREIGN KEY ("group_id_") REFERENCES "act_id_group" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_id_membership" ADD CONSTRAINT "act_fk_memb_user" FOREIGN KEY ("user_id_") REFERENCES "act_id_user" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE "act_id_priv_mapping" ADD CONSTRAINT "act_fk_priv_mapping" FOREIGN KEY ("priv_id_") REFERENCES "act_id_priv" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_procdef_info
-- ----------------------------
ALTER TABLE "act_procdef_info" ADD CONSTRAINT "act_fk_info_json_ba" FOREIGN KEY ("info_json_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_procdef_info" ADD CONSTRAINT "act_fk_info_procdef" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_re_model
-- ----------------------------
ALTER TABLE "act_re_model" ADD CONSTRAINT "act_fk_model_deployment" FOREIGN KEY ("deployment_id_") REFERENCES "act_re_deployment" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_re_model" ADD CONSTRAINT "act_fk_model_source" FOREIGN KEY ("editor_source_value_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_re_model" ADD CONSTRAINT "act_fk_model_source_extra" FOREIGN KEY ("editor_source_extra_value_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE "act_ru_deadletter_job" ADD CONSTRAINT "act_fk_deadletter_job_custom_values" FOREIGN KEY ("custom_values_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_deadletter_job" ADD CONSTRAINT "act_fk_deadletter_job_exception" FOREIGN KEY ("exception_stack_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_deadletter_job" ADD CONSTRAINT "act_fk_deadletter_job_execution" FOREIGN KEY ("execution_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_deadletter_job" ADD CONSTRAINT "act_fk_deadletter_job_proc_def" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_deadletter_job" ADD CONSTRAINT "act_fk_deadletter_job_process_instance" FOREIGN KEY ("process_instance_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE "act_ru_event_subscr" ADD CONSTRAINT "act_fk_event_exec" FOREIGN KEY ("execution_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_execution
-- ----------------------------
ALTER TABLE "act_ru_execution" ADD CONSTRAINT "act_fk_exe_parent" FOREIGN KEY ("parent_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_execution" ADD CONSTRAINT "act_fk_exe_procdef" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_execution" ADD CONSTRAINT "act_fk_exe_procinst" FOREIGN KEY ("proc_inst_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_execution" ADD CONSTRAINT "act_fk_exe_super" FOREIGN KEY ("super_exec_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE "act_ru_identitylink" ADD CONSTRAINT "act_fk_athrz_procedef" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_identitylink" ADD CONSTRAINT "act_fk_idl_procinst" FOREIGN KEY ("proc_inst_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_identitylink" ADD CONSTRAINT "act_fk_tskass_task" FOREIGN KEY ("task_id_") REFERENCES "act_ru_task" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_job
-- ----------------------------
ALTER TABLE "act_ru_job" ADD CONSTRAINT "act_fk_job_custom_values" FOREIGN KEY ("custom_values_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_job" ADD CONSTRAINT "act_fk_job_exception" FOREIGN KEY ("exception_stack_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_job" ADD CONSTRAINT "act_fk_job_execution" FOREIGN KEY ("execution_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_job" ADD CONSTRAINT "act_fk_job_proc_def" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_job" ADD CONSTRAINT "act_fk_job_process_instance" FOREIGN KEY ("process_instance_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE "act_ru_suspended_job" ADD CONSTRAINT "act_fk_suspended_job_custom_values" FOREIGN KEY ("custom_values_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_suspended_job" ADD CONSTRAINT "act_fk_suspended_job_exception" FOREIGN KEY ("exception_stack_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_suspended_job" ADD CONSTRAINT "act_fk_suspended_job_execution" FOREIGN KEY ("execution_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_suspended_job" ADD CONSTRAINT "act_fk_suspended_job_proc_def" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_suspended_job" ADD CONSTRAINT "act_fk_suspended_job_process_instance" FOREIGN KEY ("process_instance_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_task
-- ----------------------------
ALTER TABLE "act_ru_task" ADD CONSTRAINT "act_fk_task_exe" FOREIGN KEY ("execution_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_task" ADD CONSTRAINT "act_fk_task_procdef" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_task" ADD CONSTRAINT "act_fk_task_procinst" FOREIGN KEY ("proc_inst_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE "act_ru_timer_job" ADD CONSTRAINT "act_fk_timer_job_custom_values" FOREIGN KEY ("custom_values_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_timer_job" ADD CONSTRAINT "act_fk_timer_job_exception" FOREIGN KEY ("exception_stack_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_timer_job" ADD CONSTRAINT "act_fk_timer_job_execution" FOREIGN KEY ("execution_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_timer_job" ADD CONSTRAINT "act_fk_timer_job_proc_def" FOREIGN KEY ("proc_def_id_") REFERENCES "act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_timer_job" ADD CONSTRAINT "act_fk_timer_job_process_instance" FOREIGN KEY ("process_instance_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_variable
-- ----------------------------
ALTER TABLE "act_ru_variable" ADD CONSTRAINT "act_fk_var_bytearray" FOREIGN KEY ("bytearray_id_") REFERENCES "act_ge_bytearray" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_variable" ADD CONSTRAINT "act_fk_var_exe" FOREIGN KEY ("execution_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "act_ru_variable" ADD CONSTRAINT "act_fk_var_procinst" FOREIGN KEY ("proc_inst_id_") REFERENCES "act_ru_execution" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
