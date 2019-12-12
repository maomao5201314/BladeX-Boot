/*
 Navicat Premium Data Transfer

 Source Server         : postgres_localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 110001
 Source Host           : localhost:5432
 Source Catalog        : bladex
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110001
 File Encoding         : 65001

 Date: 08/12/2019 10:13:15
*/


-- ----------------------------
-- Table structure for blade_client
-- ----------------------------
DROP TABLE IF EXISTS "blade_client";
CREATE TABLE "blade_client" (
  "id" int8 NOT NULL,
  "client_id" varchar(48) COLLATE "pg_catalog"."default" NOT NULL,
  "client_secret" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "resource_ids" varchar(256) COLLATE "pg_catalog"."default",
  "scope" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "authorized_grant_types" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "web_server_redirect_uri" varchar(256) COLLATE "pg_catalog"."default",
  "authorities" varchar(256) COLLATE "pg_catalog"."default",
  "access_token_validity" int4 NOT NULL,
  "refresh_token_validity" int4 NOT NULL,
  "additional_information" varchar(4096) COLLATE "pg_catalog"."default",
  "autoapprove" varchar(256) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4 NOT NULL,
  "is_deleted" int4 NOT NULL
)
;
COMMENT ON COLUMN "blade_client"."id" IS '主键';
COMMENT ON COLUMN "blade_client"."client_id" IS '客户端id';
COMMENT ON COLUMN "blade_client"."client_secret" IS '客户端密钥';
COMMENT ON COLUMN "blade_client"."resource_ids" IS '资源集合';
COMMENT ON COLUMN "blade_client"."scope" IS '授权范围';
COMMENT ON COLUMN "blade_client"."authorized_grant_types" IS '授权类型';
COMMENT ON COLUMN "blade_client"."web_server_redirect_uri" IS '回调地址';
COMMENT ON COLUMN "blade_client"."authorities" IS '权限';
COMMENT ON COLUMN "blade_client"."access_token_validity" IS '令牌过期秒数';
COMMENT ON COLUMN "blade_client"."refresh_token_validity" IS '刷新令牌过期秒数';
COMMENT ON COLUMN "blade_client"."additional_information" IS '附加说明';
COMMENT ON COLUMN "blade_client"."autoapprove" IS '自动授权';
COMMENT ON COLUMN "blade_client"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_client"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_client"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_client"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_client"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_client"."status" IS '状态';
COMMENT ON COLUMN "blade_client"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_client" IS '客户端表';

-- ----------------------------
-- Records of blade_client
-- ----------------------------
BEGIN;
INSERT INTO "blade_client" VALUES (1123598811738675201, 'sword', 'sword_secret', NULL, 'all', 'refresh_token,password,authorization_code', 'http://localhost:8888', NULL, 3600, 604800, NULL, NULL, 1123598815738675201, 1123598813738675201, '2019-03-24 10:40:55', 1123598815738675201, '2019-03-24 10:40:59', 1, 0);
INSERT INTO "blade_client" VALUES (1123598811738675202, 'saber', 'saber_secret', NULL, 'all', 'refresh_token,password,authorization_code', 'http://localhost:8080', NULL, 3600, 604800, NULL, NULL, 1123598815738675201, 1123598813738675201, '2019-03-24 10:42:29', 1123598815738675201, '2019-03-24 10:42:32', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_code
-- ----------------------------
DROP TABLE IF EXISTS "blade_code";
CREATE TABLE "blade_code" (
  "id" int8 NOT NULL,
  "datasource_id" int8,
  "service_name" varchar(64) COLLATE "pg_catalog"."default",
  "code_name" varchar(64) COLLATE "pg_catalog"."default",
  "table_name" varchar(64) COLLATE "pg_catalog"."default",
  "table_prefix" varchar(64) COLLATE "pg_catalog"."default",
  "pk_name" varchar(32) COLLATE "pg_catalog"."default",
  "package_name" varchar(500) COLLATE "pg_catalog"."default",
  "base_mode" int2,
  "wrap_mode" int2,
  "api_path" varchar(2000) COLLATE "pg_catalog"."default",
  "web_path" varchar(2000) COLLATE "pg_catalog"."default",
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_code"."id" IS '主键';
COMMENT ON COLUMN "blade_code"."datasource_id" IS '数据源主键';
COMMENT ON COLUMN "blade_code"."service_name" IS '服务名称';
COMMENT ON COLUMN "blade_code"."code_name" IS '模块名称';
COMMENT ON COLUMN "blade_code"."table_name" IS '表名';
COMMENT ON COLUMN "blade_code"."table_prefix" IS '表前缀';
COMMENT ON COLUMN "blade_code"."pk_name" IS '主键名';
COMMENT ON COLUMN "blade_code"."package_name" IS '后端包名';
COMMENT ON COLUMN "blade_code"."base_mode" IS '基础业务模式';
COMMENT ON COLUMN "blade_code"."wrap_mode" IS '包装器模式';
COMMENT ON COLUMN "blade_code"."api_path" IS '后端路径';
COMMENT ON COLUMN "blade_code"."web_path" IS '前端路径';
COMMENT ON COLUMN "blade_code"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_code" IS '代码生成表';

-- ----------------------------
-- Records of blade_code
-- ----------------------------
BEGIN;
INSERT INTO "blade_code" VALUES (1123598812738675201, 1161483357481541634, 'blade-demo', '通知公告', 'blade_notice', 'blade_', 'id', 'org.springblade.desktop', 1, 1, 'D:\Develop\WorkSpace\Git\SpringBlade\blade-ops\blade-develop', 'D:\Develop\WorkSpace\Git\Sword', 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_datasource
-- ----------------------------
DROP TABLE IF EXISTS "blade_datasource";
CREATE TABLE "blade_datasource" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "driver_class" varchar(100) COLLATE "pg_catalog"."default",
  "url" varchar(500) COLLATE "pg_catalog"."default",
  "username" varchar(45) COLLATE "pg_catalog"."default",
  "password" varchar(45) COLLATE "pg_catalog"."default",
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_datasource"."id" IS '主键';
COMMENT ON COLUMN "blade_datasource"."name" IS '名称';
COMMENT ON COLUMN "blade_datasource"."driver_class" IS '驱动类';
COMMENT ON COLUMN "blade_datasource"."url" IS '链接地址';
COMMENT ON COLUMN "blade_datasource"."username" IS '用户名';
COMMENT ON COLUMN "blade_datasource"."password" IS '密码';
COMMENT ON COLUMN "blade_datasource"."remark" IS '备注';
COMMENT ON COLUMN "blade_datasource"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_datasource"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_datasource"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_datasource"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_datasource"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_datasource"."status" IS '状态';
COMMENT ON COLUMN "blade_datasource"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_datasource" IS '数据源配置表';

-- ----------------------------
-- Records of blade_datasource
-- ----------------------------
BEGIN;
INSERT INTO "blade_datasource" VALUES (1161483357481541634, 'mysql', 'com.mysql.cj.jdbc.Driver', 'jdbc:mysql://localhost:3306/bladex?useSSL=false&useUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull&transformedBitIsBoolean=true&serverTimezone=GMT%2B8&nullCatalogMeansCurrent=true&allowPublicKeyRetrieval=true', 'root', 'root', 'mysql', 1123598821738675201, 1123598813738675201, '2019-08-14 11:43:06', 1123598821738675201, '2019-08-14 11:43:06', 1, 0);
INSERT INTO "blade_datasource" VALUES (1161483504353484802, 'postgresql', 'org.postgresql.Driver', 'jdbc:postgresql://127.0.0.1:5432/bladex', 'postgres', '123456', 'postgresql', 1123598821738675201, 1123598813738675201, '2019-08-14 11:43:41', 1123598821738675201, '2019-08-14 11:43:41', 1, 0);
INSERT INTO "blade_datasource" VALUES (1161483594023510018, 'oracle', 'oracle.jdbc.OracleDriver', 'jdbc:oracle:thin:@127.0.0.1:49161:orcl', 'BLADEX', 'bladex', 'oracle', 1123598821738675201, 1123598813738675201, '2019-08-14 11:44:03', 1123598821738675201, '2019-08-14 11:44:03', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_dept
-- ----------------------------
DROP TABLE IF EXISTS "blade_dept";
CREATE TABLE "blade_dept" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "parent_id" int8,
  "ancestors" varchar(2000) COLLATE "pg_catalog"."default",
  "dept_category" int4,
  "dept_name" varchar(45) COLLATE "pg_catalog"."default",
  "full_name" varchar(45) COLLATE "pg_catalog"."default",
  "sort" int4,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_dept"."id" IS '主键';
COMMENT ON COLUMN "blade_dept"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_dept"."parent_id" IS '父主键';
COMMENT ON COLUMN "blade_dept"."ancestors" IS '祖级列表';
COMMENT ON COLUMN "blade_dept"."dept_category" IS '部门类型';
COMMENT ON COLUMN "blade_dept"."dept_name" IS '部门名';
COMMENT ON COLUMN "blade_dept"."full_name" IS '部门全称';
COMMENT ON COLUMN "blade_dept"."sort" IS '排序';
COMMENT ON COLUMN "blade_dept"."remark" IS '备注';
COMMENT ON COLUMN "blade_dept"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_dept" IS '机构表';

-- ----------------------------
-- Records of blade_dept
-- ----------------------------
BEGIN;
INSERT INTO "blade_dept" VALUES (1123598813738675201, '000000', 0, '0', 1, '刀锋科技', '江苏刀锋科技有限公司', 1, NULL, 0);
INSERT INTO "blade_dept" VALUES (1123598813738675202, '000000', 1123598813738675201, '0,1123598813738675201', 1, '常州刀锋', '常州刀锋科技有限公司', 1, NULL, 0);
INSERT INTO "blade_dept" VALUES (1123598813738675203, '000000', 1123598813738675201, '0,1123598813738675201', 1, '苏州刀锋', '苏州刀锋科技有限公司', 1, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_dict
-- ----------------------------
DROP TABLE IF EXISTS "blade_dict";
CREATE TABLE "blade_dict" (
  "id" int8 NOT NULL,
  "parent_id" int8,
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "dict_key" varchar(255) COLLATE "pg_catalog"."default",
  "dict_value" varchar(255) COLLATE "pg_catalog"."default",
  "sort" int4,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "is_sealed" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_dict"."id" IS '主键';
COMMENT ON COLUMN "blade_dict"."parent_id" IS '父主键';
COMMENT ON COLUMN "blade_dict"."code" IS '字典码';
COMMENT ON COLUMN "blade_dict"."dict_key" IS '字典值';
COMMENT ON COLUMN "blade_dict"."dict_value" IS '字典名称';
COMMENT ON COLUMN "blade_dict"."sort" IS '排序';
COMMENT ON COLUMN "blade_dict"."remark" IS '字典备注';
COMMENT ON COLUMN "blade_dict"."is_sealed" IS '是否已封存';
COMMENT ON COLUMN "blade_dict"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_dict" IS '字典表';

-- ----------------------------
-- Records of blade_dict
-- ----------------------------
BEGIN;
INSERT INTO "blade_dict" VALUES (1123598814738675201, 0, 'sex', '-1', '性别', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675202, 1123598814738675201, 'sex', '1', '男', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675203, 1123598814738675201, 'sex', '2', '女', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675204, 0, 'notice', '-1', '通知类型', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675205, 1123598814738675204, 'notice', '1', '发布通知', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675206, 1123598814738675204, 'notice', '2', '批转通知', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675207, 1123598814738675204, 'notice', '3', '转发通知', 3, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675208, 1123598814738675204, 'notice', '4', '指示通知', 4, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675209, 1123598814738675204, 'notice', '5', '任免通知', 5, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675210, 1123598814738675204, 'notice', '6', '事务通知', 6, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675211, 0, 'menu_category', '-1', '菜单类型', 3, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675212, 1123598814738675211, 'menu_category', '1', '菜单', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675213, 1123598814738675211, 'menu_category', '2', '按钮', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675214, 0, 'button_func', '-1', '按钮功能', 4, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675215, 1123598814738675214, 'button_func', '1', '工具栏', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675216, 1123598814738675214, 'button_func', '2', '操作栏', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675217, 1123598814738675214, 'button_func', '3', '工具操作栏', 3, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675218, 0, 'yes_no', '-1', '是否', 5, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675219, 1123598814738675218, 'yes_no', '1', '否', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675220, 1123598814738675218, 'yes_no', '2', '是', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675221, 0, 'flow', '-1', '流程类型', 5, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675222, 1123598814738675221, 'flow', '1', '请假流程', 1, 'leave', 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675223, 1123598814738675221, 'flow', '2', '报销流程', 2, 'expense', 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675227, 0, 'org_category', '-1', '机构类型', 7, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675228, 1123598814738675227, 'org_category', '1', '公司', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675229, 1123598814738675227, 'org_category', '2', '部门', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675230, 1123598814738675227, 'org_category', '3', '小组', 3, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675231, 0, 'data_scope_type', '-1', '数据权限', 8, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675232, 1123598814738675231, 'data_scope_type', '1', '全部可见', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675233, 1123598814738675231, 'data_scope_type', '2', '本人可见', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675234, 1123598814738675231, 'data_scope_type', '3', '所在机构可见', 3, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675235, 1123598814738675231, 'data_scope_type', '4', '所在机构及子级可见', 4, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675236, 1123598814738675231, 'data_scope_type', '5', '自定义', 5, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675237, 0, 'api_scope_type', '-1', '接口权限', 10, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675238, 1123598814738675237, 'api_scope_type', '1', '系统接口', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675239, 1123598814738675237, 'api_scope_type', '2', '业务接口', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675240, 0, 'scope_category', '-1', '权限类型', 10, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675241, 1123598814738675240, 'scope_category', '1', '数据权限', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738675242, 1123598814738675240, 'scope_category', '2', '接口权限', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738676224, 0, 'oss', '-1', '对象存储类型', 6, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738676225, 1123598814738676224, 'oss', '1', 'minio', 1, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738676226, 1123598814738676224, 'oss', '2', 'qiniu', 2, NULL, 0, 0);
INSERT INTO "blade_dict" VALUES (1123598814738676227, 1123598814738676224, 'oss', '3', 'ali', 3, NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_dict_biz
-- ----------------------------
DROP TABLE IF EXISTS "blade_dict_biz";
CREATE TABLE "blade_dict_biz" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "parent_id" int8,
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "dict_key" varchar(255) COLLATE "pg_catalog"."default",
  "dict_value" varchar(255) COLLATE "pg_catalog"."default",
  "sort" int4,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "is_sealed" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_dict_biz"."id" IS '主键';
COMMENT ON COLUMN "blade_dict_biz"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_dict_biz"."parent_id" IS '父主键';
COMMENT ON COLUMN "blade_dict_biz"."code" IS '字典码';
COMMENT ON COLUMN "blade_dict_biz"."dict_key" IS '字典值';
COMMENT ON COLUMN "blade_dict_biz"."dict_value" IS '字典名称';
COMMENT ON COLUMN "blade_dict_biz"."sort" IS '排序';
COMMENT ON COLUMN "blade_dict_biz"."remark" IS '字典备注';
COMMENT ON COLUMN "blade_dict_biz"."is_sealed" IS '是否已封存';
COMMENT ON COLUMN "blade_dict_biz"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_dict_biz" IS '业务字典表';

-- ----------------------------
-- Table structure for blade_log_api
-- ----------------------------
DROP TABLE IF EXISTS "blade_log_api";
CREATE TABLE "blade_log_api" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "service_id" varchar(32) COLLATE "pg_catalog"."default",
  "server_host" varchar(255) COLLATE "pg_catalog"."default",
  "server_ip" varchar(255) COLLATE "pg_catalog"."default",
  "env" varchar(255) COLLATE "pg_catalog"."default",
  "type" char(1) COLLATE "pg_catalog"."default",
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "method" varchar(10) COLLATE "pg_catalog"."default",
  "request_uri" varchar(255) COLLATE "pg_catalog"."default",
  "user_agent" varchar(1000) COLLATE "pg_catalog"."default",
  "remote_ip" varchar(255) COLLATE "pg_catalog"."default",
  "method_class" varchar(255) COLLATE "pg_catalog"."default",
  "method_name" varchar(255) COLLATE "pg_catalog"."default",
  "params" text COLLATE "pg_catalog"."default",
  "time" varchar(64) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "blade_log_api"."id" IS '编号';
COMMENT ON COLUMN "blade_log_api"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_log_api"."service_id" IS '服务ID';
COMMENT ON COLUMN "blade_log_api"."server_host" IS '服务器名';
COMMENT ON COLUMN "blade_log_api"."server_ip" IS '服务器IP地址';
COMMENT ON COLUMN "blade_log_api"."env" IS '服务器环境';
COMMENT ON COLUMN "blade_log_api"."type" IS '日志类型';
COMMENT ON COLUMN "blade_log_api"."title" IS '日志标题';
COMMENT ON COLUMN "blade_log_api"."method" IS '操作方式';
COMMENT ON COLUMN "blade_log_api"."request_uri" IS '请求URI';
COMMENT ON COLUMN "blade_log_api"."user_agent" IS '用户代理';
COMMENT ON COLUMN "blade_log_api"."remote_ip" IS '操作IP地址';
COMMENT ON COLUMN "blade_log_api"."method_class" IS '方法类';
COMMENT ON COLUMN "blade_log_api"."method_name" IS '方法名';
COMMENT ON COLUMN "blade_log_api"."params" IS '操作提交的数据';
COMMENT ON COLUMN "blade_log_api"."time" IS '执行时间';
COMMENT ON COLUMN "blade_log_api"."create_by" IS '创建者';
COMMENT ON COLUMN "blade_log_api"."create_time" IS '创建时间';
COMMENT ON TABLE "blade_log_api" IS '接口日志表';

-- ----------------------------
-- Table structure for blade_log_error
-- ----------------------------
DROP TABLE IF EXISTS "blade_log_error";
CREATE TABLE "blade_log_error" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "service_id" varchar(32) COLLATE "pg_catalog"."default",
  "server_host" varchar(255) COLLATE "pg_catalog"."default",
  "server_ip" varchar(255) COLLATE "pg_catalog"."default",
  "env" varchar(255) COLLATE "pg_catalog"."default",
  "method" varchar(10) COLLATE "pg_catalog"."default",
  "request_uri" varchar(255) COLLATE "pg_catalog"."default",
  "user_agent" varchar(1000) COLLATE "pg_catalog"."default",
  "stack_trace" text COLLATE "pg_catalog"."default",
  "exception_name" varchar(255) COLLATE "pg_catalog"."default",
  "message" text COLLATE "pg_catalog"."default",
  "line_number" int4,
  "remote_ip" varchar(255) COLLATE "pg_catalog"."default",
  "method_class" varchar(255) COLLATE "pg_catalog"."default",
  "file_name" varchar(1000) COLLATE "pg_catalog"."default",
  "method_name" varchar(255) COLLATE "pg_catalog"."default",
  "params" text COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "blade_log_error"."id" IS '编号';
COMMENT ON COLUMN "blade_log_error"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_log_error"."service_id" IS '服务ID';
COMMENT ON COLUMN "blade_log_error"."server_host" IS '服务器名';
COMMENT ON COLUMN "blade_log_error"."server_ip" IS '服务器IP地址';
COMMENT ON COLUMN "blade_log_error"."env" IS '系统环境';
COMMENT ON COLUMN "blade_log_error"."method" IS '操作方式';
COMMENT ON COLUMN "blade_log_error"."request_uri" IS '请求URI';
COMMENT ON COLUMN "blade_log_error"."user_agent" IS '用户代理';
COMMENT ON COLUMN "blade_log_error"."stack_trace" IS '堆栈';
COMMENT ON COLUMN "blade_log_error"."exception_name" IS '异常名';
COMMENT ON COLUMN "blade_log_error"."message" IS '异常信息';
COMMENT ON COLUMN "blade_log_error"."line_number" IS '错误行数';
COMMENT ON COLUMN "blade_log_error"."remote_ip" IS '操作IP地址';
COMMENT ON COLUMN "blade_log_error"."method_class" IS '方法类';
COMMENT ON COLUMN "blade_log_error"."file_name" IS '文件名';
COMMENT ON COLUMN "blade_log_error"."method_name" IS '方法名';
COMMENT ON COLUMN "blade_log_error"."params" IS '操作提交的数据';
COMMENT ON COLUMN "blade_log_error"."create_by" IS '创建者';
COMMENT ON COLUMN "blade_log_error"."create_time" IS '创建时间';
COMMENT ON TABLE "blade_log_error" IS '错误日志表';

-- ----------------------------
-- Table structure for blade_log_usual
-- ----------------------------
DROP TABLE IF EXISTS "blade_log_usual";
CREATE TABLE "blade_log_usual" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "service_id" varchar(32) COLLATE "pg_catalog"."default",
  "server_host" varchar(255) COLLATE "pg_catalog"."default",
  "server_ip" varchar(255) COLLATE "pg_catalog"."default",
  "env" varchar(255) COLLATE "pg_catalog"."default",
  "log_level" varchar(10) COLLATE "pg_catalog"."default",
  "log_id" varchar(100) COLLATE "pg_catalog"."default",
  "log_data" text COLLATE "pg_catalog"."default",
  "method" varchar(10) COLLATE "pg_catalog"."default",
  "request_uri" varchar(255) COLLATE "pg_catalog"."default",
  "remote_ip" varchar(255) COLLATE "pg_catalog"."default",
  "method_class" varchar(255) COLLATE "pg_catalog"."default",
  "method_name" varchar(255) COLLATE "pg_catalog"."default",
  "user_agent" varchar(1000) COLLATE "pg_catalog"."default",
  "params" text COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "blade_log_usual"."id" IS '编号';
COMMENT ON COLUMN "blade_log_usual"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_log_usual"."service_id" IS '服务ID';
COMMENT ON COLUMN "blade_log_usual"."server_host" IS '服务器名';
COMMENT ON COLUMN "blade_log_usual"."server_ip" IS '服务器IP地址';
COMMENT ON COLUMN "blade_log_usual"."env" IS '系统环境';
COMMENT ON COLUMN "blade_log_usual"."log_level" IS '日志级别';
COMMENT ON COLUMN "blade_log_usual"."log_id" IS '日志业务id';
COMMENT ON COLUMN "blade_log_usual"."log_data" IS '日志数据';
COMMENT ON COLUMN "blade_log_usual"."method" IS '操作方式';
COMMENT ON COLUMN "blade_log_usual"."request_uri" IS '请求URI';
COMMENT ON COLUMN "blade_log_usual"."remote_ip" IS '操作IP地址';
COMMENT ON COLUMN "blade_log_usual"."method_class" IS '方法类';
COMMENT ON COLUMN "blade_log_usual"."method_name" IS '方法名';
COMMENT ON COLUMN "blade_log_usual"."user_agent" IS '用户代理';
COMMENT ON COLUMN "blade_log_usual"."params" IS '操作提交的数据';
COMMENT ON COLUMN "blade_log_usual"."create_by" IS '创建者';
COMMENT ON COLUMN "blade_log_usual"."create_time" IS '创建时间';
COMMENT ON TABLE "blade_log_usual" IS '通用日志表';

-- ----------------------------
-- Table structure for blade_menu
-- ----------------------------
DROP TABLE IF EXISTS "blade_menu";
CREATE TABLE "blade_menu" (
  "id" int8 NOT NULL,
  "parent_id" int8,
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "alias" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "source" varchar(255) COLLATE "pg_catalog"."default",
  "sort" int4,
  "category" int4,
  "action" int4,
  "is_open" int4,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_menu"."id" IS '主键';
COMMENT ON COLUMN "blade_menu"."parent_id" IS '父级菜单';
COMMENT ON COLUMN "blade_menu"."code" IS '菜单编号';
COMMENT ON COLUMN "blade_menu"."name" IS '菜单名称';
COMMENT ON COLUMN "blade_menu"."alias" IS '菜单别名';
COMMENT ON COLUMN "blade_menu"."path" IS '请求地址';
COMMENT ON COLUMN "blade_menu"."source" IS '菜单资源';
COMMENT ON COLUMN "blade_menu"."sort" IS '排序';
COMMENT ON COLUMN "blade_menu"."category" IS '菜单类型';
COMMENT ON COLUMN "blade_menu"."action" IS '操作按钮类型';
COMMENT ON COLUMN "blade_menu"."is_open" IS '是否打开新页面';
COMMENT ON COLUMN "blade_menu"."remark" IS '备注';
COMMENT ON COLUMN "blade_menu"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_menu" IS '菜单表';

-- ----------------------------
-- Records of blade_menu
-- ----------------------------
BEGIN;
INSERT INTO "blade_menu" VALUES (1123598815738675201, 0, 'desk', '工作台', 'menu', '/desk', 'desktop', 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675202, 1123598815738675201, 'notice', '通知公告', 'menu', '/desk/notice', NULL, 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675203, 0, 'system', '系统管理', 'menu', '/system', 'setting', 99, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675204, 1123598815738675203, 'user', '用户管理', 'menu', '/system/user', NULL, 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675205, 1123598815738675203, 'dept', '机构管理', 'menu', '/system/dept', NULL, 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675206, 1123598815738675203, 'dict', '系统字典', 'menu', '/system/dict', NULL, 3, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675207, 1123598815738675203, 'menu', '菜单管理', 'menu', '/system/menu', NULL, 4, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675208, 1123598815738675203, 'topmenu', '顶部菜单', 'menu', '/system/topmenu', '', 5, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675209, 1123598815738675203, 'param', '参数管理', 'menu', '/system/param', NULL, 6, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675210, 0, 'monitor', '系统监控', 'menu', '/monitor', 'fund', 3, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675211, 1123598815738675210, 'doc', '接口文档', 'menu', 'http://localhost/doc.html', NULL, 1, 1, 0, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675212, 1123598815738675210, 'admin', '服务治理', 'menu', 'http://localhost:7002', NULL, 2, 1, 0, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675213, 1123598815738675210, 'log', '日志管理', 'menu', '/monitor/log', NULL, 8, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675214, 1123598815738675213, 'log_usual', '通用日志', 'menu', '/monitor/log/usual', NULL, 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675215, 1123598815738675213, 'log_api', '接口日志', 'menu', '/monitor/log/api', NULL, 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675216, 1123598815738675213, 'log_error', '错误日志', 'menu', '/monitor/log/error', NULL, 3, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675217, 0, 'tool', '研发工具', 'menu', '/tool', 'tool', 4, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675218, 1123598815738675217, 'code', '代码生成', 'menu', '/tool/code', NULL, 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675219, 1123598815738675202, 'notice_add', '新增', 'add', '/desk/notice/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675220, 1123598815738675202, 'notice_edit', '修改', 'edit', '/desk/notice/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675221, 1123598815738675202, 'notice_delete', '删除', 'delete', '/api/blade-desk/notice/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675222, 1123598815738675202, 'notice_view', '查看', 'view', '/desk/notice/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675223, 1123598815738675204, 'user_add', '新增', 'add', '/system/user/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675224, 1123598815738675204, 'user_edit', '修改', 'edit', '/system/user/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675225, 1123598815738675204, 'user_delete', '删除', 'delete', '/api/blade-user/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675226, 1123598815738675204, 'user_role', '角色配置', 'role', NULL, 'user-add', 4, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675227, 1123598815738675204, 'user_reset', '密码重置', 'reset-password', '/api/blade-user/reset-password', 'retweet', 5, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675228, 1123598815738675204, 'user_view', '查看', 'view', '/system/user/view', 'file-text', 6, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675229, 1123598815738675205, 'dept_add', '新增', 'add', '/system/dept/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675230, 1123598815738675205, 'dept_edit', '修改', 'edit', '/system/dept/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675231, 1123598815738675205, 'dept_delete', '删除', 'delete', '/api/blade-system/dept/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675232, 1123598815738675205, 'dept_view', '查看', 'view', '/system/dept/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675233, 1123598815738675206, 'dict_add', '新增', 'add', '/system/dict/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675234, 1123598815738675206, 'dict_edit', '修改', 'edit', '/system/dict/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675235, 1123598815738675206, 'dict_delete', '删除', 'delete', '/api/blade-system/dict/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675236, 1123598815738675206, 'dict_view', '查看', 'view', '/system/dict/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675237, 1123598815738675207, 'menu_add', '新增', 'add', '/system/menu/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675238, 1123598815738675207, 'menu_edit', '修改', 'edit', '/system/menu/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675239, 1123598815738675207, 'menu_delete', '删除', 'delete', '/api/blade-system/menu/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675240, 1123598815738675207, 'menu_view', '查看', 'view', '/system/menu/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675241, 1123598815738675308, 'role_add', '新增', 'add', '/authority/role/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675242, 1123598815738675308, 'role_edit', '修改', 'edit', '/authority/role/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675243, 1123598815738675308, 'role_delete', '删除', 'delete', '/api/blade-system/role/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675244, 1123598815738675308, 'role_view', '查看', 'view', '/authority/role/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675245, 1123598815738675209, 'param_add', '新增', 'add', '/system/param/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675246, 1123598815738675209, 'param_edit', '修改', 'edit', '/system/param/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675247, 1123598815738675209, 'param_delete', '删除', 'delete', '/api/blade-system/param/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675248, 1123598815738675209, 'param_view', '查看', 'view', '/system/param/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675249, 1123598815738675214, 'log_usual_view', '查看', 'view', '/monitor/log/usual/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675250, 1123598815738675215, 'log_api_view', '查看', 'view', '/monitor/log/api/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675251, 1123598815738675216, 'log_error_view', '查看', 'view', '/monitor/log/error/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675252, 1123598815738675218, 'code_add', '新增', 'add', '/tool/code/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675253, 1123598815738675218, 'code_edit', '修改', 'edit', '/tool/code/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675254, 1123598815738675218, 'code_delete', '删除', 'delete', '/api/blade-develop/code/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675255, 1123598815738675218, 'code_view', '查看', 'view', '/tool/code/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675256, 1123598815738675203, 'tenant', '租户管理', 'menu', '/system/tenant', NULL, 7, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675257, 1123598815738675256, 'tenant_add', '新增', 'add', '/system/tenant/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675258, 1123598815738675256, 'tenant_edit', '修改', 'edit', '/system/tenant/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675259, 1123598815738675256, 'tenant_delete', '删除', 'delete', '/api/blade-system/tenant/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675260, 1123598815738675256, 'tenant_view', '查看', 'view', '/system/tenant/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675261, 1123598815738675203, 'client', '应用管理', 'menu', '/system/client', NULL, 8, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675262, 1123598815738675261, 'client_add', '新增', 'add', '/system/client/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675263, 1123598815738675261, 'client_edit', '修改', 'edit', '/system/client/edit', 'form', 2, 2, 2, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675264, 1123598815738675261, 'client_delete', '删除', 'delete', '/api/blade-system/client/remove', 'delete', 3, 2, 3, 3, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675265, 1123598815738675261, 'client_view', '查看', 'view', '/system/client/view', 'file-text', 4, 2, 2, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675266, 0, 'flow', '流程管理', 'menu', '/flow', 'stock', 5, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675267, 1123598815738675266, 'flow_model', '模型管理', 'menu', '/flow/model', NULL, 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675268, 1123598815738675267, 'flow_model_create', '创建', 'create', '', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675269, 1123598815738675267, 'flow_model_update', '编辑', 'update', '', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675270, 1123598815738675267, 'flow_model_deploy', '部署', 'deploy', '', 'cloud-upload', 3, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675271, 1123598815738675267, 'flow_model_download', '下载', 'download', '', 'download', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675272, 1123598815738675267, 'flow_model_delete', '删除', 'delete', '/api/blade-flow/model/remove', 'delete', 5, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675273, 1123598815738675266, 'flow_deploy', '流程部署', 'menu', '/flow/deploy', NULL, 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675274, 1123598815738675266, 'flow_manager', '流程管理', 'menu', '/flow/manager', NULL, 3, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675275, 1123598815738675274, 'flow_manager_state', '变更状态', 'state', '', 'plus', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675276, 1123598815738675274, 'flow_manager_image', '流程图', 'image', '', 'image', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675277, 1123598815738675274, 'flow_manager_remove', '删除', 'remove', '', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675278, 1123598815738675266, 'flow_follow', '流程跟踪', 'menu', '/flow/follow', NULL, 4, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675279, 1123598815738675278, 'flow_follow_delete', '删除', 'remove', '', 'remove', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675280, 0, 'work', '我的事务', 'menu', '/work', 'bell', 2, 1, 0, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1123598815738675281, 1123598815738675280, 'work_start', '发起事务', 'menu', '/work/start', NULL, 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675282, 1123598815738675281, 'work_start_flow', '发起', 'flow', '', 'flow', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675283, 1123598815738675281, 'work_start_image', '流程图', 'image', '', 'image', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675284, 1123598815738675280, 'work_claim', '待签事务', 'menu', '/work/claim', NULL, 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675285, 1123598815738675284, 'work_claim_sign', '签收', 'sign', '', 'sign', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675286, 1123598815738675284, 'work_claim_detail', '详情', 'detail', '', 'detail', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675287, 1123598815738675284, 'work_claim_follow', '跟踪', 'follow', '', 'follow', 3, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675288, 1123598815738675280, 'work_todo', '待办事务', 'menu', '/work/todo', NULL, 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675289, 1123598815738675288, 'work_todo_handle', '办理', 'handle', '', 'handle', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675290, 1123598815738675288, 'work_todo_detail', '详情', 'detail', '', 'detail', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675291, 1123598815738675288, 'work_todo_follow', '跟踪', 'follow', '', 'follow', 3, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675292, 1123598815738675280, 'work_send', '已发事务', 'menu', '/work/send', NULL, 3, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675293, 1123598815738675292, 'work_send_detail', '详情', 'detail', '', 'detail', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675294, 1123598815738675292, 'work_send_follow', '跟踪', 'follow', '', 'follow', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675295, 1123598815738675280, 'work_done', '办结事务', 'menu', '/work/done', NULL, 4, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675296, 1123598815738675295, 'work_done_detail', '详情', 'detail', '', 'detail', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675297, 1123598815738675295, 'work_done_follow', '跟踪', 'follow', '', 'follow', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675298, 0, 'resource', '资源管理', 'menu', '/resource', 'bg-colors', 6, 1, 0, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1123598815738675299, 1123598815738675298, 'oss', '对象存储', 'menu', '/resource/oss', NULL, 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675301, 1123598815738675299, 'oss_add', '新增', 'add', '/resource/oss/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675302, 1123598815738675299, 'oss_edit', '修改', 'edit', '/resource/oss/edit', 'form', 2, 2, 2, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675303, 1123598815738675299, 'oss_delete', '删除', 'delete', '/api/blade-resource/oss/remove', 'delete', 3, 2, 3, 3, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675304, 1123598815738675299, 'oss_view', '查看', 'view', '/resource/oss/view', 'file-text', 4, 2, 2, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675305, 1123598815738675299, 'oss_enable', '启用', 'enable', '/api/blade-resource/oss/enable', 'key', 5, 2, 2, 2, '', 0);
INSERT INTO "blade_menu" VALUES (1123598815738675307, 0, 'authority', '权限管理', 'menu', '/authority', 'safety-certificate', 98, 1, 0, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1123598815738675308, 1123598815738675307, 'role', '角色管理', 'menu', '/authority/role', '', 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675309, 1123598815738675307, 'data_scope', '数据权限', 'menu', '/authority/datascope', '', 2, 1, 0, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1123598815738675310, 1123598815738675309, 'data_scope_setting', '权限配置', 'setting', NULL, 'setting', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675311, 1123598815738675307, 'api_scope', '接口权限', 'menu', '/authority/apiscope', '', 3, 1, 0, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1123598815738675312, 1123598815738675311, 'api_scope_setting', '权限配置', 'setting', NULL, 'setting', 1, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675313, 1123598815738675208, 'topmenu_add', '新增', 'add', '/system/topmenu/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675314, 1123598815738675208, 'topmenu_edit', '修改', 'edit', '/system/topmenu/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675315, 1123598815738675208, 'topmenu_delete', '删除', 'delete', '/api/blade-system/topmenu/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675316, 1123598815738675208, 'topmenu_view', '查看', 'view', '/system/topmenu/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1123598815738675317, 1123598815738675208, 'topmenu_setting', '菜单配置', 'setting', NULL, 'setting', 5, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1161272593873321991, 1123598815738675217, 'datasource', '数据源管理', 'menu', '/tool/datasource', NULL, 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1161272593873321992, 1161272593873321991, 'datasource_add', '新增', 'add', '/tool/datasource/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu" VALUES (1161272593873321993, 1161272593873321991, 'datasource_edit', '修改', 'edit', '/tool/datasource/edit', 'form', 2, 2, 2, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1161272593873321994, 1161272593873321991, 'datasource_delete', '删除', 'delete', '/api/blade-develop/datasource/remove', 'delete', 3, 2, 3, 3, NULL, 0);
INSERT INTO "blade_menu" VALUES (1161272593873321995, 1161272593873321991, 'datasource_view', '查看', 'view', '/tool/datasource/view', 'file-text', 4, 2, 2, 2, NULL, 0);
INSERT INTO "blade_menu" VALUES (1164733369658963251, 1123598815738675210, 'elk', 'ELK监控', 'menu', 'http://localhost:5601/', '', 3, 1, 0, 2, '', 0);
INSERT INTO "blade_menu" VALUES (1164733369658963252, 1123598815738675210, 'zipkin', 'Zipkin监控', 'menu', 'http://localhost:9411/', '', 4, 1, 0, 2, '', 0);
INSERT INTO "blade_menu" VALUES (1164733369658963253, 1123598815738675210, 'turbine', 'Turbine监控', 'menu', 'http://localhost:7003/hystrix', '', 5, 1, 0, 2, '', 0);
INSERT INTO "blade_menu" VALUES (1164733369658963254, 1123598815738675210, 'sentinel', 'Sentinel管理', 'menu', 'http://localhost:8858', '', 6, 1, 0, 2, '', 0);
INSERT INTO "blade_menu" VALUES (1164733369658963255, 1123598815738675210, 'es', 'Elasticsearch管理', 'menu', 'http://localhost:9100/', '', 7, 1, 0, 2, '', 0);
INSERT INTO "blade_menu" VALUES (1164733379658963251, 1123598815738675203, 'dictbiz', '业务字典', 'menu', '/system/dictbiz', '', 3, 1, 0, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1164733379658963252, 1164733379658963251, 'dictbiz_add', '新增', 'add', '/system/dictbiz/add', 'plus', 1, 2, 1, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1164733379658963253, 1164733379658963251, 'dictbiz_edit', '修改', 'edit', '/system/dictbiz/edit', 'form', 2, 2, 2, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1164733379658963254, 1164733379658963251, 'dictbiz_delete', '删除', 'delete', '/api/blade-system/dict-biz/remove', 'delete', 3, 2, 3, 1, '', 0);
INSERT INTO "blade_menu" VALUES (1164733379658963255, 1164733379658963251, 'dictbiz_view', '查看', 'view', '/system/dictbiz/view', 'file-text', 4, 2, 2, 1, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_notice
-- ----------------------------
DROP TABLE IF EXISTS "blade_notice";
CREATE TABLE "blade_notice" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "category" int4,
  "release_time" timestamp(6),
  "content" varchar(2000) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_notice"."id" IS '主键';
COMMENT ON COLUMN "blade_notice"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_notice"."title" IS '标题';
COMMENT ON COLUMN "blade_notice"."category" IS '类型';
COMMENT ON COLUMN "blade_notice"."release_time" IS '发布时间';
COMMENT ON COLUMN "blade_notice"."content" IS '内容';
COMMENT ON COLUMN "blade_notice"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_notice"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_notice"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_notice"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_notice"."status" IS '状态';
COMMENT ON COLUMN "blade_notice"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_notice" IS '通知公告表';

-- ----------------------------
-- Records of blade_notice
-- ----------------------------
BEGIN;
INSERT INTO "blade_notice" VALUES (1123598818738675223, '000000', '测试公告', 3, '2018-12-31 20:03:31', '222', 1123598821738675201, 1123598813738675201, '2018-12-05 20:03:31', 1123598821738675201, '2018-12-28 11:10:51', 1, 0);
INSERT INTO "blade_notice" VALUES (1123598818738675224, '000000', '测试公告2', 1, '2018-12-05 20:03:31', '333', 1123598821738675201, 1123598813738675201, '2018-12-28 10:32:26', 1123598821738675201, '2018-12-28 11:10:34', 1, 0);
INSERT INTO "blade_notice" VALUES (1123598818738675225, '000000', '测试公告3', 6, '2018-12-29 00:00:00', '11111', 1123598821738675201, 1123598813738675201, '2018-12-28 11:03:44', 1123598821738675201, '2018-12-28 11:10:28', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_oss
-- ----------------------------
DROP TABLE IF EXISTS "blade_oss";
CREATE TABLE "blade_oss" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "category" int4,
  "endpoint" varchar(255) COLLATE "pg_catalog"."default",
  "access_key" varchar(255) COLLATE "pg_catalog"."default",
  "secret_key" varchar(255) COLLATE "pg_catalog"."default",
  "bucket_name" varchar(255) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_oss"."id" IS '主键';
COMMENT ON COLUMN "blade_oss"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_oss"."category" IS '分类';
COMMENT ON COLUMN "blade_oss"."endpoint" IS '资源地址';
COMMENT ON COLUMN "blade_oss"."access_key" IS 'accessKey';
COMMENT ON COLUMN "blade_oss"."secret_key" IS 'secretKey';
COMMENT ON COLUMN "blade_oss"."bucket_name" IS '空间名';
COMMENT ON COLUMN "blade_oss"."remark" IS '备注';
COMMENT ON COLUMN "blade_oss"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_oss"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_oss"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_oss"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_oss"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_oss"."status" IS '状态';
COMMENT ON COLUMN "blade_oss"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_oss" IS '对象存储表';

-- ----------------------------
-- Records of blade_oss
-- ----------------------------
BEGIN;
INSERT INTO "blade_oss" VALUES (1132486733992468482, '000000', 1, 'http://127.0.0.1:9000', 'D99KGE6ZTQXSATTJWU24', 'QyVqGnhIQQE734UYSUFlGOZViE6+ZlDEfUG3NjhJ', 'bladex', '', 1123598821738675201, 1123598813738675201, '2019-05-26 11:20:52', 1123598821738675201, '2019-05-27 08:34:55', 2, 0);
INSERT INTO "blade_oss" VALUES (1132487155981393922, '000000', 2, 'http://ps458elcs.bkt.clouddn.com', 'N_Loh1ngBqcJovwiAJqR91Ifj2vgOWHOf8AwBA_h', 'AuzuA1KHAbkIndCU0dB3Zfii2O3crHNODDmpxHRS', 'bladex', '', 1123598821738675201, 1123598813738675201, '2019-05-26 11:22:33', 1123598821738675201, '2019-05-26 23:27:56', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_param
-- ----------------------------
DROP TABLE IF EXISTS "blade_param";
CREATE TABLE "blade_param" (
  "id" int8 NOT NULL,
  "param_name" varchar(255) COLLATE "pg_catalog"."default",
  "param_key" varchar(255) COLLATE "pg_catalog"."default",
  "param_value" varchar(255) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_param"."id" IS '主键';
COMMENT ON COLUMN "blade_param"."param_name" IS '参数名';
COMMENT ON COLUMN "blade_param"."param_key" IS '参数键';
COMMENT ON COLUMN "blade_param"."param_value" IS '参数值';
COMMENT ON COLUMN "blade_param"."remark" IS '备注';
COMMENT ON COLUMN "blade_param"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_param"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_param"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_param"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_param"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_param"."status" IS '状态';
COMMENT ON COLUMN "blade_param"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_param" IS '参数表';

-- ----------------------------
-- Records of blade_param
-- ----------------------------
BEGIN;
INSERT INTO "blade_param" VALUES (1123598819738675201, '是否开启注册功能', 'account.registerUser', 'true', '开启注册', 1123598821738675201, 1123598813738675201, '2018-12-28 12:19:01', 1123598821738675201, '2018-12-28 12:19:01', 1, 0);
INSERT INTO "blade_param" VALUES (1123598819738675202, '账号初始密码', 'account.initPassword', '123456', '初始密码', 1123598821738675201, 1123598813738675201, '2018-12-28 12:19:01', 1123598821738675201, '2018-12-28 12:19:01', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_process_leave
-- ----------------------------
DROP TABLE IF EXISTS "blade_process_leave";
CREATE TABLE "blade_process_leave" (
  "id" int8 NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default",
  "process_instance_id" varchar(64) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "reason" varchar(255) COLLATE "pg_catalog"."default",
  "task_user" varchar(255) COLLATE "pg_catalog"."default",
  "apply_time" timestamp(6),
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_process_leave"."id" IS '编号';
COMMENT ON COLUMN "blade_process_leave"."process_definition_id" IS '流程定义主键';
COMMENT ON COLUMN "blade_process_leave"."process_instance_id" IS '流程实例主键';
COMMENT ON COLUMN "blade_process_leave"."start_time" IS '开始时间';
COMMENT ON COLUMN "blade_process_leave"."end_time" IS '结束时间';
COMMENT ON COLUMN "blade_process_leave"."reason" IS '请假理由';
COMMENT ON COLUMN "blade_process_leave"."task_user" IS '第一级审批人';
COMMENT ON COLUMN "blade_process_leave"."apply_time" IS '申请时间';
COMMENT ON COLUMN "blade_process_leave"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_process_leave"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_process_leave"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_process_leave"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_process_leave"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_process_leave"."status" IS '状态';
COMMENT ON COLUMN "blade_process_leave"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_process_leave" IS '流程请假业务表';

-- ----------------------------
-- Table structure for blade_role
-- ----------------------------
DROP TABLE IF EXISTS "blade_role";
CREATE TABLE "blade_role" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "parent_id" int8,
  "role_name" varchar(255) COLLATE "pg_catalog"."default",
  "sort" int4,
  "role_alias" varchar(255) COLLATE "pg_catalog"."default",
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_role"."id" IS '主键';
COMMENT ON COLUMN "blade_role"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_role"."parent_id" IS '父主键';
COMMENT ON COLUMN "blade_role"."role_name" IS '角色名';
COMMENT ON COLUMN "blade_role"."sort" IS '排序';
COMMENT ON COLUMN "blade_role"."role_alias" IS '角色别名';
COMMENT ON COLUMN "blade_role"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_role" IS '角色表';

-- ----------------------------
-- Records of blade_role
-- ----------------------------
BEGIN;
INSERT INTO "blade_role" VALUES (1123598816738675201, '000000', 0, '超级管理员', 1, 'administrator', 0);
INSERT INTO "blade_role" VALUES (1123598816738675202, '000000', 0, '用户', 2, 'user', 0);
INSERT INTO "blade_role" VALUES (1123598816738675203, '000000', 1123598816738675202, '人事', 1, 'hr', 0);
INSERT INTO "blade_role" VALUES (1123598816738675204, '000000', 1123598816738675202, '经理', 2, 'manager', 0);
INSERT INTO "blade_role" VALUES (1123598816738675205, '000000', 1123598816738675202, '老板', 3, 'boss', 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "blade_role_menu";
CREATE TABLE "blade_role_menu" (
  "id" int8 NOT NULL,
  "menu_id" int8,
  "role_id" int8
)
;
COMMENT ON COLUMN "blade_role_menu"."id" IS '主键';
COMMENT ON COLUMN "blade_role_menu"."menu_id" IS '菜单id';
COMMENT ON COLUMN "blade_role_menu"."role_id" IS '角色id';
COMMENT ON TABLE "blade_role_menu" IS '角色菜单关联表';

-- ----------------------------
-- Records of blade_role_menu
-- ----------------------------
BEGIN;
INSERT INTO "blade_role_menu" VALUES (1123598817738675363, 1123598815738675201, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675364, 1123598815738675202, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675365, 1123598815738675219, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675366, 1123598815738675220, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675367, 1123598815738675221, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675368, 1123598815738675222, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675369, 1123598815738675280, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675370, 1123598815738675281, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675371, 1123598815738675282, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675372, 1123598815738675283, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675373, 1123598815738675284, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675374, 1123598815738675285, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675375, 1123598815738675286, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675376, 1123598815738675287, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675377, 1123598815738675288, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675378, 1123598815738675289, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675379, 1123598815738675290, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675380, 1123598815738675291, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675381, 1123598815738675292, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675382, 1123598815738675293, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675383, 1123598815738675294, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675384, 1123598815738675295, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675385, 1123598815738675296, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675386, 1123598815738675297, 1123598816738675202);
INSERT INTO "blade_role_menu" VALUES (1123598817738675387, 1123598815738675201, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675388, 1123598815738675202, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675389, 1123598815738675219, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675390, 1123598815738675220, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675391, 1123598815738675221, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675392, 1123598815738675222, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675393, 1123598815738675280, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675394, 1123598815738675281, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675395, 1123598815738675282, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675396, 1123598815738675283, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675397, 1123598815738675284, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675398, 1123598815738675285, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675399, 1123598815738675286, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675400, 1123598815738675287, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675401, 1123598815738675288, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675402, 1123598815738675289, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675403, 1123598815738675290, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675404, 1123598815738675291, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675405, 1123598815738675292, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675406, 1123598815738675293, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675407, 1123598815738675294, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675408, 1123598815738675295, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675409, 1123598815738675296, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675410, 1123598815738675297, 1123598816738675203);
INSERT INTO "blade_role_menu" VALUES (1123598817738675411, 1123598815738675201, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675412, 1123598815738675202, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675413, 1123598815738675219, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675414, 1123598815738675220, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675415, 1123598815738675221, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675416, 1123598815738675222, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675417, 1123598815738675280, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675418, 1123598815738675281, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675419, 1123598815738675282, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675420, 1123598815738675283, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675421, 1123598815738675284, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675422, 1123598815738675285, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675423, 1123598815738675286, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675424, 1123598815738675287, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675425, 1123598815738675288, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675426, 1123598815738675289, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675427, 1123598815738675290, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675428, 1123598815738675291, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675429, 1123598815738675292, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675430, 1123598815738675293, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675431, 1123598815738675294, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675432, 1123598815738675295, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675433, 1123598815738675296, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675434, 1123598815738675297, 1123598816738675204);
INSERT INTO "blade_role_menu" VALUES (1123598817738675435, 1123598815738675201, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675436, 1123598815738675202, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675437, 1123598815738675219, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675438, 1123598815738675220, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675439, 1123598815738675221, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675440, 1123598815738675222, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675441, 1123598815738675280, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675442, 1123598815738675281, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675443, 1123598815738675282, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675444, 1123598815738675283, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675445, 1123598815738675284, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675446, 1123598815738675285, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675447, 1123598815738675286, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675448, 1123598815738675287, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675449, 1123598815738675288, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675450, 1123598815738675289, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675451, 1123598815738675290, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675452, 1123598815738675291, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675453, 1123598815738675292, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675454, 1123598815738675293, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675455, 1123598815738675294, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675456, 1123598815738675295, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675457, 1123598815738675296, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1123598817738675458, 1123598815738675297, 1123598816738675205);
INSERT INTO "blade_role_menu" VALUES (1149888293856833539, 1123598815738675317, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666312130561, 1123598815738675201, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666370850818, 1123598815738675202, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666437959682, 1123598815738675219, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666505068546, 1123598815738675220, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666555400193, 1123598815738675221, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666614120449, 1123598815738675222, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666651869185, 1123598815738675280, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666723172353, 1123598815738675281, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666765115393, 1123598815738675282, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666815447041, 1123598815738675283, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666844807170, 1123598815738675284, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666886750210, 1123598815738675285, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666924498946, 1123598815738675286, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891666966441986, 1123598815738675287, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667012579330, 1123598815738675288, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667054522370, 1123598815738675289, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667109048322, 1123598815738675290, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667146797058, 1123598815738675291, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667197128706, 1123598815738675292, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667234877441, 1123598815738675293, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667272626178, 1123598815738675294, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667314569218, 1123598815738675295, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667343929346, 1123598815738675296, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667398455298, 1123598815738675297, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667440398338, 1123598815738675210, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667478147073, 1123598815738675211, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667524284417, 1123598815738675212, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667574616065, 1123598815738675213, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667608170498, 1123598815738675214, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667641724929, 1123598815738675249, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667671085058, 1123598815738675215, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667708833793, 1123598815738675250, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667746582529, 1123598815738675216, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667784331265, 1123598815738675251, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667822080001, 1123598815738675217, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667843051522, 1123598815738675218, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667889188865, 1123598815738675252, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667926937602, 1123598815738675253, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667947909121, 1123598815738675254, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891667989852161, 1123598815738675255, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668015017986, 1123598815738675266, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668061155330, 1123598815738675267, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668086321154, 1123598815738675268, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668136652802, 1123598815738675269, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668199567362, 1123598815738675270, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668262481922, 1123598815738675271, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668321202177, 1123598815738675272, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668367339521, 1123598815738675273, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668405088257, 1123598815738675274, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668438642689, 1123598815738675275, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668472197121, 1123598815738675276, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668509945858, 1123598815738675277, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668568666113, 1123598815738675278, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668631580673, 1123598815738675279, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668669329410, 1123598815738675298, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668719661057, 1123598815738675299, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668757409793, 1123598815738675301, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668803547138, 1123598815738675302, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668849684481, 1123598815738675303, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668883238913, 1123598815738675304, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668920987650, 1123598815738675305, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668950347777, 1123598815738675307, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891668983902209, 1123598815738675308, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669013262338, 1123598815738675241, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669034233857, 1123598815738675242, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669055205378, 1123598815738675243, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669105537025, 1123598815738675244, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669164257282, 1123598815738675309, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669210394626, 1123598815738675310, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669243949058, 1123598815738675311, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669285892097, 1123598815738675312, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669336223745, 1123598815738675203, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669365583873, 1123598815738675204, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669394944001, 1123598815738675223, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669441081346, 1123598815738675224, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669487218689, 1123598815738675225, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669533356033, 1123598815738675226, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669571104770, 1123598815738675227, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669642407937, 1123598815738675228, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669671768065, 1123598815738675205, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669696933889, 1123598815738675229, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669743071234, 1123598815738675230, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669797597186, 1123598815738675231, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669847928834, 1123598815738675232, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669919232001, 1123598815738675206, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891669973757954, 1123598815738675233, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670019895298, 1123598815738675234, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670045061121, 1123598815738675235, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670095392770, 1123598815738675236, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670137335809, 1123598815738675207, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670196056065, 1123598815738675237, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670229610498, 1123598815738675238, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670267359234, 1123598815738675239, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670292525057, 1123598815738675240, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670355439617, 1123598815738675306, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670380605442, 1123598815738675208, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670443520001, 1123598815738675313, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670481268737, 1123598815738675314, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670506434561, 1123598815738675315, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670569349121, 1123598815738675316, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670594514945, 1123598815738675209, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670657429506, 1123598815738675245, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670682595330, 1123598815738675246, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670711955457, 1123598815738675247, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670745509889, 1123598815738675248, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670804230146, 1123598815738675256, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670841978881, 1123598815738675257, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670879727617, 1123598815738675258, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670913282050, 1123598815738675259, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670959419394, 1123598815738675260, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891670988779521, 1123598815738675261, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891671039111170, 1123598815738675262, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891671068471297, 1123598815738675263, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891671110414338, 1123598815738675264, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1149891671152357378, 1123598815738675265, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272593873322991, 1161272593873321991, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272593873322992, 1161272593873321992, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272593873322993, 1161272593873321993, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272593873322994, 1161272593873321994, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272593873322995, 1161272593873321995, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272593873322996, 1164733121140551682, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272593873322997, 1164733349637844993, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272693873322991, 1164733369658963251, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272693873322992, 1164733369658963252, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272693873322993, 1164733369658963253, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272693873322994, 1164733369658963254, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272693873322995, 1164733369658963255, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272793873322991, 1164733379658963251, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272793873322992, 116473337658963252, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272793873322993, 1164733379658963253, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272793873322994, 1164733379658963254, 1123598816738675201);
INSERT INTO "blade_role_menu" VALUES (1161272793873322995, 1164733379658963255, 1123598816738675201);
COMMIT;

-- ----------------------------
-- Table structure for blade_role_scope
-- ----------------------------
DROP TABLE IF EXISTS "blade_role_scope";
CREATE TABLE "blade_role_scope" (
  "id" int8 NOT NULL,
  "scope_category" int4,
  "scope_id" int8,
  "role_id" int8
)
;
COMMENT ON COLUMN "blade_role_scope"."id" IS '主键';
COMMENT ON COLUMN "blade_role_scope"."scope_category" IS '权限类型(1:数据权限、2:接口权限)';
COMMENT ON COLUMN "blade_role_scope"."scope_id" IS '权限id';
COMMENT ON COLUMN "blade_role_scope"."role_id" IS '角色id';
COMMENT ON TABLE "blade_role_scope" IS '角色数据权限关联表';

-- ----------------------------
-- Table structure for blade_scope_api
-- ----------------------------
DROP TABLE IF EXISTS "blade_scope_api";
CREATE TABLE "blade_scope_api" (
  "id" int8 NOT NULL,
  "menu_id" int8,
  "resource_code" varchar(255) COLLATE "pg_catalog"."default",
  "scope_name" varchar(255) COLLATE "pg_catalog"."default",
  "scope_path" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type" int4,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_scope_api"."id" IS '主键';
COMMENT ON COLUMN "blade_scope_api"."menu_id" IS '菜单主键';
COMMENT ON COLUMN "blade_scope_api"."resource_code" IS '资源编号';
COMMENT ON COLUMN "blade_scope_api"."scope_name" IS '接口权限名';
COMMENT ON COLUMN "blade_scope_api"."scope_path" IS '接口权限地址';
COMMENT ON COLUMN "blade_scope_api"."scope_type" IS '接口权限类型';
COMMENT ON COLUMN "blade_scope_api"."remark" IS '接口权限备注';
COMMENT ON COLUMN "blade_scope_api"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_scope_api"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_scope_api"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_scope_api"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_scope_api"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_scope_api"."status" IS '状态';
COMMENT ON COLUMN "blade_scope_api"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_scope_api" IS '接口权限表';

-- ----------------------------
-- Table structure for blade_scope_data
-- ----------------------------
DROP TABLE IF EXISTS "blade_scope_data";
CREATE TABLE "blade_scope_data" (
  "id" int8 NOT NULL,
  "menu_id" int8,
  "resource_code" varchar(255) COLLATE "pg_catalog"."default",
  "scope_name" varchar(255) COLLATE "pg_catalog"."default",
  "scope_field" varchar(255) COLLATE "pg_catalog"."default",
  "scope_class" varchar(500) COLLATE "pg_catalog"."default",
  "scope_column" varchar(255) COLLATE "pg_catalog"."default",
  "scope_type" int4,
  "scope_value" varchar(2000) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_scope_data"."id" IS '主键';
COMMENT ON COLUMN "blade_scope_data"."menu_id" IS '菜单主键';
COMMENT ON COLUMN "blade_scope_data"."resource_code" IS '资源编号';
COMMENT ON COLUMN "blade_scope_data"."scope_name" IS '数据权限名称';
COMMENT ON COLUMN "blade_scope_data"."scope_field" IS '数据权限字段';
COMMENT ON COLUMN "blade_scope_data"."scope_class" IS '数据权限类名';
COMMENT ON COLUMN "blade_scope_data"."scope_column" IS '数据权限字段';
COMMENT ON COLUMN "blade_scope_data"."scope_type" IS '数据权限类型';
COMMENT ON COLUMN "blade_scope_data"."scope_value" IS '数据权限值域';
COMMENT ON COLUMN "blade_scope_data"."remark" IS '数据权限备注';
COMMENT ON COLUMN "blade_scope_data"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_scope_data"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_scope_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_scope_data"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_scope_data"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_scope_data"."status" IS '状态';
COMMENT ON COLUMN "blade_scope_data"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_scope_data" IS '数据权限表';

-- ----------------------------
-- Table structure for blade_tenant
-- ----------------------------
DROP TABLE IF EXISTS "blade_tenant";
CREATE TABLE "blade_tenant" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "tenant_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "linkman" varchar(20) COLLATE "pg_catalog"."default",
  "contact_number" varchar(20) COLLATE "pg_catalog"."default",
  "address" varchar(255) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_tenant"."id" IS '主键';
COMMENT ON COLUMN "blade_tenant"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_tenant"."tenant_name" IS '租户名称';
COMMENT ON COLUMN "blade_tenant"."linkman" IS '联系人';
COMMENT ON COLUMN "blade_tenant"."contact_number" IS '联系电话';
COMMENT ON COLUMN "blade_tenant"."address" IS '联系地址';
COMMENT ON COLUMN "blade_tenant"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_tenant"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_tenant"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_tenant"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_tenant"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_tenant"."status" IS '状态';
COMMENT ON COLUMN "blade_tenant"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_tenant" IS '租户表';

-- ----------------------------
-- Records of blade_tenant
-- ----------------------------
BEGIN;
INSERT INTO "blade_tenant" VALUES (1123598820738675201, '000000', '管理组', 'admin', '666666', '管理组', 1123598821738675201, 1123598813738675201, '2019-01-01 00:00:39', 1123598821738675201, '2019-01-01 00:00:39', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_top_menu
-- ----------------------------
DROP TABLE IF EXISTS "blade_top_menu";
CREATE TABLE "blade_top_menu" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "source" varchar(255) COLLATE "pg_catalog"."default",
  "sort" int4,
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_top_menu"."id" IS '主键';
COMMENT ON COLUMN "blade_top_menu"."tenant_id" IS '租户id';
COMMENT ON COLUMN "blade_top_menu"."code" IS '顶部菜单编号';
COMMENT ON COLUMN "blade_top_menu"."name" IS '顶部菜单名';
COMMENT ON COLUMN "blade_top_menu"."source" IS '顶部菜单资源';
COMMENT ON COLUMN "blade_top_menu"."sort" IS '顶部菜单排序';
COMMENT ON COLUMN "blade_top_menu"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_top_menu"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_top_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_top_menu"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_top_menu"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_top_menu"."status" IS '状态';
COMMENT ON COLUMN "blade_top_menu"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_top_menu" IS '顶部菜单表';

-- ----------------------------
-- Table structure for blade_top_menu_setting
-- ----------------------------
DROP TABLE IF EXISTS "blade_top_menu_setting";
CREATE TABLE "blade_top_menu_setting" (
  "id" int8 NOT NULL,
  "top_menu_id" int8,
  "menu_id" int8
)
;
COMMENT ON COLUMN "blade_top_menu_setting"."id" IS '主键';
COMMENT ON COLUMN "blade_top_menu_setting"."top_menu_id" IS '顶部菜单主键';
COMMENT ON COLUMN "blade_top_menu_setting"."menu_id" IS '菜单主键';
COMMENT ON TABLE "blade_top_menu_setting" IS '顶部菜单配置表';

-- ----------------------------
-- Table structure for blade_user
-- ----------------------------
DROP TABLE IF EXISTS "blade_user";
CREATE TABLE "blade_user" (
  "id" int8 NOT NULL,
  "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
  "account" varchar(45) COLLATE "pg_catalog"."default",
  "password" varchar(45) COLLATE "pg_catalog"."default",
  "name" varchar(20) COLLATE "pg_catalog"."default",
  "real_name" varchar(10) COLLATE "pg_catalog"."default",
  "avatar" varchar(500) COLLATE "pg_catalog"."default",
  "email" varchar(45) COLLATE "pg_catalog"."default",
  "phone" varchar(45) COLLATE "pg_catalog"."default",
  "birthday" timestamp(6),
  "sex" int2,
  "role_id" varchar(1000) COLLATE "pg_catalog"."default",
  "dept_id" varchar(1000) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_user"."id" IS '主键';
COMMENT ON COLUMN "blade_user"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_user"."account" IS '账号';
COMMENT ON COLUMN "blade_user"."password" IS '密码';
COMMENT ON COLUMN "blade_user"."name" IS '昵称';
COMMENT ON COLUMN "blade_user"."real_name" IS '真名';
COMMENT ON COLUMN "blade_user"."avatar" IS '头像';
COMMENT ON COLUMN "blade_user"."email" IS '邮箱';
COMMENT ON COLUMN "blade_user"."phone" IS '手机';
COMMENT ON COLUMN "blade_user"."birthday" IS '生日';
COMMENT ON COLUMN "blade_user"."sex" IS '性别';
COMMENT ON COLUMN "blade_user"."role_id" IS '角色id';
COMMENT ON COLUMN "blade_user"."dept_id" IS '部门id';
COMMENT ON COLUMN "blade_user"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_user"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_user"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_user"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_user"."status" IS '状态';
COMMENT ON COLUMN "blade_user"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_user" IS '用户表';

-- ----------------------------
-- Records of blade_user
-- ----------------------------
BEGIN;
INSERT INTO "blade_user" VALUES (1123598821738675201, '000000', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', '管理员', '管理员', 'https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png', 'admin@bladex.vip', '123333333333', '2018-08-08 00:00:00', 1, '1123598816738675201', '1123598813738675201', 1123598821738675201, 1123598813738675201, '2018-08-08 00:00:00', 1123598821738675201, '2018-08-08 00:00:00', 1, 0);
INSERT INTO "blade_user" VALUES (1123598821738675202, '000000', 'hr', '5e79b90f7bba52d54115f086e48f539016a27ec6', '人事', '人事', 'https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png', 'hr@bladex.vip', '123333333333', '2018-08-08 00:00:00', 1, '1123598816738675203', '1123598813738675202', 1123598821738675201, 1123598813738675201, '2019-04-27 17:03:10', 1123598821738675201, '2019-04-27 17:03:10', 1, 0);
INSERT INTO "blade_user" VALUES (1123598821738675203, '000000', 'manager', 'dfbaa3b61caa3a319f463cc165085aa8c822d2ce', '经理', '经理', 'https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png', 'manager@bladex.vip', '123333333333', '2018-08-08 00:00:00', 1, '1123598816738675204', '1123598813738675202', 1123598821738675201, 1123598813738675201, '2019-04-27 17:03:38', 1123598821738675201, '2019-04-27 17:03:38', 1, 0);
INSERT INTO "blade_user" VALUES (1123598821738675204, '000000', 'boss', 'abe57d23e18f7ad8ea99c86e430c90a05119a9d3', '老板', '老板', 'https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png', 'boss@bladex.vip', '123333333333', '2018-08-08 00:00:00', 1, '1123598816738675205', '1123598813738675202', 1123598821738675201, 1123598813738675201, '2019-04-27 17:03:55', 1123598821738675201, '2019-04-27 17:03:55', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for blade_user_dept
-- ----------------------------
DROP TABLE IF EXISTS "blade_user_dept";
CREATE TABLE "blade_user_dept" (
  "id" int8 NOT NULL,
  "user_id" int8,
  "dept_id" int8
)
;
COMMENT ON COLUMN "blade_user_dept"."id" IS '主键';
COMMENT ON COLUMN "blade_user_dept"."user_id" IS '用户ID';
COMMENT ON COLUMN "blade_user_dept"."dept_id" IS '部门ID';
COMMENT ON TABLE "blade_user_dept" IS '用户部门表';

-- ----------------------------
-- Records of blade_user_dept
-- ----------------------------
BEGIN;
INSERT INTO "blade_user_dept" VALUES (1203503640757788674, 1123598821738675201, 1123598813738675201);
INSERT INTO "blade_user_dept" VALUES (1203503653323923458, 1123598821738675202, 1123598813738675202);
INSERT INTO "blade_user_dept" VALUES (1203503663402835969, 1123598821738675203, 1123598813738675202);
INSERT INTO "blade_user_dept" VALUES (1203503672911323137, 1123598821738675204, 1123598813738675202);
COMMIT;

-- ----------------------------
-- Primary Key structure for table blade_client
-- ----------------------------
ALTER TABLE "blade_client" ADD CONSTRAINT "blade_client_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_code
-- ----------------------------
ALTER TABLE "blade_code" ADD CONSTRAINT "blade_code_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_datasource
-- ----------------------------
ALTER TABLE "blade_datasource" ADD CONSTRAINT "blade_datasource_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_dept
-- ----------------------------
ALTER TABLE "blade_dept" ADD CONSTRAINT "blade_dept_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_dict
-- ----------------------------
ALTER TABLE "blade_dict" ADD CONSTRAINT "blade_dict_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_dict_biz
-- ----------------------------
ALTER TABLE "blade_dict_biz" ADD CONSTRAINT "blade_dict_biz_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_log_api
-- ----------------------------
ALTER TABLE "blade_log_api" ADD CONSTRAINT "blade_log_api_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_log_error
-- ----------------------------
ALTER TABLE "blade_log_error" ADD CONSTRAINT "blade_log_error_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_log_usual
-- ----------------------------
ALTER TABLE "blade_log_usual" ADD CONSTRAINT "blade_log_usual_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_menu
-- ----------------------------
ALTER TABLE "blade_menu" ADD CONSTRAINT "blade_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_notice
-- ----------------------------
ALTER TABLE "blade_notice" ADD CONSTRAINT "blade_notice_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_oss
-- ----------------------------
ALTER TABLE "blade_oss" ADD CONSTRAINT "blade_oss_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_param
-- ----------------------------
ALTER TABLE "blade_param" ADD CONSTRAINT "blade_param_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_process_leave
-- ----------------------------
ALTER TABLE "blade_process_leave" ADD CONSTRAINT "blade_process_leave_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_role
-- ----------------------------
ALTER TABLE "blade_role" ADD CONSTRAINT "blade_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_role_menu
-- ----------------------------
ALTER TABLE "blade_role_menu" ADD CONSTRAINT "blade_role_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_role_scope
-- ----------------------------
ALTER TABLE "blade_role_scope" ADD CONSTRAINT "blade_role_scope_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_scope_api
-- ----------------------------
ALTER TABLE "blade_scope_api" ADD CONSTRAINT "blade_scope_api_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_scope_data
-- ----------------------------
ALTER TABLE "blade_scope_data" ADD CONSTRAINT "blade_scope_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_tenant
-- ----------------------------
ALTER TABLE "blade_tenant" ADD CONSTRAINT "blade_tenant_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_top_menu
-- ----------------------------
ALTER TABLE "blade_top_menu" ADD CONSTRAINT "blade_top_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_top_menu_setting
-- ----------------------------
ALTER TABLE "blade_top_menu_setting" ADD CONSTRAINT "blade_top_menu_setting_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_user
-- ----------------------------
ALTER TABLE "blade_user" ADD CONSTRAINT "blade_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blade_user_dept
-- ----------------------------
ALTER TABLE "blade_user_dept" ADD CONSTRAINT "blade_user_dept_pkey" PRIMARY KEY ("id");
