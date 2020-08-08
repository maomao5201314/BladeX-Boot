/*
 Navicat Premium Data Transfer

 Source Server         : sqlserver_remote
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : 127.0.0.1:1433
 Source Catalog        : bladex
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 06/08/2020 23:53:20
*/


-- ----------------------------
-- Table structure for blade_attach
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_attach]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_attach]
GO

CREATE TABLE [dbo].[blade_attach] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [link] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [domain] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [original_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [extension] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [attach_size] bigint  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_attach] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'link'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件域名',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'domain'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件原名',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'original_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件拓展名',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'extension'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件大小',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'attach_size'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件表',
'SCHEMA', N'dbo',
'TABLE', N'blade_attach'
GO


-- ----------------------------
-- Table structure for blade_client
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_client]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_client]
GO

CREATE TABLE [dbo].[blade_client] (
  [id] bigint  NOT NULL,
  [client_id] nvarchar(48) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [client_secret] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [resource_ids] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [authorized_grant_types] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [web_server_redirect_uri] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorities] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [access_token_validity] int  NOT NULL,
  [refresh_token_validity] int  NOT NULL,
  [additional_information] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [autoapprove] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NOT NULL,
  [is_deleted] int  NOT NULL
)
GO

ALTER TABLE [dbo].[blade_client] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'客户端id',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'client_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'客户端密钥',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'client_secret'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源集合',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'resource_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'授权范围',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'scope'
GO

EXEC sp_addextendedproperty
'MS_Description', N'授权类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'authorized_grant_types'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回调地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'web_server_redirect_uri'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'authorities'
GO

EXEC sp_addextendedproperty
'MS_Description', N'令牌过期秒数',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'access_token_validity'
GO

EXEC sp_addextendedproperty
'MS_Description', N'刷新令牌过期秒数',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'refresh_token_validity'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附加说明',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'additional_information'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自动授权',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'autoapprove'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_client',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'客户端表',
'SCHEMA', N'dbo',
'TABLE', N'blade_client'
GO


-- ----------------------------
-- Records of blade_client
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_client] VALUES (N'1123598811738675201', N'sword', N'sword_secret', NULL, N'all', N'refresh_token,password,authorization_code,captcha,social', N'http://localhost:8888', NULL, N'3600', N'604800', NULL, NULL, N'1123598815738675201', N'1123598813738675201', N'2019-03-24 10:40:55', N'1123598815738675201', N'2019-03-24 10:40:59', N'1', N'0'), (N'1123598811738675202', N'saber', N'saber_secret', NULL, N'all', N'refresh_token,password,authorization_code,captcha,social', N'http://localhost:8080', NULL, N'3600', N'604800', NULL, NULL, N'1123598815738675201', N'1123598813738675201', N'2019-03-24 10:42:29', N'1123598815738675201', N'2019-03-24 10:42:32', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_code
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_code]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_code]
GO

CREATE TABLE [dbo].[blade_code] (
  [id] bigint  NOT NULL,
  [datasource_id] bigint  NULL,
  [service_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [code_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [table_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [table_prefix] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [pk_name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [package_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [base_mode] int  NULL,
  [wrap_mode] int  NULL,
  [api_path] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [web_path] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_code] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'datasource_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'service_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模块名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'code_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表前缀',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'table_prefix'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键名',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'pk_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'后端包名',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'package_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'基础业务模式',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'base_mode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'包装器模式',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'wrap_mode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'后端路径',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'api_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'前端路径',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'web_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_code',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成表',
'SCHEMA', N'dbo',
'TABLE', N'blade_code'
GO


-- ----------------------------
-- Records of blade_code
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_code] VALUES (N'1123598812738675201', N'1161483357481541634', N'blade-demo', N'通知公告', N'blade_notice', N'blade_', N'id', N'org.springblade.desktop', N'1', N'1', N'D:\Develop\WorkSpace\Git\SpringBlade\blade-ops\blade-develop', N'D:\Develop\WorkSpace\Git\Sword', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_datasource
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_datasource]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_datasource]
GO

CREATE TABLE [dbo].[blade_datasource] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [driver_class] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [username] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_datasource] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'驱动类',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'driver_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'连接地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源配置表',
'SCHEMA', N'dbo',
'TABLE', N'blade_datasource'
GO


-- ----------------------------
-- Records of blade_datasource
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_datasource] VALUES (N'1161483357481541634', N'mysql', N'com.mysql.cj.jdbc.Driver', N'jdbc:mysql://localhost:3306/bladex?useSSL=false&useUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull&transformedBitIsBoolean=true&serverTimezone=GMT%2B8&nullCatalogMeansCurrent=true&allowPublicKeyRetrieval=true', N'root', N'root', N'mysql', N'1123598821738675201', N'1123598813738675201', N'2020-08-08 12:20:06', N'1123598821738675201', N'2020-08-08 12:20:06', N'1', N'0'), (N'1161483504353484802', N'postgresql', N'org.postgresql.Driver', N'jdbc:postgresql://127.0.0.1:5432/bladex', N'postgres', N'123456', N'postgresql', N'1123598821738675201', N'1123598813738675201', N'2020-08-08 12:20:02', N'1123598821738675201', N'2020-08-08 12:20:02', N'1', N'0'), (N'1161483594023510018', N'oracle', N'oracle.jdbc.OracleDriver', N'jdbc:oracle:thin:@127.0.0.1:1521:orcl', N'BLADEX', N'BLADEX', N'oracle', N'1123598821738675201', N'1123598813738675201', N'2020-08-08 12:20:03', N'1123598821738675201', N'2020-08-08 12:20:03', N'1', N'0'), (N'1161483594023510020', N'sqlserver', N'com.microsoft.sqlserver.jdbc.SQLServerDriver', N'jdbc:sqlserver://127.0.0.1:1433;DatabaseName=bladex', N'bladex', N'bladex', N'sqlserver', N'1123598821738675201', N'1123598813738675201', N'2020-08-08 12:20:03', N'1123598821738675201', N'2020-08-08 12:20:03', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_dept
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_dept]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_dept]
GO

CREATE TABLE [dbo].[blade_dept] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] bigint  NULL,
  [ancestors] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [dept_category] int  NULL,
  [dept_name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [full_name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_dept] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'祖级列表',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'ancestors'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'dept_category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门名',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'dept_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门全称',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'full_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构表',
'SCHEMA', N'dbo',
'TABLE', N'blade_dept'
GO


-- ----------------------------
-- Records of blade_dept
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_dept] VALUES (N'1123598813738675201', N'000000', N'0', N'0', N'1', N'刀锋科技', N'江苏刀锋科技有限公司', N'1', NULL, N'0'), (N'1123598813738675202', N'000000', N'1123598813738675201', N'0,1123598813738675201', N'1', N'常州刀锋', N'常州刀锋科技有限公司', N'1', NULL, N'0'), (N'1123598813738675203', N'000000', N'1123598813738675201', N'0,1123598813738675201', N'1', N'苏州刀锋', N'苏州刀锋科技有限公司', N'1', NULL, N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_dict
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_dict]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_dict]
GO

CREATE TABLE [dbo].[blade_dict] (
  [id] bigint  NOT NULL,
  [parent_id] bigint  NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dict_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dict_value] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_sealed] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_dict] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典码',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典值',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'dict_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'dict_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已封存',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'is_sealed'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典表',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict'
GO


-- ----------------------------
-- Records of blade_dict
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_dict] VALUES (N'1123598814738675201', N'0', N'sex', N'-1', N'性别', N'1', NULL, N'0', N'0'), (N'1123598814738675202', N'1123598814738675201', N'sex', N'1', N'男', N'1', NULL, N'0', N'0'), (N'1123598814738675203', N'1123598814738675201', N'sex', N'2', N'女', N'2', NULL, N'0', N'0'), (N'1123598814738675204', N'0', N'notice', N'-1', N'通知类型', N'2', NULL, N'0', N'0'), (N'1123598814738675205', N'1123598814738675204', N'notice', N'1', N'发布通知', N'1', NULL, N'0', N'0'), (N'1123598814738675206', N'1123598814738675204', N'notice', N'2', N'批转通知', N'2', NULL, N'0', N'0'), (N'1123598814738675207', N'1123598814738675204', N'notice', N'3', N'转发通知', N'3', NULL, N'0', N'0'), (N'1123598814738675208', N'1123598814738675204', N'notice', N'4', N'指示通知', N'4', NULL, N'0', N'0'), (N'1123598814738675209', N'1123598814738675204', N'notice', N'5', N'任免通知', N'5', NULL, N'0', N'0'), (N'1123598814738675210', N'1123598814738675204', N'notice', N'6', N'事务通知', N'6', NULL, N'0', N'0'), (N'1123598814738675211', N'0', N'menu_category', N'-1', N'菜单类型', N'3', NULL, N'0', N'0'), (N'1123598814738675212', N'1123598814738675211', N'menu_category', N'1', N'菜单', N'1', NULL, N'0', N'0'), (N'1123598814738675213', N'1123598814738675211', N'menu_category', N'2', N'按钮', N'2', NULL, N'0', N'0'), (N'1123598814738675214', N'0', N'button_func', N'-1', N'按钮功能', N'4', NULL, N'0', N'0'), (N'1123598814738675215', N'1123598814738675214', N'button_func', N'1', N'工具栏', N'1', NULL, N'0', N'0'), (N'1123598814738675216', N'1123598814738675214', N'button_func', N'2', N'操作栏', N'2', NULL, N'0', N'0'), (N'1123598814738675217', N'1123598814738675214', N'button_func', N'3', N'工具操作栏', N'3', NULL, N'0', N'0'), (N'1123598814738675218', N'0', N'yes_no', N'-1', N'是否', N'5', NULL, N'0', N'0'), (N'1123598814738675219', N'1123598814738675218', N'yes_no', N'1', N'否', N'1', NULL, N'0', N'0'), (N'1123598814738675220', N'1123598814738675218', N'yes_no', N'2', N'是', N'2', NULL, N'0', N'0'), (N'1123598814738675221', N'0', N'flow', N'-1', N'流程类型', N'5', NULL, N'0', N'0'), (N'1123598814738675222', N'1123598814738675221', N'flow', N'1', N'请假流程', N'1', N'leave', N'0', N'0'), (N'1123598814738675223', N'1123598814738675221', N'flow', N'2', N'报销流程', N'2', N'expense', N'0', N'0'), (N'1123598814738675227', N'0', N'org_category', N'-1', N'机构类型', N'7', NULL, N'0', N'0'), (N'1123598814738675228', N'1123598814738675227', N'org_category', N'1', N'公司', N'1', NULL, N'0', N'0'), (N'1123598814738675229', N'1123598814738675227', N'org_category', N'2', N'部门', N'2', NULL, N'0', N'0'), (N'1123598814738675230', N'1123598814738675227', N'org_category', N'3', N'小组', N'3', NULL, N'0', N'0'), (N'1123598814738675231', N'0', N'data_scope_type', N'-1', N'数据权限', N'8', NULL, N'0', N'0'), (N'1123598814738675232', N'1123598814738675231', N'data_scope_type', N'1', N'全部可见', N'1', NULL, N'0', N'0'), (N'1123598814738675233', N'1123598814738675231', N'data_scope_type', N'2', N'本人可见', N'2', NULL, N'0', N'0'), (N'1123598814738675234', N'1123598814738675231', N'data_scope_type', N'3', N'所在机构可见', N'3', NULL, N'0', N'0'), (N'1123598814738675235', N'1123598814738675231', N'data_scope_type', N'4', N'所在机构及子级可见', N'4', NULL, N'0', N'0'), (N'1123598814738675236', N'1123598814738675231', N'data_scope_type', N'5', N'自定义', N'5', NULL, N'0', N'0'), (N'1123598814738675237', N'0', N'api_scope_type', N'-1', N'接口权限', N'10', NULL, N'0', N'0'), (N'1123598814738675238', N'1123598814738675237', N'api_scope_type', N'1', N'系统接口', N'1', NULL, N'0', N'0'), (N'1123598814738675239', N'1123598814738675237', N'api_scope_type', N'2', N'业务接口', N'2', NULL, N'0', N'0'), (N'1123598814738675240', N'0', N'scope_category', N'-1', N'权限类型', N'10', NULL, N'0', N'0'), (N'1123598814738675241', N'1123598814738675240', N'scope_category', N'1', N'数据权限', N'1', NULL, N'0', N'0'), (N'1123598814738675242', N'1123598814738675240', N'scope_category', N'2', N'接口权限', N'2', NULL, N'0', N'0'), (N'1123598814738676224', N'0', N'oss', N'-1', N'对象存储类型', N'6', NULL, N'0', N'0'), (N'1123598814738676225', N'1123598814738676224', N'oss', N'1', N'minio', N'1', NULL, N'0', N'0'), (N'1123598814738676226', N'1123598814738676224', N'oss', N'2', N'七牛云', N'2', NULL, N'0', N'0'), (N'1123598814738676227', N'1123598814738676224', N'oss', N'3', N'阿里云', N'3', NULL, N'0', N'0'), (N'1123598814738676228', N'1123598814738676224', N'oss', N'4', N'腾讯云', N'4', NULL, N'0', N'0'), (N'1123598814738677220', N'0', N'sms', N'-1', N'短信服务类型', N'11', NULL, N'0', N'0'), (N'1123598814738677221', N'1123598814738677220', N'sms', N'1', N'云片', N'1', NULL, N'0', N'0'), (N'1123598814738677222', N'1123598814738677220', N'sms', N'2', N'七牛云', N'2', NULL, N'0', N'0'), (N'1123598814738677223', N'1123598814738677220', N'sms', N'3', N'阿里云', N'3', NULL, N'0', N'0'), (N'1123598814738677224', N'1123598814738677220', N'sms', N'4', N'腾讯云', N'4', NULL, N'0', N'0'), (N'1123598814738777220', N'0', N'post_category', N'-1', N'岗位类型', N'12', NULL, N'0', N'0'), (N'1123598814738777221', N'1123598814738777220', N'post_category', N'1', N'高层', N'1', NULL, N'0', N'0'), (N'1123598814738777222', N'1123598814738777220', N'post_category', N'2', N'中层', N'2', NULL, N'0', N'0'), (N'1123598814738777223', N'1123598814738777220', N'post_category', N'3', N'基层', N'3', NULL, N'0', N'0'), (N'1123598814738777224', N'1123598814738777220', N'post_category', N'4', N'其他', N'4', NULL, N'0', N'0'), (N'1123598814738777230', N'0', N'region', N'-1', N'行政区划', N'13', NULL, N'0', N'0'), (N'1123598814738777231', N'1123598814738777230', N'region', N'0', N'国家', N'0', NULL, N'0', N'0'), (N'1123598814738777232', N'1123598814738777230', N'region', N'1', N'省份/直辖市', N'1', NULL, N'0', N'0'), (N'1123598814738777233', N'1123598814738777230', N'region', N'2', N'地市', N'2', NULL, N'0', N'0'), (N'1123598814738777234', N'1123598814738777230', N'region', N'3', N'区县', N'3', NULL, N'0', N'0'), (N'1123598814738777235', N'1123598814738777230', N'region', N'4', N'乡镇', N'4', NULL, N'0', N'0'), (N'1123598814738777236', N'1123598814738777230', N'region', N'5', N'村委', N'5', NULL, N'0', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_dict_biz
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_dict_biz]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_dict_biz]
GO

CREATE TABLE [dbo].[blade_dict_biz] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] bigint  NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dict_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dict_value] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_sealed] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_dict_biz] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典码',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典值',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'dict_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'dict_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已封存',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'is_sealed'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务字典表',
'SCHEMA', N'dbo',
'TABLE', N'blade_dict_biz'
GO


-- ----------------------------
-- Table structure for blade_log_api
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_log_api]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_log_api]
GO

CREATE TABLE [dbo].[blade_log_api] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [server_host] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [server_ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [env] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_uri] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_agent] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [remote_ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_class] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [params] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [time] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[blade_log_api] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'service_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务器名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'server_host'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务器IP地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'server_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务器环境',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'env'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志标题',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作方式',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求URI',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'request_uri'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户代理',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作IP地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'remote_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法类',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'method_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作提交的数据',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'params'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口日志表',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_api'
GO


-- ----------------------------
-- Table structure for blade_log_error
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_log_error]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_log_error]
GO

CREATE TABLE [dbo].[blade_log_error] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [server_host] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [server_ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [env] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_uri] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_agent] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [stack_trace] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [exception_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [message] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [line_number] int  NULL,
  [remote_ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_class] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_name] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [params] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[blade_log_error] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'service_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务器名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'server_host'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务器IP地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'server_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统环境',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'env'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作方式',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求URI',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'request_uri'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户代理',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'堆栈',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'stack_trace'
GO

EXEC sp_addextendedproperty
'MS_Description', N'异常名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'exception_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'异常信息',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'错误行数',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'line_number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作IP地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'remote_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法类',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'method_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'file_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作提交的数据',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'params'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'错误日志表',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_error'
GO


-- ----------------------------
-- Table structure for blade_log_usual
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_log_usual]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_log_usual]
GO

CREATE TABLE [dbo].[blade_log_usual] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [server_host] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [server_ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [env] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [log_level] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [log_id] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [log_data] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [method] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_uri] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remote_ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_class] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_agent] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [params] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[blade_log_usual] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'service_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务器名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'server_host'
GO

EXEC sp_addextendedproperty
'MS_Description', N'服务器IP地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'server_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统环境',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'env'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志级别',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'log_level'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志业务id',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'log_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志数据',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'log_data'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作方式',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求URI',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'request_uri'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作IP地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'remote_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法类',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'method_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法名',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户代理',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作提交的数据',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'params'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通用日志表',
'SCHEMA', N'dbo',
'TABLE', N'blade_log_usual'
GO


-- ----------------------------
-- Table structure for blade_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_menu]
GO

CREATE TABLE [dbo].[blade_menu] (
  [id] bigint  NOT NULL,
  [parent_id] bigint  NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [alias] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [path] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [source] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [category] int  NULL,
  [action] int  NULL,
  [is_open] int  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级菜单',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单别名',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'alias'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单资源',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作按钮类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'action'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否打开新页面',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'is_open'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单表',
'SCHEMA', N'dbo',
'TABLE', N'blade_menu'
GO


-- ----------------------------
-- Records of blade_menu
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_menu] VALUES (N'1123598815738675201', N'0', N'desk', N'工作台', N'menu', N'/desk', N'desktop', N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675202', N'1123598815738675201', N'notice', N'通知公告', N'menu', N'/desk/notice', NULL, N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675203', N'0', N'system', N'系统管理', N'menu', N'/system', N'setting', N'99', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675204', N'1123598815738675203', N'user', N'用户管理', N'menu', N'/system/user', NULL, N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675205', N'1123598815738675203', N'dept', N'机构管理', N'menu', N'/system/dept', NULL, N'2', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675206', N'1123598815738675203', N'dict', N'系统字典', N'menu', N'/system/dict', NULL, N'4', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675207', N'1123598815738675203', N'menu', N'菜单管理', N'menu', N'/system/menu', NULL, N'6', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675208', N'1123598815738675203', N'topmenu', N'顶部菜单', N'menu', N'/system/topmenu', N'', N'7', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675209', N'1123598815738675203', N'param', N'参数管理', N'menu', N'/system/param', NULL, N'8', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675210', N'0', N'monitor', N'系统监控', N'menu', N'/monitor', N'fund', N'3', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675211', N'1123598815738675210', N'doc', N'接口文档', N'menu', N'http://localhost/doc.html', NULL, N'1', N'1', N'0', N'2', NULL, N'0'), (N'1123598815738675212', N'1123598815738675210', N'admin', N'服务治理', N'menu', N'http://localhost:7002', NULL, N'2', N'1', N'0', N'2', NULL, N'0'), (N'1123598815738675213', N'1123598815738675210', N'log', N'日志管理', N'menu', N'/monitor/log', NULL, N'8', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675214', N'1123598815738675213', N'log_usual', N'通用日志', N'menu', N'/monitor/log/usual', NULL, N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675215', N'1123598815738675213', N'log_api', N'接口日志', N'menu', N'/monitor/log/api', NULL, N'2', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675216', N'1123598815738675213', N'log_error', N'错误日志', N'menu', N'/monitor/log/error', NULL, N'3', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675217', N'0', N'tool', N'研发工具', N'menu', N'/tool', N'tool', N'4', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675218', N'1123598815738675217', N'code', N'代码生成', N'menu', N'/tool/code', NULL, N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675219', N'1123598815738675202', N'notice_add', N'新增', N'add', N'/desk/notice/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675220', N'1123598815738675202', N'notice_edit', N'修改', N'edit', N'/desk/notice/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675221', N'1123598815738675202', N'notice_delete', N'删除', N'delete', N'/api/blade-desk/notice/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675222', N'1123598815738675202', N'notice_view', N'查看', N'view', N'/desk/notice/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675223', N'1123598815738675204', N'user_add', N'新增', N'add', N'/system/user/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675224', N'1123598815738675204', N'user_edit', N'修改', N'edit', N'/system/user/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675225', N'1123598815738675204', N'user_delete', N'删除', N'delete', N'/api/blade-user/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675226', N'1123598815738675204', N'user_role', N'角色配置', N'role', NULL, N'user-add', N'4', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675227', N'1123598815738675204', N'user_reset', N'密码重置', N'reset-password', N'/api/blade-user/reset-password', N'retweet', N'5', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675228', N'1123598815738675204', N'user_view', N'查看', N'view', N'/system/user/view', N'file-text', N'6', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675229', N'1123598815738675205', N'dept_add', N'新增', N'add', N'/system/dept/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675230', N'1123598815738675205', N'dept_edit', N'修改', N'edit', N'/system/dept/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675231', N'1123598815738675205', N'dept_delete', N'删除', N'delete', N'/api/blade-system/dept/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675232', N'1123598815738675205', N'dept_view', N'查看', N'view', N'/system/dept/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675233', N'1123598815738675206', N'dict_add', N'新增', N'add', N'/system/dict/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675234', N'1123598815738675206', N'dict_edit', N'修改', N'edit', N'/system/dict/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675235', N'1123598815738675206', N'dict_delete', N'删除', N'delete', N'/api/blade-system/dict/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675236', N'1123598815738675206', N'dict_view', N'查看', N'view', N'/system/dict/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675237', N'1123598815738675207', N'menu_add', N'新增', N'add', N'/system/menu/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675238', N'1123598815738675207', N'menu_edit', N'修改', N'edit', N'/system/menu/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675239', N'1123598815738675207', N'menu_delete', N'删除', N'delete', N'/api/blade-system/menu/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675240', N'1123598815738675207', N'menu_view', N'查看', N'view', N'/system/menu/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675241', N'1123598815738675308', N'role_add', N'新增', N'add', N'/authority/role/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675242', N'1123598815738675308', N'role_edit', N'修改', N'edit', N'/authority/role/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675243', N'1123598815738675308', N'role_delete', N'删除', N'delete', N'/api/blade-system/role/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675244', N'1123598815738675308', N'role_view', N'查看', N'view', N'/authority/role/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675245', N'1123598815738675209', N'param_add', N'新增', N'add', N'/system/param/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675246', N'1123598815738675209', N'param_edit', N'修改', N'edit', N'/system/param/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675247', N'1123598815738675209', N'param_delete', N'删除', N'delete', N'/api/blade-system/param/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675248', N'1123598815738675209', N'param_view', N'查看', N'view', N'/system/param/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675249', N'1123598815738675214', N'log_usual_view', N'查看', N'view', N'/monitor/log/usual/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675250', N'1123598815738675215', N'log_api_view', N'查看', N'view', N'/monitor/log/api/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675251', N'1123598815738675216', N'log_error_view', N'查看', N'view', N'/monitor/log/error/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675252', N'1123598815738675218', N'code_add', N'新增', N'add', N'/tool/code/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675253', N'1123598815738675218', N'code_edit', N'修改', N'edit', N'/tool/code/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675254', N'1123598815738675218', N'code_delete', N'删除', N'delete', N'/api/blade-develop/code/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675255', N'1123598815738675218', N'code_view', N'查看', N'view', N'/tool/code/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675256', N'1123598815738675203', N'tenant', N'租户管理', N'menu', N'/system/tenant', NULL, N'9', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675257', N'1123598815738675256', N'tenant_add', N'新增', N'add', N'/system/tenant/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675258', N'1123598815738675256', N'tenant_edit', N'修改', N'edit', N'/system/tenant/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675259', N'1123598815738675256', N'tenant_delete', N'删除', N'delete', N'/api/blade-system/tenant/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675260', N'1123598815738675256', N'tenant_view', N'查看', N'view', N'/system/tenant/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675261', N'1123598815738675203', N'client', N'应用管理', N'menu', N'/system/client', NULL, N'10', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675262', N'1123598815738675261', N'client_add', N'新增', N'add', N'/system/client/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675263', N'1123598815738675261', N'client_edit', N'修改', N'edit', N'/system/client/edit', N'form', N'2', N'2', N'2', N'2', NULL, N'0'), (N'1123598815738675264', N'1123598815738675261', N'client_delete', N'删除', N'delete', N'/api/blade-system/client/remove', N'delete', N'3', N'2', N'3', N'3', NULL, N'0'), (N'1123598815738675265', N'1123598815738675261', N'client_view', N'查看', N'view', N'/system/client/view', N'file-text', N'4', N'2', N'2', N'2', NULL, N'0'), (N'1123598815738675266', N'0', N'flow', N'流程管理', N'menu', N'/flow', N'stock', N'5', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675267', N'1123598815738675266', N'flow_model', N'模型管理', N'menu', N'/flow/model', NULL, N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675268', N'1123598815738675267', N'flow_model_create', N'创建', N'create', N'', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675269', N'1123598815738675267', N'flow_model_update', N'编辑', N'update', N'', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675270', N'1123598815738675267', N'flow_model_deploy', N'部署', N'deploy', N'', N'cloud-upload', N'3', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675271', N'1123598815738675267', N'flow_model_download', N'下载', N'download', N'', N'download', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675272', N'1123598815738675267', N'flow_model_delete', N'删除', N'delete', N'/api/blade-flow/model/remove', N'delete', N'5', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675273', N'1123598815738675266', N'flow_deploy', N'流程部署', N'menu', N'/flow/deploy', NULL, N'2', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675274', N'1123598815738675266', N'flow_manager', N'流程管理', N'menu', N'/flow/manager', NULL, N'3', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675275', N'1123598815738675274', N'flow_manager_state', N'变更状态', N'state', N'', N'plus', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675276', N'1123598815738675274', N'flow_manager_image', N'流程图', N'image', N'', N'image', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675277', N'1123598815738675274', N'flow_manager_remove', N'删除', N'remove', N'', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675278', N'1123598815738675266', N'flow_follow', N'流程跟踪', N'menu', N'/flow/follow', NULL, N'4', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675279', N'1123598815738675278', N'flow_follow_delete', N'删除', N'remove', N'', N'remove', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675280', N'0', N'work', N'我的事务', N'menu', N'/work', N'bell', N'2', N'1', N'0', N'1', N'', N'0'), (N'1123598815738675281', N'1123598815738675280', N'work_start', N'发起事务', N'menu', N'/work/start', NULL, N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675282', N'1123598815738675281', N'work_start_flow', N'发起', N'flow', N'', N'flow', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675283', N'1123598815738675281', N'work_start_image', N'流程图', N'image', N'', N'image', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675284', N'1123598815738675280', N'work_claim', N'待签事务', N'menu', N'/work/claim', NULL, N'2', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675285', N'1123598815738675284', N'work_claim_sign', N'签收', N'sign', N'', N'sign', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675286', N'1123598815738675284', N'work_claim_detail', N'详情', N'detail', N'', N'detail', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675287', N'1123598815738675284', N'work_claim_follow', N'跟踪', N'follow', N'', N'follow', N'3', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675288', N'1123598815738675280', N'work_todo', N'待办事务', N'menu', N'/work/todo', NULL, N'2', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675289', N'1123598815738675288', N'work_todo_handle', N'办理', N'handle', N'', N'handle', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675290', N'1123598815738675288', N'work_todo_detail', N'详情', N'detail', N'', N'detail', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675291', N'1123598815738675288', N'work_todo_follow', N'跟踪', N'follow', N'', N'follow', N'3', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675292', N'1123598815738675280', N'work_send', N'已发事务', N'menu', N'/work/send', NULL, N'3', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675293', N'1123598815738675292', N'work_send_detail', N'详情', N'detail', N'', N'detail', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675294', N'1123598815738675292', N'work_send_follow', N'跟踪', N'follow', N'', N'follow', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675295', N'1123598815738675280', N'work_done', N'办结事务', N'menu', N'/work/done', NULL, N'4', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675296', N'1123598815738675295', N'work_done_detail', N'详情', N'detail', N'', N'detail', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675297', N'1123598815738675295', N'work_done_follow', N'跟踪', N'follow', N'', N'follow', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675298', N'0', N'resource', N'资源管理', N'menu', N'/resource', N'bg-colors', N'6', N'1', N'0', N'1', N'', N'0'), (N'1123598815738675299', N'1123598815738675298', N'oss', N'对象存储', N'menu', N'/resource/oss', NULL, N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675301', N'1123598815738675299', N'oss_add', N'新增', N'add', N'/resource/oss/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675302', N'1123598815738675299', N'oss_edit', N'修改', N'edit', N'/resource/oss/edit', N'form', N'2', N'2', N'2', N'2', NULL, N'0'), (N'1123598815738675303', N'1123598815738675299', N'oss_delete', N'删除', N'delete', N'/api/blade-resource/oss/remove', N'delete', N'3', N'2', N'3', N'3', NULL, N'0'), (N'1123598815738675304', N'1123598815738675299', N'oss_view', N'查看', N'view', N'/resource/oss/view', N'file-text', N'4', N'2', N'2', N'2', NULL, N'0'), (N'1123598815738675305', N'1123598815738675299', N'oss_enable', N'启用', N'enable', N'/api/blade-resource/oss/enable', N'key', N'5', N'2', N'2', N'2', N'', N'0'), (N'1123598815738675307', N'0', N'authority', N'权限管理', N'menu', N'/authority', N'safety-certificate', N'98', N'1', N'0', N'1', N'', N'0'), (N'1123598815738675308', N'1123598815738675307', N'role', N'角色管理', N'menu', N'/authority/role', N'', N'1', N'1', N'0', N'1', NULL, N'0'), (N'1123598815738675309', N'1123598815738675307', N'data_scope', N'数据权限', N'menu', N'/authority/datascope', N'', N'2', N'1', N'0', N'1', N'', N'0'), (N'1123598815738675310', N'1123598815738675309', N'data_scope_setting', N'权限配置', N'setting', NULL, N'setting', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675311', N'1123598815738675307', N'api_scope', N'接口权限', N'menu', N'/authority/apiscope', N'', N'3', N'1', N'0', N'1', N'', N'0'), (N'1123598815738675312', N'1123598815738675311', N'api_scope_setting', N'权限配置', N'setting', NULL, N'setting', N'1', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675313', N'1123598815738675208', N'topmenu_add', N'新增', N'add', N'/system/topmenu/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1123598815738675314', N'1123598815738675208', N'topmenu_edit', N'修改', N'edit', N'/system/topmenu/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675315', N'1123598815738675208', N'topmenu_delete', N'删除', N'delete', N'/api/blade-system/topmenu/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1123598815738675316', N'1123598815738675208', N'topmenu_view', N'查看', N'view', N'/system/topmenu/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1123598815738675317', N'1123598815738675208', N'topmenu_setting', N'菜单配置', N'setting', NULL, N'setting', N'5', N'2', N'1', N'1', NULL, N'0'), (N'1161272593873321991', N'1123598815738675217', N'datasource', N'数据源管理', N'menu', N'/tool/datasource', NULL, N'2', N'1', N'0', N'1', NULL, N'0'), (N'1161272593873321992', N'1161272593873321991', N'datasource_add', N'新增', N'add', N'/tool/datasource/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1161272593873321993', N'1161272593873321991', N'datasource_edit', N'修改', N'edit', N'/tool/datasource/edit', N'form', N'2', N'2', N'2', N'2', NULL, N'0'), (N'1161272593873321994', N'1161272593873321991', N'datasource_delete', N'删除', N'delete', N'/api/blade-develop/datasource/remove', N'delete', N'3', N'2', N'3', N'3', NULL, N'0'), (N'1161272593873321995', N'1161272593873321991', N'datasource_view', N'查看', N'view', N'/tool/datasource/view', N'file-text', N'4', N'2', N'2', N'2', NULL, N'0'), (N'1164733369658963251', N'1123598815738675210', N'elk', N'ELK监控', N'menu', N'http://localhost:5601/', N'', N'3', N'1', N'0', N'2', N'', N'0'), (N'1164733369658963252', N'1123598815738675210', N'zipkin', N'Zipkin监控', N'menu', N'http://localhost:9411/', N'', N'4', N'1', N'0', N'2', N'', N'0'), (N'1164733369658963253', N'1123598815738675210', N'turbine', N'Turbine监控', N'menu', N'http://localhost:7003/hystrix', N'', N'5', N'1', N'0', N'2', N'', N'0'), (N'1164733369658963254', N'1123598815738675210', N'sentinel', N'Sentinel管理', N'menu', N'http://localhost:8858', N'', N'6', N'1', N'0', N'2', N'', N'0'), (N'1164733369658963255', N'1123598815738675210', N'es', N'Elasticsearch管理', N'menu', N'http://localhost:9100/', N'', N'7', N'1', N'0', N'2', N'', N'0'), (N'1164733379658963251', N'1123598815738675203', N'dictbiz', N'业务字典', N'menu', N'/system/dictbiz', N'', N'5', N'1', N'0', N'1', N'', N'0'), (N'1164733379658963252', N'1164733379658963251', N'dictbiz_add', N'新增', N'add', N'/system/dictbiz/add', N'plus', N'1', N'2', N'1', N'1', N'', N'0'), (N'1164733379658963253', N'1164733379658963251', N'dictbiz_edit', N'修改', N'edit', N'/system/dictbiz/edit', N'form', N'2', N'2', N'2', N'1', N'', N'0'), (N'1164733379658963254', N'1164733379658963251', N'dictbiz_delete', N'删除', N'delete', N'/api/blade-system/dict-biz/remove', N'delete', N'3', N'2', N'3', N'1', N'', N'0'), (N'1164733379658963255', N'1164733379658963251', N'dictbiz_view', N'查看', N'view', N'/system/dictbiz/view', N'file-text', N'4', N'2', N'2', N'1', N'', N'0'), (N'1164733389658962251', N'1123598815738675298', N'sms', N'短信配置', N'menu', N'/resource/sms', N'', N'3', N'1', N'0', N'1', NULL, N'0'), (N'1164733389658962252', N'1164733389658962251', N'sms_add', N'新增', N'add', N'/resource/sms/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1164733389658962253', N'1164733389658962251', N'sms_edit', N'修改', N'edit', N'/resource/sms/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1164733389658962254', N'1164733389658962251', N'sms_delete', N'删除', N'delete', N'/api/blade-resource/sms/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1164733389658962255', N'1164733389658962251', N'sms_view', N'查看', N'view', N'/resource/sms/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1164733389658962256', N'1164733389658962251', N'sms_enable', N'启用', N'enable', N'/api/blade-resource/sms/enable', N'key', N'5', N'2', N'2', N'2', NULL, N'0'), (N'1164733389658963251', N'1123598815738675298', N'xxljob', N'任务调度', N'menu', N'http://localhost:7009/xxl-job-admin', N'', N'5', N'1', N'0', N'2', N'', N'0'), (N'1164733389668962251', N'1123598815738675203', N'post', N'岗位管理', N'menu', N'/system/post', N'', N'3', N'1', N'0', N'1', NULL, N'0'), (N'1164733389668962252', N'1164733389668962251', N'post_add', N'新增', N'add', N'/system/post/add', N'plus', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1164733389668962253', N'1164733389668962251', N'post_edit', N'修改', N'edit', N'/system/post/edit', N'form', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1164733389668962254', N'1164733389668962251', N'post_delete', N'删除', N'delete', N'/api/blade-system/post/remove', N'delete', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1164733389668962255', N'1164733389668962251', N'post_view', N'查看', N'view', N'/system/post/view', N'file-text', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1164733399668962201', N'0', N'base', N'基础配置', N'menu', N'/base', N'sliders', N'97', N'1', N'0', N'1', NULL, N'0'), (N'1164733399668962202', N'1164733399668962201', N'region', N'行政区划', N'menu', N'/base/region', N'', N'1', N'1', N'0', N'1', NULL, N'0'), (N'1164733399668962203', N'1164733399668962202', N'region_add', N'新增下级', N'add', N'', N'', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1164733399668962204', N'1164733399668962202', N'region_delete', N'删除', N'delete', N'/api/blade-system/region/remove', N'', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1164733399668962205', N'1164733399668962202', N'region_import', N'导入', N'import', N'', N'', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1164733399668962206', N'1164733399668962202', N'region_export', N'导出', N'export', N'', N'', N'4', N'2', N'2', N'1', NULL, N'0'), (N'1164733399668962207', N'1164733399668962202', N'region_debug', N'调试', N'debug', N'', N'', N'5', N'2', N'2', N'1', NULL, N'0'), (N'1164733399669962201', N'1123598815738675298', N'attach', N'附件管理', N'menu', N'/resource/attach', N'', N'2', N'1', N'0', N'1', NULL, N'0'), (N'1164733399669962202', N'1164733399669962201', N'attach_upload', N'上传', N'upload', N'/resource/attach/upload', N'', N'1', N'2', N'1', N'1', NULL, N'0'), (N'1164733399669962203', N'1164733399669962201', N'attach_download', N'下载', N'download', N'/resource/attach/download', N'', N'2', N'2', N'2', N'1', NULL, N'0'), (N'1164733399669962204', N'1164733399669962201', N'attach_delete', N'删除', N'delete', N'/api/blade-resource/attach/remove', N'', N'3', N'2', N'3', N'1', NULL, N'0'), (N'1164733399669962301', N'0', N'report', N'报表管理', N'menu', N'/report', N'bar-chart', N'5', N'1', N'0', N'1', NULL, N'0'), (N'1164733399669962302', N'1164733399669962301', N'report_setting', N'报表配置', N'menu', N'http://localhost:8108/ureport/designer', N'', N'1', N'1', N'0', N'2', NULL, N'0'), (N'1164733399669962303', N'1164733399669962301', N'report_list', N'报表列表', N'menu', N'/report/reportlist', N'', N'2', N'1', N'0', N'1', NULL, N'0'), (N'1164733399669962304', N'1164733399669962301', N'report_notice', N'公告报表', N'menu', N'http://localhost:8108/ureport/preview?_u=blade-notice.ureport.xml', N'', N'3', N'1', N'0', N'2', NULL, N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_notice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_notice]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_notice]
GO

CREATE TABLE [dbo].[blade_notice] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [category] int  NULL,
  [release_time] datetime2(0)  NULL,
  [content] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_notice] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'release_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通知公告表',
'SCHEMA', N'dbo',
'TABLE', N'blade_notice'
GO


-- ----------------------------
-- Records of blade_notice
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_notice] VALUES (N'1123598818738675223', N'000000', N'测试公告', N'3', N'2018-12-31 20:03:31', N'222', N'1123598821738675201', N'1123598813738675201', N'2018-12-05 20:03:31', N'1123598821738675201', N'2018-12-28 11:10:51', N'1', N'0'), (N'1123598818738675224', N'000000', N'测试公告2', N'1', N'2018-12-05 20:03:31', N'333', N'1123598821738675201', N'1123598813738675201', N'2018-12-28 10:32:26', N'1123598821738675201', N'2018-12-28 11:10:34', N'1', N'0'), (N'1123598818738675225', N'000000', N'测试公告3', N'6', N'2018-12-29 00:00:00', N'11111', N'1123598821738675201', N'1123598813738675201', N'2018-12-28 11:03:44', N'1123598821738675201', N'2018-12-28 11:10:28', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_oss
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_oss]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_oss]
GO

CREATE TABLE [dbo].[blade_oss] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [category] int  NULL,
  [oss_code] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [endpoint] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [access_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [secret_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [bucket_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [region] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_oss] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'oss_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'endpoint'
GO

EXEC sp_addextendedproperty
'MS_Description', N'accessKey',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'access_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'secretKey',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'secret_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'空间名',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'bucket_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'app_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地域简称',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'region'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'对象存储表',
'SCHEMA', N'dbo',
'TABLE', N'blade_oss'
GO


-- ----------------------------
-- Records of blade_oss
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_oss] VALUES (N'1132486733992468482', N'000000', N'1', N'minio', N'http://127.0.0.1:9000', N'D99KGE6ZTQXSATTJWU24', N'QyVqGnhIQQE734UYSUFlGOZViE6+ZlDEfUG3NjhJ', N'bladex', N'', N'', N'', N'1123598821738675201', N'1123598813738675201', N'2019-05-26 11:20:52', N'1123598821738675201', N'2019-05-27 08:34:55', N'2', N'0'), (N'1132487155981393922', N'000000', N'2', N'qiniu', N'http://ps458elcs.bkt.clouddn.com', N'N_Loh1ngBqcJovwiAJqR91Ifj2vgOWHOf8AwBA_h', N'AuzuA1KHAbkIndCU0dB3Zfii2O3crHNODDmpxHRS', N'bladex', N'', N'', N'', N'1123598821738675201', N'1123598813738675201', N'2019-05-26 11:22:33', N'1123598821738675201', N'2019-05-26 23:27:56', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_param
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_param]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_param]
GO

CREATE TABLE [dbo].[blade_param] (
  [id] bigint  NOT NULL,
  [param_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [param_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [param_value] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_param] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数名',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'param_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数键',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'param_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数值',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'param_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_param',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数表',
'SCHEMA', N'dbo',
'TABLE', N'blade_param'
GO


-- ----------------------------
-- Records of blade_param
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_param] VALUES (N'1123598819738675201', N'是否开启注册功能', N'account.registerUser', N'true', N'开启注册', N'1123598821738675201', N'1123598813738675201', N'2018-12-28 12:19:01', N'1123598821738675201', N'2018-12-28 12:19:01', N'1', N'0'), (N'1123598819738675202', N'账号初始密码', N'account.initPassword', N'123456', N'初始密码', N'1123598821738675201', N'1123598813738675201', N'2018-12-28 12:19:01', N'1123598821738675201', N'2018-12-28 12:19:01', N'1', N'0'), (N'1238706101399142402', N'租户默认管理密码', N'tenant.default.password', N'admin', NULL, N'1123598821738675201', N'1123598813738675201', N'2020-03-14 13:58:43', N'1123598821738675201', N'2020-03-14 13:58:43', N'1', N'0'), (N'1238706160295559170', N'租户默认账号额度', N'tenant.default.accountNumber', N'100', NULL, N'1123598821738675201', N'1123598813738675201', N'2020-03-14 13:58:57', N'1123598821738675201', N'2020-03-14 13:58:57', N'1', N'0'), (N'1238706330076790786', N'租户默认菜单集合', N'tenant.default.menuCode', N'desk,flow,work,monitor,resource,role,user,dept,post,dictbiz,topmenu', NULL, N'1123598821738675201', N'1123598813738675201', N'2020-03-14 13:59:38', N'1123598821738675201', N'2020-03-14 13:59:38', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_post
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_post]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_post]
GO

CREATE TABLE [dbo].[blade_post] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [category] int  NULL,
  [post_code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [post_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_post] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'post_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'post_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位描述',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_post',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位表',
'SCHEMA', N'dbo',
'TABLE', N'blade_post'
GO


-- ----------------------------
-- Records of blade_post
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_post] VALUES (N'1123598817738675201', N'000000', N'1', N'ceo', N'首席执行官', N'1', N'总经理', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0'), (N'1123598817738675202', N'000000', N'1', N'coo', N'首席运营官', N'2', N'常务总经理', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0'), (N'1123598817738675203', N'000000', N'1', N'cfo', N'首席财务官', N'3', N'财务总经理', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0'), (N'1123598817738675204', N'000000', N'1', N'cto', N'首席技术官', N'4', N'技术总监', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0'), (N'1123598817738675205', N'000000', N'1', N'cio', N'首席信息官', N'5', N'信息总监', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0'), (N'1123598817738675206', N'000000', N'2', N'pm', N'技术经理', N'6', N'研发和产品是永远的朋友', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0'), (N'1123598817738675207', N'000000', N'2', N'hrm', N'人力经理', N'7', N'人力资源部门工作管理者', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0'), (N'1123598817738675208', N'000000', N'3', N'staff', N'普通员工', N'8', N'普通员工', N'1123598821738675201', N'1123598813738675201', N'2020-04-01 00:00:00', N'1123598821738675201', N'2020-04-01 00:00:00', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_process_leave
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_process_leave]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_process_leave]
GO

CREATE TABLE [dbo].[blade_process_leave] (
  [id] bigint  NOT NULL,
  [process_definition_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [process_instance_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [start_time] datetime2(0)  NULL,
  [end_time] datetime2(0)  NULL,
  [reason] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [task_user] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [apply_time] datetime2(0)  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_process_leave] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'process_definition_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程实例主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'process_instance_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'start_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假理由',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'reason'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第一级审批人',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'task_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'apply_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程请假业务表',
'SCHEMA', N'dbo',
'TABLE', N'blade_process_leave'
GO


-- ----------------------------
-- Table structure for blade_region
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_region]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_region]
GO

CREATE TABLE [dbo].[blade_region] (
  [code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [parent_code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [ancestors] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [province_code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [province_name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [city_code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [city_name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [district_code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [district_name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [town_code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [town_name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [village_code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [village_name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [level] int  NULL,
  [sort] int  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[blade_region] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'parent_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'祖区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'ancestors'
GO

EXEC sp_addextendedproperty
'MS_Description', N'区划名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'省级区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'province_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'省级名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'province_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'市级区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'city_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'市级名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'city_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'区级区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'district_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'区级名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'district_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'镇级区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'town_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'镇级名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'town_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'村级区划编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'village_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'村级名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'village_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'层级',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'level'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_region',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'行政区划表',
'SCHEMA', N'dbo',
'TABLE', N'blade_region'
GO


-- ----------------------------
-- Records of blade_region
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_region] VALUES (N'00', N'0', N'0', N'中华人民共和国', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'0', N'1', N''), (N'11', N'00', N'00', N'北京市', N'11', N'北京市', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'1101', N'11', N'00,11', N'北京市', N'11', N'北京市', N'1101', N'北京市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'110101', N'1101', N'00,11,1101', N'东城区', N'11', N'北京市', N'1101', N'北京市', N'110101', N'东城区', N'', N'', N'', N'', N'3', N'1', N''), (N'110102', N'1101', N'00,11,1101', N'西城区', N'11', N'北京市', N'1101', N'北京市', N'110102', N'西城区', N'', N'', N'', N'', N'3', N'1', N''), (N'110105', N'1101', N'00,11,1101', N'朝阳区', N'11', N'北京市', N'1101', N'北京市', N'110105', N'朝阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'110106', N'1101', N'00,11,1101', N'丰台区', N'11', N'北京市', N'1101', N'北京市', N'110106', N'丰台区', N'', N'', N'', N'', N'3', N'1', N''), (N'110107', N'1101', N'00,11,1101', N'石景山区', N'11', N'北京市', N'1101', N'北京市', N'110107', N'石景山区', N'', N'', N'', N'', N'3', N'1', N''), (N'110108', N'1101', N'00,11,1101', N'海淀区', N'11', N'北京市', N'1101', N'北京市', N'110108', N'海淀区', N'', N'', N'', N'', N'3', N'1', N''), (N'110109', N'1101', N'00,11,1101', N'门头沟区', N'11', N'北京市', N'1101', N'北京市', N'110109', N'门头沟区', N'', N'', N'', N'', N'3', N'1', N''), (N'110111', N'1101', N'00,11,1101', N'房山区', N'11', N'北京市', N'1101', N'北京市', N'110111', N'房山区', N'', N'', N'', N'', N'3', N'1', N''), (N'110112', N'1101', N'00,11,1101', N'通州区', N'11', N'北京市', N'1101', N'北京市', N'110112', N'通州区', N'', N'', N'', N'', N'3', N'1', N''), (N'110113', N'1101', N'00,11,1101', N'顺义区', N'11', N'北京市', N'1101', N'北京市', N'110113', N'顺义区', N'', N'', N'', N'', N'3', N'1', N''), (N'110114', N'1101', N'00,11,1101', N'昌平区', N'11', N'北京市', N'1101', N'北京市', N'110114', N'昌平区', N'', N'', N'', N'', N'3', N'1', N''), (N'110115', N'1101', N'00,11,1101', N'大兴区', N'11', N'北京市', N'1101', N'北京市', N'110115', N'大兴区', N'', N'', N'', N'', N'3', N'1', N''), (N'110116', N'1101', N'00,11,1101', N'怀柔区', N'11', N'北京市', N'1101', N'北京市', N'110116', N'怀柔区', N'', N'', N'', N'', N'3', N'1', N''), (N'110117', N'1101', N'00,11,1101', N'平谷区', N'11', N'北京市', N'1101', N'北京市', N'110117', N'平谷区', N'', N'', N'', N'', N'3', N'1', N''), (N'110118', N'1101', N'00,11,1101', N'密云区', N'11', N'北京市', N'1101', N'北京市', N'110118', N'密云区', N'', N'', N'', N'', N'3', N'1', N''), (N'110119', N'1101', N'00,11,1101', N'延庆区', N'11', N'北京市', N'1101', N'北京市', N'110119', N'延庆区', N'', N'', N'', N'', N'3', N'1', N''), (N'12', N'00', N'00', N'天津市', N'12', N'天津市', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'1201', N'12', N'00,12', N'天津市', N'12', N'天津市', N'1201', N'天津市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'120101', N'1201', N'00,12,1201', N'和平区', N'12', N'天津市', N'1201', N'天津市', N'120101', N'和平区', N'', N'', N'', N'', N'3', N'1', N''), (N'120102', N'1201', N'00,12,1201', N'河东区', N'12', N'天津市', N'1201', N'天津市', N'120102', N'河东区', N'', N'', N'', N'', N'3', N'1', N''), (N'120103', N'1201', N'00,12,1201', N'河西区', N'12', N'天津市', N'1201', N'天津市', N'120103', N'河西区', N'', N'', N'', N'', N'3', N'1', N''), (N'120104', N'1201', N'00,12,1201', N'南开区', N'12', N'天津市', N'1201', N'天津市', N'120104', N'南开区', N'', N'', N'', N'', N'3', N'1', N''), (N'120105', N'1201', N'00,12,1201', N'河北区', N'12', N'天津市', N'1201', N'天津市', N'120105', N'河北区', N'', N'', N'', N'', N'3', N'1', N''), (N'120106', N'1201', N'00,12,1201', N'红桥区', N'12', N'天津市', N'1201', N'天津市', N'120106', N'红桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'120110', N'1201', N'00,12,1201', N'东丽区', N'12', N'天津市', N'1201', N'天津市', N'120110', N'东丽区', N'', N'', N'', N'', N'3', N'1', N''), (N'120111', N'1201', N'00,12,1201', N'西青区', N'12', N'天津市', N'1201', N'天津市', N'120111', N'西青区', N'', N'', N'', N'', N'3', N'1', N''), (N'120112', N'1201', N'00,12,1201', N'津南区', N'12', N'天津市', N'1201', N'天津市', N'120112', N'津南区', N'', N'', N'', N'', N'3', N'1', N''), (N'120113', N'1201', N'00,12,1201', N'北辰区', N'12', N'天津市', N'1201', N'天津市', N'120113', N'北辰区', N'', N'', N'', N'', N'3', N'1', N''), (N'120114', N'1201', N'00,12,1201', N'武清区', N'12', N'天津市', N'1201', N'天津市', N'120114', N'武清区', N'', N'', N'', N'', N'3', N'1', N''), (N'120115', N'1201', N'00,12,1201', N'宝坻区', N'12', N'天津市', N'1201', N'天津市', N'120115', N'宝坻区', N'', N'', N'', N'', N'3', N'1', N''), (N'120116', N'1201', N'00,12,1201', N'滨海新区', N'12', N'天津市', N'1201', N'天津市', N'120116', N'滨海新区', N'', N'', N'', N'', N'3', N'1', N''), (N'120117', N'1201', N'00,12,1201', N'宁河区', N'12', N'天津市', N'1201', N'天津市', N'120117', N'宁河区', N'', N'', N'', N'', N'3', N'1', N''), (N'120118', N'1201', N'00,12,1201', N'静海区', N'12', N'天津市', N'1201', N'天津市', N'120118', N'静海区', N'', N'', N'', N'', N'3', N'1', N''), (N'120119', N'1201', N'00,12,1201', N'蓟州区', N'12', N'天津市', N'1201', N'天津市', N'120119', N'蓟州区', N'', N'', N'', N'', N'3', N'1', N''), (N'13', N'00', N'00', N'河北省', N'13', N'河北省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'1301', N'13', N'00,13', N'石家庄市', N'13', N'河北省', N'1301', N'石家庄市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130102', N'1301', N'00,13,1301', N'长安区', N'13', N'河北省', N'1301', N'石家庄市', N'130102', N'长安区', N'', N'', N'', N'', N'3', N'1', N''), (N'130104', N'1301', N'00,13,1301', N'桥西区', N'13', N'河北省', N'1301', N'石家庄市', N'130104', N'桥西区', N'', N'', N'', N'', N'3', N'1', N''), (N'130105', N'1301', N'00,13,1301', N'新华区', N'13', N'河北省', N'1301', N'石家庄市', N'130105', N'新华区', N'', N'', N'', N'', N'3', N'1', N''), (N'130107', N'1301', N'00,13,1301', N'井陉矿区', N'13', N'河北省', N'1301', N'石家庄市', N'130107', N'井陉矿区', N'', N'', N'', N'', N'3', N'1', N''), (N'130108', N'1301', N'00,13,1301', N'裕华区', N'13', N'河北省', N'1301', N'石家庄市', N'130108', N'裕华区', N'', N'', N'', N'', N'3', N'1', N''), (N'130109', N'1301', N'00,13,1301', N'藁城区', N'13', N'河北省', N'1301', N'石家庄市', N'130109', N'藁城区', N'', N'', N'', N'', N'3', N'1', N''), (N'130110', N'1301', N'00,13,1301', N'鹿泉区', N'13', N'河北省', N'1301', N'石家庄市', N'130110', N'鹿泉区', N'', N'', N'', N'', N'3', N'1', N''), (N'130111', N'1301', N'00,13,1301', N'栾城区', N'13', N'河北省', N'1301', N'石家庄市', N'130111', N'栾城区', N'', N'', N'', N'', N'3', N'1', N''), (N'130121', N'1301', N'00,13,1301', N'井陉县', N'13', N'河北省', N'1301', N'石家庄市', N'130121', N'井陉县', N'', N'', N'', N'', N'3', N'1', N''), (N'130123', N'1301', N'00,13,1301', N'正定县', N'13', N'河北省', N'1301', N'石家庄市', N'130123', N'正定县', N'', N'', N'', N'', N'3', N'1', N''), (N'130125', N'1301', N'00,13,1301', N'行唐县', N'13', N'河北省', N'1301', N'石家庄市', N'130125', N'行唐县', N'', N'', N'', N'', N'3', N'1', N''), (N'130126', N'1301', N'00,13,1301', N'灵寿县', N'13', N'河北省', N'1301', N'石家庄市', N'130126', N'灵寿县', N'', N'', N'', N'', N'3', N'1', N''), (N'130127', N'1301', N'00,13,1301', N'高邑县', N'13', N'河北省', N'1301', N'石家庄市', N'130127', N'高邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'130128', N'1301', N'00,13,1301', N'深泽县', N'13', N'河北省', N'1301', N'石家庄市', N'130128', N'深泽县', N'', N'', N'', N'', N'3', N'1', N''), (N'130129', N'1301', N'00,13,1301', N'赞皇县', N'13', N'河北省', N'1301', N'石家庄市', N'130129', N'赞皇县', N'', N'', N'', N'', N'3', N'1', N''), (N'130130', N'1301', N'00,13,1301', N'无极县', N'13', N'河北省', N'1301', N'石家庄市', N'130130', N'无极县', N'', N'', N'', N'', N'3', N'1', N''), (N'130131', N'1301', N'00,13,1301', N'平山县', N'13', N'河北省', N'1301', N'石家庄市', N'130131', N'平山县', N'', N'', N'', N'', N'3', N'1', N''), (N'130132', N'1301', N'00,13,1301', N'元氏县', N'13', N'河北省', N'1301', N'石家庄市', N'130132', N'元氏县', N'', N'', N'', N'', N'3', N'1', N''), (N'130133', N'1301', N'00,13,1301', N'赵县', N'13', N'河北省', N'1301', N'石家庄市', N'130133', N'赵县', N'', N'', N'', N'', N'3', N'1', N''), (N'130181', N'1301', N'00,13,1301', N'辛集市', N'13', N'河北省', N'1301', N'石家庄市', N'130181', N'辛集市', N'', N'', N'', N'', N'3', N'1', N''), (N'130183', N'1301', N'00,13,1301', N'晋州市', N'13', N'河北省', N'1301', N'石家庄市', N'130183', N'晋州市', N'', N'', N'', N'', N'3', N'1', N''), (N'130184', N'1301', N'00,13,1301', N'新乐市', N'13', N'河北省', N'1301', N'石家庄市', N'130184', N'新乐市', N'', N'', N'', N'', N'3', N'1', N''), (N'1302', N'13', N'00,13', N'唐山市', N'13', N'河北省', N'1302', N'唐山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130202', N'1302', N'00,13,1302', N'路南区', N'13', N'河北省', N'1302', N'唐山市', N'130202', N'路南区', N'', N'', N'', N'', N'3', N'1', N''), (N'130203', N'1302', N'00,13,1302', N'路北区', N'13', N'河北省', N'1302', N'唐山市', N'130203', N'路北区', N'', N'', N'', N'', N'3', N'1', N''), (N'130204', N'1302', N'00,13,1302', N'古冶区', N'13', N'河北省', N'1302', N'唐山市', N'130204', N'古冶区', N'', N'', N'', N'', N'3', N'1', N''), (N'130205', N'1302', N'00,13,1302', N'开平区', N'13', N'河北省', N'1302', N'唐山市', N'130205', N'开平区', N'', N'', N'', N'', N'3', N'1', N''), (N'130207', N'1302', N'00,13,1302', N'丰南区', N'13', N'河北省', N'1302', N'唐山市', N'130207', N'丰南区', N'', N'', N'', N'', N'3', N'1', N''), (N'130208', N'1302', N'00,13,1302', N'丰润区', N'13', N'河北省', N'1302', N'唐山市', N'130208', N'丰润区', N'', N'', N'', N'', N'3', N'1', N''), (N'130209', N'1302', N'00,13,1302', N'曹妃甸区', N'13', N'河北省', N'1302', N'唐山市', N'130209', N'曹妃甸区', N'', N'', N'', N'', N'3', N'1', N''), (N'130224', N'1302', N'00,13,1302', N'滦南县', N'13', N'河北省', N'1302', N'唐山市', N'130224', N'滦南县', N'', N'', N'', N'', N'3', N'1', N''), (N'130225', N'1302', N'00,13,1302', N'乐亭县', N'13', N'河北省', N'1302', N'唐山市', N'130225', N'乐亭县', N'', N'', N'', N'', N'3', N'1', N''), (N'130227', N'1302', N'00,13,1302', N'迁西县', N'13', N'河北省', N'1302', N'唐山市', N'130227', N'迁西县', N'', N'', N'', N'', N'3', N'1', N''), (N'130229', N'1302', N'00,13,1302', N'玉田县', N'13', N'河北省', N'1302', N'唐山市', N'130229', N'玉田县', N'', N'', N'', N'', N'3', N'1', N''), (N'130281', N'1302', N'00,13,1302', N'遵化市', N'13', N'河北省', N'1302', N'唐山市', N'130281', N'遵化市', N'', N'', N'', N'', N'3', N'1', N''), (N'130283', N'1302', N'00,13,1302', N'迁安市', N'13', N'河北省', N'1302', N'唐山市', N'130283', N'迁安市', N'', N'', N'', N'', N'3', N'1', N''), (N'130284', N'1302', N'00,13,1302', N'滦州市', N'13', N'河北省', N'1302', N'唐山市', N'130284', N'滦州市', N'', N'', N'', N'', N'3', N'1', N''), (N'1303', N'13', N'00,13', N'秦皇岛市', N'13', N'河北省', N'1303', N'秦皇岛市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130302', N'1303', N'00,13,1303', N'海港区', N'13', N'河北省', N'1303', N'秦皇岛市', N'130302', N'海港区', N'', N'', N'', N'', N'3', N'1', N''), (N'130303', N'1303', N'00,13,1303', N'山海关区', N'13', N'河北省', N'1303', N'秦皇岛市', N'130303', N'山海关区', N'', N'', N'', N'', N'3', N'1', N''), (N'130304', N'1303', N'00,13,1303', N'北戴河区', N'13', N'河北省', N'1303', N'秦皇岛市', N'130304', N'北戴河区', N'', N'', N'', N'', N'3', N'1', N''), (N'130306', N'1303', N'00,13,1303', N'抚宁区', N'13', N'河北省', N'1303', N'秦皇岛市', N'130306', N'抚宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'130321', N'1303', N'00,13,1303', N'青龙满族自治县', N'13', N'河北省', N'1303', N'秦皇岛市', N'130321', N'青龙满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'130322', N'1303', N'00,13,1303', N'昌黎县', N'13', N'河北省', N'1303', N'秦皇岛市', N'130322', N'昌黎县', N'', N'', N'', N'', N'3', N'1', N''), (N'130324', N'1303', N'00,13,1303', N'卢龙县', N'13', N'河北省', N'1303', N'秦皇岛市', N'130324', N'卢龙县', N'', N'', N'', N'', N'3', N'1', N''), (N'1304', N'13', N'00,13', N'邯郸市', N'13', N'河北省', N'1304', N'邯郸市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130402', N'1304', N'00,13,1304', N'邯山区', N'13', N'河北省', N'1304', N'邯郸市', N'130402', N'邯山区', N'', N'', N'', N'', N'3', N'1', N''), (N'130403', N'1304', N'00,13,1304', N'丛台区', N'13', N'河北省', N'1304', N'邯郸市', N'130403', N'丛台区', N'', N'', N'', N'', N'3', N'1', N''), (N'130404', N'1304', N'00,13,1304', N'复兴区', N'13', N'河北省', N'1304', N'邯郸市', N'130404', N'复兴区', N'', N'', N'', N'', N'3', N'1', N''), (N'130406', N'1304', N'00,13,1304', N'峰峰矿区', N'13', N'河北省', N'1304', N'邯郸市', N'130406', N'峰峰矿区', N'', N'', N'', N'', N'3', N'1', N''), (N'130407', N'1304', N'00,13,1304', N'肥乡区', N'13', N'河北省', N'1304', N'邯郸市', N'130407', N'肥乡区', N'', N'', N'', N'', N'3', N'1', N''), (N'130408', N'1304', N'00,13,1304', N'永年区', N'13', N'河北省', N'1304', N'邯郸市', N'130408', N'永年区', N'', N'', N'', N'', N'3', N'1', N''), (N'130423', N'1304', N'00,13,1304', N'临漳县', N'13', N'河北省', N'1304', N'邯郸市', N'130423', N'临漳县', N'', N'', N'', N'', N'3', N'1', N''), (N'130424', N'1304', N'00,13,1304', N'成安县', N'13', N'河北省', N'1304', N'邯郸市', N'130424', N'成安县', N'', N'', N'', N'', N'3', N'1', N''), (N'130425', N'1304', N'00,13,1304', N'大名县', N'13', N'河北省', N'1304', N'邯郸市', N'130425', N'大名县', N'', N'', N'', N'', N'3', N'1', N''), (N'130426', N'1304', N'00,13,1304', N'涉县', N'13', N'河北省', N'1304', N'邯郸市', N'130426', N'涉县', N'', N'', N'', N'', N'3', N'1', N''), (N'130427', N'1304', N'00,13,1304', N'磁县', N'13', N'河北省', N'1304', N'邯郸市', N'130427', N'磁县', N'', N'', N'', N'', N'3', N'1', N''), (N'130430', N'1304', N'00,13,1304', N'邱县', N'13', N'河北省', N'1304', N'邯郸市', N'130430', N'邱县', N'', N'', N'', N'', N'3', N'1', N''), (N'130431', N'1304', N'00,13,1304', N'鸡泽县', N'13', N'河北省', N'1304', N'邯郸市', N'130431', N'鸡泽县', N'', N'', N'', N'', N'3', N'1', N''), (N'130432', N'1304', N'00,13,1304', N'广平县', N'13', N'河北省', N'1304', N'邯郸市', N'130432', N'广平县', N'', N'', N'', N'', N'3', N'1', N''), (N'130433', N'1304', N'00,13,1304', N'馆陶县', N'13', N'河北省', N'1304', N'邯郸市', N'130433', N'馆陶县', N'', N'', N'', N'', N'3', N'1', N''), (N'130434', N'1304', N'00,13,1304', N'魏县', N'13', N'河北省', N'1304', N'邯郸市', N'130434', N'魏县', N'', N'', N'', N'', N'3', N'1', N''), (N'130435', N'1304', N'00,13,1304', N'曲周县', N'13', N'河北省', N'1304', N'邯郸市', N'130435', N'曲周县', N'', N'', N'', N'', N'3', N'1', N''), (N'130481', N'1304', N'00,13,1304', N'武安市', N'13', N'河北省', N'1304', N'邯郸市', N'130481', N'武安市', N'', N'', N'', N'', N'3', N'1', N''), (N'1305', N'13', N'00,13', N'邢台市', N'13', N'河北省', N'1305', N'邢台市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130502', N'1305', N'00,13,1305', N'桥东区', N'13', N'河北省', N'1305', N'邢台市', N'130502', N'桥东区', N'', N'', N'', N'', N'3', N'1', N''), (N'130503', N'1305', N'00,13,1305', N'桥西区', N'13', N'河北省', N'1305', N'邢台市', N'130503', N'桥西区', N'', N'', N'', N'', N'3', N'1', N''), (N'130521', N'1305', N'00,13,1305', N'邢台县', N'13', N'河北省', N'1305', N'邢台市', N'130521', N'邢台县', N'', N'', N'', N'', N'3', N'1', N''), (N'130522', N'1305', N'00,13,1305', N'临城县', N'13', N'河北省', N'1305', N'邢台市', N'130522', N'临城县', N'', N'', N'', N'', N'3', N'1', N''), (N'130523', N'1305', N'00,13,1305', N'内丘县', N'13', N'河北省', N'1305', N'邢台市', N'130523', N'内丘县', N'', N'', N'', N'', N'3', N'1', N''), (N'130524', N'1305', N'00,13,1305', N'柏乡县', N'13', N'河北省', N'1305', N'邢台市', N'130524', N'柏乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'130525', N'1305', N'00,13,1305', N'隆尧县', N'13', N'河北省', N'1305', N'邢台市', N'130525', N'隆尧县', N'', N'', N'', N'', N'3', N'1', N''), (N'130526', N'1305', N'00,13,1305', N'任县', N'13', N'河北省', N'1305', N'邢台市', N'130526', N'任县', N'', N'', N'', N'', N'3', N'1', N''), (N'130527', N'1305', N'00,13,1305', N'南和县', N'13', N'河北省', N'1305', N'邢台市', N'130527', N'南和县', N'', N'', N'', N'', N'3', N'1', N''), (N'130528', N'1305', N'00,13,1305', N'宁晋县', N'13', N'河北省', N'1305', N'邢台市', N'130528', N'宁晋县', N'', N'', N'', N'', N'3', N'1', N''), (N'130529', N'1305', N'00,13,1305', N'巨鹿县', N'13', N'河北省', N'1305', N'邢台市', N'130529', N'巨鹿县', N'', N'', N'', N'', N'3', N'1', N''), (N'130530', N'1305', N'00,13,1305', N'新河县', N'13', N'河北省', N'1305', N'邢台市', N'130530', N'新河县', N'', N'', N'', N'', N'3', N'1', N''), (N'130531', N'1305', N'00,13,1305', N'广宗县', N'13', N'河北省', N'1305', N'邢台市', N'130531', N'广宗县', N'', N'', N'', N'', N'3', N'1', N''), (N'130532', N'1305', N'00,13,1305', N'平乡县', N'13', N'河北省', N'1305', N'邢台市', N'130532', N'平乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'130533', N'1305', N'00,13,1305', N'威县', N'13', N'河北省', N'1305', N'邢台市', N'130533', N'威县', N'', N'', N'', N'', N'3', N'1', N''), (N'130534', N'1305', N'00,13,1305', N'清河县', N'13', N'河北省', N'1305', N'邢台市', N'130534', N'清河县', N'', N'', N'', N'', N'3', N'1', N''), (N'130535', N'1305', N'00,13,1305', N'临西县', N'13', N'河北省', N'1305', N'邢台市', N'130535', N'临西县', N'', N'', N'', N'', N'3', N'1', N''), (N'130581', N'1305', N'00,13,1305', N'南宫市', N'13', N'河北省', N'1305', N'邢台市', N'130581', N'南宫市', N'', N'', N'', N'', N'3', N'1', N''), (N'130582', N'1305', N'00,13,1305', N'沙河市', N'13', N'河北省', N'1305', N'邢台市', N'130582', N'沙河市', N'', N'', N'', N'', N'3', N'1', N''), (N'1306', N'13', N'00,13', N'保定市', N'13', N'河北省', N'1306', N'保定市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130602', N'1306', N'00,13,1306', N'竞秀区', N'13', N'河北省', N'1306', N'保定市', N'130602', N'竞秀区', N'', N'', N'', N'', N'3', N'1', N''), (N'130606', N'1306', N'00,13,1306', N'莲池区', N'13', N'河北省', N'1306', N'保定市', N'130606', N'莲池区', N'', N'', N'', N'', N'3', N'1', N''), (N'130607', N'1306', N'00,13,1306', N'满城区', N'13', N'河北省', N'1306', N'保定市', N'130607', N'满城区', N'', N'', N'', N'', N'3', N'1', N''), (N'130608', N'1306', N'00,13,1306', N'清苑区', N'13', N'河北省', N'1306', N'保定市', N'130608', N'清苑区', N'', N'', N'', N'', N'3', N'1', N''), (N'130609', N'1306', N'00,13,1306', N'徐水区', N'13', N'河北省', N'1306', N'保定市', N'130609', N'徐水区', N'', N'', N'', N'', N'3', N'1', N''), (N'130623', N'1306', N'00,13,1306', N'涞水县', N'13', N'河北省', N'1306', N'保定市', N'130623', N'涞水县', N'', N'', N'', N'', N'3', N'1', N''), (N'130624', N'1306', N'00,13,1306', N'阜平县', N'13', N'河北省', N'1306', N'保定市', N'130624', N'阜平县', N'', N'', N'', N'', N'3', N'1', N''), (N'130626', N'1306', N'00,13,1306', N'定兴县', N'13', N'河北省', N'1306', N'保定市', N'130626', N'定兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'130627', N'1306', N'00,13,1306', N'唐县', N'13', N'河北省', N'1306', N'保定市', N'130627', N'唐县', N'', N'', N'', N'', N'3', N'1', N''), (N'130628', N'1306', N'00,13,1306', N'高阳县', N'13', N'河北省', N'1306', N'保定市', N'130628', N'高阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'130629', N'1306', N'00,13,1306', N'容城县', N'13', N'河北省', N'1306', N'保定市', N'130629', N'容城县', N'', N'', N'', N'', N'3', N'1', N''), (N'130630', N'1306', N'00,13,1306', N'涞源县', N'13', N'河北省', N'1306', N'保定市', N'130630', N'涞源县', N'', N'', N'', N'', N'3', N'1', N''), (N'130631', N'1306', N'00,13,1306', N'望都县', N'13', N'河北省', N'1306', N'保定市', N'130631', N'望都县', N'', N'', N'', N'', N'3', N'1', N''), (N'130632', N'1306', N'00,13,1306', N'安新县', N'13', N'河北省', N'1306', N'保定市', N'130632', N'安新县', N'', N'', N'', N'', N'3', N'1', N''), (N'130633', N'1306', N'00,13,1306', N'易县', N'13', N'河北省', N'1306', N'保定市', N'130633', N'易县', N'', N'', N'', N'', N'3', N'1', N''), (N'130634', N'1306', N'00,13,1306', N'曲阳县', N'13', N'河北省', N'1306', N'保定市', N'130634', N'曲阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'130635', N'1306', N'00,13,1306', N'蠡县', N'13', N'河北省', N'1306', N'保定市', N'130635', N'蠡县', N'', N'', N'', N'', N'3', N'1', N''), (N'130636', N'1306', N'00,13,1306', N'顺平县', N'13', N'河北省', N'1306', N'保定市', N'130636', N'顺平县', N'', N'', N'', N'', N'3', N'1', N''), (N'130637', N'1306', N'00,13,1306', N'博野县', N'13', N'河北省', N'1306', N'保定市', N'130637', N'博野县', N'', N'', N'', N'', N'3', N'1', N''), (N'130638', N'1306', N'00,13,1306', N'雄县', N'13', N'河北省', N'1306', N'保定市', N'130638', N'雄县', N'', N'', N'', N'', N'3', N'1', N''), (N'130681', N'1306', N'00,13,1306', N'涿州市', N'13', N'河北省', N'1306', N'保定市', N'130681', N'涿州市', N'', N'', N'', N'', N'3', N'1', N''), (N'130682', N'1306', N'00,13,1306', N'定州市', N'13', N'河北省', N'1306', N'保定市', N'130682', N'定州市', N'', N'', N'', N'', N'3', N'1', N''), (N'130683', N'1306', N'00,13,1306', N'安国市', N'13', N'河北省', N'1306', N'保定市', N'130683', N'安国市', N'', N'', N'', N'', N'3', N'1', N''), (N'130684', N'1306', N'00,13,1306', N'高碑店市', N'13', N'河北省', N'1306', N'保定市', N'130684', N'高碑店市', N'', N'', N'', N'', N'3', N'1', N''), (N'1307', N'13', N'00,13', N'张家口市', N'13', N'河北省', N'1307', N'张家口市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130702', N'1307', N'00,13,1307', N'桥东区', N'13', N'河北省', N'1307', N'张家口市', N'130702', N'桥东区', N'', N'', N'', N'', N'3', N'1', N''), (N'130703', N'1307', N'00,13,1307', N'桥西区', N'13', N'河北省', N'1307', N'张家口市', N'130703', N'桥西区', N'', N'', N'', N'', N'3', N'1', N''), (N'130705', N'1307', N'00,13,1307', N'宣化区', N'13', N'河北省', N'1307', N'张家口市', N'130705', N'宣化区', N'', N'', N'', N'', N'3', N'1', N''), (N'130706', N'1307', N'00,13,1307', N'下花园区', N'13', N'河北省', N'1307', N'张家口市', N'130706', N'下花园区', N'', N'', N'', N'', N'3', N'1', N''), (N'130708', N'1307', N'00,13,1307', N'万全区', N'13', N'河北省', N'1307', N'张家口市', N'130708', N'万全区', N'', N'', N'', N'', N'3', N'1', N''), (N'130709', N'1307', N'00,13,1307', N'崇礼区', N'13', N'河北省', N'1307', N'张家口市', N'130709', N'崇礼区', N'', N'', N'', N'', N'3', N'1', N''), (N'130722', N'1307', N'00,13,1307', N'张北县', N'13', N'河北省', N'1307', N'张家口市', N'130722', N'张北县', N'', N'', N'', N'', N'3', N'1', N''), (N'130723', N'1307', N'00,13,1307', N'康保县', N'13', N'河北省', N'1307', N'张家口市', N'130723', N'康保县', N'', N'', N'', N'', N'3', N'1', N''), (N'130724', N'1307', N'00,13,1307', N'沽源县', N'13', N'河北省', N'1307', N'张家口市', N'130724', N'沽源县', N'', N'', N'', N'', N'3', N'1', N''), (N'130725', N'1307', N'00,13,1307', N'尚义县', N'13', N'河北省', N'1307', N'张家口市', N'130725', N'尚义县', N'', N'', N'', N'', N'3', N'1', N''), (N'130726', N'1307', N'00,13,1307', N'蔚县', N'13', N'河北省', N'1307', N'张家口市', N'130726', N'蔚县', N'', N'', N'', N'', N'3', N'1', N''), (N'130727', N'1307', N'00,13,1307', N'阳原县', N'13', N'河北省', N'1307', N'张家口市', N'130727', N'阳原县', N'', N'', N'', N'', N'3', N'1', N''), (N'130728', N'1307', N'00,13,1307', N'怀安县', N'13', N'河北省', N'1307', N'张家口市', N'130728', N'怀安县', N'', N'', N'', N'', N'3', N'1', N''), (N'130730', N'1307', N'00,13,1307', N'怀来县', N'13', N'河北省', N'1307', N'张家口市', N'130730', N'怀来县', N'', N'', N'', N'', N'3', N'1', N''), (N'130731', N'1307', N'00,13,1307', N'涿鹿县', N'13', N'河北省', N'1307', N'张家口市', N'130731', N'涿鹿县', N'', N'', N'', N'', N'3', N'1', N''), (N'130732', N'1307', N'00,13,1307', N'赤城县', N'13', N'河北省', N'1307', N'张家口市', N'130732', N'赤城县', N'', N'', N'', N'', N'3', N'1', N''), (N'1308', N'13', N'00,13', N'承德市', N'13', N'河北省', N'1308', N'承德市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130802', N'1308', N'00,13,1308', N'双桥区', N'13', N'河北省', N'1308', N'承德市', N'130802', N'双桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'130803', N'1308', N'00,13,1308', N'双滦区', N'13', N'河北省', N'1308', N'承德市', N'130803', N'双滦区', N'', N'', N'', N'', N'3', N'1', N''), (N'130804', N'1308', N'00,13,1308', N'鹰手营子矿区', N'13', N'河北省', N'1308', N'承德市', N'130804', N'鹰手营子矿区', N'', N'', N'', N'', N'3', N'1', N''), (N'130821', N'1308', N'00,13,1308', N'承德县', N'13', N'河北省', N'1308', N'承德市', N'130821', N'承德县', N'', N'', N'', N'', N'3', N'1', N''), (N'130822', N'1308', N'00,13,1308', N'兴隆县', N'13', N'河北省', N'1308', N'承德市', N'130822', N'兴隆县', N'', N'', N'', N'', N'3', N'1', N''), (N'130824', N'1308', N'00,13,1308', N'滦平县', N'13', N'河北省', N'1308', N'承德市', N'130824', N'滦平县', N'', N'', N'', N'', N'3', N'1', N''), (N'130825', N'1308', N'00,13,1308', N'隆化县', N'13', N'河北省', N'1308', N'承德市', N'130825', N'隆化县', N'', N'', N'', N'', N'3', N'1', N''), (N'130826', N'1308', N'00,13,1308', N'丰宁满族自治县', N'13', N'河北省', N'1308', N'承德市', N'130826', N'丰宁满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'130827', N'1308', N'00,13,1308', N'宽城满族自治县', N'13', N'河北省', N'1308', N'承德市', N'130827', N'宽城满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'130828', N'1308', N'00,13,1308', N'围场满族蒙古族自治县', N'13', N'河北省', N'1308', N'承德市', N'130828', N'围场满族蒙古族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'130881', N'1308', N'00,13,1308', N'平泉市', N'13', N'河北省', N'1308', N'承德市', N'130881', N'平泉市', N'', N'', N'', N'', N'3', N'1', N''), (N'1309', N'13', N'00,13', N'沧州市', N'13', N'河北省', N'1309', N'沧州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'130902', N'1309', N'00,13,1309', N'新华区', N'13', N'河北省', N'1309', N'沧州市', N'130902', N'新华区', N'', N'', N'', N'', N'3', N'1', N''), (N'130903', N'1309', N'00,13,1309', N'运河区', N'13', N'河北省', N'1309', N'沧州市', N'130903', N'运河区', N'', N'', N'', N'', N'3', N'1', N''), (N'130921', N'1309', N'00,13,1309', N'沧县', N'13', N'河北省', N'1309', N'沧州市', N'130921', N'沧县', N'', N'', N'', N'', N'3', N'1', N''), (N'130922', N'1309', N'00,13,1309', N'青县', N'13', N'河北省', N'1309', N'沧州市', N'130922', N'青县', N'', N'', N'', N'', N'3', N'1', N''), (N'130923', N'1309', N'00,13,1309', N'东光县', N'13', N'河北省', N'1309', N'沧州市', N'130923', N'东光县', N'', N'', N'', N'', N'3', N'1', N''), (N'130924', N'1309', N'00,13,1309', N'海兴县', N'13', N'河北省', N'1309', N'沧州市', N'130924', N'海兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'130925', N'1309', N'00,13,1309', N'盐山县', N'13', N'河北省', N'1309', N'沧州市', N'130925', N'盐山县', N'', N'', N'', N'', N'3', N'1', N''), (N'130926', N'1309', N'00,13,1309', N'肃宁县', N'13', N'河北省', N'1309', N'沧州市', N'130926', N'肃宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'130927', N'1309', N'00,13,1309', N'南皮县', N'13', N'河北省', N'1309', N'沧州市', N'130927', N'南皮县', N'', N'', N'', N'', N'3', N'1', N''), (N'130928', N'1309', N'00,13,1309', N'吴桥县', N'13', N'河北省', N'1309', N'沧州市', N'130928', N'吴桥县', N'', N'', N'', N'', N'3', N'1', N''), (N'130929', N'1309', N'00,13,1309', N'献县', N'13', N'河北省', N'1309', N'沧州市', N'130929', N'献县', N'', N'', N'', N'', N'3', N'1', N''), (N'130930', N'1309', N'00,13,1309', N'孟村回族自治县', N'13', N'河北省', N'1309', N'沧州市', N'130930', N'孟村回族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'130981', N'1309', N'00,13,1309', N'泊头市', N'13', N'河北省', N'1309', N'沧州市', N'130981', N'泊头市', N'', N'', N'', N'', N'3', N'1', N''), (N'130982', N'1309', N'00,13,1309', N'任丘市', N'13', N'河北省', N'1309', N'沧州市', N'130982', N'任丘市', N'', N'', N'', N'', N'3', N'1', N''), (N'130983', N'1309', N'00,13,1309', N'黄骅市', N'13', N'河北省', N'1309', N'沧州市', N'130983', N'黄骅市', N'', N'', N'', N'', N'3', N'1', N''), (N'130984', N'1309', N'00,13,1309', N'河间市', N'13', N'河北省', N'1309', N'沧州市', N'130984', N'河间市', N'', N'', N'', N'', N'3', N'1', N''), (N'1310', N'13', N'00,13', N'廊坊市', N'13', N'河北省', N'1310', N'廊坊市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'131002', N'1310', N'00,13,1310', N'安次区', N'13', N'河北省', N'1310', N'廊坊市', N'131002', N'安次区', N'', N'', N'', N'', N'3', N'1', N''), (N'131003', N'1310', N'00,13,1310', N'广阳区', N'13', N'河北省', N'1310', N'廊坊市', N'131003', N'广阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'131022', N'1310', N'00,13,1310', N'固安县', N'13', N'河北省', N'1310', N'廊坊市', N'131022', N'固安县', N'', N'', N'', N'', N'3', N'1', N''), (N'131023', N'1310', N'00,13,1310', N'永清县', N'13', N'河北省', N'1310', N'廊坊市', N'131023', N'永清县', N'', N'', N'', N'', N'3', N'1', N''), (N'131024', N'1310', N'00,13,1310', N'香河县', N'13', N'河北省', N'1310', N'廊坊市', N'131024', N'香河县', N'', N'', N'', N'', N'3', N'1', N''), (N'131025', N'1310', N'00,13,1310', N'大城县', N'13', N'河北省', N'1310', N'廊坊市', N'131025', N'大城县', N'', N'', N'', N'', N'3', N'1', N''), (N'131026', N'1310', N'00,13,1310', N'文安县', N'13', N'河北省', N'1310', N'廊坊市', N'131026', N'文安县', N'', N'', N'', N'', N'3', N'1', N''), (N'131028', N'1310', N'00,13,1310', N'大厂回族自治县', N'13', N'河北省', N'1310', N'廊坊市', N'131028', N'大厂回族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'131081', N'1310', N'00,13,1310', N'霸州市', N'13', N'河北省', N'1310', N'廊坊市', N'131081', N'霸州市', N'', N'', N'', N'', N'3', N'1', N''), (N'131082', N'1310', N'00,13,1310', N'三河市', N'13', N'河北省', N'1310', N'廊坊市', N'131082', N'三河市', N'', N'', N'', N'', N'3', N'1', N''), (N'1311', N'13', N'00,13', N'衡水市', N'13', N'河北省', N'1311', N'衡水市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'131102', N'1311', N'00,13,1311', N'桃城区', N'13', N'河北省', N'1311', N'衡水市', N'131102', N'桃城区', N'', N'', N'', N'', N'3', N'1', N''), (N'131103', N'1311', N'00,13,1311', N'冀州区', N'13', N'河北省', N'1311', N'衡水市', N'131103', N'冀州区', N'', N'', N'', N'', N'3', N'1', N''), (N'131121', N'1311', N'00,13,1311', N'枣强县', N'13', N'河北省', N'1311', N'衡水市', N'131121', N'枣强县', N'', N'', N'', N'', N'3', N'1', N''), (N'131122', N'1311', N'00,13,1311', N'武邑县', N'13', N'河北省', N'1311', N'衡水市', N'131122', N'武邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'131123', N'1311', N'00,13,1311', N'武强县', N'13', N'河北省', N'1311', N'衡水市', N'131123', N'武强县', N'', N'', N'', N'', N'3', N'1', N''), (N'131124', N'1311', N'00,13,1311', N'饶阳县', N'13', N'河北省', N'1311', N'衡水市', N'131124', N'饶阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'131125', N'1311', N'00,13,1311', N'安平县', N'13', N'河北省', N'1311', N'衡水市', N'131125', N'安平县', N'', N'', N'', N'', N'3', N'1', N''), (N'131126', N'1311', N'00,13,1311', N'故城县', N'13', N'河北省', N'1311', N'衡水市', N'131126', N'故城县', N'', N'', N'', N'', N'3', N'1', N''), (N'131127', N'1311', N'00,13,1311', N'景县', N'13', N'河北省', N'1311', N'衡水市', N'131127', N'景县', N'', N'', N'', N'', N'3', N'1', N''), (N'131128', N'1311', N'00,13,1311', N'阜城县', N'13', N'河北省', N'1311', N'衡水市', N'131128', N'阜城县', N'', N'', N'', N'', N'3', N'1', N''), (N'131182', N'1311', N'00,13,1311', N'深州市', N'13', N'河北省', N'1311', N'衡水市', N'131182', N'深州市', N'', N'', N'', N'', N'3', N'1', N''), (N'14', N'00', N'00', N'山西省', N'14', N'山西省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'1401', N'14', N'00,14', N'太原市', N'14', N'山西省', N'1401', N'太原市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140105', N'1401', N'00,14,1401', N'小店区', N'14', N'山西省', N'1401', N'太原市', N'140105', N'小店区', N'', N'', N'', N'', N'3', N'1', N''), (N'140106', N'1401', N'00,14,1401', N'迎泽区', N'14', N'山西省', N'1401', N'太原市', N'140106', N'迎泽区', N'', N'', N'', N'', N'3', N'1', N''), (N'140107', N'1401', N'00,14,1401', N'杏花岭区', N'14', N'山西省', N'1401', N'太原市', N'140107', N'杏花岭区', N'', N'', N'', N'', N'3', N'1', N''), (N'140108', N'1401', N'00,14,1401', N'尖草坪区', N'14', N'山西省', N'1401', N'太原市', N'140108', N'尖草坪区', N'', N'', N'', N'', N'3', N'1', N''), (N'140109', N'1401', N'00,14,1401', N'万柏林区', N'14', N'山西省', N'1401', N'太原市', N'140109', N'万柏林区', N'', N'', N'', N'', N'3', N'1', N''), (N'140110', N'1401', N'00,14,1401', N'晋源区', N'14', N'山西省', N'1401', N'太原市', N'140110', N'晋源区', N'', N'', N'', N'', N'3', N'1', N''), (N'140121', N'1401', N'00,14,1401', N'清徐县', N'14', N'山西省', N'1401', N'太原市', N'140121', N'清徐县', N'', N'', N'', N'', N'3', N'1', N''), (N'140122', N'1401', N'00,14,1401', N'阳曲县', N'14', N'山西省', N'1401', N'太原市', N'140122', N'阳曲县', N'', N'', N'', N'', N'3', N'1', N''), (N'140123', N'1401', N'00,14,1401', N'娄烦县', N'14', N'山西省', N'1401', N'太原市', N'140123', N'娄烦县', N'', N'', N'', N'', N'3', N'1', N''), (N'140181', N'1401', N'00,14,1401', N'古交市', N'14', N'山西省', N'1401', N'太原市', N'140181', N'古交市', N'', N'', N'', N'', N'3', N'1', N''), (N'1402', N'14', N'00,14', N'大同市', N'14', N'山西省', N'1402', N'大同市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140212', N'1402', N'00,14,1402', N'新荣区', N'14', N'山西省', N'1402', N'大同市', N'140212', N'新荣区', N'', N'', N'', N'', N'3', N'1', N''), (N'140213', N'1402', N'00,14,1402', N'平城区', N'14', N'山西省', N'1402', N'大同市', N'140213', N'平城区', N'', N'', N'', N'', N'3', N'1', N''), (N'140214', N'1402', N'00,14,1402', N'云冈区', N'14', N'山西省', N'1402', N'大同市', N'140214', N'云冈区', N'', N'', N'', N'', N'3', N'1', N''), (N'140215', N'1402', N'00,14,1402', N'云州区', N'14', N'山西省', N'1402', N'大同市', N'140215', N'云州区', N'', N'', N'', N'', N'3', N'1', N''), (N'140221', N'1402', N'00,14,1402', N'阳高县', N'14', N'山西省', N'1402', N'大同市', N'140221', N'阳高县', N'', N'', N'', N'', N'3', N'1', N''), (N'140222', N'1402', N'00,14,1402', N'天镇县', N'14', N'山西省', N'1402', N'大同市', N'140222', N'天镇县', N'', N'', N'', N'', N'3', N'1', N''), (N'140223', N'1402', N'00,14,1402', N'广灵县', N'14', N'山西省', N'1402', N'大同市', N'140223', N'广灵县', N'', N'', N'', N'', N'3', N'1', N''), (N'140224', N'1402', N'00,14,1402', N'灵丘县', N'14', N'山西省', N'1402', N'大同市', N'140224', N'灵丘县', N'', N'', N'', N'', N'3', N'1', N''), (N'140225', N'1402', N'00,14,1402', N'浑源县', N'14', N'山西省', N'1402', N'大同市', N'140225', N'浑源县', N'', N'', N'', N'', N'3', N'1', N''), (N'140226', N'1402', N'00,14,1402', N'左云县', N'14', N'山西省', N'1402', N'大同市', N'140226', N'左云县', N'', N'', N'', N'', N'3', N'1', N''), (N'1403', N'14', N'00,14', N'阳泉市', N'14', N'山西省', N'1403', N'阳泉市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140302', N'1403', N'00,14,1403', N'城区', N'14', N'山西省', N'1403', N'阳泉市', N'140302', N'城区', N'', N'', N'', N'', N'3', N'1', N''), (N'140303', N'1403', N'00,14,1403', N'矿区', N'14', N'山西省', N'1403', N'阳泉市', N'140303', N'矿区', N'', N'', N'', N'', N'3', N'1', N''), (N'140311', N'1403', N'00,14,1403', N'郊区', N'14', N'山西省', N'1403', N'阳泉市', N'140311', N'郊区', N'', N'', N'', N'', N'3', N'1', N''), (N'140321', N'1403', N'00,14,1403', N'平定县', N'14', N'山西省', N'1403', N'阳泉市', N'140321', N'平定县', N'', N'', N'', N'', N'3', N'1', N''), (N'140322', N'1403', N'00,14,1403', N'盂县', N'14', N'山西省', N'1403', N'阳泉市', N'140322', N'盂县', N'', N'', N'', N'', N'3', N'1', N''), (N'1404', N'14', N'00,14', N'长治市', N'14', N'山西省', N'1404', N'长治市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140403', N'1404', N'00,14,1404', N'潞州区', N'14', N'山西省', N'1404', N'长治市', N'140403', N'潞州区', N'', N'', N'', N'', N'3', N'1', N''), (N'140404', N'1404', N'00,14,1404', N'上党区', N'14', N'山西省', N'1404', N'长治市', N'140404', N'上党区', N'', N'', N'', N'', N'3', N'1', N''), (N'140405', N'1404', N'00,14,1404', N'屯留区', N'14', N'山西省', N'1404', N'长治市', N'140405', N'屯留区', N'', N'', N'', N'', N'3', N'1', N''), (N'140406', N'1404', N'00,14,1404', N'潞城区', N'14', N'山西省', N'1404', N'长治市', N'140406', N'潞城区', N'', N'', N'', N'', N'3', N'1', N''), (N'140423', N'1404', N'00,14,1404', N'襄垣县', N'14', N'山西省', N'1404', N'长治市', N'140423', N'襄垣县', N'', N'', N'', N'', N'3', N'1', N''), (N'140425', N'1404', N'00,14,1404', N'平顺县', N'14', N'山西省', N'1404', N'长治市', N'140425', N'平顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'140426', N'1404', N'00,14,1404', N'黎城县', N'14', N'山西省', N'1404', N'长治市', N'140426', N'黎城县', N'', N'', N'', N'', N'3', N'1', N''), (N'140427', N'1404', N'00,14,1404', N'壶关县', N'14', N'山西省', N'1404', N'长治市', N'140427', N'壶关县', N'', N'', N'', N'', N'3', N'1', N''), (N'140428', N'1404', N'00,14,1404', N'长子县', N'14', N'山西省', N'1404', N'长治市', N'140428', N'长子县', N'', N'', N'', N'', N'3', N'1', N''), (N'140429', N'1404', N'00,14,1404', N'武乡县', N'14', N'山西省', N'1404', N'长治市', N'140429', N'武乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'140430', N'1404', N'00,14,1404', N'沁县', N'14', N'山西省', N'1404', N'长治市', N'140430', N'沁县', N'', N'', N'', N'', N'3', N'1', N''), (N'140431', N'1404', N'00,14,1404', N'沁源县', N'14', N'山西省', N'1404', N'长治市', N'140431', N'沁源县', N'', N'', N'', N'', N'3', N'1', N''), (N'1405', N'14', N'00,14', N'晋城市', N'14', N'山西省', N'1405', N'晋城市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140502', N'1405', N'00,14,1405', N'城区', N'14', N'山西省', N'1405', N'晋城市', N'140502', N'城区', N'', N'', N'', N'', N'3', N'1', N''), (N'140521', N'1405', N'00,14,1405', N'沁水县', N'14', N'山西省', N'1405', N'晋城市', N'140521', N'沁水县', N'', N'', N'', N'', N'3', N'1', N''), (N'140522', N'1405', N'00,14,1405', N'阳城县', N'14', N'山西省', N'1405', N'晋城市', N'140522', N'阳城县', N'', N'', N'', N'', N'3', N'1', N''), (N'140524', N'1405', N'00,14,1405', N'陵川县', N'14', N'山西省', N'1405', N'晋城市', N'140524', N'陵川县', N'', N'', N'', N'', N'3', N'1', N''), (N'140525', N'1405', N'00,14,1405', N'泽州县', N'14', N'山西省', N'1405', N'晋城市', N'140525', N'泽州县', N'', N'', N'', N'', N'3', N'1', N''), (N'140581', N'1405', N'00,14,1405', N'高平市', N'14', N'山西省', N'1405', N'晋城市', N'140581', N'高平市', N'', N'', N'', N'', N'3', N'1', N''), (N'1406', N'14', N'00,14', N'朔州市', N'14', N'山西省', N'1406', N'朔州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140602', N'1406', N'00,14,1406', N'朔城区', N'14', N'山西省', N'1406', N'朔州市', N'140602', N'朔城区', N'', N'', N'', N'', N'3', N'1', N''), (N'140603', N'1406', N'00,14,1406', N'平鲁区', N'14', N'山西省', N'1406', N'朔州市', N'140603', N'平鲁区', N'', N'', N'', N'', N'3', N'1', N''), (N'140621', N'1406', N'00,14,1406', N'山阴县', N'14', N'山西省', N'1406', N'朔州市', N'140621', N'山阴县', N'', N'', N'', N'', N'3', N'1', N''), (N'140622', N'1406', N'00,14,1406', N'应县', N'14', N'山西省', N'1406', N'朔州市', N'140622', N'应县', N'', N'', N'', N'', N'3', N'1', N''), (N'140623', N'1406', N'00,14,1406', N'右玉县', N'14', N'山西省', N'1406', N'朔州市', N'140623', N'右玉县', N'', N'', N'', N'', N'3', N'1', N''), (N'140681', N'1406', N'00,14,1406', N'怀仁市', N'14', N'山西省', N'1406', N'朔州市', N'140681', N'怀仁市', N'', N'', N'', N'', N'3', N'1', N''), (N'1407', N'14', N'00,14', N'晋中市', N'14', N'山西省', N'1407', N'晋中市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140702', N'1407', N'00,14,1407', N'榆次区', N'14', N'山西省', N'1407', N'晋中市', N'140702', N'榆次区', N'', N'', N'', N'', N'3', N'1', N''), (N'140703', N'1407', N'00,14,1407', N'太谷区', N'14', N'山西省', N'1407', N'晋中市', N'140703', N'太谷区', N'', N'', N'', N'', N'3', N'1', N''), (N'140721', N'1407', N'00,14,1407', N'榆社县', N'14', N'山西省', N'1407', N'晋中市', N'140721', N'榆社县', N'', N'', N'', N'', N'3', N'1', N''), (N'140722', N'1407', N'00,14,1407', N'左权县', N'14', N'山西省', N'1407', N'晋中市', N'140722', N'左权县', N'', N'', N'', N'', N'3', N'1', N''), (N'140723', N'1407', N'00,14,1407', N'和顺县', N'14', N'山西省', N'1407', N'晋中市', N'140723', N'和顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'140724', N'1407', N'00,14,1407', N'昔阳县', N'14', N'山西省', N'1407', N'晋中市', N'140724', N'昔阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'140725', N'1407', N'00,14,1407', N'寿阳县', N'14', N'山西省', N'1407', N'晋中市', N'140725', N'寿阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'140727', N'1407', N'00,14,1407', N'祁县', N'14', N'山西省', N'1407', N'晋中市', N'140727', N'祁县', N'', N'', N'', N'', N'3', N'1', N''), (N'140728', N'1407', N'00,14,1407', N'平遥县', N'14', N'山西省', N'1407', N'晋中市', N'140728', N'平遥县', N'', N'', N'', N'', N'3', N'1', N''), (N'140729', N'1407', N'00,14,1407', N'灵石县', N'14', N'山西省', N'1407', N'晋中市', N'140729', N'灵石县', N'', N'', N'', N'', N'3', N'1', N''), (N'140781', N'1407', N'00,14,1407', N'介休市', N'14', N'山西省', N'1407', N'晋中市', N'140781', N'介休市', N'', N'', N'', N'', N'3', N'1', N''), (N'1408', N'14', N'00,14', N'运城市', N'14', N'山西省', N'1408', N'运城市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140802', N'1408', N'00,14,1408', N'盐湖区', N'14', N'山西省', N'1408', N'运城市', N'140802', N'盐湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'140821', N'1408', N'00,14,1408', N'临猗县', N'14', N'山西省', N'1408', N'运城市', N'140821', N'临猗县', N'', N'', N'', N'', N'3', N'1', N''), (N'140822', N'1408', N'00,14,1408', N'万荣县', N'14', N'山西省', N'1408', N'运城市', N'140822', N'万荣县', N'', N'', N'', N'', N'3', N'1', N''), (N'140823', N'1408', N'00,14,1408', N'闻喜县', N'14', N'山西省', N'1408', N'运城市', N'140823', N'闻喜县', N'', N'', N'', N'', N'3', N'1', N''), (N'140824', N'1408', N'00,14,1408', N'稷山县', N'14', N'山西省', N'1408', N'运城市', N'140824', N'稷山县', N'', N'', N'', N'', N'3', N'1', N''), (N'140825', N'1408', N'00,14,1408', N'新绛县', N'14', N'山西省', N'1408', N'运城市', N'140825', N'新绛县', N'', N'', N'', N'', N'3', N'1', N''), (N'140826', N'1408', N'00,14,1408', N'绛县', N'14', N'山西省', N'1408', N'运城市', N'140826', N'绛县', N'', N'', N'', N'', N'3', N'1', N''), (N'140827', N'1408', N'00,14,1408', N'垣曲县', N'14', N'山西省', N'1408', N'运城市', N'140827', N'垣曲县', N'', N'', N'', N'', N'3', N'1', N''), (N'140828', N'1408', N'00,14,1408', N'夏县', N'14', N'山西省', N'1408', N'运城市', N'140828', N'夏县', N'', N'', N'', N'', N'3', N'1', N''), (N'140829', N'1408', N'00,14,1408', N'平陆县', N'14', N'山西省', N'1408', N'运城市', N'140829', N'平陆县', N'', N'', N'', N'', N'3', N'1', N''), (N'140830', N'1408', N'00,14,1408', N'芮城县', N'14', N'山西省', N'1408', N'运城市', N'140830', N'芮城县', N'', N'', N'', N'', N'3', N'1', N''), (N'140881', N'1408', N'00,14,1408', N'永济市', N'14', N'山西省', N'1408', N'运城市', N'140881', N'永济市', N'', N'', N'', N'', N'3', N'1', N''), (N'140882', N'1408', N'00,14,1408', N'河津市', N'14', N'山西省', N'1408', N'运城市', N'140882', N'河津市', N'', N'', N'', N'', N'3', N'1', N''), (N'1409', N'14', N'00,14', N'忻州市', N'14', N'山西省', N'1409', N'忻州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'140902', N'1409', N'00,14,1409', N'忻府区', N'14', N'山西省', N'1409', N'忻州市', N'140902', N'忻府区', N'', N'', N'', N'', N'3', N'1', N''), (N'140921', N'1409', N'00,14,1409', N'定襄县', N'14', N'山西省', N'1409', N'忻州市', N'140921', N'定襄县', N'', N'', N'', N'', N'3', N'1', N''), (N'140922', N'1409', N'00,14,1409', N'五台县', N'14', N'山西省', N'1409', N'忻州市', N'140922', N'五台县', N'', N'', N'', N'', N'3', N'1', N''), (N'140923', N'1409', N'00,14,1409', N'代县', N'14', N'山西省', N'1409', N'忻州市', N'140923', N'代县', N'', N'', N'', N'', N'3', N'1', N''), (N'140924', N'1409', N'00,14,1409', N'繁峙县', N'14', N'山西省', N'1409', N'忻州市', N'140924', N'繁峙县', N'', N'', N'', N'', N'3', N'1', N''), (N'140925', N'1409', N'00,14,1409', N'宁武县', N'14', N'山西省', N'1409', N'忻州市', N'140925', N'宁武县', N'', N'', N'', N'', N'3', N'1', N''), (N'140926', N'1409', N'00,14,1409', N'静乐县', N'14', N'山西省', N'1409', N'忻州市', N'140926', N'静乐县', N'', N'', N'', N'', N'3', N'1', N''), (N'140927', N'1409', N'00,14,1409', N'神池县', N'14', N'山西省', N'1409', N'忻州市', N'140927', N'神池县', N'', N'', N'', N'', N'3', N'1', N''), (N'140928', N'1409', N'00,14,1409', N'五寨县', N'14', N'山西省', N'1409', N'忻州市', N'140928', N'五寨县', N'', N'', N'', N'', N'3', N'1', N''), (N'140929', N'1409', N'00,14,1409', N'岢岚县', N'14', N'山西省', N'1409', N'忻州市', N'140929', N'岢岚县', N'', N'', N'', N'', N'3', N'1', N''), (N'140930', N'1409', N'00,14,1409', N'河曲县', N'14', N'山西省', N'1409', N'忻州市', N'140930', N'河曲县', N'', N'', N'', N'', N'3', N'1', N''), (N'140931', N'1409', N'00,14,1409', N'保德县', N'14', N'山西省', N'1409', N'忻州市', N'140931', N'保德县', N'', N'', N'', N'', N'3', N'1', N''), (N'140932', N'1409', N'00,14,1409', N'偏关县', N'14', N'山西省', N'1409', N'忻州市', N'140932', N'偏关县', N'', N'', N'', N'', N'3', N'1', N''), (N'140981', N'1409', N'00,14,1409', N'原平市', N'14', N'山西省', N'1409', N'忻州市', N'140981', N'原平市', N'', N'', N'', N'', N'3', N'1', N''), (N'1410', N'14', N'00,14', N'临汾市', N'14', N'山西省', N'1410', N'临汾市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'141002', N'1410', N'00,14,1410', N'尧都区', N'14', N'山西省', N'1410', N'临汾市', N'141002', N'尧都区', N'', N'', N'', N'', N'3', N'1', N''), (N'141021', N'1410', N'00,14,1410', N'曲沃县', N'14', N'山西省', N'1410', N'临汾市', N'141021', N'曲沃县', N'', N'', N'', N'', N'3', N'1', N''), (N'141022', N'1410', N'00,14,1410', N'翼城县', N'14', N'山西省', N'1410', N'临汾市', N'141022', N'翼城县', N'', N'', N'', N'', N'3', N'1', N''), (N'141023', N'1410', N'00,14,1410', N'襄汾县', N'14', N'山西省', N'1410', N'临汾市', N'141023', N'襄汾县', N'', N'', N'', N'', N'3', N'1', N''), (N'141024', N'1410', N'00,14,1410', N'洪洞县', N'14', N'山西省', N'1410', N'临汾市', N'141024', N'洪洞县', N'', N'', N'', N'', N'3', N'1', N''), (N'141025', N'1410', N'00,14,1410', N'古县', N'14', N'山西省', N'1410', N'临汾市', N'141025', N'古县', N'', N'', N'', N'', N'3', N'1', N''), (N'141026', N'1410', N'00,14,1410', N'安泽县', N'14', N'山西省', N'1410', N'临汾市', N'141026', N'安泽县', N'', N'', N'', N'', N'3', N'1', N''), (N'141027', N'1410', N'00,14,1410', N'浮山县', N'14', N'山西省', N'1410', N'临汾市', N'141027', N'浮山县', N'', N'', N'', N'', N'3', N'1', N''), (N'141028', N'1410', N'00,14,1410', N'吉县', N'14', N'山西省', N'1410', N'临汾市', N'141028', N'吉县', N'', N'', N'', N'', N'3', N'1', N''), (N'141029', N'1410', N'00,14,1410', N'乡宁县', N'14', N'山西省', N'1410', N'临汾市', N'141029', N'乡宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'141030', N'1410', N'00,14,1410', N'大宁县', N'14', N'山西省', N'1410', N'临汾市', N'141030', N'大宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'141031', N'1410', N'00,14,1410', N'隰县', N'14', N'山西省', N'1410', N'临汾市', N'141031', N'隰县', N'', N'', N'', N'', N'3', N'1', N''), (N'141032', N'1410', N'00,14,1410', N'永和县', N'14', N'山西省', N'1410', N'临汾市', N'141032', N'永和县', N'', N'', N'', N'', N'3', N'1', N''), (N'141033', N'1410', N'00,14,1410', N'蒲县', N'14', N'山西省', N'1410', N'临汾市', N'141033', N'蒲县', N'', N'', N'', N'', N'3', N'1', N''), (N'141034', N'1410', N'00,14,1410', N'汾西县', N'14', N'山西省', N'1410', N'临汾市', N'141034', N'汾西县', N'', N'', N'', N'', N'3', N'1', N''), (N'141081', N'1410', N'00,14,1410', N'侯马市', N'14', N'山西省', N'1410', N'临汾市', N'141081', N'侯马市', N'', N'', N'', N'', N'3', N'1', N''), (N'141082', N'1410', N'00,14,1410', N'霍州市', N'14', N'山西省', N'1410', N'临汾市', N'141082', N'霍州市', N'', N'', N'', N'', N'3', N'1', N''), (N'1411', N'14', N'00,14', N'吕梁市', N'14', N'山西省', N'1411', N'吕梁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'141102', N'1411', N'00,14,1411', N'离石区', N'14', N'山西省', N'1411', N'吕梁市', N'141102', N'离石区', N'', N'', N'', N'', N'3', N'1', N''), (N'141121', N'1411', N'00,14,1411', N'文水县', N'14', N'山西省', N'1411', N'吕梁市', N'141121', N'文水县', N'', N'', N'', N'', N'3', N'1', N''), (N'141122', N'1411', N'00,14,1411', N'交城县', N'14', N'山西省', N'1411', N'吕梁市', N'141122', N'交城县', N'', N'', N'', N'', N'3', N'1', N''), (N'141123', N'1411', N'00,14,1411', N'兴县', N'14', N'山西省', N'1411', N'吕梁市', N'141123', N'兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'141124', N'1411', N'00,14,1411', N'临县', N'14', N'山西省', N'1411', N'吕梁市', N'141124', N'临县', N'', N'', N'', N'', N'3', N'1', N''), (N'141125', N'1411', N'00,14,1411', N'柳林县', N'14', N'山西省', N'1411', N'吕梁市', N'141125', N'柳林县', N'', N'', N'', N'', N'3', N'1', N''), (N'141126', N'1411', N'00,14,1411', N'石楼县', N'14', N'山西省', N'1411', N'吕梁市', N'141126', N'石楼县', N'', N'', N'', N'', N'3', N'1', N''), (N'141127', N'1411', N'00,14,1411', N'岚县', N'14', N'山西省', N'1411', N'吕梁市', N'141127', N'岚县', N'', N'', N'', N'', N'3', N'1', N''), (N'141128', N'1411', N'00,14,1411', N'方山县', N'14', N'山西省', N'1411', N'吕梁市', N'141128', N'方山县', N'', N'', N'', N'', N'3', N'1', N''), (N'141129', N'1411', N'00,14,1411', N'中阳县', N'14', N'山西省', N'1411', N'吕梁市', N'141129', N'中阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'141130', N'1411', N'00,14,1411', N'交口县', N'14', N'山西省', N'1411', N'吕梁市', N'141130', N'交口县', N'', N'', N'', N'', N'3', N'1', N''), (N'141181', N'1411', N'00,14,1411', N'孝义市', N'14', N'山西省', N'1411', N'吕梁市', N'141181', N'孝义市', N'', N'', N'', N'', N'3', N'1', N''), (N'141182', N'1411', N'00,14,1411', N'汾阳市', N'14', N'山西省', N'1411', N'吕梁市', N'141182', N'汾阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'15', N'00', N'00', N'内蒙古自治区', N'15', N'内蒙古自治区', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'1501', N'15', N'00,15', N'呼和浩特市', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150102', N'1501', N'00,15,1501', N'新城区', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150102', N'新城区', N'', N'', N'', N'', N'3', N'1', N''), (N'150103', N'1501', N'00,15,1501', N'回民区', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150103', N'回民区', N'', N'', N'', N'', N'3', N'1', N''), (N'150104', N'1501', N'00,15,1501', N'玉泉区', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150104', N'玉泉区', N'', N'', N'', N'', N'3', N'1', N''), (N'150105', N'1501', N'00,15,1501', N'赛罕区', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150105', N'赛罕区', N'', N'', N'', N'', N'3', N'1', N''), (N'150121', N'1501', N'00,15,1501', N'土默特左旗', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150121', N'土默特左旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150122', N'1501', N'00,15,1501', N'托克托县', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150122', N'托克托县', N'', N'', N'', N'', N'3', N'1', N''), (N'150123', N'1501', N'00,15,1501', N'和林格尔县', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150123', N'和林格尔县', N'', N'', N'', N'', N'3', N'1', N''), (N'150124', N'1501', N'00,15,1501', N'清水河县', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150124', N'清水河县', N'', N'', N'', N'', N'3', N'1', N''), (N'150125', N'1501', N'00,15,1501', N'武川县', N'15', N'内蒙古自治区', N'1501', N'呼和浩特市', N'150125', N'武川县', N'', N'', N'', N'', N'3', N'1', N''), (N'1502', N'15', N'00,15', N'包头市', N'15', N'内蒙古自治区', N'1502', N'包头市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150202', N'1502', N'00,15,1502', N'东河区', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150202', N'东河区', N'', N'', N'', N'', N'3', N'1', N''), (N'150203', N'1502', N'00,15,1502', N'昆都仑区', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150203', N'昆都仑区', N'', N'', N'', N'', N'3', N'1', N''), (N'150204', N'1502', N'00,15,1502', N'青山区', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150204', N'青山区', N'', N'', N'', N'', N'3', N'1', N''), (N'150205', N'1502', N'00,15,1502', N'石拐区', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150205', N'石拐区', N'', N'', N'', N'', N'3', N'1', N''), (N'150206', N'1502', N'00,15,1502', N'白云鄂博矿区', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150206', N'白云鄂博矿区', N'', N'', N'', N'', N'3', N'1', N''), (N'150207', N'1502', N'00,15,1502', N'九原区', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150207', N'九原区', N'', N'', N'', N'', N'3', N'1', N''), (N'150221', N'1502', N'00,15,1502', N'土默特右旗', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150221', N'土默特右旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150222', N'1502', N'00,15,1502', N'固阳县', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150222', N'固阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'150223', N'1502', N'00,15,1502', N'达尔罕茂明安联合旗', N'15', N'内蒙古自治区', N'1502', N'包头市', N'150223', N'达尔罕茂明安联合旗', N'', N'', N'', N'', N'3', N'1', N''), (N'1503', N'15', N'00,15', N'乌海市', N'15', N'内蒙古自治区', N'1503', N'乌海市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150302', N'1503', N'00,15,1503', N'海勃湾区', N'15', N'内蒙古自治区', N'1503', N'乌海市', N'150302', N'海勃湾区', N'', N'', N'', N'', N'3', N'1', N''), (N'150303', N'1503', N'00,15,1503', N'海南区', N'15', N'内蒙古自治区', N'1503', N'乌海市', N'150303', N'海南区', N'', N'', N'', N'', N'3', N'1', N''), (N'150304', N'1503', N'00,15,1503', N'乌达区', N'15', N'内蒙古自治区', N'1503', N'乌海市', N'150304', N'乌达区', N'', N'', N'', N'', N'3', N'1', N''), (N'1504', N'15', N'00,15', N'赤峰市', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150402', N'1504', N'00,15,1504', N'红山区', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150402', N'红山区', N'', N'', N'', N'', N'3', N'1', N''), (N'150403', N'1504', N'00,15,1504', N'元宝山区', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150403', N'元宝山区', N'', N'', N'', N'', N'3', N'1', N''), (N'150404', N'1504', N'00,15,1504', N'松山区', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150404', N'松山区', N'', N'', N'', N'', N'3', N'1', N''), (N'150421', N'1504', N'00,15,1504', N'阿鲁科尔沁旗', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150421', N'阿鲁科尔沁旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150422', N'1504', N'00,15,1504', N'巴林左旗', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150422', N'巴林左旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150423', N'1504', N'00,15,1504', N'巴林右旗', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150423', N'巴林右旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150424', N'1504', N'00,15,1504', N'林西县', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150424', N'林西县', N'', N'', N'', N'', N'3', N'1', N''), (N'150425', N'1504', N'00,15,1504', N'克什克腾旗', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150425', N'克什克腾旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150426', N'1504', N'00,15,1504', N'翁牛特旗', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150426', N'翁牛特旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150428', N'1504', N'00,15,1504', N'喀喇沁旗', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150428', N'喀喇沁旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150429', N'1504', N'00,15,1504', N'宁城县', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150429', N'宁城县', N'', N'', N'', N'', N'3', N'1', N''), (N'150430', N'1504', N'00,15,1504', N'敖汉旗', N'15', N'内蒙古自治区', N'1504', N'赤峰市', N'150430', N'敖汉旗', N'', N'', N'', N'', N'3', N'1', N''), (N'1505', N'15', N'00,15', N'通辽市', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150502', N'1505', N'00,15,1505', N'科尔沁区', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150502', N'科尔沁区', N'', N'', N'', N'', N'3', N'1', N''), (N'150521', N'1505', N'00,15,1505', N'科尔沁左翼中旗', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150521', N'科尔沁左翼中旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150522', N'1505', N'00,15,1505', N'科尔沁左翼后旗', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150522', N'科尔沁左翼后旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150523', N'1505', N'00,15,1505', N'开鲁县', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150523', N'开鲁县', N'', N'', N'', N'', N'3', N'1', N''), (N'150524', N'1505', N'00,15,1505', N'库伦旗', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150524', N'库伦旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150525', N'1505', N'00,15,1505', N'奈曼旗', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150525', N'奈曼旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150526', N'1505', N'00,15,1505', N'扎鲁特旗', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150526', N'扎鲁特旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150581', N'1505', N'00,15,1505', N'霍林郭勒市', N'15', N'内蒙古自治区', N'1505', N'通辽市', N'150581', N'霍林郭勒市', N'', N'', N'', N'', N'3', N'1', N''), (N'1506', N'15', N'00,15', N'鄂尔多斯市', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150602', N'1506', N'00,15,1506', N'东胜区', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150602', N'东胜区', N'', N'', N'', N'', N'3', N'1', N''), (N'150603', N'1506', N'00,15,1506', N'康巴什区', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150603', N'康巴什区', N'', N'', N'', N'', N'3', N'1', N''), (N'150621', N'1506', N'00,15,1506', N'达拉特旗', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150621', N'达拉特旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150622', N'1506', N'00,15,1506', N'准格尔旗', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150622', N'准格尔旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150623', N'1506', N'00,15,1506', N'鄂托克前旗', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150623', N'鄂托克前旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150624', N'1506', N'00,15,1506', N'鄂托克旗', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150624', N'鄂托克旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150625', N'1506', N'00,15,1506', N'杭锦旗', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150625', N'杭锦旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150626', N'1506', N'00,15,1506', N'乌审旗', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150626', N'乌审旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150627', N'1506', N'00,15,1506', N'伊金霍洛旗', N'15', N'内蒙古自治区', N'1506', N'鄂尔多斯市', N'150627', N'伊金霍洛旗', N'', N'', N'', N'', N'3', N'1', N''), (N'1507', N'15', N'00,15', N'呼伦贝尔市', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150702', N'1507', N'00,15,1507', N'海拉尔区', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150702', N'海拉尔区', N'', N'', N'', N'', N'3', N'1', N''), (N'150703', N'1507', N'00,15,1507', N'扎赉诺尔区', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150703', N'扎赉诺尔区', N'', N'', N'', N'', N'3', N'1', N''), (N'150721', N'1507', N'00,15,1507', N'阿荣旗', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150721', N'阿荣旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150722', N'1507', N'00,15,1507', N'莫力达瓦达斡尔族自治旗', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150722', N'莫力达瓦达斡尔族自治旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150723', N'1507', N'00,15,1507', N'鄂伦春自治旗', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150723', N'鄂伦春自治旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150724', N'1507', N'00,15,1507', N'鄂温克族自治旗', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150724', N'鄂温克族自治旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150725', N'1507', N'00,15,1507', N'陈巴尔虎旗', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150725', N'陈巴尔虎旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150726', N'1507', N'00,15,1507', N'新巴尔虎左旗', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150726', N'新巴尔虎左旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150727', N'1507', N'00,15,1507', N'新巴尔虎右旗', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150727', N'新巴尔虎右旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150781', N'1507', N'00,15,1507', N'满洲里市', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150781', N'满洲里市', N'', N'', N'', N'', N'3', N'1', N''), (N'150782', N'1507', N'00,15,1507', N'牙克石市', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150782', N'牙克石市', N'', N'', N'', N'', N'3', N'1', N'')
GO

INSERT INTO [dbo].[blade_region] VALUES (N'150783', N'1507', N'00,15,1507', N'扎兰屯市', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150783', N'扎兰屯市', N'', N'', N'', N'', N'3', N'1', N''), (N'150784', N'1507', N'00,15,1507', N'额尔古纳市', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150784', N'额尔古纳市', N'', N'', N'', N'', N'3', N'1', N''), (N'150785', N'1507', N'00,15,1507', N'根河市', N'15', N'内蒙古自治区', N'1507', N'呼伦贝尔市', N'150785', N'根河市', N'', N'', N'', N'', N'3', N'1', N''), (N'1508', N'15', N'00,15', N'巴彦淖尔市', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150802', N'1508', N'00,15,1508', N'临河区', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'150802', N'临河区', N'', N'', N'', N'', N'3', N'1', N''), (N'150821', N'1508', N'00,15,1508', N'五原县', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'150821', N'五原县', N'', N'', N'', N'', N'3', N'1', N''), (N'150822', N'1508', N'00,15,1508', N'磴口县', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'150822', N'磴口县', N'', N'', N'', N'', N'3', N'1', N''), (N'150823', N'1508', N'00,15,1508', N'乌拉特前旗', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'150823', N'乌拉特前旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150824', N'1508', N'00,15,1508', N'乌拉特中旗', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'150824', N'乌拉特中旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150825', N'1508', N'00,15,1508', N'乌拉特后旗', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'150825', N'乌拉特后旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150826', N'1508', N'00,15,1508', N'杭锦后旗', N'15', N'内蒙古自治区', N'1508', N'巴彦淖尔市', N'150826', N'杭锦后旗', N'', N'', N'', N'', N'3', N'1', N''), (N'1509', N'15', N'00,15', N'乌兰察布市', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'150902', N'1509', N'00,15,1509', N'集宁区', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150902', N'集宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'150921', N'1509', N'00,15,1509', N'卓资县', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150921', N'卓资县', N'', N'', N'', N'', N'3', N'1', N''), (N'150922', N'1509', N'00,15,1509', N'化德县', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150922', N'化德县', N'', N'', N'', N'', N'3', N'1', N''), (N'150923', N'1509', N'00,15,1509', N'商都县', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150923', N'商都县', N'', N'', N'', N'', N'3', N'1', N''), (N'150924', N'1509', N'00,15,1509', N'兴和县', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150924', N'兴和县', N'', N'', N'', N'', N'3', N'1', N''), (N'150925', N'1509', N'00,15,1509', N'凉城县', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150925', N'凉城县', N'', N'', N'', N'', N'3', N'1', N''), (N'150926', N'1509', N'00,15,1509', N'察哈尔右翼前旗', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150926', N'察哈尔右翼前旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150927', N'1509', N'00,15,1509', N'察哈尔右翼中旗', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150927', N'察哈尔右翼中旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150928', N'1509', N'00,15,1509', N'察哈尔右翼后旗', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150928', N'察哈尔右翼后旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150929', N'1509', N'00,15,1509', N'四子王旗', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150929', N'四子王旗', N'', N'', N'', N'', N'3', N'1', N''), (N'150981', N'1509', N'00,15,1509', N'丰镇市', N'15', N'内蒙古自治区', N'1509', N'乌兰察布市', N'150981', N'丰镇市', N'', N'', N'', N'', N'3', N'1', N''), (N'1522', N'15', N'00,15', N'兴安盟', N'15', N'内蒙古自治区', N'1522', N'兴安盟', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'152201', N'1522', N'00,15,1522', N'乌兰浩特市', N'15', N'内蒙古自治区', N'1522', N'兴安盟', N'152201', N'乌兰浩特市', N'', N'', N'', N'', N'3', N'1', N''), (N'152202', N'1522', N'00,15,1522', N'阿尔山市', N'15', N'内蒙古自治区', N'1522', N'兴安盟', N'152202', N'阿尔山市', N'', N'', N'', N'', N'3', N'1', N''), (N'152221', N'1522', N'00,15,1522', N'科尔沁右翼前旗', N'15', N'内蒙古自治区', N'1522', N'兴安盟', N'152221', N'科尔沁右翼前旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152222', N'1522', N'00,15,1522', N'科尔沁右翼中旗', N'15', N'内蒙古自治区', N'1522', N'兴安盟', N'152222', N'科尔沁右翼中旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152223', N'1522', N'00,15,1522', N'扎赉特旗', N'15', N'内蒙古自治区', N'1522', N'兴安盟', N'152223', N'扎赉特旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152224', N'1522', N'00,15,1522', N'突泉县', N'15', N'内蒙古自治区', N'1522', N'兴安盟', N'152224', N'突泉县', N'', N'', N'', N'', N'3', N'1', N''), (N'1525', N'15', N'00,15', N'锡林郭勒盟', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'152501', N'1525', N'00,15,1525', N'二连浩特市', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152501', N'二连浩特市', N'', N'', N'', N'', N'3', N'1', N''), (N'152502', N'1525', N'00,15,1525', N'锡林浩特市', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152502', N'锡林浩特市', N'', N'', N'', N'', N'3', N'1', N''), (N'152522', N'1525', N'00,15,1525', N'阿巴嘎旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152522', N'阿巴嘎旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152523', N'1525', N'00,15,1525', N'苏尼特左旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152523', N'苏尼特左旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152524', N'1525', N'00,15,1525', N'苏尼特右旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152524', N'苏尼特右旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152525', N'1525', N'00,15,1525', N'东乌珠穆沁旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152525', N'东乌珠穆沁旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152526', N'1525', N'00,15,1525', N'西乌珠穆沁旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152526', N'西乌珠穆沁旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152527', N'1525', N'00,15,1525', N'太仆寺旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152527', N'太仆寺旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152528', N'1525', N'00,15,1525', N'镶黄旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152528', N'镶黄旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152529', N'1525', N'00,15,1525', N'正镶白旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152529', N'正镶白旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152530', N'1525', N'00,15,1525', N'正蓝旗', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152530', N'正蓝旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152531', N'1525', N'00,15,1525', N'多伦县', N'15', N'内蒙古自治区', N'1525', N'锡林郭勒盟', N'152531', N'多伦县', N'', N'', N'', N'', N'3', N'1', N''), (N'1529', N'15', N'00,15', N'阿拉善盟', N'15', N'内蒙古自治区', N'1529', N'阿拉善盟', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'152921', N'1529', N'00,15,1529', N'阿拉善左旗', N'15', N'内蒙古自治区', N'1529', N'阿拉善盟', N'152921', N'阿拉善左旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152922', N'1529', N'00,15,1529', N'阿拉善右旗', N'15', N'内蒙古自治区', N'1529', N'阿拉善盟', N'152922', N'阿拉善右旗', N'', N'', N'', N'', N'3', N'1', N''), (N'152923', N'1529', N'00,15,1529', N'额济纳旗', N'15', N'内蒙古自治区', N'1529', N'阿拉善盟', N'152923', N'额济纳旗', N'', N'', N'', N'', N'3', N'1', N''), (N'21', N'00', N'00', N'辽宁省', N'21', N'辽宁省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'2101', N'21', N'00,21', N'沈阳市', N'21', N'辽宁省', N'2101', N'沈阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210102', N'2101', N'00,21,2101', N'和平区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210102', N'和平区', N'', N'', N'', N'', N'3', N'1', N''), (N'210103', N'2101', N'00,21,2101', N'沈河区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210103', N'沈河区', N'', N'', N'', N'', N'3', N'1', N''), (N'210104', N'2101', N'00,21,2101', N'大东区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210104', N'大东区', N'', N'', N'', N'', N'3', N'1', N''), (N'210105', N'2101', N'00,21,2101', N'皇姑区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210105', N'皇姑区', N'', N'', N'', N'', N'3', N'1', N''), (N'210106', N'2101', N'00,21,2101', N'铁西区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210106', N'铁西区', N'', N'', N'', N'', N'3', N'1', N''), (N'210111', N'2101', N'00,21,2101', N'苏家屯区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210111', N'苏家屯区', N'', N'', N'', N'', N'3', N'1', N''), (N'210112', N'2101', N'00,21,2101', N'浑南区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210112', N'浑南区', N'', N'', N'', N'', N'3', N'1', N''), (N'210113', N'2101', N'00,21,2101', N'沈北新区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210113', N'沈北新区', N'', N'', N'', N'', N'3', N'1', N''), (N'210114', N'2101', N'00,21,2101', N'于洪区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210114', N'于洪区', N'', N'', N'', N'', N'3', N'1', N''), (N'210115', N'2101', N'00,21,2101', N'辽中区', N'21', N'辽宁省', N'2101', N'沈阳市', N'210115', N'辽中区', N'', N'', N'', N'', N'3', N'1', N''), (N'210123', N'2101', N'00,21,2101', N'康平县', N'21', N'辽宁省', N'2101', N'沈阳市', N'210123', N'康平县', N'', N'', N'', N'', N'3', N'1', N''), (N'210124', N'2101', N'00,21,2101', N'法库县', N'21', N'辽宁省', N'2101', N'沈阳市', N'210124', N'法库县', N'', N'', N'', N'', N'3', N'1', N''), (N'210181', N'2101', N'00,21,2101', N'新民市', N'21', N'辽宁省', N'2101', N'沈阳市', N'210181', N'新民市', N'', N'', N'', N'', N'3', N'1', N''), (N'2102', N'21', N'00,21', N'大连市', N'21', N'辽宁省', N'2102', N'大连市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210202', N'2102', N'00,21,2102', N'中山区', N'21', N'辽宁省', N'2102', N'大连市', N'210202', N'中山区', N'', N'', N'', N'', N'3', N'1', N''), (N'210203', N'2102', N'00,21,2102', N'西岗区', N'21', N'辽宁省', N'2102', N'大连市', N'210203', N'西岗区', N'', N'', N'', N'', N'3', N'1', N''), (N'210204', N'2102', N'00,21,2102', N'沙河口区', N'21', N'辽宁省', N'2102', N'大连市', N'210204', N'沙河口区', N'', N'', N'', N'', N'3', N'1', N''), (N'210211', N'2102', N'00,21,2102', N'甘井子区', N'21', N'辽宁省', N'2102', N'大连市', N'210211', N'甘井子区', N'', N'', N'', N'', N'3', N'1', N''), (N'210212', N'2102', N'00,21,2102', N'旅顺口区', N'21', N'辽宁省', N'2102', N'大连市', N'210212', N'旅顺口区', N'', N'', N'', N'', N'3', N'1', N''), (N'210213', N'2102', N'00,21,2102', N'金州区', N'21', N'辽宁省', N'2102', N'大连市', N'210213', N'金州区', N'', N'', N'', N'', N'3', N'1', N''), (N'210214', N'2102', N'00,21,2102', N'普兰店区', N'21', N'辽宁省', N'2102', N'大连市', N'210214', N'普兰店区', N'', N'', N'', N'', N'3', N'1', N''), (N'210224', N'2102', N'00,21,2102', N'长海县', N'21', N'辽宁省', N'2102', N'大连市', N'210224', N'长海县', N'', N'', N'', N'', N'3', N'1', N''), (N'210281', N'2102', N'00,21,2102', N'瓦房店市', N'21', N'辽宁省', N'2102', N'大连市', N'210281', N'瓦房店市', N'', N'', N'', N'', N'3', N'1', N''), (N'210283', N'2102', N'00,21,2102', N'庄河市', N'21', N'辽宁省', N'2102', N'大连市', N'210283', N'庄河市', N'', N'', N'', N'', N'3', N'1', N''), (N'2103', N'21', N'00,21', N'鞍山市', N'21', N'辽宁省', N'2103', N'鞍山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210302', N'2103', N'00,21,2103', N'铁东区', N'21', N'辽宁省', N'2103', N'鞍山市', N'210302', N'铁东区', N'', N'', N'', N'', N'3', N'1', N''), (N'210303', N'2103', N'00,21,2103', N'铁西区', N'21', N'辽宁省', N'2103', N'鞍山市', N'210303', N'铁西区', N'', N'', N'', N'', N'3', N'1', N''), (N'210304', N'2103', N'00,21,2103', N'立山区', N'21', N'辽宁省', N'2103', N'鞍山市', N'210304', N'立山区', N'', N'', N'', N'', N'3', N'1', N''), (N'210311', N'2103', N'00,21,2103', N'千山区', N'21', N'辽宁省', N'2103', N'鞍山市', N'210311', N'千山区', N'', N'', N'', N'', N'3', N'1', N''), (N'210321', N'2103', N'00,21,2103', N'台安县', N'21', N'辽宁省', N'2103', N'鞍山市', N'210321', N'台安县', N'', N'', N'', N'', N'3', N'1', N''), (N'210323', N'2103', N'00,21,2103', N'岫岩满族自治县', N'21', N'辽宁省', N'2103', N'鞍山市', N'210323', N'岫岩满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'210381', N'2103', N'00,21,2103', N'海城市', N'21', N'辽宁省', N'2103', N'鞍山市', N'210381', N'海城市', N'', N'', N'', N'', N'3', N'1', N''), (N'2104', N'21', N'00,21', N'抚顺市', N'21', N'辽宁省', N'2104', N'抚顺市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210402', N'2104', N'00,21,2104', N'新抚区', N'21', N'辽宁省', N'2104', N'抚顺市', N'210402', N'新抚区', N'', N'', N'', N'', N'3', N'1', N''), (N'210403', N'2104', N'00,21,2104', N'东洲区', N'21', N'辽宁省', N'2104', N'抚顺市', N'210403', N'东洲区', N'', N'', N'', N'', N'3', N'1', N''), (N'210404', N'2104', N'00,21,2104', N'望花区', N'21', N'辽宁省', N'2104', N'抚顺市', N'210404', N'望花区', N'', N'', N'', N'', N'3', N'1', N''), (N'210411', N'2104', N'00,21,2104', N'顺城区', N'21', N'辽宁省', N'2104', N'抚顺市', N'210411', N'顺城区', N'', N'', N'', N'', N'3', N'1', N''), (N'210421', N'2104', N'00,21,2104', N'抚顺县', N'21', N'辽宁省', N'2104', N'抚顺市', N'210421', N'抚顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'210422', N'2104', N'00,21,2104', N'新宾满族自治县', N'21', N'辽宁省', N'2104', N'抚顺市', N'210422', N'新宾满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'210423', N'2104', N'00,21,2104', N'清原满族自治县', N'21', N'辽宁省', N'2104', N'抚顺市', N'210423', N'清原满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'2105', N'21', N'00,21', N'本溪市', N'21', N'辽宁省', N'2105', N'本溪市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210502', N'2105', N'00,21,2105', N'平山区', N'21', N'辽宁省', N'2105', N'本溪市', N'210502', N'平山区', N'', N'', N'', N'', N'3', N'1', N''), (N'210503', N'2105', N'00,21,2105', N'溪湖区', N'21', N'辽宁省', N'2105', N'本溪市', N'210503', N'溪湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'210504', N'2105', N'00,21,2105', N'明山区', N'21', N'辽宁省', N'2105', N'本溪市', N'210504', N'明山区', N'', N'', N'', N'', N'3', N'1', N''), (N'210505', N'2105', N'00,21,2105', N'南芬区', N'21', N'辽宁省', N'2105', N'本溪市', N'210505', N'南芬区', N'', N'', N'', N'', N'3', N'1', N''), (N'210521', N'2105', N'00,21,2105', N'本溪满族自治县', N'21', N'辽宁省', N'2105', N'本溪市', N'210521', N'本溪满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'210522', N'2105', N'00,21,2105', N'桓仁满族自治县', N'21', N'辽宁省', N'2105', N'本溪市', N'210522', N'桓仁满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'2106', N'21', N'00,21', N'丹东市', N'21', N'辽宁省', N'2106', N'丹东市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210602', N'2106', N'00,21,2106', N'元宝区', N'21', N'辽宁省', N'2106', N'丹东市', N'210602', N'元宝区', N'', N'', N'', N'', N'3', N'1', N''), (N'210603', N'2106', N'00,21,2106', N'振兴区', N'21', N'辽宁省', N'2106', N'丹东市', N'210603', N'振兴区', N'', N'', N'', N'', N'3', N'1', N''), (N'210604', N'2106', N'00,21,2106', N'振安区', N'21', N'辽宁省', N'2106', N'丹东市', N'210604', N'振安区', N'', N'', N'', N'', N'3', N'1', N''), (N'210624', N'2106', N'00,21,2106', N'宽甸满族自治县', N'21', N'辽宁省', N'2106', N'丹东市', N'210624', N'宽甸满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'210681', N'2106', N'00,21,2106', N'东港市', N'21', N'辽宁省', N'2106', N'丹东市', N'210681', N'东港市', N'', N'', N'', N'', N'3', N'1', N''), (N'210682', N'2106', N'00,21,2106', N'凤城市', N'21', N'辽宁省', N'2106', N'丹东市', N'210682', N'凤城市', N'', N'', N'', N'', N'3', N'1', N''), (N'2107', N'21', N'00,21', N'锦州市', N'21', N'辽宁省', N'2107', N'锦州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210702', N'2107', N'00,21,2107', N'古塔区', N'21', N'辽宁省', N'2107', N'锦州市', N'210702', N'古塔区', N'', N'', N'', N'', N'3', N'1', N''), (N'210703', N'2107', N'00,21,2107', N'凌河区', N'21', N'辽宁省', N'2107', N'锦州市', N'210703', N'凌河区', N'', N'', N'', N'', N'3', N'1', N''), (N'210711', N'2107', N'00,21,2107', N'太和区', N'21', N'辽宁省', N'2107', N'锦州市', N'210711', N'太和区', N'', N'', N'', N'', N'3', N'1', N''), (N'210726', N'2107', N'00,21,2107', N'黑山县', N'21', N'辽宁省', N'2107', N'锦州市', N'210726', N'黑山县', N'', N'', N'', N'', N'3', N'1', N''), (N'210727', N'2107', N'00,21,2107', N'义县', N'21', N'辽宁省', N'2107', N'锦州市', N'210727', N'义县', N'', N'', N'', N'', N'3', N'1', N''), (N'210781', N'2107', N'00,21,2107', N'凌海市', N'21', N'辽宁省', N'2107', N'锦州市', N'210781', N'凌海市', N'', N'', N'', N'', N'3', N'1', N''), (N'210782', N'2107', N'00,21,2107', N'北镇市', N'21', N'辽宁省', N'2107', N'锦州市', N'210782', N'北镇市', N'', N'', N'', N'', N'3', N'1', N''), (N'2108', N'21', N'00,21', N'营口市', N'21', N'辽宁省', N'2108', N'营口市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210802', N'2108', N'00,21,2108', N'站前区', N'21', N'辽宁省', N'2108', N'营口市', N'210802', N'站前区', N'', N'', N'', N'', N'3', N'1', N''), (N'210803', N'2108', N'00,21,2108', N'西市区', N'21', N'辽宁省', N'2108', N'营口市', N'210803', N'西市区', N'', N'', N'', N'', N'3', N'1', N''), (N'210804', N'2108', N'00,21,2108', N'鲅鱼圈区', N'21', N'辽宁省', N'2108', N'营口市', N'210804', N'鲅鱼圈区', N'', N'', N'', N'', N'3', N'1', N''), (N'210811', N'2108', N'00,21,2108', N'老边区', N'21', N'辽宁省', N'2108', N'营口市', N'210811', N'老边区', N'', N'', N'', N'', N'3', N'1', N''), (N'210881', N'2108', N'00,21,2108', N'盖州市', N'21', N'辽宁省', N'2108', N'营口市', N'210881', N'盖州市', N'', N'', N'', N'', N'3', N'1', N''), (N'210882', N'2108', N'00,21,2108', N'大石桥市', N'21', N'辽宁省', N'2108', N'营口市', N'210882', N'大石桥市', N'', N'', N'', N'', N'3', N'1', N''), (N'2109', N'21', N'00,21', N'阜新市', N'21', N'辽宁省', N'2109', N'阜新市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'210902', N'2109', N'00,21,2109', N'海州区', N'21', N'辽宁省', N'2109', N'阜新市', N'210902', N'海州区', N'', N'', N'', N'', N'3', N'1', N''), (N'210903', N'2109', N'00,21,2109', N'新邱区', N'21', N'辽宁省', N'2109', N'阜新市', N'210903', N'新邱区', N'', N'', N'', N'', N'3', N'1', N''), (N'210904', N'2109', N'00,21,2109', N'太平区', N'21', N'辽宁省', N'2109', N'阜新市', N'210904', N'太平区', N'', N'', N'', N'', N'3', N'1', N''), (N'210905', N'2109', N'00,21,2109', N'清河门区', N'21', N'辽宁省', N'2109', N'阜新市', N'210905', N'清河门区', N'', N'', N'', N'', N'3', N'1', N''), (N'210911', N'2109', N'00,21,2109', N'细河区', N'21', N'辽宁省', N'2109', N'阜新市', N'210911', N'细河区', N'', N'', N'', N'', N'3', N'1', N''), (N'210921', N'2109', N'00,21,2109', N'阜新蒙古族自治县', N'21', N'辽宁省', N'2109', N'阜新市', N'210921', N'阜新蒙古族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'210922', N'2109', N'00,21,2109', N'彰武县', N'21', N'辽宁省', N'2109', N'阜新市', N'210922', N'彰武县', N'', N'', N'', N'', N'3', N'1', N''), (N'2110', N'21', N'00,21', N'辽阳市', N'21', N'辽宁省', N'2110', N'辽阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'211002', N'2110', N'00,21,2110', N'白塔区', N'21', N'辽宁省', N'2110', N'辽阳市', N'211002', N'白塔区', N'', N'', N'', N'', N'3', N'1', N''), (N'211003', N'2110', N'00,21,2110', N'文圣区', N'21', N'辽宁省', N'2110', N'辽阳市', N'211003', N'文圣区', N'', N'', N'', N'', N'3', N'1', N''), (N'211004', N'2110', N'00,21,2110', N'宏伟区', N'21', N'辽宁省', N'2110', N'辽阳市', N'211004', N'宏伟区', N'', N'', N'', N'', N'3', N'1', N''), (N'211005', N'2110', N'00,21,2110', N'弓长岭区', N'21', N'辽宁省', N'2110', N'辽阳市', N'211005', N'弓长岭区', N'', N'', N'', N'', N'3', N'1', N''), (N'211011', N'2110', N'00,21,2110', N'太子河区', N'21', N'辽宁省', N'2110', N'辽阳市', N'211011', N'太子河区', N'', N'', N'', N'', N'3', N'1', N''), (N'211021', N'2110', N'00,21,2110', N'辽阳县', N'21', N'辽宁省', N'2110', N'辽阳市', N'211021', N'辽阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'211081', N'2110', N'00,21,2110', N'灯塔市', N'21', N'辽宁省', N'2110', N'辽阳市', N'211081', N'灯塔市', N'', N'', N'', N'', N'3', N'1', N''), (N'2111', N'21', N'00,21', N'盘锦市', N'21', N'辽宁省', N'2111', N'盘锦市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'211102', N'2111', N'00,21,2111', N'双台子区', N'21', N'辽宁省', N'2111', N'盘锦市', N'211102', N'双台子区', N'', N'', N'', N'', N'3', N'1', N''), (N'211103', N'2111', N'00,21,2111', N'兴隆台区', N'21', N'辽宁省', N'2111', N'盘锦市', N'211103', N'兴隆台区', N'', N'', N'', N'', N'3', N'1', N''), (N'211104', N'2111', N'00,21,2111', N'大洼区', N'21', N'辽宁省', N'2111', N'盘锦市', N'211104', N'大洼区', N'', N'', N'', N'', N'3', N'1', N''), (N'211122', N'2111', N'00,21,2111', N'盘山县', N'21', N'辽宁省', N'2111', N'盘锦市', N'211122', N'盘山县', N'', N'', N'', N'', N'3', N'1', N''), (N'2112', N'21', N'00,21', N'铁岭市', N'21', N'辽宁省', N'2112', N'铁岭市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'211202', N'2112', N'00,21,2112', N'银州区', N'21', N'辽宁省', N'2112', N'铁岭市', N'211202', N'银州区', N'', N'', N'', N'', N'3', N'1', N''), (N'211204', N'2112', N'00,21,2112', N'清河区', N'21', N'辽宁省', N'2112', N'铁岭市', N'211204', N'清河区', N'', N'', N'', N'', N'3', N'1', N''), (N'211221', N'2112', N'00,21,2112', N'铁岭县', N'21', N'辽宁省', N'2112', N'铁岭市', N'211221', N'铁岭县', N'', N'', N'', N'', N'3', N'1', N''), (N'211223', N'2112', N'00,21,2112', N'西丰县', N'21', N'辽宁省', N'2112', N'铁岭市', N'211223', N'西丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'211224', N'2112', N'00,21,2112', N'昌图县', N'21', N'辽宁省', N'2112', N'铁岭市', N'211224', N'昌图县', N'', N'', N'', N'', N'3', N'1', N''), (N'211281', N'2112', N'00,21,2112', N'调兵山市', N'21', N'辽宁省', N'2112', N'铁岭市', N'211281', N'调兵山市', N'', N'', N'', N'', N'3', N'1', N''), (N'211282', N'2112', N'00,21,2112', N'开原市', N'21', N'辽宁省', N'2112', N'铁岭市', N'211282', N'开原市', N'', N'', N'', N'', N'3', N'1', N''), (N'2113', N'21', N'00,21', N'朝阳市', N'21', N'辽宁省', N'2113', N'朝阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'211302', N'2113', N'00,21,2113', N'双塔区', N'21', N'辽宁省', N'2113', N'朝阳市', N'211302', N'双塔区', N'', N'', N'', N'', N'3', N'1', N''), (N'211303', N'2113', N'00,21,2113', N'龙城区', N'21', N'辽宁省', N'2113', N'朝阳市', N'211303', N'龙城区', N'', N'', N'', N'', N'3', N'1', N''), (N'211321', N'2113', N'00,21,2113', N'朝阳县', N'21', N'辽宁省', N'2113', N'朝阳市', N'211321', N'朝阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'211322', N'2113', N'00,21,2113', N'建平县', N'21', N'辽宁省', N'2113', N'朝阳市', N'211322', N'建平县', N'', N'', N'', N'', N'3', N'1', N''), (N'211324', N'2113', N'00,21,2113', N'喀喇沁左翼蒙古族自治县', N'21', N'辽宁省', N'2113', N'朝阳市', N'211324', N'喀喇沁左翼蒙古族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'211381', N'2113', N'00,21,2113', N'北票市', N'21', N'辽宁省', N'2113', N'朝阳市', N'211381', N'北票市', N'', N'', N'', N'', N'3', N'1', N''), (N'211382', N'2113', N'00,21,2113', N'凌源市', N'21', N'辽宁省', N'2113', N'朝阳市', N'211382', N'凌源市', N'', N'', N'', N'', N'3', N'1', N''), (N'2114', N'21', N'00,21', N'葫芦岛市', N'21', N'辽宁省', N'2114', N'葫芦岛市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'211402', N'2114', N'00,21,2114', N'连山区', N'21', N'辽宁省', N'2114', N'葫芦岛市', N'211402', N'连山区', N'', N'', N'', N'', N'3', N'1', N''), (N'211403', N'2114', N'00,21,2114', N'龙港区', N'21', N'辽宁省', N'2114', N'葫芦岛市', N'211403', N'龙港区', N'', N'', N'', N'', N'3', N'1', N''), (N'211404', N'2114', N'00,21,2114', N'南票区', N'21', N'辽宁省', N'2114', N'葫芦岛市', N'211404', N'南票区', N'', N'', N'', N'', N'3', N'1', N''), (N'211421', N'2114', N'00,21,2114', N'绥中县', N'21', N'辽宁省', N'2114', N'葫芦岛市', N'211421', N'绥中县', N'', N'', N'', N'', N'3', N'1', N''), (N'211422', N'2114', N'00,21,2114', N'建昌县', N'21', N'辽宁省', N'2114', N'葫芦岛市', N'211422', N'建昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'211481', N'2114', N'00,21,2114', N'兴城市', N'21', N'辽宁省', N'2114', N'葫芦岛市', N'211481', N'兴城市', N'', N'', N'', N'', N'3', N'1', N''), (N'22', N'00', N'00', N'吉林省', N'22', N'吉林省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'2201', N'22', N'00,22', N'长春市', N'22', N'吉林省', N'2201', N'长春市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220102', N'2201', N'00,22,2201', N'南关区', N'22', N'吉林省', N'2201', N'长春市', N'220102', N'南关区', N'', N'', N'', N'', N'3', N'1', N''), (N'220103', N'2201', N'00,22,2201', N'宽城区', N'22', N'吉林省', N'2201', N'长春市', N'220103', N'宽城区', N'', N'', N'', N'', N'3', N'1', N''), (N'220104', N'2201', N'00,22,2201', N'朝阳区', N'22', N'吉林省', N'2201', N'长春市', N'220104', N'朝阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'220105', N'2201', N'00,22,2201', N'二道区', N'22', N'吉林省', N'2201', N'长春市', N'220105', N'二道区', N'', N'', N'', N'', N'3', N'1', N''), (N'220106', N'2201', N'00,22,2201', N'绿园区', N'22', N'吉林省', N'2201', N'长春市', N'220106', N'绿园区', N'', N'', N'', N'', N'3', N'1', N''), (N'220112', N'2201', N'00,22,2201', N'双阳区', N'22', N'吉林省', N'2201', N'长春市', N'220112', N'双阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'220113', N'2201', N'00,22,2201', N'九台区', N'22', N'吉林省', N'2201', N'长春市', N'220113', N'九台区', N'', N'', N'', N'', N'3', N'1', N''), (N'220122', N'2201', N'00,22,2201', N'农安县', N'22', N'吉林省', N'2201', N'长春市', N'220122', N'农安县', N'', N'', N'', N'', N'3', N'1', N''), (N'220182', N'2201', N'00,22,2201', N'榆树市', N'22', N'吉林省', N'2201', N'长春市', N'220182', N'榆树市', N'', N'', N'', N'', N'3', N'1', N''), (N'220183', N'2201', N'00,22,2201', N'德惠市', N'22', N'吉林省', N'2201', N'长春市', N'220183', N'德惠市', N'', N'', N'', N'', N'3', N'1', N''), (N'2202', N'22', N'00,22', N'吉林市', N'22', N'吉林省', N'2202', N'吉林市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220202', N'2202', N'00,22,2202', N'昌邑区', N'22', N'吉林省', N'2202', N'吉林市', N'220202', N'昌邑区', N'', N'', N'', N'', N'3', N'1', N''), (N'220203', N'2202', N'00,22,2202', N'龙潭区', N'22', N'吉林省', N'2202', N'吉林市', N'220203', N'龙潭区', N'', N'', N'', N'', N'3', N'1', N''), (N'220204', N'2202', N'00,22,2202', N'船营区', N'22', N'吉林省', N'2202', N'吉林市', N'220204', N'船营区', N'', N'', N'', N'', N'3', N'1', N''), (N'220211', N'2202', N'00,22,2202', N'丰满区', N'22', N'吉林省', N'2202', N'吉林市', N'220211', N'丰满区', N'', N'', N'', N'', N'3', N'1', N''), (N'220221', N'2202', N'00,22,2202', N'永吉县', N'22', N'吉林省', N'2202', N'吉林市', N'220221', N'永吉县', N'', N'', N'', N'', N'3', N'1', N''), (N'220281', N'2202', N'00,22,2202', N'蛟河市', N'22', N'吉林省', N'2202', N'吉林市', N'220281', N'蛟河市', N'', N'', N'', N'', N'3', N'1', N''), (N'220282', N'2202', N'00,22,2202', N'桦甸市', N'22', N'吉林省', N'2202', N'吉林市', N'220282', N'桦甸市', N'', N'', N'', N'', N'3', N'1', N''), (N'220283', N'2202', N'00,22,2202', N'舒兰市', N'22', N'吉林省', N'2202', N'吉林市', N'220283', N'舒兰市', N'', N'', N'', N'', N'3', N'1', N''), (N'220284', N'2202', N'00,22,2202', N'磐石市', N'22', N'吉林省', N'2202', N'吉林市', N'220284', N'磐石市', N'', N'', N'', N'', N'3', N'1', N''), (N'2203', N'22', N'00,22', N'四平市', N'22', N'吉林省', N'2203', N'四平市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220302', N'2203', N'00,22,2203', N'铁西区', N'22', N'吉林省', N'2203', N'四平市', N'220302', N'铁西区', N'', N'', N'', N'', N'3', N'1', N''), (N'220303', N'2203', N'00,22,2203', N'铁东区', N'22', N'吉林省', N'2203', N'四平市', N'220303', N'铁东区', N'', N'', N'', N'', N'3', N'1', N''), (N'220322', N'2203', N'00,22,2203', N'梨树县', N'22', N'吉林省', N'2203', N'四平市', N'220322', N'梨树县', N'', N'', N'', N'', N'3', N'1', N''), (N'220323', N'2203', N'00,22,2203', N'伊通满族自治县', N'22', N'吉林省', N'2203', N'四平市', N'220323', N'伊通满族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'220381', N'2203', N'00,22,2203', N'公主岭市', N'22', N'吉林省', N'2203', N'四平市', N'220381', N'公主岭市', N'', N'', N'', N'', N'3', N'1', N''), (N'220382', N'2203', N'00,22,2203', N'双辽市', N'22', N'吉林省', N'2203', N'四平市', N'220382', N'双辽市', N'', N'', N'', N'', N'3', N'1', N''), (N'2204', N'22', N'00,22', N'辽源市', N'22', N'吉林省', N'2204', N'辽源市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220402', N'2204', N'00,22,2204', N'龙山区', N'22', N'吉林省', N'2204', N'辽源市', N'220402', N'龙山区', N'', N'', N'', N'', N'3', N'1', N''), (N'220403', N'2204', N'00,22,2204', N'西安区', N'22', N'吉林省', N'2204', N'辽源市', N'220403', N'西安区', N'', N'', N'', N'', N'3', N'1', N''), (N'220421', N'2204', N'00,22,2204', N'东丰县', N'22', N'吉林省', N'2204', N'辽源市', N'220421', N'东丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'220422', N'2204', N'00,22,2204', N'东辽县', N'22', N'吉林省', N'2204', N'辽源市', N'220422', N'东辽县', N'', N'', N'', N'', N'3', N'1', N''), (N'2205', N'22', N'00,22', N'通化市', N'22', N'吉林省', N'2205', N'通化市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220502', N'2205', N'00,22,2205', N'东昌区', N'22', N'吉林省', N'2205', N'通化市', N'220502', N'东昌区', N'', N'', N'', N'', N'3', N'1', N''), (N'220503', N'2205', N'00,22,2205', N'二道江区', N'22', N'吉林省', N'2205', N'通化市', N'220503', N'二道江区', N'', N'', N'', N'', N'3', N'1', N''), (N'220521', N'2205', N'00,22,2205', N'通化县', N'22', N'吉林省', N'2205', N'通化市', N'220521', N'通化县', N'', N'', N'', N'', N'3', N'1', N''), (N'220523', N'2205', N'00,22,2205', N'辉南县', N'22', N'吉林省', N'2205', N'通化市', N'220523', N'辉南县', N'', N'', N'', N'', N'3', N'1', N''), (N'220524', N'2205', N'00,22,2205', N'柳河县', N'22', N'吉林省', N'2205', N'通化市', N'220524', N'柳河县', N'', N'', N'', N'', N'3', N'1', N''), (N'220581', N'2205', N'00,22,2205', N'梅河口市', N'22', N'吉林省', N'2205', N'通化市', N'220581', N'梅河口市', N'', N'', N'', N'', N'3', N'1', N''), (N'220582', N'2205', N'00,22,2205', N'集安市', N'22', N'吉林省', N'2205', N'通化市', N'220582', N'集安市', N'', N'', N'', N'', N'3', N'1', N''), (N'2206', N'22', N'00,22', N'白山市', N'22', N'吉林省', N'2206', N'白山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220602', N'2206', N'00,22,2206', N'浑江区', N'22', N'吉林省', N'2206', N'白山市', N'220602', N'浑江区', N'', N'', N'', N'', N'3', N'1', N''), (N'220605', N'2206', N'00,22,2206', N'江源区', N'22', N'吉林省', N'2206', N'白山市', N'220605', N'江源区', N'', N'', N'', N'', N'3', N'1', N''), (N'220621', N'2206', N'00,22,2206', N'抚松县', N'22', N'吉林省', N'2206', N'白山市', N'220621', N'抚松县', N'', N'', N'', N'', N'3', N'1', N''), (N'220622', N'2206', N'00,22,2206', N'靖宇县', N'22', N'吉林省', N'2206', N'白山市', N'220622', N'靖宇县', N'', N'', N'', N'', N'3', N'1', N''), (N'220623', N'2206', N'00,22,2206', N'长白朝鲜族自治县', N'22', N'吉林省', N'2206', N'白山市', N'220623', N'长白朝鲜族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'220681', N'2206', N'00,22,2206', N'临江市', N'22', N'吉林省', N'2206', N'白山市', N'220681', N'临江市', N'', N'', N'', N'', N'3', N'1', N''), (N'2207', N'22', N'00,22', N'松原市', N'22', N'吉林省', N'2207', N'松原市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220702', N'2207', N'00,22,2207', N'宁江区', N'22', N'吉林省', N'2207', N'松原市', N'220702', N'宁江区', N'', N'', N'', N'', N'3', N'1', N''), (N'220721', N'2207', N'00,22,2207', N'前郭尔罗斯蒙古族自治县', N'22', N'吉林省', N'2207', N'松原市', N'220721', N'前郭尔罗斯蒙古族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'220722', N'2207', N'00,22,2207', N'长岭县', N'22', N'吉林省', N'2207', N'松原市', N'220722', N'长岭县', N'', N'', N'', N'', N'3', N'1', N''), (N'220723', N'2207', N'00,22,2207', N'乾安县', N'22', N'吉林省', N'2207', N'松原市', N'220723', N'乾安县', N'', N'', N'', N'', N'3', N'1', N''), (N'220781', N'2207', N'00,22,2207', N'扶余市', N'22', N'吉林省', N'2207', N'松原市', N'220781', N'扶余市', N'', N'', N'', N'', N'3', N'1', N''), (N'2208', N'22', N'00,22', N'白城市', N'22', N'吉林省', N'2208', N'白城市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'220802', N'2208', N'00,22,2208', N'洮北区', N'22', N'吉林省', N'2208', N'白城市', N'220802', N'洮北区', N'', N'', N'', N'', N'3', N'1', N''), (N'220821', N'2208', N'00,22,2208', N'镇赉县', N'22', N'吉林省', N'2208', N'白城市', N'220821', N'镇赉县', N'', N'', N'', N'', N'3', N'1', N''), (N'220822', N'2208', N'00,22,2208', N'通榆县', N'22', N'吉林省', N'2208', N'白城市', N'220822', N'通榆县', N'', N'', N'', N'', N'3', N'1', N''), (N'220881', N'2208', N'00,22,2208', N'洮南市', N'22', N'吉林省', N'2208', N'白城市', N'220881', N'洮南市', N'', N'', N'', N'', N'3', N'1', N''), (N'220882', N'2208', N'00,22,2208', N'大安市', N'22', N'吉林省', N'2208', N'白城市', N'220882', N'大安市', N'', N'', N'', N'', N'3', N'1', N''), (N'2224', N'22', N'00,22', N'延边朝鲜族自治州', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'222401', N'2224', N'00,22,2224', N'延吉市', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222401', N'延吉市', N'', N'', N'', N'', N'3', N'1', N''), (N'222402', N'2224', N'00,22,2224', N'图们市', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222402', N'图们市', N'', N'', N'', N'', N'3', N'1', N''), (N'222403', N'2224', N'00,22,2224', N'敦化市', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222403', N'敦化市', N'', N'', N'', N'', N'3', N'1', N''), (N'222404', N'2224', N'00,22,2224', N'珲春市', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222404', N'珲春市', N'', N'', N'', N'', N'3', N'1', N''), (N'222405', N'2224', N'00,22,2224', N'龙井市', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222405', N'龙井市', N'', N'', N'', N'', N'3', N'1', N''), (N'222406', N'2224', N'00,22,2224', N'和龙市', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222406', N'和龙市', N'', N'', N'', N'', N'3', N'1', N''), (N'222424', N'2224', N'00,22,2224', N'汪清县', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222424', N'汪清县', N'', N'', N'', N'', N'3', N'1', N''), (N'222426', N'2224', N'00,22,2224', N'安图县', N'22', N'吉林省', N'2224', N'延边朝鲜族自治州', N'222426', N'安图县', N'', N'', N'', N'', N'3', N'1', N''), (N'23', N'00', N'00', N'黑龙江省', N'23', N'黑龙江省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'2301', N'23', N'00,23', N'哈尔滨市', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230102', N'2301', N'00,23,2301', N'道里区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230102', N'道里区', N'', N'', N'', N'', N'3', N'1', N''), (N'230103', N'2301', N'00,23,2301', N'南岗区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230103', N'南岗区', N'', N'', N'', N'', N'3', N'1', N''), (N'230104', N'2301', N'00,23,2301', N'道外区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230104', N'道外区', N'', N'', N'', N'', N'3', N'1', N''), (N'230108', N'2301', N'00,23,2301', N'平房区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230108', N'平房区', N'', N'', N'', N'', N'3', N'1', N''), (N'230109', N'2301', N'00,23,2301', N'松北区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230109', N'松北区', N'', N'', N'', N'', N'3', N'1', N''), (N'230110', N'2301', N'00,23,2301', N'香坊区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230110', N'香坊区', N'', N'', N'', N'', N'3', N'1', N''), (N'230111', N'2301', N'00,23,2301', N'呼兰区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230111', N'呼兰区', N'', N'', N'', N'', N'3', N'1', N''), (N'230112', N'2301', N'00,23,2301', N'阿城区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230112', N'阿城区', N'', N'', N'', N'', N'3', N'1', N''), (N'230113', N'2301', N'00,23,2301', N'双城区', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230113', N'双城区', N'', N'', N'', N'', N'3', N'1', N''), (N'230123', N'2301', N'00,23,2301', N'依兰县', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230123', N'依兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'230124', N'2301', N'00,23,2301', N'方正县', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230124', N'方正县', N'', N'', N'', N'', N'3', N'1', N''), (N'230125', N'2301', N'00,23,2301', N'宾县', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230125', N'宾县', N'', N'', N'', N'', N'3', N'1', N''), (N'230126', N'2301', N'00,23,2301', N'巴彦县', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230126', N'巴彦县', N'', N'', N'', N'', N'3', N'1', N''), (N'230127', N'2301', N'00,23,2301', N'木兰县', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230127', N'木兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'230128', N'2301', N'00,23,2301', N'通河县', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230128', N'通河县', N'', N'', N'', N'', N'3', N'1', N''), (N'230129', N'2301', N'00,23,2301', N'延寿县', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230129', N'延寿县', N'', N'', N'', N'', N'3', N'1', N''), (N'230183', N'2301', N'00,23,2301', N'尚志市', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230183', N'尚志市', N'', N'', N'', N'', N'3', N'1', N''), (N'230184', N'2301', N'00,23,2301', N'五常市', N'23', N'黑龙江省', N'2301', N'哈尔滨市', N'230184', N'五常市', N'', N'', N'', N'', N'3', N'1', N''), (N'2302', N'23', N'00,23', N'齐齐哈尔市', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230202', N'2302', N'00,23,2302', N'龙沙区', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230202', N'龙沙区', N'', N'', N'', N'', N'3', N'1', N''), (N'230203', N'2302', N'00,23,2302', N'建华区', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230203', N'建华区', N'', N'', N'', N'', N'3', N'1', N''), (N'230204', N'2302', N'00,23,2302', N'铁锋区', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230204', N'铁锋区', N'', N'', N'', N'', N'3', N'1', N''), (N'230205', N'2302', N'00,23,2302', N'昂昂溪区', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230205', N'昂昂溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'230206', N'2302', N'00,23,2302', N'富拉尔基区', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230206', N'富拉尔基区', N'', N'', N'', N'', N'3', N'1', N''), (N'230207', N'2302', N'00,23,2302', N'碾子山区', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230207', N'碾子山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230208', N'2302', N'00,23,2302', N'梅里斯达斡尔族区', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230208', N'梅里斯达斡尔族区', N'', N'', N'', N'', N'3', N'1', N''), (N'230221', N'2302', N'00,23,2302', N'龙江县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230221', N'龙江县', N'', N'', N'', N'', N'3', N'1', N''), (N'230223', N'2302', N'00,23,2302', N'依安县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230223', N'依安县', N'', N'', N'', N'', N'3', N'1', N''), (N'230224', N'2302', N'00,23,2302', N'泰来县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230224', N'泰来县', N'', N'', N'', N'', N'3', N'1', N''), (N'230225', N'2302', N'00,23,2302', N'甘南县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230225', N'甘南县', N'', N'', N'', N'', N'3', N'1', N''), (N'230227', N'2302', N'00,23,2302', N'富裕县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230227', N'富裕县', N'', N'', N'', N'', N'3', N'1', N''), (N'230229', N'2302', N'00,23,2302', N'克山县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230229', N'克山县', N'', N'', N'', N'', N'3', N'1', N''), (N'230230', N'2302', N'00,23,2302', N'克东县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230230', N'克东县', N'', N'', N'', N'', N'3', N'1', N''), (N'230231', N'2302', N'00,23,2302', N'拜泉县', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230231', N'拜泉县', N'', N'', N'', N'', N'3', N'1', N''), (N'230281', N'2302', N'00,23,2302', N'讷河市', N'23', N'黑龙江省', N'2302', N'齐齐哈尔市', N'230281', N'讷河市', N'', N'', N'', N'', N'3', N'1', N''), (N'2303', N'23', N'00,23', N'鸡西市', N'23', N'黑龙江省', N'2303', N'鸡西市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230302', N'2303', N'00,23,2303', N'鸡冠区', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230302', N'鸡冠区', N'', N'', N'', N'', N'3', N'1', N''), (N'230303', N'2303', N'00,23,2303', N'恒山区', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230303', N'恒山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230304', N'2303', N'00,23,2303', N'滴道区', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230304', N'滴道区', N'', N'', N'', N'', N'3', N'1', N''), (N'230305', N'2303', N'00,23,2303', N'梨树区', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230305', N'梨树区', N'', N'', N'', N'', N'3', N'1', N''), (N'230306', N'2303', N'00,23,2303', N'城子河区', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230306', N'城子河区', N'', N'', N'', N'', N'3', N'1', N''), (N'230307', N'2303', N'00,23,2303', N'麻山区', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230307', N'麻山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230321', N'2303', N'00,23,2303', N'鸡东县', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230321', N'鸡东县', N'', N'', N'', N'', N'3', N'1', N''), (N'230381', N'2303', N'00,23,2303', N'虎林市', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230381', N'虎林市', N'', N'', N'', N'', N'3', N'1', N''), (N'230382', N'2303', N'00,23,2303', N'密山市', N'23', N'黑龙江省', N'2303', N'鸡西市', N'230382', N'密山市', N'', N'', N'', N'', N'3', N'1', N''), (N'2304', N'23', N'00,23', N'鹤岗市', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230402', N'2304', N'00,23,2304', N'向阳区', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230402', N'向阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'230403', N'2304', N'00,23,2304', N'工农区', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230403', N'工农区', N'', N'', N'', N'', N'3', N'1', N''), (N'230404', N'2304', N'00,23,2304', N'南山区', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230404', N'南山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230405', N'2304', N'00,23,2304', N'兴安区', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230405', N'兴安区', N'', N'', N'', N'', N'3', N'1', N''), (N'230406', N'2304', N'00,23,2304', N'东山区', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230406', N'东山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230407', N'2304', N'00,23,2304', N'兴山区', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230407', N'兴山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230421', N'2304', N'00,23,2304', N'萝北县', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230421', N'萝北县', N'', N'', N'', N'', N'3', N'1', N''), (N'230422', N'2304', N'00,23,2304', N'绥滨县', N'23', N'黑龙江省', N'2304', N'鹤岗市', N'230422', N'绥滨县', N'', N'', N'', N'', N'3', N'1', N''), (N'2305', N'23', N'00,23', N'双鸭山市', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230502', N'2305', N'00,23,2305', N'尖山区', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230502', N'尖山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230503', N'2305', N'00,23,2305', N'岭东区', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230503', N'岭东区', N'', N'', N'', N'', N'3', N'1', N''), (N'230505', N'2305', N'00,23,2305', N'四方台区', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230505', N'四方台区', N'', N'', N'', N'', N'3', N'1', N''), (N'230506', N'2305', N'00,23,2305', N'宝山区', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230506', N'宝山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230521', N'2305', N'00,23,2305', N'集贤县', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230521', N'集贤县', N'', N'', N'', N'', N'3', N'1', N''), (N'230522', N'2305', N'00,23,2305', N'友谊县', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230522', N'友谊县', N'', N'', N'', N'', N'3', N'1', N''), (N'230523', N'2305', N'00,23,2305', N'宝清县', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230523', N'宝清县', N'', N'', N'', N'', N'3', N'1', N''), (N'230524', N'2305', N'00,23,2305', N'饶河县', N'23', N'黑龙江省', N'2305', N'双鸭山市', N'230524', N'饶河县', N'', N'', N'', N'', N'3', N'1', N''), (N'2306', N'23', N'00,23', N'大庆市', N'23', N'黑龙江省', N'2306', N'大庆市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230602', N'2306', N'00,23,2306', N'萨尔图区', N'23', N'黑龙江省', N'2306', N'大庆市', N'230602', N'萨尔图区', N'', N'', N'', N'', N'3', N'1', N''), (N'230603', N'2306', N'00,23,2306', N'龙凤区', N'23', N'黑龙江省', N'2306', N'大庆市', N'230603', N'龙凤区', N'', N'', N'', N'', N'3', N'1', N''), (N'230604', N'2306', N'00,23,2306', N'让胡路区', N'23', N'黑龙江省', N'2306', N'大庆市', N'230604', N'让胡路区', N'', N'', N'', N'', N'3', N'1', N''), (N'230605', N'2306', N'00,23,2306', N'红岗区', N'23', N'黑龙江省', N'2306', N'大庆市', N'230605', N'红岗区', N'', N'', N'', N'', N'3', N'1', N''), (N'230606', N'2306', N'00,23,2306', N'大同区', N'23', N'黑龙江省', N'2306', N'大庆市', N'230606', N'大同区', N'', N'', N'', N'', N'3', N'1', N''), (N'230621', N'2306', N'00,23,2306', N'肇州县', N'23', N'黑龙江省', N'2306', N'大庆市', N'230621', N'肇州县', N'', N'', N'', N'', N'3', N'1', N''), (N'230622', N'2306', N'00,23,2306', N'肇源县', N'23', N'黑龙江省', N'2306', N'大庆市', N'230622', N'肇源县', N'', N'', N'', N'', N'3', N'1', N''), (N'230623', N'2306', N'00,23,2306', N'林甸县', N'23', N'黑龙江省', N'2306', N'大庆市', N'230623', N'林甸县', N'', N'', N'', N'', N'3', N'1', N''), (N'230624', N'2306', N'00,23,2306', N'杜尔伯特蒙古族自治县', N'23', N'黑龙江省', N'2306', N'大庆市', N'230624', N'杜尔伯特蒙古族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'2307', N'23', N'00,23', N'伊春市', N'23', N'黑龙江省', N'2307', N'伊春市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230717', N'2307', N'00,23,2307', N'伊美区', N'23', N'黑龙江省', N'2307', N'伊春市', N'230717', N'伊美区', N'', N'', N'', N'', N'3', N'1', N''), (N'230718', N'2307', N'00,23,2307', N'乌翠区', N'23', N'黑龙江省', N'2307', N'伊春市', N'230718', N'乌翠区', N'', N'', N'', N'', N'3', N'1', N''), (N'230719', N'2307', N'00,23,2307', N'友好区', N'23', N'黑龙江省', N'2307', N'伊春市', N'230719', N'友好区', N'', N'', N'', N'', N'3', N'1', N''), (N'230722', N'2307', N'00,23,2307', N'嘉荫县', N'23', N'黑龙江省', N'2307', N'伊春市', N'230722', N'嘉荫县', N'', N'', N'', N'', N'3', N'1', N''), (N'230723', N'2307', N'00,23,2307', N'汤旺县', N'23', N'黑龙江省', N'2307', N'伊春市', N'230723', N'汤旺县', N'', N'', N'', N'', N'3', N'1', N''), (N'230724', N'2307', N'00,23,2307', N'丰林县', N'23', N'黑龙江省', N'2307', N'伊春市', N'230724', N'丰林县', N'', N'', N'', N'', N'3', N'1', N''), (N'230725', N'2307', N'00,23,2307', N'大箐山县', N'23', N'黑龙江省', N'2307', N'伊春市', N'230725', N'大箐山县', N'', N'', N'', N'', N'3', N'1', N''), (N'230726', N'2307', N'00,23,2307', N'南岔县', N'23', N'黑龙江省', N'2307', N'伊春市', N'230726', N'南岔县', N'', N'', N'', N'', N'3', N'1', N''), (N'230751', N'2307', N'00,23,2307', N'金林区', N'23', N'黑龙江省', N'2307', N'伊春市', N'230751', N'金林区', N'', N'', N'', N'', N'3', N'1', N''), (N'230781', N'2307', N'00,23,2307', N'铁力市', N'23', N'黑龙江省', N'2307', N'伊春市', N'230781', N'铁力市', N'', N'', N'', N'', N'3', N'1', N''), (N'2308', N'23', N'00,23', N'佳木斯市', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230803', N'2308', N'00,23,2308', N'向阳区', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230803', N'向阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'230804', N'2308', N'00,23,2308', N'前进区', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230804', N'前进区', N'', N'', N'', N'', N'3', N'1', N''), (N'230805', N'2308', N'00,23,2308', N'东风区', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230805', N'东风区', N'', N'', N'', N'', N'3', N'1', N''), (N'230811', N'2308', N'00,23,2308', N'郊区', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230811', N'郊区', N'', N'', N'', N'', N'3', N'1', N''), (N'230822', N'2308', N'00,23,2308', N'桦南县', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230822', N'桦南县', N'', N'', N'', N'', N'3', N'1', N''), (N'230826', N'2308', N'00,23,2308', N'桦川县', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230826', N'桦川县', N'', N'', N'', N'', N'3', N'1', N''), (N'230828', N'2308', N'00,23,2308', N'汤原县', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230828', N'汤原县', N'', N'', N'', N'', N'3', N'1', N''), (N'230881', N'2308', N'00,23,2308', N'同江市', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230881', N'同江市', N'', N'', N'', N'', N'3', N'1', N''), (N'230882', N'2308', N'00,23,2308', N'富锦市', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230882', N'富锦市', N'', N'', N'', N'', N'3', N'1', N''), (N'230883', N'2308', N'00,23,2308', N'抚远市', N'23', N'黑龙江省', N'2308', N'佳木斯市', N'230883', N'抚远市', N'', N'', N'', N'', N'3', N'1', N''), (N'2309', N'23', N'00,23', N'七台河市', N'23', N'黑龙江省', N'2309', N'七台河市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'230902', N'2309', N'00,23,2309', N'新兴区', N'23', N'黑龙江省', N'2309', N'七台河市', N'230902', N'新兴区', N'', N'', N'', N'', N'3', N'1', N''), (N'230903', N'2309', N'00,23,2309', N'桃山区', N'23', N'黑龙江省', N'2309', N'七台河市', N'230903', N'桃山区', N'', N'', N'', N'', N'3', N'1', N''), (N'230904', N'2309', N'00,23,2309', N'茄子河区', N'23', N'黑龙江省', N'2309', N'七台河市', N'230904', N'茄子河区', N'', N'', N'', N'', N'3', N'1', N''), (N'230921', N'2309', N'00,23,2309', N'勃利县', N'23', N'黑龙江省', N'2309', N'七台河市', N'230921', N'勃利县', N'', N'', N'', N'', N'3', N'1', N''), (N'2310', N'23', N'00,23', N'牡丹江市', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'231002', N'2310', N'00,23,2310', N'东安区', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231002', N'东安区', N'', N'', N'', N'', N'3', N'1', N''), (N'231003', N'2310', N'00,23,2310', N'阳明区', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231003', N'阳明区', N'', N'', N'', N'', N'3', N'1', N''), (N'231004', N'2310', N'00,23,2310', N'爱民区', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231004', N'爱民区', N'', N'', N'', N'', N'3', N'1', N''), (N'231005', N'2310', N'00,23,2310', N'西安区', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231005', N'西安区', N'', N'', N'', N'', N'3', N'1', N''), (N'231025', N'2310', N'00,23,2310', N'林口县', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231025', N'林口县', N'', N'', N'', N'', N'3', N'1', N''), (N'231081', N'2310', N'00,23,2310', N'绥芬河市', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231081', N'绥芬河市', N'', N'', N'', N'', N'3', N'1', N''), (N'231083', N'2310', N'00,23,2310', N'海林市', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231083', N'海林市', N'', N'', N'', N'', N'3', N'1', N''), (N'231084', N'2310', N'00,23,2310', N'宁安市', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231084', N'宁安市', N'', N'', N'', N'', N'3', N'1', N''), (N'231085', N'2310', N'00,23,2310', N'穆棱市', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231085', N'穆棱市', N'', N'', N'', N'', N'3', N'1', N''), (N'231086', N'2310', N'00,23,2310', N'东宁市', N'23', N'黑龙江省', N'2310', N'牡丹江市', N'231086', N'东宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'2311', N'23', N'00,23', N'黑河市', N'23', N'黑龙江省', N'2311', N'黑河市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'231102', N'2311', N'00,23,2311', N'爱辉区', N'23', N'黑龙江省', N'2311', N'黑河市', N'231102', N'爱辉区', N'', N'', N'', N'', N'3', N'1', N''), (N'231123', N'2311', N'00,23,2311', N'逊克县', N'23', N'黑龙江省', N'2311', N'黑河市', N'231123', N'逊克县', N'', N'', N'', N'', N'3', N'1', N''), (N'231124', N'2311', N'00,23,2311', N'孙吴县', N'23', N'黑龙江省', N'2311', N'黑河市', N'231124', N'孙吴县', N'', N'', N'', N'', N'3', N'1', N''), (N'231181', N'2311', N'00,23,2311', N'北安市', N'23', N'黑龙江省', N'2311', N'黑河市', N'231181', N'北安市', N'', N'', N'', N'', N'3', N'1', N''), (N'231182', N'2311', N'00,23,2311', N'五大连池市', N'23', N'黑龙江省', N'2311', N'黑河市', N'231182', N'五大连池市', N'', N'', N'', N'', N'3', N'1', N''), (N'231183', N'2311', N'00,23,2311', N'嫩江市', N'23', N'黑龙江省', N'2311', N'黑河市', N'231183', N'嫩江市', N'', N'', N'', N'', N'3', N'1', N''), (N'2312', N'23', N'00,23', N'绥化市', N'23', N'黑龙江省', N'2312', N'绥化市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'231202', N'2312', N'00,23,2312', N'北林区', N'23', N'黑龙江省', N'2312', N'绥化市', N'231202', N'北林区', N'', N'', N'', N'', N'3', N'1', N''), (N'231221', N'2312', N'00,23,2312', N'望奎县', N'23', N'黑龙江省', N'2312', N'绥化市', N'231221', N'望奎县', N'', N'', N'', N'', N'3', N'1', N''), (N'231222', N'2312', N'00,23,2312', N'兰西县', N'23', N'黑龙江省', N'2312', N'绥化市', N'231222', N'兰西县', N'', N'', N'', N'', N'3', N'1', N''), (N'231223', N'2312', N'00,23,2312', N'青冈县', N'23', N'黑龙江省', N'2312', N'绥化市', N'231223', N'青冈县', N'', N'', N'', N'', N'3', N'1', N''), (N'231224', N'2312', N'00,23,2312', N'庆安县', N'23', N'黑龙江省', N'2312', N'绥化市', N'231224', N'庆安县', N'', N'', N'', N'', N'3', N'1', N''), (N'231225', N'2312', N'00,23,2312', N'明水县', N'23', N'黑龙江省', N'2312', N'绥化市', N'231225', N'明水县', N'', N'', N'', N'', N'3', N'1', N''), (N'231226', N'2312', N'00,23,2312', N'绥棱县', N'23', N'黑龙江省', N'2312', N'绥化市', N'231226', N'绥棱县', N'', N'', N'', N'', N'3', N'1', N''), (N'231281', N'2312', N'00,23,2312', N'安达市', N'23', N'黑龙江省', N'2312', N'绥化市', N'231281', N'安达市', N'', N'', N'', N'', N'3', N'1', N''), (N'231282', N'2312', N'00,23,2312', N'肇东市', N'23', N'黑龙江省', N'2312', N'绥化市', N'231282', N'肇东市', N'', N'', N'', N'', N'3', N'1', N''), (N'231283', N'2312', N'00,23,2312', N'海伦市', N'23', N'黑龙江省', N'2312', N'绥化市', N'231283', N'海伦市', N'', N'', N'', N'', N'3', N'1', N''), (N'2327', N'23', N'00,23', N'大兴安岭地区', N'23', N'黑龙江省', N'2327', N'大兴安岭地区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'232701', N'2327', N'00,23,2327', N'漠河市', N'23', N'黑龙江省', N'2327', N'大兴安岭地区', N'232701', N'漠河市', N'', N'', N'', N'', N'3', N'1', N''), (N'232721', N'2327', N'00,23,2327', N'呼玛县', N'23', N'黑龙江省', N'2327', N'大兴安岭地区', N'232721', N'呼玛县', N'', N'', N'', N'', N'3', N'1', N''), (N'232722', N'2327', N'00,23,2327', N'塔河县', N'23', N'黑龙江省', N'2327', N'大兴安岭地区', N'232722', N'塔河县', N'', N'', N'', N'', N'3', N'1', N''), (N'31', N'00', N'00', N'上海市', N'31', N'上海市', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'3101', N'31', N'00,31', N'上海市', N'31', N'上海市', N'3101', N'上海市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'310101', N'3101', N'00,31,3101', N'黄浦区', N'31', N'上海市', N'3101', N'上海市', N'310101', N'黄浦区', N'', N'', N'', N'', N'3', N'1', N''), (N'310104', N'3101', N'00,31,3101', N'徐汇区', N'31', N'上海市', N'3101', N'上海市', N'310104', N'徐汇区', N'', N'', N'', N'', N'3', N'1', N''), (N'310105', N'3101', N'00,31,3101', N'长宁区', N'31', N'上海市', N'3101', N'上海市', N'310105', N'长宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'310106', N'3101', N'00,31,3101', N'静安区', N'31', N'上海市', N'3101', N'上海市', N'310106', N'静安区', N'', N'', N'', N'', N'3', N'1', N''), (N'310107', N'3101', N'00,31,3101', N'普陀区', N'31', N'上海市', N'3101', N'上海市', N'310107', N'普陀区', N'', N'', N'', N'', N'3', N'1', N''), (N'310109', N'3101', N'00,31,3101', N'虹口区', N'31', N'上海市', N'3101', N'上海市', N'310109', N'虹口区', N'', N'', N'', N'', N'3', N'1', N''), (N'310110', N'3101', N'00,31,3101', N'杨浦区', N'31', N'上海市', N'3101', N'上海市', N'310110', N'杨浦区', N'', N'', N'', N'', N'3', N'1', N''), (N'310112', N'3101', N'00,31,3101', N'闵行区', N'31', N'上海市', N'3101', N'上海市', N'310112', N'闵行区', N'', N'', N'', N'', N'3', N'1', N''), (N'310113', N'3101', N'00,31,3101', N'宝山区', N'31', N'上海市', N'3101', N'上海市', N'310113', N'宝山区', N'', N'', N'', N'', N'3', N'1', N''), (N'310114', N'3101', N'00,31,3101', N'嘉定区', N'31', N'上海市', N'3101', N'上海市', N'310114', N'嘉定区', N'', N'', N'', N'', N'3', N'1', N''), (N'310115', N'3101', N'00,31,3101', N'浦东新区', N'31', N'上海市', N'3101', N'上海市', N'310115', N'浦东新区', N'', N'', N'', N'', N'3', N'1', N''), (N'310116', N'3101', N'00,31,3101', N'金山区', N'31', N'上海市', N'3101', N'上海市', N'310116', N'金山区', N'', N'', N'', N'', N'3', N'1', N''), (N'310117', N'3101', N'00,31,3101', N'松江区', N'31', N'上海市', N'3101', N'上海市', N'310117', N'松江区', N'', N'', N'', N'', N'3', N'1', N''), (N'310118', N'3101', N'00,31,3101', N'青浦区', N'31', N'上海市', N'3101', N'上海市', N'310118', N'青浦区', N'', N'', N'', N'', N'3', N'1', N''), (N'310120', N'3101', N'00,31,3101', N'奉贤区', N'31', N'上海市', N'3101', N'上海市', N'310120', N'奉贤区', N'', N'', N'', N'', N'3', N'1', N''), (N'310151', N'3101', N'00,31,3101', N'崇明区', N'31', N'上海市', N'3101', N'上海市', N'310151', N'崇明区', N'', N'', N'', N'', N'3', N'1', N''), (N'32', N'00', N'00', N'江苏省', N'32', N'江苏省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'3201', N'32', N'00,32', N'南京市', N'32', N'江苏省', N'3201', N'南京市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320102', N'3201', N'00,32,3201', N'玄武区', N'32', N'江苏省', N'3201', N'南京市', N'320102', N'玄武区', N'', N'', N'', N'', N'3', N'1', N''), (N'320104', N'3201', N'00,32,3201', N'秦淮区', N'32', N'江苏省', N'3201', N'南京市', N'320104', N'秦淮区', N'', N'', N'', N'', N'3', N'1', N''), (N'320105', N'3201', N'00,32,3201', N'建邺区', N'32', N'江苏省', N'3201', N'南京市', N'320105', N'建邺区', N'', N'', N'', N'', N'3', N'1', N''), (N'320106', N'3201', N'00,32,3201', N'鼓楼区', N'32', N'江苏省', N'3201', N'南京市', N'320106', N'鼓楼区', N'', N'', N'', N'', N'3', N'1', N''), (N'320111', N'3201', N'00,32,3201', N'浦口区', N'32', N'江苏省', N'3201', N'南京市', N'320111', N'浦口区', N'', N'', N'', N'', N'3', N'1', N''), (N'320113', N'3201', N'00,32,3201', N'栖霞区', N'32', N'江苏省', N'3201', N'南京市', N'320113', N'栖霞区', N'', N'', N'', N'', N'3', N'1', N''), (N'320114', N'3201', N'00,32,3201', N'雨花台区', N'32', N'江苏省', N'3201', N'南京市', N'320114', N'雨花台区', N'', N'', N'', N'', N'3', N'1', N''), (N'320115', N'3201', N'00,32,3201', N'江宁区', N'32', N'江苏省', N'3201', N'南京市', N'320115', N'江宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'320116', N'3201', N'00,32,3201', N'六合区', N'32', N'江苏省', N'3201', N'南京市', N'320116', N'六合区', N'', N'', N'', N'', N'3', N'1', N''), (N'320117', N'3201', N'00,32,3201', N'溧水区', N'32', N'江苏省', N'3201', N'南京市', N'320117', N'溧水区', N'', N'', N'', N'', N'3', N'1', N''), (N'320118', N'3201', N'00,32,3201', N'高淳区', N'32', N'江苏省', N'3201', N'南京市', N'320118', N'高淳区', N'', N'', N'', N'', N'3', N'1', N''), (N'3202', N'32', N'00,32', N'无锡市', N'32', N'江苏省', N'3202', N'无锡市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320205', N'3202', N'00,32,3202', N'锡山区', N'32', N'江苏省', N'3202', N'无锡市', N'320205', N'锡山区', N'', N'', N'', N'', N'3', N'1', N''), (N'320206', N'3202', N'00,32,3202', N'惠山区', N'32', N'江苏省', N'3202', N'无锡市', N'320206', N'惠山区', N'', N'', N'', N'', N'3', N'1', N''), (N'320211', N'3202', N'00,32,3202', N'滨湖区', N'32', N'江苏省', N'3202', N'无锡市', N'320211', N'滨湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'320213', N'3202', N'00,32,3202', N'梁溪区', N'32', N'江苏省', N'3202', N'无锡市', N'320213', N'梁溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'320214', N'3202', N'00,32,3202', N'新吴区', N'32', N'江苏省', N'3202', N'无锡市', N'320214', N'新吴区', N'', N'', N'', N'', N'3', N'1', N''), (N'320281', N'3202', N'00,32,3202', N'江阴市', N'32', N'江苏省', N'3202', N'无锡市', N'320281', N'江阴市', N'', N'', N'', N'', N'3', N'1', N''), (N'320282', N'3202', N'00,32,3202', N'宜兴市', N'32', N'江苏省', N'3202', N'无锡市', N'320282', N'宜兴市', N'', N'', N'', N'', N'3', N'1', N''), (N'3203', N'32', N'00,32', N'徐州市', N'32', N'江苏省', N'3203', N'徐州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320302', N'3203', N'00,32,3203', N'鼓楼区', N'32', N'江苏省', N'3203', N'徐州市', N'320302', N'鼓楼区', N'', N'', N'', N'', N'3', N'1', N''), (N'320303', N'3203', N'00,32,3203', N'云龙区', N'32', N'江苏省', N'3203', N'徐州市', N'320303', N'云龙区', N'', N'', N'', N'', N'3', N'1', N''), (N'320305', N'3203', N'00,32,3203', N'贾汪区', N'32', N'江苏省', N'3203', N'徐州市', N'320305', N'贾汪区', N'', N'', N'', N'', N'3', N'1', N'')
GO

INSERT INTO [dbo].[blade_region] VALUES (N'320311', N'3203', N'00,32,3203', N'泉山区', N'32', N'江苏省', N'3203', N'徐州市', N'320311', N'泉山区', N'', N'', N'', N'', N'3', N'1', N''), (N'320312', N'3203', N'00,32,3203', N'铜山区', N'32', N'江苏省', N'3203', N'徐州市', N'320312', N'铜山区', N'', N'', N'', N'', N'3', N'1', N''), (N'320321', N'3203', N'00,32,3203', N'丰县', N'32', N'江苏省', N'3203', N'徐州市', N'320321', N'丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'320322', N'3203', N'00,32,3203', N'沛县', N'32', N'江苏省', N'3203', N'徐州市', N'320322', N'沛县', N'', N'', N'', N'', N'3', N'1', N''), (N'320324', N'3203', N'00,32,3203', N'睢宁县', N'32', N'江苏省', N'3203', N'徐州市', N'320324', N'睢宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'320381', N'3203', N'00,32,3203', N'新沂市', N'32', N'江苏省', N'3203', N'徐州市', N'320381', N'新沂市', N'', N'', N'', N'', N'3', N'1', N''), (N'320382', N'3203', N'00,32,3203', N'邳州市', N'32', N'江苏省', N'3203', N'徐州市', N'320382', N'邳州市', N'', N'', N'', N'', N'3', N'1', N''), (N'3204', N'32', N'00,32', N'常州市', N'32', N'江苏省', N'3204', N'常州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320402', N'3204', N'00,32,3204', N'天宁区', N'32', N'江苏省', N'3204', N'常州市', N'320402', N'天宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'320404', N'3204', N'00,32,3204', N'钟楼区', N'32', N'江苏省', N'3204', N'常州市', N'320404', N'钟楼区', N'', N'', N'', N'', N'3', N'1', N''), (N'320411', N'3204', N'00,32,3204', N'新北区', N'32', N'江苏省', N'3204', N'常州市', N'320411', N'新北区', N'', N'', N'', N'', N'3', N'1', N''), (N'320412', N'3204', N'00,32,3204', N'武进区', N'32', N'江苏省', N'3204', N'常州市', N'320412', N'武进区', N'', N'', N'', N'', N'3', N'1', N''), (N'320413', N'3204', N'00,32,3204', N'金坛区', N'32', N'江苏省', N'3204', N'常州市', N'320413', N'金坛区', N'', N'', N'', N'', N'3', N'1', N''), (N'320481', N'3204', N'00,32,3204', N'溧阳市', N'32', N'江苏省', N'3204', N'常州市', N'320481', N'溧阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'3205', N'32', N'00,32', N'苏州市', N'32', N'江苏省', N'3205', N'苏州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320505', N'3205', N'00,32,3205', N'虎丘区', N'32', N'江苏省', N'3205', N'苏州市', N'320505', N'虎丘区', N'', N'', N'', N'', N'3', N'1', N''), (N'320506', N'3205', N'00,32,3205', N'吴中区', N'32', N'江苏省', N'3205', N'苏州市', N'320506', N'吴中区', N'', N'', N'', N'', N'3', N'1', N''), (N'320507', N'3205', N'00,32,3205', N'相城区', N'32', N'江苏省', N'3205', N'苏州市', N'320507', N'相城区', N'', N'', N'', N'', N'3', N'1', N''), (N'320508', N'3205', N'00,32,3205', N'姑苏区', N'32', N'江苏省', N'3205', N'苏州市', N'320508', N'姑苏区', N'', N'', N'', N'', N'3', N'1', N''), (N'320509', N'3205', N'00,32,3205', N'吴江区', N'32', N'江苏省', N'3205', N'苏州市', N'320509', N'吴江区', N'', N'', N'', N'', N'3', N'1', N''), (N'320581', N'3205', N'00,32,3205', N'常熟市', N'32', N'江苏省', N'3205', N'苏州市', N'320581', N'常熟市', N'', N'', N'', N'', N'3', N'1', N''), (N'320582', N'3205', N'00,32,3205', N'张家港市', N'32', N'江苏省', N'3205', N'苏州市', N'320582', N'张家港市', N'', N'', N'', N'', N'3', N'1', N''), (N'320583', N'3205', N'00,32,3205', N'昆山市', N'32', N'江苏省', N'3205', N'苏州市', N'320583', N'昆山市', N'', N'', N'', N'', N'3', N'1', N''), (N'320585', N'3205', N'00,32,3205', N'太仓市', N'32', N'江苏省', N'3205', N'苏州市', N'320585', N'太仓市', N'', N'', N'', N'', N'3', N'1', N''), (N'3206', N'32', N'00,32', N'南通市', N'32', N'江苏省', N'3206', N'南通市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320602', N'3206', N'00,32,3206', N'崇川区', N'32', N'江苏省', N'3206', N'南通市', N'320602', N'崇川区', N'', N'', N'', N'', N'3', N'1', N''), (N'320611', N'3206', N'00,32,3206', N'港闸区', N'32', N'江苏省', N'3206', N'南通市', N'320611', N'港闸区', N'', N'', N'', N'', N'3', N'1', N''), (N'320612', N'3206', N'00,32,3206', N'通州区', N'32', N'江苏省', N'3206', N'南通市', N'320612', N'通州区', N'', N'', N'', N'', N'3', N'1', N''), (N'320623', N'3206', N'00,32,3206', N'如东县', N'32', N'江苏省', N'3206', N'南通市', N'320623', N'如东县', N'', N'', N'', N'', N'3', N'1', N''), (N'320681', N'3206', N'00,32,3206', N'启东市', N'32', N'江苏省', N'3206', N'南通市', N'320681', N'启东市', N'', N'', N'', N'', N'3', N'1', N''), (N'320682', N'3206', N'00,32,3206', N'如皋市', N'32', N'江苏省', N'3206', N'南通市', N'320682', N'如皋市', N'', N'', N'', N'', N'3', N'1', N''), (N'320684', N'3206', N'00,32,3206', N'海门市', N'32', N'江苏省', N'3206', N'南通市', N'320684', N'海门市', N'', N'', N'', N'', N'3', N'1', N''), (N'320685', N'3206', N'00,32,3206', N'海安市', N'32', N'江苏省', N'3206', N'南通市', N'320685', N'海安市', N'', N'', N'', N'', N'3', N'1', N''), (N'3207', N'32', N'00,32', N'连云港市', N'32', N'江苏省', N'3207', N'连云港市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320703', N'3207', N'00,32,3207', N'连云区', N'32', N'江苏省', N'3207', N'连云港市', N'320703', N'连云区', N'', N'', N'', N'', N'3', N'1', N''), (N'320706', N'3207', N'00,32,3207', N'海州区', N'32', N'江苏省', N'3207', N'连云港市', N'320706', N'海州区', N'', N'', N'', N'', N'3', N'1', N''), (N'320707', N'3207', N'00,32,3207', N'赣榆区', N'32', N'江苏省', N'3207', N'连云港市', N'320707', N'赣榆区', N'', N'', N'', N'', N'3', N'1', N''), (N'320722', N'3207', N'00,32,3207', N'东海县', N'32', N'江苏省', N'3207', N'连云港市', N'320722', N'东海县', N'', N'', N'', N'', N'3', N'1', N''), (N'320723', N'3207', N'00,32,3207', N'灌云县', N'32', N'江苏省', N'3207', N'连云港市', N'320723', N'灌云县', N'', N'', N'', N'', N'3', N'1', N''), (N'320724', N'3207', N'00,32,3207', N'灌南县', N'32', N'江苏省', N'3207', N'连云港市', N'320724', N'灌南县', N'', N'', N'', N'', N'3', N'1', N''), (N'3208', N'32', N'00,32', N'淮安市', N'32', N'江苏省', N'3208', N'淮安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320803', N'3208', N'00,32,3208', N'淮安区', N'32', N'江苏省', N'3208', N'淮安市', N'320803', N'淮安区', N'', N'', N'', N'', N'3', N'1', N''), (N'320804', N'3208', N'00,32,3208', N'淮阴区', N'32', N'江苏省', N'3208', N'淮安市', N'320804', N'淮阴区', N'', N'', N'', N'', N'3', N'1', N''), (N'320812', N'3208', N'00,32,3208', N'清江浦区', N'32', N'江苏省', N'3208', N'淮安市', N'320812', N'清江浦区', N'', N'', N'', N'', N'3', N'1', N''), (N'320813', N'3208', N'00,32,3208', N'洪泽区', N'32', N'江苏省', N'3208', N'淮安市', N'320813', N'洪泽区', N'', N'', N'', N'', N'3', N'1', N''), (N'320826', N'3208', N'00,32,3208', N'涟水县', N'32', N'江苏省', N'3208', N'淮安市', N'320826', N'涟水县', N'', N'', N'', N'', N'3', N'1', N''), (N'320830', N'3208', N'00,32,3208', N'盱眙县', N'32', N'江苏省', N'3208', N'淮安市', N'320830', N'盱眙县', N'', N'', N'', N'', N'3', N'1', N''), (N'320831', N'3208', N'00,32,3208', N'金湖县', N'32', N'江苏省', N'3208', N'淮安市', N'320831', N'金湖县', N'', N'', N'', N'', N'3', N'1', N''), (N'3209', N'32', N'00,32', N'盐城市', N'32', N'江苏省', N'3209', N'盐城市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'320902', N'3209', N'00,32,3209', N'亭湖区', N'32', N'江苏省', N'3209', N'盐城市', N'320902', N'亭湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'320903', N'3209', N'00,32,3209', N'盐都区', N'32', N'江苏省', N'3209', N'盐城市', N'320903', N'盐都区', N'', N'', N'', N'', N'3', N'1', N''), (N'320904', N'3209', N'00,32,3209', N'大丰区', N'32', N'江苏省', N'3209', N'盐城市', N'320904', N'大丰区', N'', N'', N'', N'', N'3', N'1', N''), (N'320921', N'3209', N'00,32,3209', N'响水县', N'32', N'江苏省', N'3209', N'盐城市', N'320921', N'响水县', N'', N'', N'', N'', N'3', N'1', N''), (N'320922', N'3209', N'00,32,3209', N'滨海县', N'32', N'江苏省', N'3209', N'盐城市', N'320922', N'滨海县', N'', N'', N'', N'', N'3', N'1', N''), (N'320923', N'3209', N'00,32,3209', N'阜宁县', N'32', N'江苏省', N'3209', N'盐城市', N'320923', N'阜宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'320924', N'3209', N'00,32,3209', N'射阳县', N'32', N'江苏省', N'3209', N'盐城市', N'320924', N'射阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'320925', N'3209', N'00,32,3209', N'建湖县', N'32', N'江苏省', N'3209', N'盐城市', N'320925', N'建湖县', N'', N'', N'', N'', N'3', N'1', N''), (N'320981', N'3209', N'00,32,3209', N'东台市', N'32', N'江苏省', N'3209', N'盐城市', N'320981', N'东台市', N'', N'', N'', N'', N'3', N'1', N''), (N'3210', N'32', N'00,32', N'扬州市', N'32', N'江苏省', N'3210', N'扬州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'321002', N'3210', N'00,32,3210', N'广陵区', N'32', N'江苏省', N'3210', N'扬州市', N'321002', N'广陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'321003', N'3210', N'00,32,3210', N'邗江区', N'32', N'江苏省', N'3210', N'扬州市', N'321003', N'邗江区', N'', N'', N'', N'', N'3', N'1', N''), (N'321012', N'3210', N'00,32,3210', N'江都区', N'32', N'江苏省', N'3210', N'扬州市', N'321012', N'江都区', N'', N'', N'', N'', N'3', N'1', N''), (N'321023', N'3210', N'00,32,3210', N'宝应县', N'32', N'江苏省', N'3210', N'扬州市', N'321023', N'宝应县', N'', N'', N'', N'', N'3', N'1', N''), (N'321081', N'3210', N'00,32,3210', N'仪征市', N'32', N'江苏省', N'3210', N'扬州市', N'321081', N'仪征市', N'', N'', N'', N'', N'3', N'1', N''), (N'321084', N'3210', N'00,32,3210', N'高邮市', N'32', N'江苏省', N'3210', N'扬州市', N'321084', N'高邮市', N'', N'', N'', N'', N'3', N'1', N''), (N'3211', N'32', N'00,32', N'镇江市', N'32', N'江苏省', N'3211', N'镇江市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'321102', N'3211', N'00,32,3211', N'京口区', N'32', N'江苏省', N'3211', N'镇江市', N'321102', N'京口区', N'', N'', N'', N'', N'3', N'1', N''), (N'321111', N'3211', N'00,32,3211', N'润州区', N'32', N'江苏省', N'3211', N'镇江市', N'321111', N'润州区', N'', N'', N'', N'', N'3', N'1', N''), (N'321112', N'3211', N'00,32,3211', N'丹徒区', N'32', N'江苏省', N'3211', N'镇江市', N'321112', N'丹徒区', N'', N'', N'', N'', N'3', N'1', N''), (N'321181', N'3211', N'00,32,3211', N'丹阳市', N'32', N'江苏省', N'3211', N'镇江市', N'321181', N'丹阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'321182', N'3211', N'00,32,3211', N'扬中市', N'32', N'江苏省', N'3211', N'镇江市', N'321182', N'扬中市', N'', N'', N'', N'', N'3', N'1', N''), (N'321183', N'3211', N'00,32,3211', N'句容市', N'32', N'江苏省', N'3211', N'镇江市', N'321183', N'句容市', N'', N'', N'', N'', N'3', N'1', N''), (N'3212', N'32', N'00,32', N'泰州市', N'32', N'江苏省', N'3212', N'泰州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'321202', N'3212', N'00,32,3212', N'海陵区', N'32', N'江苏省', N'3212', N'泰州市', N'321202', N'海陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'321203', N'3212', N'00,32,3212', N'高港区', N'32', N'江苏省', N'3212', N'泰州市', N'321203', N'高港区', N'', N'', N'', N'', N'3', N'1', N''), (N'321204', N'3212', N'00,32,3212', N'姜堰区', N'32', N'江苏省', N'3212', N'泰州市', N'321204', N'姜堰区', N'', N'', N'', N'', N'3', N'1', N''), (N'321281', N'3212', N'00,32,3212', N'兴化市', N'32', N'江苏省', N'3212', N'泰州市', N'321281', N'兴化市', N'', N'', N'', N'', N'3', N'1', N''), (N'321282', N'3212', N'00,32,3212', N'靖江市', N'32', N'江苏省', N'3212', N'泰州市', N'321282', N'靖江市', N'', N'', N'', N'', N'3', N'1', N''), (N'321283', N'3212', N'00,32,3212', N'泰兴市', N'32', N'江苏省', N'3212', N'泰州市', N'321283', N'泰兴市', N'', N'', N'', N'', N'3', N'1', N''), (N'3213', N'32', N'00,32', N'宿迁市', N'32', N'江苏省', N'3213', N'宿迁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'321302', N'3213', N'00,32,3213', N'宿城区', N'32', N'江苏省', N'3213', N'宿迁市', N'321302', N'宿城区', N'', N'', N'', N'', N'3', N'1', N''), (N'321311', N'3213', N'00,32,3213', N'宿豫区', N'32', N'江苏省', N'3213', N'宿迁市', N'321311', N'宿豫区', N'', N'', N'', N'', N'3', N'1', N''), (N'321322', N'3213', N'00,32,3213', N'沭阳县', N'32', N'江苏省', N'3213', N'宿迁市', N'321322', N'沭阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'321323', N'3213', N'00,32,3213', N'泗阳县', N'32', N'江苏省', N'3213', N'宿迁市', N'321323', N'泗阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'321324', N'3213', N'00,32,3213', N'泗洪县', N'32', N'江苏省', N'3213', N'宿迁市', N'321324', N'泗洪县', N'', N'', N'', N'', N'3', N'1', N''), (N'33', N'00', N'00', N'浙江省', N'33', N'浙江省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'3301', N'33', N'00,33', N'杭州市', N'33', N'浙江省', N'3301', N'杭州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330102', N'3301', N'00,33,3301', N'上城区', N'33', N'浙江省', N'3301', N'杭州市', N'330102', N'上城区', N'', N'', N'', N'', N'3', N'1', N''), (N'330103', N'3301', N'00,33,3301', N'下城区', N'33', N'浙江省', N'3301', N'杭州市', N'330103', N'下城区', N'', N'', N'', N'', N'3', N'1', N''), (N'330104', N'3301', N'00,33,3301', N'江干区', N'33', N'浙江省', N'3301', N'杭州市', N'330104', N'江干区', N'', N'', N'', N'', N'3', N'1', N''), (N'330105', N'3301', N'00,33,3301', N'拱墅区', N'33', N'浙江省', N'3301', N'杭州市', N'330105', N'拱墅区', N'', N'', N'', N'', N'3', N'1', N''), (N'330106', N'3301', N'00,33,3301', N'西湖区', N'33', N'浙江省', N'3301', N'杭州市', N'330106', N'西湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'330108', N'3301', N'00,33,3301', N'滨江区', N'33', N'浙江省', N'3301', N'杭州市', N'330108', N'滨江区', N'', N'', N'', N'', N'3', N'1', N''), (N'330109', N'3301', N'00,33,3301', N'萧山区', N'33', N'浙江省', N'3301', N'杭州市', N'330109', N'萧山区', N'', N'', N'', N'', N'3', N'1', N''), (N'330110', N'3301', N'00,33,3301', N'余杭区', N'33', N'浙江省', N'3301', N'杭州市', N'330110', N'余杭区', N'', N'', N'', N'', N'3', N'1', N''), (N'330111', N'3301', N'00,33,3301', N'富阳区', N'33', N'浙江省', N'3301', N'杭州市', N'330111', N'富阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'330112', N'3301', N'00,33,3301', N'临安区', N'33', N'浙江省', N'3301', N'杭州市', N'330112', N'临安区', N'', N'', N'', N'', N'3', N'1', N''), (N'330122', N'3301', N'00,33,3301', N'桐庐县', N'33', N'浙江省', N'3301', N'杭州市', N'330122', N'桐庐县', N'', N'', N'', N'', N'3', N'1', N''), (N'330127', N'3301', N'00,33,3301', N'淳安县', N'33', N'浙江省', N'3301', N'杭州市', N'330127', N'淳安县', N'', N'', N'', N'', N'3', N'1', N''), (N'330182', N'3301', N'00,33,3301', N'建德市', N'33', N'浙江省', N'3301', N'杭州市', N'330182', N'建德市', N'', N'', N'', N'', N'3', N'1', N''), (N'3302', N'33', N'00,33', N'宁波市', N'33', N'浙江省', N'3302', N'宁波市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330203', N'3302', N'00,33,3302', N'海曙区', N'33', N'浙江省', N'3302', N'宁波市', N'330203', N'海曙区', N'', N'', N'', N'', N'3', N'1', N''), (N'330205', N'3302', N'00,33,3302', N'江北区', N'33', N'浙江省', N'3302', N'宁波市', N'330205', N'江北区', N'', N'', N'', N'', N'3', N'1', N''), (N'330206', N'3302', N'00,33,3302', N'北仑区', N'33', N'浙江省', N'3302', N'宁波市', N'330206', N'北仑区', N'', N'', N'', N'', N'3', N'1', N''), (N'330211', N'3302', N'00,33,3302', N'镇海区', N'33', N'浙江省', N'3302', N'宁波市', N'330211', N'镇海区', N'', N'', N'', N'', N'3', N'1', N''), (N'330212', N'3302', N'00,33,3302', N'鄞州区', N'33', N'浙江省', N'3302', N'宁波市', N'330212', N'鄞州区', N'', N'', N'', N'', N'3', N'1', N''), (N'330213', N'3302', N'00,33,3302', N'奉化区', N'33', N'浙江省', N'3302', N'宁波市', N'330213', N'奉化区', N'', N'', N'', N'', N'3', N'1', N''), (N'330225', N'3302', N'00,33,3302', N'象山县', N'33', N'浙江省', N'3302', N'宁波市', N'330225', N'象山县', N'', N'', N'', N'', N'3', N'1', N''), (N'330226', N'3302', N'00,33,3302', N'宁海县', N'33', N'浙江省', N'3302', N'宁波市', N'330226', N'宁海县', N'', N'', N'', N'', N'3', N'1', N''), (N'330281', N'3302', N'00,33,3302', N'余姚市', N'33', N'浙江省', N'3302', N'宁波市', N'330281', N'余姚市', N'', N'', N'', N'', N'3', N'1', N''), (N'330282', N'3302', N'00,33,3302', N'慈溪市', N'33', N'浙江省', N'3302', N'宁波市', N'330282', N'慈溪市', N'', N'', N'', N'', N'3', N'1', N''), (N'3303', N'33', N'00,33', N'温州市', N'33', N'浙江省', N'3303', N'温州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330302', N'3303', N'00,33,3303', N'鹿城区', N'33', N'浙江省', N'3303', N'温州市', N'330302', N'鹿城区', N'', N'', N'', N'', N'3', N'1', N''), (N'330303', N'3303', N'00,33,3303', N'龙湾区', N'33', N'浙江省', N'3303', N'温州市', N'330303', N'龙湾区', N'', N'', N'', N'', N'3', N'1', N''), (N'330304', N'3303', N'00,33,3303', N'瓯海区', N'33', N'浙江省', N'3303', N'温州市', N'330304', N'瓯海区', N'', N'', N'', N'', N'3', N'1', N''), (N'330305', N'3303', N'00,33,3303', N'洞头区', N'33', N'浙江省', N'3303', N'温州市', N'330305', N'洞头区', N'', N'', N'', N'', N'3', N'1', N''), (N'330324', N'3303', N'00,33,3303', N'永嘉县', N'33', N'浙江省', N'3303', N'温州市', N'330324', N'永嘉县', N'', N'', N'', N'', N'3', N'1', N''), (N'330326', N'3303', N'00,33,3303', N'平阳县', N'33', N'浙江省', N'3303', N'温州市', N'330326', N'平阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'330327', N'3303', N'00,33,3303', N'苍南县', N'33', N'浙江省', N'3303', N'温州市', N'330327', N'苍南县', N'', N'', N'', N'', N'3', N'1', N''), (N'330328', N'3303', N'00,33,3303', N'文成县', N'33', N'浙江省', N'3303', N'温州市', N'330328', N'文成县', N'', N'', N'', N'', N'3', N'1', N''), (N'330329', N'3303', N'00,33,3303', N'泰顺县', N'33', N'浙江省', N'3303', N'温州市', N'330329', N'泰顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'330381', N'3303', N'00,33,3303', N'瑞安市', N'33', N'浙江省', N'3303', N'温州市', N'330381', N'瑞安市', N'', N'', N'', N'', N'3', N'1', N''), (N'330382', N'3303', N'00,33,3303', N'乐清市', N'33', N'浙江省', N'3303', N'温州市', N'330382', N'乐清市', N'', N'', N'', N'', N'3', N'1', N''), (N'330383', N'3303', N'00,33,3303', N'龙港市', N'33', N'浙江省', N'3303', N'温州市', N'330383', N'龙港市', N'', N'', N'', N'', N'3', N'1', N''), (N'3304', N'33', N'00,33', N'嘉兴市', N'33', N'浙江省', N'3304', N'嘉兴市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330402', N'3304', N'00,33,3304', N'南湖区', N'33', N'浙江省', N'3304', N'嘉兴市', N'330402', N'南湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'330411', N'3304', N'00,33,3304', N'秀洲区', N'33', N'浙江省', N'3304', N'嘉兴市', N'330411', N'秀洲区', N'', N'', N'', N'', N'3', N'1', N''), (N'330421', N'3304', N'00,33,3304', N'嘉善县', N'33', N'浙江省', N'3304', N'嘉兴市', N'330421', N'嘉善县', N'', N'', N'', N'', N'3', N'1', N''), (N'330424', N'3304', N'00,33,3304', N'海盐县', N'33', N'浙江省', N'3304', N'嘉兴市', N'330424', N'海盐县', N'', N'', N'', N'', N'3', N'1', N''), (N'330481', N'3304', N'00,33,3304', N'海宁市', N'33', N'浙江省', N'3304', N'嘉兴市', N'330481', N'海宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'330482', N'3304', N'00,33,3304', N'平湖市', N'33', N'浙江省', N'3304', N'嘉兴市', N'330482', N'平湖市', N'', N'', N'', N'', N'3', N'1', N''), (N'330483', N'3304', N'00,33,3304', N'桐乡市', N'33', N'浙江省', N'3304', N'嘉兴市', N'330483', N'桐乡市', N'', N'', N'', N'', N'3', N'1', N''), (N'3305', N'33', N'00,33', N'湖州市', N'33', N'浙江省', N'3305', N'湖州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330502', N'3305', N'00,33,3305', N'吴兴区', N'33', N'浙江省', N'3305', N'湖州市', N'330502', N'吴兴区', N'', N'', N'', N'', N'3', N'1', N''), (N'330503', N'3305', N'00,33,3305', N'南浔区', N'33', N'浙江省', N'3305', N'湖州市', N'330503', N'南浔区', N'', N'', N'', N'', N'3', N'1', N''), (N'330521', N'3305', N'00,33,3305', N'德清县', N'33', N'浙江省', N'3305', N'湖州市', N'330521', N'德清县', N'', N'', N'', N'', N'3', N'1', N''), (N'330522', N'3305', N'00,33,3305', N'长兴县', N'33', N'浙江省', N'3305', N'湖州市', N'330522', N'长兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'330523', N'3305', N'00,33,3305', N'安吉县', N'33', N'浙江省', N'3305', N'湖州市', N'330523', N'安吉县', N'', N'', N'', N'', N'3', N'1', N''), (N'3306', N'33', N'00,33', N'绍兴市', N'33', N'浙江省', N'3306', N'绍兴市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330602', N'3306', N'00,33,3306', N'越城区', N'33', N'浙江省', N'3306', N'绍兴市', N'330602', N'越城区', N'', N'', N'', N'', N'3', N'1', N''), (N'330603', N'3306', N'00,33,3306', N'柯桥区', N'33', N'浙江省', N'3306', N'绍兴市', N'330603', N'柯桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'330604', N'3306', N'00,33,3306', N'上虞区', N'33', N'浙江省', N'3306', N'绍兴市', N'330604', N'上虞区', N'', N'', N'', N'', N'3', N'1', N''), (N'330624', N'3306', N'00,33,3306', N'新昌县', N'33', N'浙江省', N'3306', N'绍兴市', N'330624', N'新昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'330681', N'3306', N'00,33,3306', N'诸暨市', N'33', N'浙江省', N'3306', N'绍兴市', N'330681', N'诸暨市', N'', N'', N'', N'', N'3', N'1', N''), (N'330683', N'3306', N'00,33,3306', N'嵊州市', N'33', N'浙江省', N'3306', N'绍兴市', N'330683', N'嵊州市', N'', N'', N'', N'', N'3', N'1', N''), (N'3307', N'33', N'00,33', N'金华市', N'33', N'浙江省', N'3307', N'金华市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330702', N'3307', N'00,33,3307', N'婺城区', N'33', N'浙江省', N'3307', N'金华市', N'330702', N'婺城区', N'', N'', N'', N'', N'3', N'1', N''), (N'330703', N'3307', N'00,33,3307', N'金东区', N'33', N'浙江省', N'3307', N'金华市', N'330703', N'金东区', N'', N'', N'', N'', N'3', N'1', N''), (N'330723', N'3307', N'00,33,3307', N'武义县', N'33', N'浙江省', N'3307', N'金华市', N'330723', N'武义县', N'', N'', N'', N'', N'3', N'1', N''), (N'330726', N'3307', N'00,33,3307', N'浦江县', N'33', N'浙江省', N'3307', N'金华市', N'330726', N'浦江县', N'', N'', N'', N'', N'3', N'1', N''), (N'330727', N'3307', N'00,33,3307', N'磐安县', N'33', N'浙江省', N'3307', N'金华市', N'330727', N'磐安县', N'', N'', N'', N'', N'3', N'1', N''), (N'330781', N'3307', N'00,33,3307', N'兰溪市', N'33', N'浙江省', N'3307', N'金华市', N'330781', N'兰溪市', N'', N'', N'', N'', N'3', N'1', N''), (N'330782', N'3307', N'00,33,3307', N'义乌市', N'33', N'浙江省', N'3307', N'金华市', N'330782', N'义乌市', N'', N'', N'', N'', N'3', N'1', N''), (N'330783', N'3307', N'00,33,3307', N'东阳市', N'33', N'浙江省', N'3307', N'金华市', N'330783', N'东阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'330784', N'3307', N'00,33,3307', N'永康市', N'33', N'浙江省', N'3307', N'金华市', N'330784', N'永康市', N'', N'', N'', N'', N'3', N'1', N''), (N'3308', N'33', N'00,33', N'衢州市', N'33', N'浙江省', N'3308', N'衢州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330802', N'3308', N'00,33,3308', N'柯城区', N'33', N'浙江省', N'3308', N'衢州市', N'330802', N'柯城区', N'', N'', N'', N'', N'3', N'1', N''), (N'330803', N'3308', N'00,33,3308', N'衢江区', N'33', N'浙江省', N'3308', N'衢州市', N'330803', N'衢江区', N'', N'', N'', N'', N'3', N'1', N''), (N'330822', N'3308', N'00,33,3308', N'常山县', N'33', N'浙江省', N'3308', N'衢州市', N'330822', N'常山县', N'', N'', N'', N'', N'3', N'1', N''), (N'330824', N'3308', N'00,33,3308', N'开化县', N'33', N'浙江省', N'3308', N'衢州市', N'330824', N'开化县', N'', N'', N'', N'', N'3', N'1', N''), (N'330825', N'3308', N'00,33,3308', N'龙游县', N'33', N'浙江省', N'3308', N'衢州市', N'330825', N'龙游县', N'', N'', N'', N'', N'3', N'1', N''), (N'330881', N'3308', N'00,33,3308', N'江山市', N'33', N'浙江省', N'3308', N'衢州市', N'330881', N'江山市', N'', N'', N'', N'', N'3', N'1', N''), (N'3309', N'33', N'00,33', N'舟山市', N'33', N'浙江省', N'3309', N'舟山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'330902', N'3309', N'00,33,3309', N'定海区', N'33', N'浙江省', N'3309', N'舟山市', N'330902', N'定海区', N'', N'', N'', N'', N'3', N'1', N''), (N'330903', N'3309', N'00,33,3309', N'普陀区', N'33', N'浙江省', N'3309', N'舟山市', N'330903', N'普陀区', N'', N'', N'', N'', N'3', N'1', N''), (N'330921', N'3309', N'00,33,3309', N'岱山县', N'33', N'浙江省', N'3309', N'舟山市', N'330921', N'岱山县', N'', N'', N'', N'', N'3', N'1', N''), (N'330922', N'3309', N'00,33,3309', N'嵊泗县', N'33', N'浙江省', N'3309', N'舟山市', N'330922', N'嵊泗县', N'', N'', N'', N'', N'3', N'1', N''), (N'3310', N'33', N'00,33', N'台州市', N'33', N'浙江省', N'3310', N'台州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'331002', N'3310', N'00,33,3310', N'椒江区', N'33', N'浙江省', N'3310', N'台州市', N'331002', N'椒江区', N'', N'', N'', N'', N'3', N'1', N''), (N'331003', N'3310', N'00,33,3310', N'黄岩区', N'33', N'浙江省', N'3310', N'台州市', N'331003', N'黄岩区', N'', N'', N'', N'', N'3', N'1', N''), (N'331004', N'3310', N'00,33,3310', N'路桥区', N'33', N'浙江省', N'3310', N'台州市', N'331004', N'路桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'331022', N'3310', N'00,33,3310', N'三门县', N'33', N'浙江省', N'3310', N'台州市', N'331022', N'三门县', N'', N'', N'', N'', N'3', N'1', N''), (N'331023', N'3310', N'00,33,3310', N'天台县', N'33', N'浙江省', N'3310', N'台州市', N'331023', N'天台县', N'', N'', N'', N'', N'3', N'1', N''), (N'331024', N'3310', N'00,33,3310', N'仙居县', N'33', N'浙江省', N'3310', N'台州市', N'331024', N'仙居县', N'', N'', N'', N'', N'3', N'1', N''), (N'331081', N'3310', N'00,33,3310', N'温岭市', N'33', N'浙江省', N'3310', N'台州市', N'331081', N'温岭市', N'', N'', N'', N'', N'3', N'1', N''), (N'331082', N'3310', N'00,33,3310', N'临海市', N'33', N'浙江省', N'3310', N'台州市', N'331082', N'临海市', N'', N'', N'', N'', N'3', N'1', N''), (N'331083', N'3310', N'00,33,3310', N'玉环市', N'33', N'浙江省', N'3310', N'台州市', N'331083', N'玉环市', N'', N'', N'', N'', N'3', N'1', N''), (N'3311', N'33', N'00,33', N'丽水市', N'33', N'浙江省', N'3311', N'丽水市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'331102', N'3311', N'00,33,3311', N'莲都区', N'33', N'浙江省', N'3311', N'丽水市', N'331102', N'莲都区', N'', N'', N'', N'', N'3', N'1', N''), (N'331121', N'3311', N'00,33,3311', N'青田县', N'33', N'浙江省', N'3311', N'丽水市', N'331121', N'青田县', N'', N'', N'', N'', N'3', N'1', N''), (N'331122', N'3311', N'00,33,3311', N'缙云县', N'33', N'浙江省', N'3311', N'丽水市', N'331122', N'缙云县', N'', N'', N'', N'', N'3', N'1', N''), (N'331123', N'3311', N'00,33,3311', N'遂昌县', N'33', N'浙江省', N'3311', N'丽水市', N'331123', N'遂昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'331124', N'3311', N'00,33,3311', N'松阳县', N'33', N'浙江省', N'3311', N'丽水市', N'331124', N'松阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'331125', N'3311', N'00,33,3311', N'云和县', N'33', N'浙江省', N'3311', N'丽水市', N'331125', N'云和县', N'', N'', N'', N'', N'3', N'1', N''), (N'331126', N'3311', N'00,33,3311', N'庆元县', N'33', N'浙江省', N'3311', N'丽水市', N'331126', N'庆元县', N'', N'', N'', N'', N'3', N'1', N''), (N'331127', N'3311', N'00,33,3311', N'景宁畲族自治县', N'33', N'浙江省', N'3311', N'丽水市', N'331127', N'景宁畲族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'331181', N'3311', N'00,33,3311', N'龙泉市', N'33', N'浙江省', N'3311', N'丽水市', N'331181', N'龙泉市', N'', N'', N'', N'', N'3', N'1', N''), (N'34', N'00', N'00', N'安徽省', N'34', N'安徽省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'3401', N'34', N'00,34', N'合肥市', N'34', N'安徽省', N'3401', N'合肥市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340102', N'3401', N'00,34,3401', N'瑶海区', N'34', N'安徽省', N'3401', N'合肥市', N'340102', N'瑶海区', N'', N'', N'', N'', N'3', N'1', N''), (N'340103', N'3401', N'00,34,3401', N'庐阳区', N'34', N'安徽省', N'3401', N'合肥市', N'340103', N'庐阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'340104', N'3401', N'00,34,3401', N'蜀山区', N'34', N'安徽省', N'3401', N'合肥市', N'340104', N'蜀山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340111', N'3401', N'00,34,3401', N'包河区', N'34', N'安徽省', N'3401', N'合肥市', N'340111', N'包河区', N'', N'', N'', N'', N'3', N'1', N''), (N'340121', N'3401', N'00,34,3401', N'长丰县', N'34', N'安徽省', N'3401', N'合肥市', N'340121', N'长丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'340122', N'3401', N'00,34,3401', N'肥东县', N'34', N'安徽省', N'3401', N'合肥市', N'340122', N'肥东县', N'', N'', N'', N'', N'3', N'1', N''), (N'340123', N'3401', N'00,34,3401', N'肥西县', N'34', N'安徽省', N'3401', N'合肥市', N'340123', N'肥西县', N'', N'', N'', N'', N'3', N'1', N''), (N'340124', N'3401', N'00,34,3401', N'庐江县', N'34', N'安徽省', N'3401', N'合肥市', N'340124', N'庐江县', N'', N'', N'', N'', N'3', N'1', N''), (N'340181', N'3401', N'00,34,3401', N'巢湖市', N'34', N'安徽省', N'3401', N'合肥市', N'340181', N'巢湖市', N'', N'', N'', N'', N'3', N'1', N''), (N'3402', N'34', N'00,34', N'芜湖市', N'34', N'安徽省', N'3402', N'芜湖市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340202', N'3402', N'00,34,3402', N'镜湖区', N'34', N'安徽省', N'3402', N'芜湖市', N'340202', N'镜湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'340203', N'3402', N'00,34,3402', N'弋江区', N'34', N'安徽省', N'3402', N'芜湖市', N'340203', N'弋江区', N'', N'', N'', N'', N'3', N'1', N''), (N'340207', N'3402', N'00,34,3402', N'鸠江区', N'34', N'安徽省', N'3402', N'芜湖市', N'340207', N'鸠江区', N'', N'', N'', N'', N'3', N'1', N''), (N'340208', N'3402', N'00,34,3402', N'三山区', N'34', N'安徽省', N'3402', N'芜湖市', N'340208', N'三山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340221', N'3402', N'00,34,3402', N'芜湖县', N'34', N'安徽省', N'3402', N'芜湖市', N'340221', N'芜湖县', N'', N'', N'', N'', N'3', N'1', N''), (N'340222', N'3402', N'00,34,3402', N'繁昌县', N'34', N'安徽省', N'3402', N'芜湖市', N'340222', N'繁昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'340223', N'3402', N'00,34,3402', N'南陵县', N'34', N'安徽省', N'3402', N'芜湖市', N'340223', N'南陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'340281', N'3402', N'00,34,3402', N'无为市', N'34', N'安徽省', N'3402', N'芜湖市', N'340281', N'无为市', N'', N'', N'', N'', N'3', N'1', N''), (N'3403', N'34', N'00,34', N'蚌埠市', N'34', N'安徽省', N'3403', N'蚌埠市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340302', N'3403', N'00,34,3403', N'龙子湖区', N'34', N'安徽省', N'3403', N'蚌埠市', N'340302', N'龙子湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'340303', N'3403', N'00,34,3403', N'蚌山区', N'34', N'安徽省', N'3403', N'蚌埠市', N'340303', N'蚌山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340304', N'3403', N'00,34,3403', N'禹会区', N'34', N'安徽省', N'3403', N'蚌埠市', N'340304', N'禹会区', N'', N'', N'', N'', N'3', N'1', N''), (N'340311', N'3403', N'00,34,3403', N'淮上区', N'34', N'安徽省', N'3403', N'蚌埠市', N'340311', N'淮上区', N'', N'', N'', N'', N'3', N'1', N''), (N'340321', N'3403', N'00,34,3403', N'怀远县', N'34', N'安徽省', N'3403', N'蚌埠市', N'340321', N'怀远县', N'', N'', N'', N'', N'3', N'1', N''), (N'340322', N'3403', N'00,34,3403', N'五河县', N'34', N'安徽省', N'3403', N'蚌埠市', N'340322', N'五河县', N'', N'', N'', N'', N'3', N'1', N''), (N'340323', N'3403', N'00,34,3403', N'固镇县', N'34', N'安徽省', N'3403', N'蚌埠市', N'340323', N'固镇县', N'', N'', N'', N'', N'3', N'1', N''), (N'3404', N'34', N'00,34', N'淮南市', N'34', N'安徽省', N'3404', N'淮南市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340402', N'3404', N'00,34,3404', N'大通区', N'34', N'安徽省', N'3404', N'淮南市', N'340402', N'大通区', N'', N'', N'', N'', N'3', N'1', N''), (N'340403', N'3404', N'00,34,3404', N'田家庵区', N'34', N'安徽省', N'3404', N'淮南市', N'340403', N'田家庵区', N'', N'', N'', N'', N'3', N'1', N''), (N'340404', N'3404', N'00,34,3404', N'谢家集区', N'34', N'安徽省', N'3404', N'淮南市', N'340404', N'谢家集区', N'', N'', N'', N'', N'3', N'1', N''), (N'340405', N'3404', N'00,34,3404', N'八公山区', N'34', N'安徽省', N'3404', N'淮南市', N'340405', N'八公山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340406', N'3404', N'00,34,3404', N'潘集区', N'34', N'安徽省', N'3404', N'淮南市', N'340406', N'潘集区', N'', N'', N'', N'', N'3', N'1', N''), (N'340421', N'3404', N'00,34,3404', N'凤台县', N'34', N'安徽省', N'3404', N'淮南市', N'340421', N'凤台县', N'', N'', N'', N'', N'3', N'1', N''), (N'340422', N'3404', N'00,34,3404', N'寿县', N'34', N'安徽省', N'3404', N'淮南市', N'340422', N'寿县', N'', N'', N'', N'', N'3', N'1', N''), (N'3405', N'34', N'00,34', N'马鞍山市', N'34', N'安徽省', N'3405', N'马鞍山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340503', N'3405', N'00,34,3405', N'花山区', N'34', N'安徽省', N'3405', N'马鞍山市', N'340503', N'花山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340504', N'3405', N'00,34,3405', N'雨山区', N'34', N'安徽省', N'3405', N'马鞍山市', N'340504', N'雨山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340506', N'3405', N'00,34,3405', N'博望区', N'34', N'安徽省', N'3405', N'马鞍山市', N'340506', N'博望区', N'', N'', N'', N'', N'3', N'1', N''), (N'340521', N'3405', N'00,34,3405', N'当涂县', N'34', N'安徽省', N'3405', N'马鞍山市', N'340521', N'当涂县', N'', N'', N'', N'', N'3', N'1', N''), (N'340522', N'3405', N'00,34,3405', N'含山县', N'34', N'安徽省', N'3405', N'马鞍山市', N'340522', N'含山县', N'', N'', N'', N'', N'3', N'1', N''), (N'340523', N'3405', N'00,34,3405', N'和县', N'34', N'安徽省', N'3405', N'马鞍山市', N'340523', N'和县', N'', N'', N'', N'', N'3', N'1', N''), (N'3406', N'34', N'00,34', N'淮北市', N'34', N'安徽省', N'3406', N'淮北市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340602', N'3406', N'00,34,3406', N'杜集区', N'34', N'安徽省', N'3406', N'淮北市', N'340602', N'杜集区', N'', N'', N'', N'', N'3', N'1', N''), (N'340603', N'3406', N'00,34,3406', N'相山区', N'34', N'安徽省', N'3406', N'淮北市', N'340603', N'相山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340604', N'3406', N'00,34,3406', N'烈山区', N'34', N'安徽省', N'3406', N'淮北市', N'340604', N'烈山区', N'', N'', N'', N'', N'3', N'1', N''), (N'340621', N'3406', N'00,34,3406', N'濉溪县', N'34', N'安徽省', N'3406', N'淮北市', N'340621', N'濉溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'3407', N'34', N'00,34', N'铜陵市', N'34', N'安徽省', N'3407', N'铜陵市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340705', N'3407', N'00,34,3407', N'铜官区', N'34', N'安徽省', N'3407', N'铜陵市', N'340705', N'铜官区', N'', N'', N'', N'', N'3', N'1', N''), (N'340706', N'3407', N'00,34,3407', N'义安区', N'34', N'安徽省', N'3407', N'铜陵市', N'340706', N'义安区', N'', N'', N'', N'', N'3', N'1', N''), (N'340711', N'3407', N'00,34,3407', N'郊区', N'34', N'安徽省', N'3407', N'铜陵市', N'340711', N'郊区', N'', N'', N'', N'', N'3', N'1', N''), (N'340722', N'3407', N'00,34,3407', N'枞阳县', N'34', N'安徽省', N'3407', N'铜陵市', N'340722', N'枞阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'3408', N'34', N'00,34', N'安庆市', N'34', N'安徽省', N'3408', N'安庆市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'340802', N'3408', N'00,34,3408', N'迎江区', N'34', N'安徽省', N'3408', N'安庆市', N'340802', N'迎江区', N'', N'', N'', N'', N'3', N'1', N''), (N'340803', N'3408', N'00,34,3408', N'大观区', N'34', N'安徽省', N'3408', N'安庆市', N'340803', N'大观区', N'', N'', N'', N'', N'3', N'1', N''), (N'340811', N'3408', N'00,34,3408', N'宜秀区', N'34', N'安徽省', N'3408', N'安庆市', N'340811', N'宜秀区', N'', N'', N'', N'', N'3', N'1', N''), (N'340822', N'3408', N'00,34,3408', N'怀宁县', N'34', N'安徽省', N'3408', N'安庆市', N'340822', N'怀宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'340825', N'3408', N'00,34,3408', N'太湖县', N'34', N'安徽省', N'3408', N'安庆市', N'340825', N'太湖县', N'', N'', N'', N'', N'3', N'1', N''), (N'340826', N'3408', N'00,34,3408', N'宿松县', N'34', N'安徽省', N'3408', N'安庆市', N'340826', N'宿松县', N'', N'', N'', N'', N'3', N'1', N''), (N'340827', N'3408', N'00,34,3408', N'望江县', N'34', N'安徽省', N'3408', N'安庆市', N'340827', N'望江县', N'', N'', N'', N'', N'3', N'1', N''), (N'340828', N'3408', N'00,34,3408', N'岳西县', N'34', N'安徽省', N'3408', N'安庆市', N'340828', N'岳西县', N'', N'', N'', N'', N'3', N'1', N''), (N'340881', N'3408', N'00,34,3408', N'桐城市', N'34', N'安徽省', N'3408', N'安庆市', N'340881', N'桐城市', N'', N'', N'', N'', N'3', N'1', N''), (N'340882', N'3408', N'00,34,3408', N'潜山市', N'34', N'安徽省', N'3408', N'安庆市', N'340882', N'潜山市', N'', N'', N'', N'', N'3', N'1', N''), (N'3410', N'34', N'00,34', N'黄山市', N'34', N'安徽省', N'3410', N'黄山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341002', N'3410', N'00,34,3410', N'屯溪区', N'34', N'安徽省', N'3410', N'黄山市', N'341002', N'屯溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'341003', N'3410', N'00,34,3410', N'黄山区', N'34', N'安徽省', N'3410', N'黄山市', N'341003', N'黄山区', N'', N'', N'', N'', N'3', N'1', N''), (N'341004', N'3410', N'00,34,3410', N'徽州区', N'34', N'安徽省', N'3410', N'黄山市', N'341004', N'徽州区', N'', N'', N'', N'', N'3', N'1', N''), (N'341021', N'3410', N'00,34,3410', N'歙县', N'34', N'安徽省', N'3410', N'黄山市', N'341021', N'歙县', N'', N'', N'', N'', N'3', N'1', N''), (N'341022', N'3410', N'00,34,3410', N'休宁县', N'34', N'安徽省', N'3410', N'黄山市', N'341022', N'休宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'341023', N'3410', N'00,34,3410', N'黟县', N'34', N'安徽省', N'3410', N'黄山市', N'341023', N'黟县', N'', N'', N'', N'', N'3', N'1', N''), (N'341024', N'3410', N'00,34,3410', N'祁门县', N'34', N'安徽省', N'3410', N'黄山市', N'341024', N'祁门县', N'', N'', N'', N'', N'3', N'1', N''), (N'3411', N'34', N'00,34', N'滁州市', N'34', N'安徽省', N'3411', N'滁州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341102', N'3411', N'00,34,3411', N'琅琊区', N'34', N'安徽省', N'3411', N'滁州市', N'341102', N'琅琊区', N'', N'', N'', N'', N'3', N'1', N''), (N'341103', N'3411', N'00,34,3411', N'南谯区', N'34', N'安徽省', N'3411', N'滁州市', N'341103', N'南谯区', N'', N'', N'', N'', N'3', N'1', N''), (N'341122', N'3411', N'00,34,3411', N'来安县', N'34', N'安徽省', N'3411', N'滁州市', N'341122', N'来安县', N'', N'', N'', N'', N'3', N'1', N''), (N'341124', N'3411', N'00,34,3411', N'全椒县', N'34', N'安徽省', N'3411', N'滁州市', N'341124', N'全椒县', N'', N'', N'', N'', N'3', N'1', N''), (N'341125', N'3411', N'00,34,3411', N'定远县', N'34', N'安徽省', N'3411', N'滁州市', N'341125', N'定远县', N'', N'', N'', N'', N'3', N'1', N''), (N'341126', N'3411', N'00,34,3411', N'凤阳县', N'34', N'安徽省', N'3411', N'滁州市', N'341126', N'凤阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'341181', N'3411', N'00,34,3411', N'天长市', N'34', N'安徽省', N'3411', N'滁州市', N'341181', N'天长市', N'', N'', N'', N'', N'3', N'1', N''), (N'341182', N'3411', N'00,34,3411', N'明光市', N'34', N'安徽省', N'3411', N'滁州市', N'341182', N'明光市', N'', N'', N'', N'', N'3', N'1', N''), (N'3412', N'34', N'00,34', N'阜阳市', N'34', N'安徽省', N'3412', N'阜阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341202', N'3412', N'00,34,3412', N'颍州区', N'34', N'安徽省', N'3412', N'阜阳市', N'341202', N'颍州区', N'', N'', N'', N'', N'3', N'1', N''), (N'341203', N'3412', N'00,34,3412', N'颍东区', N'34', N'安徽省', N'3412', N'阜阳市', N'341203', N'颍东区', N'', N'', N'', N'', N'3', N'1', N''), (N'341204', N'3412', N'00,34,3412', N'颍泉区', N'34', N'安徽省', N'3412', N'阜阳市', N'341204', N'颍泉区', N'', N'', N'', N'', N'3', N'1', N''), (N'341221', N'3412', N'00,34,3412', N'临泉县', N'34', N'安徽省', N'3412', N'阜阳市', N'341221', N'临泉县', N'', N'', N'', N'', N'3', N'1', N''), (N'341222', N'3412', N'00,34,3412', N'太和县', N'34', N'安徽省', N'3412', N'阜阳市', N'341222', N'太和县', N'', N'', N'', N'', N'3', N'1', N''), (N'341225', N'3412', N'00,34,3412', N'阜南县', N'34', N'安徽省', N'3412', N'阜阳市', N'341225', N'阜南县', N'', N'', N'', N'', N'3', N'1', N''), (N'341226', N'3412', N'00,34,3412', N'颍上县', N'34', N'安徽省', N'3412', N'阜阳市', N'341226', N'颍上县', N'', N'', N'', N'', N'3', N'1', N''), (N'341282', N'3412', N'00,34,3412', N'界首市', N'34', N'安徽省', N'3412', N'阜阳市', N'341282', N'界首市', N'', N'', N'', N'', N'3', N'1', N''), (N'3413', N'34', N'00,34', N'宿州市', N'34', N'安徽省', N'3413', N'宿州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341302', N'3413', N'00,34,3413', N'埇桥区', N'34', N'安徽省', N'3413', N'宿州市', N'341302', N'埇桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'341321', N'3413', N'00,34,3413', N'砀山县', N'34', N'安徽省', N'3413', N'宿州市', N'341321', N'砀山县', N'', N'', N'', N'', N'3', N'1', N''), (N'341322', N'3413', N'00,34,3413', N'萧县', N'34', N'安徽省', N'3413', N'宿州市', N'341322', N'萧县', N'', N'', N'', N'', N'3', N'1', N''), (N'341323', N'3413', N'00,34,3413', N'灵璧县', N'34', N'安徽省', N'3413', N'宿州市', N'341323', N'灵璧县', N'', N'', N'', N'', N'3', N'1', N''), (N'341324', N'3413', N'00,34,3413', N'泗县', N'34', N'安徽省', N'3413', N'宿州市', N'341324', N'泗县', N'', N'', N'', N'', N'3', N'1', N''), (N'3415', N'34', N'00,34', N'六安市', N'34', N'安徽省', N'3415', N'六安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341502', N'3415', N'00,34,3415', N'金安区', N'34', N'安徽省', N'3415', N'六安市', N'341502', N'金安区', N'', N'', N'', N'', N'3', N'1', N''), (N'341503', N'3415', N'00,34,3415', N'裕安区', N'34', N'安徽省', N'3415', N'六安市', N'341503', N'裕安区', N'', N'', N'', N'', N'3', N'1', N''), (N'341504', N'3415', N'00,34,3415', N'叶集区', N'34', N'安徽省', N'3415', N'六安市', N'341504', N'叶集区', N'', N'', N'', N'', N'3', N'1', N''), (N'341522', N'3415', N'00,34,3415', N'霍邱县', N'34', N'安徽省', N'3415', N'六安市', N'341522', N'霍邱县', N'', N'', N'', N'', N'3', N'1', N''), (N'341523', N'3415', N'00,34,3415', N'舒城县', N'34', N'安徽省', N'3415', N'六安市', N'341523', N'舒城县', N'', N'', N'', N'', N'3', N'1', N''), (N'341524', N'3415', N'00,34,3415', N'金寨县', N'34', N'安徽省', N'3415', N'六安市', N'341524', N'金寨县', N'', N'', N'', N'', N'3', N'1', N''), (N'341525', N'3415', N'00,34,3415', N'霍山县', N'34', N'安徽省', N'3415', N'六安市', N'341525', N'霍山县', N'', N'', N'', N'', N'3', N'1', N''), (N'3416', N'34', N'00,34', N'亳州市', N'34', N'安徽省', N'3416', N'亳州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341602', N'3416', N'00,34,3416', N'谯城区', N'34', N'安徽省', N'3416', N'亳州市', N'341602', N'谯城区', N'', N'', N'', N'', N'3', N'1', N''), (N'341621', N'3416', N'00,34,3416', N'涡阳县', N'34', N'安徽省', N'3416', N'亳州市', N'341621', N'涡阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'341622', N'3416', N'00,34,3416', N'蒙城县', N'34', N'安徽省', N'3416', N'亳州市', N'341622', N'蒙城县', N'', N'', N'', N'', N'3', N'1', N''), (N'341623', N'3416', N'00,34,3416', N'利辛县', N'34', N'安徽省', N'3416', N'亳州市', N'341623', N'利辛县', N'', N'', N'', N'', N'3', N'1', N''), (N'3417', N'34', N'00,34', N'池州市', N'34', N'安徽省', N'3417', N'池州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341702', N'3417', N'00,34,3417', N'贵池区', N'34', N'安徽省', N'3417', N'池州市', N'341702', N'贵池区', N'', N'', N'', N'', N'3', N'1', N''), (N'341721', N'3417', N'00,34,3417', N'东至县', N'34', N'安徽省', N'3417', N'池州市', N'341721', N'东至县', N'', N'', N'', N'', N'3', N'1', N''), (N'341722', N'3417', N'00,34,3417', N'石台县', N'34', N'安徽省', N'3417', N'池州市', N'341722', N'石台县', N'', N'', N'', N'', N'3', N'1', N''), (N'341723', N'3417', N'00,34,3417', N'青阳县', N'34', N'安徽省', N'3417', N'池州市', N'341723', N'青阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'3418', N'34', N'00,34', N'宣城市', N'34', N'安徽省', N'3418', N'宣城市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'341802', N'3418', N'00,34,3418', N'宣州区', N'34', N'安徽省', N'3418', N'宣城市', N'341802', N'宣州区', N'', N'', N'', N'', N'3', N'1', N''), (N'341821', N'3418', N'00,34,3418', N'郎溪县', N'34', N'安徽省', N'3418', N'宣城市', N'341821', N'郎溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'341823', N'3418', N'00,34,3418', N'泾县', N'34', N'安徽省', N'3418', N'宣城市', N'341823', N'泾县', N'', N'', N'', N'', N'3', N'1', N''), (N'341824', N'3418', N'00,34,3418', N'绩溪县', N'34', N'安徽省', N'3418', N'宣城市', N'341824', N'绩溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'341825', N'3418', N'00,34,3418', N'旌德县', N'34', N'安徽省', N'3418', N'宣城市', N'341825', N'旌德县', N'', N'', N'', N'', N'3', N'1', N''), (N'341881', N'3418', N'00,34,3418', N'宁国市', N'34', N'安徽省', N'3418', N'宣城市', N'341881', N'宁国市', N'', N'', N'', N'', N'3', N'1', N''), (N'341882', N'3418', N'00,34,3418', N'广德市', N'34', N'安徽省', N'3418', N'宣城市', N'341882', N'广德市', N'', N'', N'', N'', N'3', N'1', N''), (N'35', N'00', N'00', N'福建省', N'35', N'福建省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'3501', N'35', N'00,35', N'福州市', N'35', N'福建省', N'3501', N'福州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350102', N'3501', N'00,35,3501', N'鼓楼区', N'35', N'福建省', N'3501', N'福州市', N'350102', N'鼓楼区', N'', N'', N'', N'', N'3', N'1', N''), (N'350103', N'3501', N'00,35,3501', N'台江区', N'35', N'福建省', N'3501', N'福州市', N'350103', N'台江区', N'', N'', N'', N'', N'3', N'1', N''), (N'350104', N'3501', N'00,35,3501', N'仓山区', N'35', N'福建省', N'3501', N'福州市', N'350104', N'仓山区', N'', N'', N'', N'', N'3', N'1', N''), (N'350105', N'3501', N'00,35,3501', N'马尾区', N'35', N'福建省', N'3501', N'福州市', N'350105', N'马尾区', N'', N'', N'', N'', N'3', N'1', N''), (N'350111', N'3501', N'00,35,3501', N'晋安区', N'35', N'福建省', N'3501', N'福州市', N'350111', N'晋安区', N'', N'', N'', N'', N'3', N'1', N''), (N'350112', N'3501', N'00,35,3501', N'长乐区', N'35', N'福建省', N'3501', N'福州市', N'350112', N'长乐区', N'', N'', N'', N'', N'3', N'1', N''), (N'350121', N'3501', N'00,35,3501', N'闽侯县', N'35', N'福建省', N'3501', N'福州市', N'350121', N'闽侯县', N'', N'', N'', N'', N'3', N'1', N''), (N'350122', N'3501', N'00,35,3501', N'连江县', N'35', N'福建省', N'3501', N'福州市', N'350122', N'连江县', N'', N'', N'', N'', N'3', N'1', N''), (N'350123', N'3501', N'00,35,3501', N'罗源县', N'35', N'福建省', N'3501', N'福州市', N'350123', N'罗源县', N'', N'', N'', N'', N'3', N'1', N''), (N'350124', N'3501', N'00,35,3501', N'闽清县', N'35', N'福建省', N'3501', N'福州市', N'350124', N'闽清县', N'', N'', N'', N'', N'3', N'1', N''), (N'350125', N'3501', N'00,35,3501', N'永泰县', N'35', N'福建省', N'3501', N'福州市', N'350125', N'永泰县', N'', N'', N'', N'', N'3', N'1', N''), (N'350128', N'3501', N'00,35,3501', N'平潭县', N'35', N'福建省', N'3501', N'福州市', N'350128', N'平潭县', N'', N'', N'', N'', N'3', N'1', N''), (N'350181', N'3501', N'00,35,3501', N'福清市', N'35', N'福建省', N'3501', N'福州市', N'350181', N'福清市', N'', N'', N'', N'', N'3', N'1', N''), (N'3502', N'35', N'00,35', N'厦门市', N'35', N'福建省', N'3502', N'厦门市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350203', N'3502', N'00,35,3502', N'思明区', N'35', N'福建省', N'3502', N'厦门市', N'350203', N'思明区', N'', N'', N'', N'', N'3', N'1', N''), (N'350205', N'3502', N'00,35,3502', N'海沧区', N'35', N'福建省', N'3502', N'厦门市', N'350205', N'海沧区', N'', N'', N'', N'', N'3', N'1', N''), (N'350206', N'3502', N'00,35,3502', N'湖里区', N'35', N'福建省', N'3502', N'厦门市', N'350206', N'湖里区', N'', N'', N'', N'', N'3', N'1', N''), (N'350211', N'3502', N'00,35,3502', N'集美区', N'35', N'福建省', N'3502', N'厦门市', N'350211', N'集美区', N'', N'', N'', N'', N'3', N'1', N''), (N'350212', N'3502', N'00,35,3502', N'同安区', N'35', N'福建省', N'3502', N'厦门市', N'350212', N'同安区', N'', N'', N'', N'', N'3', N'1', N''), (N'350213', N'3502', N'00,35,3502', N'翔安区', N'35', N'福建省', N'3502', N'厦门市', N'350213', N'翔安区', N'', N'', N'', N'', N'3', N'1', N''), (N'3503', N'35', N'00,35', N'莆田市', N'35', N'福建省', N'3503', N'莆田市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350302', N'3503', N'00,35,3503', N'城厢区', N'35', N'福建省', N'3503', N'莆田市', N'350302', N'城厢区', N'', N'', N'', N'', N'3', N'1', N''), (N'350303', N'3503', N'00,35,3503', N'涵江区', N'35', N'福建省', N'3503', N'莆田市', N'350303', N'涵江区', N'', N'', N'', N'', N'3', N'1', N''), (N'350304', N'3503', N'00,35,3503', N'荔城区', N'35', N'福建省', N'3503', N'莆田市', N'350304', N'荔城区', N'', N'', N'', N'', N'3', N'1', N''), (N'350305', N'3503', N'00,35,3503', N'秀屿区', N'35', N'福建省', N'3503', N'莆田市', N'350305', N'秀屿区', N'', N'', N'', N'', N'3', N'1', N''), (N'350322', N'3503', N'00,35,3503', N'仙游县', N'35', N'福建省', N'3503', N'莆田市', N'350322', N'仙游县', N'', N'', N'', N'', N'3', N'1', N''), (N'3504', N'35', N'00,35', N'三明市', N'35', N'福建省', N'3504', N'三明市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350402', N'3504', N'00,35,3504', N'梅列区', N'35', N'福建省', N'3504', N'三明市', N'350402', N'梅列区', N'', N'', N'', N'', N'3', N'1', N''), (N'350403', N'3504', N'00,35,3504', N'三元区', N'35', N'福建省', N'3504', N'三明市', N'350403', N'三元区', N'', N'', N'', N'', N'3', N'1', N''), (N'350421', N'3504', N'00,35,3504', N'明溪县', N'35', N'福建省', N'3504', N'三明市', N'350421', N'明溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'350423', N'3504', N'00,35,3504', N'清流县', N'35', N'福建省', N'3504', N'三明市', N'350423', N'清流县', N'', N'', N'', N'', N'3', N'1', N''), (N'350424', N'3504', N'00,35,3504', N'宁化县', N'35', N'福建省', N'3504', N'三明市', N'350424', N'宁化县', N'', N'', N'', N'', N'3', N'1', N''), (N'350425', N'3504', N'00,35,3504', N'大田县', N'35', N'福建省', N'3504', N'三明市', N'350425', N'大田县', N'', N'', N'', N'', N'3', N'1', N''), (N'350426', N'3504', N'00,35,3504', N'尤溪县', N'35', N'福建省', N'3504', N'三明市', N'350426', N'尤溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'350427', N'3504', N'00,35,3504', N'沙县', N'35', N'福建省', N'3504', N'三明市', N'350427', N'沙县', N'', N'', N'', N'', N'3', N'1', N''), (N'350428', N'3504', N'00,35,3504', N'将乐县', N'35', N'福建省', N'3504', N'三明市', N'350428', N'将乐县', N'', N'', N'', N'', N'3', N'1', N''), (N'350429', N'3504', N'00,35,3504', N'泰宁县', N'35', N'福建省', N'3504', N'三明市', N'350429', N'泰宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'350430', N'3504', N'00,35,3504', N'建宁县', N'35', N'福建省', N'3504', N'三明市', N'350430', N'建宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'350481', N'3504', N'00,35,3504', N'永安市', N'35', N'福建省', N'3504', N'三明市', N'350481', N'永安市', N'', N'', N'', N'', N'3', N'1', N''), (N'3505', N'35', N'00,35', N'泉州市', N'35', N'福建省', N'3505', N'泉州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350502', N'3505', N'00,35,3505', N'鲤城区', N'35', N'福建省', N'3505', N'泉州市', N'350502', N'鲤城区', N'', N'', N'', N'', N'3', N'1', N''), (N'350503', N'3505', N'00,35,3505', N'丰泽区', N'35', N'福建省', N'3505', N'泉州市', N'350503', N'丰泽区', N'', N'', N'', N'', N'3', N'1', N''), (N'350504', N'3505', N'00,35,3505', N'洛江区', N'35', N'福建省', N'3505', N'泉州市', N'350504', N'洛江区', N'', N'', N'', N'', N'3', N'1', N''), (N'350505', N'3505', N'00,35,3505', N'泉港区', N'35', N'福建省', N'3505', N'泉州市', N'350505', N'泉港区', N'', N'', N'', N'', N'3', N'1', N''), (N'350521', N'3505', N'00,35,3505', N'惠安县', N'35', N'福建省', N'3505', N'泉州市', N'350521', N'惠安县', N'', N'', N'', N'', N'3', N'1', N''), (N'350524', N'3505', N'00,35,3505', N'安溪县', N'35', N'福建省', N'3505', N'泉州市', N'350524', N'安溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'350525', N'3505', N'00,35,3505', N'永春县', N'35', N'福建省', N'3505', N'泉州市', N'350525', N'永春县', N'', N'', N'', N'', N'3', N'1', N''), (N'350526', N'3505', N'00,35,3505', N'德化县', N'35', N'福建省', N'3505', N'泉州市', N'350526', N'德化县', N'', N'', N'', N'', N'3', N'1', N''), (N'350527', N'3505', N'00,35,3505', N'金门县', N'35', N'福建省', N'3505', N'泉州市', N'350527', N'金门县', N'', N'', N'', N'', N'3', N'1', N''), (N'350581', N'3505', N'00,35,3505', N'石狮市', N'35', N'福建省', N'3505', N'泉州市', N'350581', N'石狮市', N'', N'', N'', N'', N'3', N'1', N''), (N'350582', N'3505', N'00,35,3505', N'晋江市', N'35', N'福建省', N'3505', N'泉州市', N'350582', N'晋江市', N'', N'', N'', N'', N'3', N'1', N''), (N'350583', N'3505', N'00,35,3505', N'南安市', N'35', N'福建省', N'3505', N'泉州市', N'350583', N'南安市', N'', N'', N'', N'', N'3', N'1', N''), (N'3506', N'35', N'00,35', N'漳州市', N'35', N'福建省', N'3506', N'漳州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350602', N'3506', N'00,35,3506', N'芗城区', N'35', N'福建省', N'3506', N'漳州市', N'350602', N'芗城区', N'', N'', N'', N'', N'3', N'1', N''), (N'350603', N'3506', N'00,35,3506', N'龙文区', N'35', N'福建省', N'3506', N'漳州市', N'350603', N'龙文区', N'', N'', N'', N'', N'3', N'1', N''), (N'350622', N'3506', N'00,35,3506', N'云霄县', N'35', N'福建省', N'3506', N'漳州市', N'350622', N'云霄县', N'', N'', N'', N'', N'3', N'1', N''), (N'350623', N'3506', N'00,35,3506', N'漳浦县', N'35', N'福建省', N'3506', N'漳州市', N'350623', N'漳浦县', N'', N'', N'', N'', N'3', N'1', N''), (N'350624', N'3506', N'00,35,3506', N'诏安县', N'35', N'福建省', N'3506', N'漳州市', N'350624', N'诏安县', N'', N'', N'', N'', N'3', N'1', N''), (N'350625', N'3506', N'00,35,3506', N'长泰县', N'35', N'福建省', N'3506', N'漳州市', N'350625', N'长泰县', N'', N'', N'', N'', N'3', N'1', N''), (N'350626', N'3506', N'00,35,3506', N'东山县', N'35', N'福建省', N'3506', N'漳州市', N'350626', N'东山县', N'', N'', N'', N'', N'3', N'1', N''), (N'350627', N'3506', N'00,35,3506', N'南靖县', N'35', N'福建省', N'3506', N'漳州市', N'350627', N'南靖县', N'', N'', N'', N'', N'3', N'1', N''), (N'350628', N'3506', N'00,35,3506', N'平和县', N'35', N'福建省', N'3506', N'漳州市', N'350628', N'平和县', N'', N'', N'', N'', N'3', N'1', N''), (N'350629', N'3506', N'00,35,3506', N'华安县', N'35', N'福建省', N'3506', N'漳州市', N'350629', N'华安县', N'', N'', N'', N'', N'3', N'1', N''), (N'350681', N'3506', N'00,35,3506', N'龙海市', N'35', N'福建省', N'3506', N'漳州市', N'350681', N'龙海市', N'', N'', N'', N'', N'3', N'1', N''), (N'3507', N'35', N'00,35', N'南平市', N'35', N'福建省', N'3507', N'南平市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350702', N'3507', N'00,35,3507', N'延平区', N'35', N'福建省', N'3507', N'南平市', N'350702', N'延平区', N'', N'', N'', N'', N'3', N'1', N''), (N'350703', N'3507', N'00,35,3507', N'建阳区', N'35', N'福建省', N'3507', N'南平市', N'350703', N'建阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'350721', N'3507', N'00,35,3507', N'顺昌县', N'35', N'福建省', N'3507', N'南平市', N'350721', N'顺昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'350722', N'3507', N'00,35,3507', N'浦城县', N'35', N'福建省', N'3507', N'南平市', N'350722', N'浦城县', N'', N'', N'', N'', N'3', N'1', N''), (N'350723', N'3507', N'00,35,3507', N'光泽县', N'35', N'福建省', N'3507', N'南平市', N'350723', N'光泽县', N'', N'', N'', N'', N'3', N'1', N''), (N'350724', N'3507', N'00,35,3507', N'松溪县', N'35', N'福建省', N'3507', N'南平市', N'350724', N'松溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'350725', N'3507', N'00,35,3507', N'政和县', N'35', N'福建省', N'3507', N'南平市', N'350725', N'政和县', N'', N'', N'', N'', N'3', N'1', N''), (N'350781', N'3507', N'00,35,3507', N'邵武市', N'35', N'福建省', N'3507', N'南平市', N'350781', N'邵武市', N'', N'', N'', N'', N'3', N'1', N''), (N'350782', N'3507', N'00,35,3507', N'武夷山市', N'35', N'福建省', N'3507', N'南平市', N'350782', N'武夷山市', N'', N'', N'', N'', N'3', N'1', N''), (N'350783', N'3507', N'00,35,3507', N'建瓯市', N'35', N'福建省', N'3507', N'南平市', N'350783', N'建瓯市', N'', N'', N'', N'', N'3', N'1', N''), (N'3508', N'35', N'00,35', N'龙岩市', N'35', N'福建省', N'3508', N'龙岩市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350802', N'3508', N'00,35,3508', N'新罗区', N'35', N'福建省', N'3508', N'龙岩市', N'350802', N'新罗区', N'', N'', N'', N'', N'3', N'1', N''), (N'350803', N'3508', N'00,35,3508', N'永定区', N'35', N'福建省', N'3508', N'龙岩市', N'350803', N'永定区', N'', N'', N'', N'', N'3', N'1', N''), (N'350821', N'3508', N'00,35,3508', N'长汀县', N'35', N'福建省', N'3508', N'龙岩市', N'350821', N'长汀县', N'', N'', N'', N'', N'3', N'1', N''), (N'350823', N'3508', N'00,35,3508', N'上杭县', N'35', N'福建省', N'3508', N'龙岩市', N'350823', N'上杭县', N'', N'', N'', N'', N'3', N'1', N''), (N'350824', N'3508', N'00,35,3508', N'武平县', N'35', N'福建省', N'3508', N'龙岩市', N'350824', N'武平县', N'', N'', N'', N'', N'3', N'1', N''), (N'350825', N'3508', N'00,35,3508', N'连城县', N'35', N'福建省', N'3508', N'龙岩市', N'350825', N'连城县', N'', N'', N'', N'', N'3', N'1', N''), (N'350881', N'3508', N'00,35,3508', N'漳平市', N'35', N'福建省', N'3508', N'龙岩市', N'350881', N'漳平市', N'', N'', N'', N'', N'3', N'1', N''), (N'3509', N'35', N'00,35', N'宁德市', N'35', N'福建省', N'3509', N'宁德市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'350902', N'3509', N'00,35,3509', N'蕉城区', N'35', N'福建省', N'3509', N'宁德市', N'350902', N'蕉城区', N'', N'', N'', N'', N'3', N'1', N''), (N'350921', N'3509', N'00,35,3509', N'霞浦县', N'35', N'福建省', N'3509', N'宁德市', N'350921', N'霞浦县', N'', N'', N'', N'', N'3', N'1', N''), (N'350922', N'3509', N'00,35,3509', N'古田县', N'35', N'福建省', N'3509', N'宁德市', N'350922', N'古田县', N'', N'', N'', N'', N'3', N'1', N''), (N'350923', N'3509', N'00,35,3509', N'屏南县', N'35', N'福建省', N'3509', N'宁德市', N'350923', N'屏南县', N'', N'', N'', N'', N'3', N'1', N''), (N'350924', N'3509', N'00,35,3509', N'寿宁县', N'35', N'福建省', N'3509', N'宁德市', N'350924', N'寿宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'350925', N'3509', N'00,35,3509', N'周宁县', N'35', N'福建省', N'3509', N'宁德市', N'350925', N'周宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'350926', N'3509', N'00,35,3509', N'柘荣县', N'35', N'福建省', N'3509', N'宁德市', N'350926', N'柘荣县', N'', N'', N'', N'', N'3', N'1', N''), (N'350981', N'3509', N'00,35,3509', N'福安市', N'35', N'福建省', N'3509', N'宁德市', N'350981', N'福安市', N'', N'', N'', N'', N'3', N'1', N''), (N'350982', N'3509', N'00,35,3509', N'福鼎市', N'35', N'福建省', N'3509', N'宁德市', N'350982', N'福鼎市', N'', N'', N'', N'', N'3', N'1', N''), (N'36', N'00', N'00', N'江西省', N'36', N'江西省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'3601', N'36', N'00,36', N'南昌市', N'36', N'江西省', N'3601', N'南昌市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360102', N'3601', N'00,36,3601', N'东湖区', N'36', N'江西省', N'3601', N'南昌市', N'360102', N'东湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'360103', N'3601', N'00,36,3601', N'西湖区', N'36', N'江西省', N'3601', N'南昌市', N'360103', N'西湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'360104', N'3601', N'00,36,3601', N'青云谱区', N'36', N'江西省', N'3601', N'南昌市', N'360104', N'青云谱区', N'', N'', N'', N'', N'3', N'1', N''), (N'360111', N'3601', N'00,36,3601', N'青山湖区', N'36', N'江西省', N'3601', N'南昌市', N'360111', N'青山湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'360112', N'3601', N'00,36,3601', N'新建区', N'36', N'江西省', N'3601', N'南昌市', N'360112', N'新建区', N'', N'', N'', N'', N'3', N'1', N''), (N'360113', N'3601', N'00,36,3601', N'红谷滩区', N'36', N'江西省', N'3601', N'南昌市', N'360113', N'红谷滩区', N'', N'', N'', N'', N'3', N'1', N''), (N'360121', N'3601', N'00,36,3601', N'南昌县', N'36', N'江西省', N'3601', N'南昌市', N'360121', N'南昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'360123', N'3601', N'00,36,3601', N'安义县', N'36', N'江西省', N'3601', N'南昌市', N'360123', N'安义县', N'', N'', N'', N'', N'3', N'1', N''), (N'360124', N'3601', N'00,36,3601', N'进贤县', N'36', N'江西省', N'3601', N'南昌市', N'360124', N'进贤县', N'', N'', N'', N'', N'3', N'1', N''), (N'3602', N'36', N'00,36', N'景德镇市', N'36', N'江西省', N'3602', N'景德镇市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360202', N'3602', N'00,36,3602', N'昌江区', N'36', N'江西省', N'3602', N'景德镇市', N'360202', N'昌江区', N'', N'', N'', N'', N'3', N'1', N''), (N'360203', N'3602', N'00,36,3602', N'珠山区', N'36', N'江西省', N'3602', N'景德镇市', N'360203', N'珠山区', N'', N'', N'', N'', N'3', N'1', N''), (N'360222', N'3602', N'00,36,3602', N'浮梁县', N'36', N'江西省', N'3602', N'景德镇市', N'360222', N'浮梁县', N'', N'', N'', N'', N'3', N'1', N''), (N'360281', N'3602', N'00,36,3602', N'乐平市', N'36', N'江西省', N'3602', N'景德镇市', N'360281', N'乐平市', N'', N'', N'', N'', N'3', N'1', N''), (N'3603', N'36', N'00,36', N'萍乡市', N'36', N'江西省', N'3603', N'萍乡市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360302', N'3603', N'00,36,3603', N'安源区', N'36', N'江西省', N'3603', N'萍乡市', N'360302', N'安源区', N'', N'', N'', N'', N'3', N'1', N''), (N'360313', N'3603', N'00,36,3603', N'湘东区', N'36', N'江西省', N'3603', N'萍乡市', N'360313', N'湘东区', N'', N'', N'', N'', N'3', N'1', N''), (N'360321', N'3603', N'00,36,3603', N'莲花县', N'36', N'江西省', N'3603', N'萍乡市', N'360321', N'莲花县', N'', N'', N'', N'', N'3', N'1', N''), (N'360322', N'3603', N'00,36,3603', N'上栗县', N'36', N'江西省', N'3603', N'萍乡市', N'360322', N'上栗县', N'', N'', N'', N'', N'3', N'1', N''), (N'360323', N'3603', N'00,36,3603', N'芦溪县', N'36', N'江西省', N'3603', N'萍乡市', N'360323', N'芦溪县', N'', N'', N'', N'', N'3', N'1', N'')
GO

INSERT INTO [dbo].[blade_region] VALUES (N'3604', N'36', N'00,36', N'九江市', N'36', N'江西省', N'3604', N'九江市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360402', N'3604', N'00,36,3604', N'濂溪区', N'36', N'江西省', N'3604', N'九江市', N'360402', N'濂溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'360403', N'3604', N'00,36,3604', N'浔阳区', N'36', N'江西省', N'3604', N'九江市', N'360403', N'浔阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'360404', N'3604', N'00,36,3604', N'柴桑区', N'36', N'江西省', N'3604', N'九江市', N'360404', N'柴桑区', N'', N'', N'', N'', N'3', N'1', N''), (N'360423', N'3604', N'00,36,3604', N'武宁县', N'36', N'江西省', N'3604', N'九江市', N'360423', N'武宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'360424', N'3604', N'00,36,3604', N'修水县', N'36', N'江西省', N'3604', N'九江市', N'360424', N'修水县', N'', N'', N'', N'', N'3', N'1', N''), (N'360425', N'3604', N'00,36,3604', N'永修县', N'36', N'江西省', N'3604', N'九江市', N'360425', N'永修县', N'', N'', N'', N'', N'3', N'1', N''), (N'360426', N'3604', N'00,36,3604', N'德安县', N'36', N'江西省', N'3604', N'九江市', N'360426', N'德安县', N'', N'', N'', N'', N'3', N'1', N''), (N'360428', N'3604', N'00,36,3604', N'都昌县', N'36', N'江西省', N'3604', N'九江市', N'360428', N'都昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'360429', N'3604', N'00,36,3604', N'湖口县', N'36', N'江西省', N'3604', N'九江市', N'360429', N'湖口县', N'', N'', N'', N'', N'3', N'1', N''), (N'360430', N'3604', N'00,36,3604', N'彭泽县', N'36', N'江西省', N'3604', N'九江市', N'360430', N'彭泽县', N'', N'', N'', N'', N'3', N'1', N''), (N'360481', N'3604', N'00,36,3604', N'瑞昌市', N'36', N'江西省', N'3604', N'九江市', N'360481', N'瑞昌市', N'', N'', N'', N'', N'3', N'1', N''), (N'360482', N'3604', N'00,36,3604', N'共青城市', N'36', N'江西省', N'3604', N'九江市', N'360482', N'共青城市', N'', N'', N'', N'', N'3', N'1', N''), (N'360483', N'3604', N'00,36,3604', N'庐山市', N'36', N'江西省', N'3604', N'九江市', N'360483', N'庐山市', N'', N'', N'', N'', N'3', N'1', N''), (N'3605', N'36', N'00,36', N'新余市', N'36', N'江西省', N'3605', N'新余市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360502', N'3605', N'00,36,3605', N'渝水区', N'36', N'江西省', N'3605', N'新余市', N'360502', N'渝水区', N'', N'', N'', N'', N'3', N'1', N''), (N'360521', N'3605', N'00,36,3605', N'分宜县', N'36', N'江西省', N'3605', N'新余市', N'360521', N'分宜县', N'', N'', N'', N'', N'3', N'1', N''), (N'3606', N'36', N'00,36', N'鹰潭市', N'36', N'江西省', N'3606', N'鹰潭市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360602', N'3606', N'00,36,3606', N'月湖区', N'36', N'江西省', N'3606', N'鹰潭市', N'360602', N'月湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'360603', N'3606', N'00,36,3606', N'余江区', N'36', N'江西省', N'3606', N'鹰潭市', N'360603', N'余江区', N'', N'', N'', N'', N'3', N'1', N''), (N'360681', N'3606', N'00,36,3606', N'贵溪市', N'36', N'江西省', N'3606', N'鹰潭市', N'360681', N'贵溪市', N'', N'', N'', N'', N'3', N'1', N''), (N'3607', N'36', N'00,36', N'赣州市', N'36', N'江西省', N'3607', N'赣州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360702', N'3607', N'00,36,3607', N'章贡区', N'36', N'江西省', N'3607', N'赣州市', N'360702', N'章贡区', N'', N'', N'', N'', N'3', N'1', N''), (N'360703', N'3607', N'00,36,3607', N'南康区', N'36', N'江西省', N'3607', N'赣州市', N'360703', N'南康区', N'', N'', N'', N'', N'3', N'1', N''), (N'360704', N'3607', N'00,36,3607', N'赣县区', N'36', N'江西省', N'3607', N'赣州市', N'360704', N'赣县区', N'', N'', N'', N'', N'3', N'1', N''), (N'360722', N'3607', N'00,36,3607', N'信丰县', N'36', N'江西省', N'3607', N'赣州市', N'360722', N'信丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'360723', N'3607', N'00,36,3607', N'大余县', N'36', N'江西省', N'3607', N'赣州市', N'360723', N'大余县', N'', N'', N'', N'', N'3', N'1', N''), (N'360724', N'3607', N'00,36,3607', N'上犹县', N'36', N'江西省', N'3607', N'赣州市', N'360724', N'上犹县', N'', N'', N'', N'', N'3', N'1', N''), (N'360725', N'3607', N'00,36,3607', N'崇义县', N'36', N'江西省', N'3607', N'赣州市', N'360725', N'崇义县', N'', N'', N'', N'', N'3', N'1', N''), (N'360726', N'3607', N'00,36,3607', N'安远县', N'36', N'江西省', N'3607', N'赣州市', N'360726', N'安远县', N'', N'', N'', N'', N'3', N'1', N''), (N'360727', N'3607', N'00,36,3607', N'龙南县', N'36', N'江西省', N'3607', N'赣州市', N'360727', N'龙南县', N'', N'', N'', N'', N'3', N'1', N''), (N'360728', N'3607', N'00,36,3607', N'定南县', N'36', N'江西省', N'3607', N'赣州市', N'360728', N'定南县', N'', N'', N'', N'', N'3', N'1', N''), (N'360729', N'3607', N'00,36,3607', N'全南县', N'36', N'江西省', N'3607', N'赣州市', N'360729', N'全南县', N'', N'', N'', N'', N'3', N'1', N''), (N'360730', N'3607', N'00,36,3607', N'宁都县', N'36', N'江西省', N'3607', N'赣州市', N'360730', N'宁都县', N'', N'', N'', N'', N'3', N'1', N''), (N'360731', N'3607', N'00,36,3607', N'于都县', N'36', N'江西省', N'3607', N'赣州市', N'360731', N'于都县', N'', N'', N'', N'', N'3', N'1', N''), (N'360732', N'3607', N'00,36,3607', N'兴国县', N'36', N'江西省', N'3607', N'赣州市', N'360732', N'兴国县', N'', N'', N'', N'', N'3', N'1', N''), (N'360733', N'3607', N'00,36,3607', N'会昌县', N'36', N'江西省', N'3607', N'赣州市', N'360733', N'会昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'360734', N'3607', N'00,36,3607', N'寻乌县', N'36', N'江西省', N'3607', N'赣州市', N'360734', N'寻乌县', N'', N'', N'', N'', N'3', N'1', N''), (N'360735', N'3607', N'00,36,3607', N'石城县', N'36', N'江西省', N'3607', N'赣州市', N'360735', N'石城县', N'', N'', N'', N'', N'3', N'1', N''), (N'360781', N'3607', N'00,36,3607', N'瑞金市', N'36', N'江西省', N'3607', N'赣州市', N'360781', N'瑞金市', N'', N'', N'', N'', N'3', N'1', N''), (N'3608', N'36', N'00,36', N'吉安市', N'36', N'江西省', N'3608', N'吉安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360802', N'3608', N'00,36,3608', N'吉州区', N'36', N'江西省', N'3608', N'吉安市', N'360802', N'吉州区', N'', N'', N'', N'', N'3', N'1', N''), (N'360803', N'3608', N'00,36,3608', N'青原区', N'36', N'江西省', N'3608', N'吉安市', N'360803', N'青原区', N'', N'', N'', N'', N'3', N'1', N''), (N'360821', N'3608', N'00,36,3608', N'吉安县', N'36', N'江西省', N'3608', N'吉安市', N'360821', N'吉安县', N'', N'', N'', N'', N'3', N'1', N''), (N'360822', N'3608', N'00,36,3608', N'吉水县', N'36', N'江西省', N'3608', N'吉安市', N'360822', N'吉水县', N'', N'', N'', N'', N'3', N'1', N''), (N'360823', N'3608', N'00,36,3608', N'峡江县', N'36', N'江西省', N'3608', N'吉安市', N'360823', N'峡江县', N'', N'', N'', N'', N'3', N'1', N''), (N'360824', N'3608', N'00,36,3608', N'新干县', N'36', N'江西省', N'3608', N'吉安市', N'360824', N'新干县', N'', N'', N'', N'', N'3', N'1', N''), (N'360825', N'3608', N'00,36,3608', N'永丰县', N'36', N'江西省', N'3608', N'吉安市', N'360825', N'永丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'360826', N'3608', N'00,36,3608', N'泰和县', N'36', N'江西省', N'3608', N'吉安市', N'360826', N'泰和县', N'', N'', N'', N'', N'3', N'1', N''), (N'360827', N'3608', N'00,36,3608', N'遂川县', N'36', N'江西省', N'3608', N'吉安市', N'360827', N'遂川县', N'', N'', N'', N'', N'3', N'1', N''), (N'360828', N'3608', N'00,36,3608', N'万安县', N'36', N'江西省', N'3608', N'吉安市', N'360828', N'万安县', N'', N'', N'', N'', N'3', N'1', N''), (N'360829', N'3608', N'00,36,3608', N'安福县', N'36', N'江西省', N'3608', N'吉安市', N'360829', N'安福县', N'', N'', N'', N'', N'3', N'1', N''), (N'360830', N'3608', N'00,36,3608', N'永新县', N'36', N'江西省', N'3608', N'吉安市', N'360830', N'永新县', N'', N'', N'', N'', N'3', N'1', N''), (N'360881', N'3608', N'00,36,3608', N'井冈山市', N'36', N'江西省', N'3608', N'吉安市', N'360881', N'井冈山市', N'', N'', N'', N'', N'3', N'1', N''), (N'3609', N'36', N'00,36', N'宜春市', N'36', N'江西省', N'3609', N'宜春市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'360902', N'3609', N'00,36,3609', N'袁州区', N'36', N'江西省', N'3609', N'宜春市', N'360902', N'袁州区', N'', N'', N'', N'', N'3', N'1', N''), (N'360921', N'3609', N'00,36,3609', N'奉新县', N'36', N'江西省', N'3609', N'宜春市', N'360921', N'奉新县', N'', N'', N'', N'', N'3', N'1', N''), (N'360922', N'3609', N'00,36,3609', N'万载县', N'36', N'江西省', N'3609', N'宜春市', N'360922', N'万载县', N'', N'', N'', N'', N'3', N'1', N''), (N'360923', N'3609', N'00,36,3609', N'上高县', N'36', N'江西省', N'3609', N'宜春市', N'360923', N'上高县', N'', N'', N'', N'', N'3', N'1', N''), (N'360924', N'3609', N'00,36,3609', N'宜丰县', N'36', N'江西省', N'3609', N'宜春市', N'360924', N'宜丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'360925', N'3609', N'00,36,3609', N'靖安县', N'36', N'江西省', N'3609', N'宜春市', N'360925', N'靖安县', N'', N'', N'', N'', N'3', N'1', N''), (N'360926', N'3609', N'00,36,3609', N'铜鼓县', N'36', N'江西省', N'3609', N'宜春市', N'360926', N'铜鼓县', N'', N'', N'', N'', N'3', N'1', N''), (N'360981', N'3609', N'00,36,3609', N'丰城市', N'36', N'江西省', N'3609', N'宜春市', N'360981', N'丰城市', N'', N'', N'', N'', N'3', N'1', N''), (N'360982', N'3609', N'00,36,3609', N'樟树市', N'36', N'江西省', N'3609', N'宜春市', N'360982', N'樟树市', N'', N'', N'', N'', N'3', N'1', N''), (N'360983', N'3609', N'00,36,3609', N'高安市', N'36', N'江西省', N'3609', N'宜春市', N'360983', N'高安市', N'', N'', N'', N'', N'3', N'1', N''), (N'3610', N'36', N'00,36', N'抚州市', N'36', N'江西省', N'3610', N'抚州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'361002', N'3610', N'00,36,3610', N'临川区', N'36', N'江西省', N'3610', N'抚州市', N'361002', N'临川区', N'', N'', N'', N'', N'3', N'1', N''), (N'361003', N'3610', N'00,36,3610', N'东乡区', N'36', N'江西省', N'3610', N'抚州市', N'361003', N'东乡区', N'', N'', N'', N'', N'3', N'1', N''), (N'361021', N'3610', N'00,36,3610', N'南城县', N'36', N'江西省', N'3610', N'抚州市', N'361021', N'南城县', N'', N'', N'', N'', N'3', N'1', N''), (N'361022', N'3610', N'00,36,3610', N'黎川县', N'36', N'江西省', N'3610', N'抚州市', N'361022', N'黎川县', N'', N'', N'', N'', N'3', N'1', N''), (N'361023', N'3610', N'00,36,3610', N'南丰县', N'36', N'江西省', N'3610', N'抚州市', N'361023', N'南丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'361024', N'3610', N'00,36,3610', N'崇仁县', N'36', N'江西省', N'3610', N'抚州市', N'361024', N'崇仁县', N'', N'', N'', N'', N'3', N'1', N''), (N'361025', N'3610', N'00,36,3610', N'乐安县', N'36', N'江西省', N'3610', N'抚州市', N'361025', N'乐安县', N'', N'', N'', N'', N'3', N'1', N''), (N'361026', N'3610', N'00,36,3610', N'宜黄县', N'36', N'江西省', N'3610', N'抚州市', N'361026', N'宜黄县', N'', N'', N'', N'', N'3', N'1', N''), (N'361027', N'3610', N'00,36,3610', N'金溪县', N'36', N'江西省', N'3610', N'抚州市', N'361027', N'金溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'361028', N'3610', N'00,36,3610', N'资溪县', N'36', N'江西省', N'3610', N'抚州市', N'361028', N'资溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'361030', N'3610', N'00,36,3610', N'广昌县', N'36', N'江西省', N'3610', N'抚州市', N'361030', N'广昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'3611', N'36', N'00,36', N'上饶市', N'36', N'江西省', N'3611', N'上饶市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'361102', N'3611', N'00,36,3611', N'信州区', N'36', N'江西省', N'3611', N'上饶市', N'361102', N'信州区', N'', N'', N'', N'', N'3', N'1', N''), (N'361103', N'3611', N'00,36,3611', N'广丰区', N'36', N'江西省', N'3611', N'上饶市', N'361103', N'广丰区', N'', N'', N'', N'', N'3', N'1', N''), (N'361104', N'3611', N'00,36,3611', N'广信区', N'36', N'江西省', N'3611', N'上饶市', N'361104', N'广信区', N'', N'', N'', N'', N'3', N'1', N''), (N'361123', N'3611', N'00,36,3611', N'玉山县', N'36', N'江西省', N'3611', N'上饶市', N'361123', N'玉山县', N'', N'', N'', N'', N'3', N'1', N''), (N'361124', N'3611', N'00,36,3611', N'铅山县', N'36', N'江西省', N'3611', N'上饶市', N'361124', N'铅山县', N'', N'', N'', N'', N'3', N'1', N''), (N'361125', N'3611', N'00,36,3611', N'横峰县', N'36', N'江西省', N'3611', N'上饶市', N'361125', N'横峰县', N'', N'', N'', N'', N'3', N'1', N''), (N'361126', N'3611', N'00,36,3611', N'弋阳县', N'36', N'江西省', N'3611', N'上饶市', N'361126', N'弋阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'361127', N'3611', N'00,36,3611', N'余干县', N'36', N'江西省', N'3611', N'上饶市', N'361127', N'余干县', N'', N'', N'', N'', N'3', N'1', N''), (N'361128', N'3611', N'00,36,3611', N'鄱阳县', N'36', N'江西省', N'3611', N'上饶市', N'361128', N'鄱阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'361129', N'3611', N'00,36,3611', N'万年县', N'36', N'江西省', N'3611', N'上饶市', N'361129', N'万年县', N'', N'', N'', N'', N'3', N'1', N''), (N'361130', N'3611', N'00,36,3611', N'婺源县', N'36', N'江西省', N'3611', N'上饶市', N'361130', N'婺源县', N'', N'', N'', N'', N'3', N'1', N''), (N'361181', N'3611', N'00,36,3611', N'德兴市', N'36', N'江西省', N'3611', N'上饶市', N'361181', N'德兴市', N'', N'', N'', N'', N'3', N'1', N''), (N'37', N'00', N'00', N'山东省', N'37', N'山东省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'3701', N'37', N'00,37', N'济南市', N'37', N'山东省', N'3701', N'济南市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370102', N'3701', N'00,37,3701', N'历下区', N'37', N'山东省', N'3701', N'济南市', N'370102', N'历下区', N'', N'', N'', N'', N'3', N'1', N''), (N'370103', N'3701', N'00,37,3701', N'市中区', N'37', N'山东省', N'3701', N'济南市', N'370103', N'市中区', N'', N'', N'', N'', N'3', N'1', N''), (N'370104', N'3701', N'00,37,3701', N'槐荫区', N'37', N'山东省', N'3701', N'济南市', N'370104', N'槐荫区', N'', N'', N'', N'', N'3', N'1', N''), (N'370105', N'3701', N'00,37,3701', N'天桥区', N'37', N'山东省', N'3701', N'济南市', N'370105', N'天桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'370112', N'3701', N'00,37,3701', N'历城区', N'37', N'山东省', N'3701', N'济南市', N'370112', N'历城区', N'', N'', N'', N'', N'3', N'1', N''), (N'370113', N'3701', N'00,37,3701', N'长清区', N'37', N'山东省', N'3701', N'济南市', N'370113', N'长清区', N'', N'', N'', N'', N'3', N'1', N''), (N'370114', N'3701', N'00,37,3701', N'章丘区', N'37', N'山东省', N'3701', N'济南市', N'370114', N'章丘区', N'', N'', N'', N'', N'3', N'1', N''), (N'370115', N'3701', N'00,37,3701', N'济阳区', N'37', N'山东省', N'3701', N'济南市', N'370115', N'济阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'370116', N'3701', N'00,37,3701', N'莱芜区', N'37', N'山东省', N'3701', N'济南市', N'370116', N'莱芜区', N'', N'', N'', N'', N'3', N'1', N''), (N'370117', N'3701', N'00,37,3701', N'钢城区', N'37', N'山东省', N'3701', N'济南市', N'370117', N'钢城区', N'', N'', N'', N'', N'3', N'1', N''), (N'370124', N'3701', N'00,37,3701', N'平阴县', N'37', N'山东省', N'3701', N'济南市', N'370124', N'平阴县', N'', N'', N'', N'', N'3', N'1', N''), (N'370126', N'3701', N'00,37,3701', N'商河县', N'37', N'山东省', N'3701', N'济南市', N'370126', N'商河县', N'', N'', N'', N'', N'3', N'1', N''), (N'3702', N'37', N'00,37', N'青岛市', N'37', N'山东省', N'3702', N'青岛市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370202', N'3702', N'00,37,3702', N'市南区', N'37', N'山东省', N'3702', N'青岛市', N'370202', N'市南区', N'', N'', N'', N'', N'3', N'1', N''), (N'370203', N'3702', N'00,37,3702', N'市北区', N'37', N'山东省', N'3702', N'青岛市', N'370203', N'市北区', N'', N'', N'', N'', N'3', N'1', N''), (N'370211', N'3702', N'00,37,3702', N'黄岛区', N'37', N'山东省', N'3702', N'青岛市', N'370211', N'黄岛区', N'', N'', N'', N'', N'3', N'1', N''), (N'370212', N'3702', N'00,37,3702', N'崂山区', N'37', N'山东省', N'3702', N'青岛市', N'370212', N'崂山区', N'', N'', N'', N'', N'3', N'1', N''), (N'370213', N'3702', N'00,37,3702', N'李沧区', N'37', N'山东省', N'3702', N'青岛市', N'370213', N'李沧区', N'', N'', N'', N'', N'3', N'1', N''), (N'370214', N'3702', N'00,37,3702', N'城阳区', N'37', N'山东省', N'3702', N'青岛市', N'370214', N'城阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'370215', N'3702', N'00,37,3702', N'即墨区', N'37', N'山东省', N'3702', N'青岛市', N'370215', N'即墨区', N'', N'', N'', N'', N'3', N'1', N''), (N'370281', N'3702', N'00,37,3702', N'胶州市', N'37', N'山东省', N'3702', N'青岛市', N'370281', N'胶州市', N'', N'', N'', N'', N'3', N'1', N''), (N'370283', N'3702', N'00,37,3702', N'平度市', N'37', N'山东省', N'3702', N'青岛市', N'370283', N'平度市', N'', N'', N'', N'', N'3', N'1', N''), (N'370285', N'3702', N'00,37,3702', N'莱西市', N'37', N'山东省', N'3702', N'青岛市', N'370285', N'莱西市', N'', N'', N'', N'', N'3', N'1', N''), (N'3703', N'37', N'00,37', N'淄博市', N'37', N'山东省', N'3703', N'淄博市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370302', N'3703', N'00,37,3703', N'淄川区', N'37', N'山东省', N'3703', N'淄博市', N'370302', N'淄川区', N'', N'', N'', N'', N'3', N'1', N''), (N'370303', N'3703', N'00,37,3703', N'张店区', N'37', N'山东省', N'3703', N'淄博市', N'370303', N'张店区', N'', N'', N'', N'', N'3', N'1', N''), (N'370304', N'3703', N'00,37,3703', N'博山区', N'37', N'山东省', N'3703', N'淄博市', N'370304', N'博山区', N'', N'', N'', N'', N'3', N'1', N''), (N'370305', N'3703', N'00,37,3703', N'临淄区', N'37', N'山东省', N'3703', N'淄博市', N'370305', N'临淄区', N'', N'', N'', N'', N'3', N'1', N''), (N'370306', N'3703', N'00,37,3703', N'周村区', N'37', N'山东省', N'3703', N'淄博市', N'370306', N'周村区', N'', N'', N'', N'', N'3', N'1', N''), (N'370321', N'3703', N'00,37,3703', N'桓台县', N'37', N'山东省', N'3703', N'淄博市', N'370321', N'桓台县', N'', N'', N'', N'', N'3', N'1', N''), (N'370322', N'3703', N'00,37,3703', N'高青县', N'37', N'山东省', N'3703', N'淄博市', N'370322', N'高青县', N'', N'', N'', N'', N'3', N'1', N''), (N'370323', N'3703', N'00,37,3703', N'沂源县', N'37', N'山东省', N'3703', N'淄博市', N'370323', N'沂源县', N'', N'', N'', N'', N'3', N'1', N''), (N'3704', N'37', N'00,37', N'枣庄市', N'37', N'山东省', N'3704', N'枣庄市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370402', N'3704', N'00,37,3704', N'市中区', N'37', N'山东省', N'3704', N'枣庄市', N'370402', N'市中区', N'', N'', N'', N'', N'3', N'1', N''), (N'370403', N'3704', N'00,37,3704', N'薛城区', N'37', N'山东省', N'3704', N'枣庄市', N'370403', N'薛城区', N'', N'', N'', N'', N'3', N'1', N''), (N'370404', N'3704', N'00,37,3704', N'峄城区', N'37', N'山东省', N'3704', N'枣庄市', N'370404', N'峄城区', N'', N'', N'', N'', N'3', N'1', N''), (N'370405', N'3704', N'00,37,3704', N'台儿庄区', N'37', N'山东省', N'3704', N'枣庄市', N'370405', N'台儿庄区', N'', N'', N'', N'', N'3', N'1', N''), (N'370406', N'3704', N'00,37,3704', N'山亭区', N'37', N'山东省', N'3704', N'枣庄市', N'370406', N'山亭区', N'', N'', N'', N'', N'3', N'1', N''), (N'370481', N'3704', N'00,37,3704', N'滕州市', N'37', N'山东省', N'3704', N'枣庄市', N'370481', N'滕州市', N'', N'', N'', N'', N'3', N'1', N''), (N'3705', N'37', N'00,37', N'东营市', N'37', N'山东省', N'3705', N'东营市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370502', N'3705', N'00,37,3705', N'东营区', N'37', N'山东省', N'3705', N'东营市', N'370502', N'东营区', N'', N'', N'', N'', N'3', N'1', N''), (N'370503', N'3705', N'00,37,3705', N'河口区', N'37', N'山东省', N'3705', N'东营市', N'370503', N'河口区', N'', N'', N'', N'', N'3', N'1', N''), (N'370505', N'3705', N'00,37,3705', N'垦利区', N'37', N'山东省', N'3705', N'东营市', N'370505', N'垦利区', N'', N'', N'', N'', N'3', N'1', N''), (N'370522', N'3705', N'00,37,3705', N'利津县', N'37', N'山东省', N'3705', N'东营市', N'370522', N'利津县', N'', N'', N'', N'', N'3', N'1', N''), (N'370523', N'3705', N'00,37,3705', N'广饶县', N'37', N'山东省', N'3705', N'东营市', N'370523', N'广饶县', N'', N'', N'', N'', N'3', N'1', N''), (N'3706', N'37', N'00,37', N'烟台市', N'37', N'山东省', N'3706', N'烟台市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370602', N'3706', N'00,37,3706', N'芝罘区', N'37', N'山东省', N'3706', N'烟台市', N'370602', N'芝罘区', N'', N'', N'', N'', N'3', N'1', N''), (N'370611', N'3706', N'00,37,3706', N'福山区', N'37', N'山东省', N'3706', N'烟台市', N'370611', N'福山区', N'', N'', N'', N'', N'3', N'1', N''), (N'370612', N'3706', N'00,37,3706', N'牟平区', N'37', N'山东省', N'3706', N'烟台市', N'370612', N'牟平区', N'', N'', N'', N'', N'3', N'1', N''), (N'370613', N'3706', N'00,37,3706', N'莱山区', N'37', N'山东省', N'3706', N'烟台市', N'370613', N'莱山区', N'', N'', N'', N'', N'3', N'1', N''), (N'370634', N'3706', N'00,37,3706', N'长岛县', N'37', N'山东省', N'3706', N'烟台市', N'370634', N'长岛县', N'', N'', N'', N'', N'3', N'1', N''), (N'370681', N'3706', N'00,37,3706', N'龙口市', N'37', N'山东省', N'3706', N'烟台市', N'370681', N'龙口市', N'', N'', N'', N'', N'3', N'1', N''), (N'370682', N'3706', N'00,37,3706', N'莱阳市', N'37', N'山东省', N'3706', N'烟台市', N'370682', N'莱阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'370683', N'3706', N'00,37,3706', N'莱州市', N'37', N'山东省', N'3706', N'烟台市', N'370683', N'莱州市', N'', N'', N'', N'', N'3', N'1', N''), (N'370684', N'3706', N'00,37,3706', N'蓬莱市', N'37', N'山东省', N'3706', N'烟台市', N'370684', N'蓬莱市', N'', N'', N'', N'', N'3', N'1', N''), (N'370685', N'3706', N'00,37,3706', N'招远市', N'37', N'山东省', N'3706', N'烟台市', N'370685', N'招远市', N'', N'', N'', N'', N'3', N'1', N''), (N'370686', N'3706', N'00,37,3706', N'栖霞市', N'37', N'山东省', N'3706', N'烟台市', N'370686', N'栖霞市', N'', N'', N'', N'', N'3', N'1', N''), (N'370687', N'3706', N'00,37,3706', N'海阳市', N'37', N'山东省', N'3706', N'烟台市', N'370687', N'海阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'3707', N'37', N'00,37', N'潍坊市', N'37', N'山东省', N'3707', N'潍坊市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370702', N'3707', N'00,37,3707', N'潍城区', N'37', N'山东省', N'3707', N'潍坊市', N'370702', N'潍城区', N'', N'', N'', N'', N'3', N'1', N''), (N'370703', N'3707', N'00,37,3707', N'寒亭区', N'37', N'山东省', N'3707', N'潍坊市', N'370703', N'寒亭区', N'', N'', N'', N'', N'3', N'1', N''), (N'370704', N'3707', N'00,37,3707', N'坊子区', N'37', N'山东省', N'3707', N'潍坊市', N'370704', N'坊子区', N'', N'', N'', N'', N'3', N'1', N''), (N'370705', N'3707', N'00,37,3707', N'奎文区', N'37', N'山东省', N'3707', N'潍坊市', N'370705', N'奎文区', N'', N'', N'', N'', N'3', N'1', N''), (N'370724', N'3707', N'00,37,3707', N'临朐县', N'37', N'山东省', N'3707', N'潍坊市', N'370724', N'临朐县', N'', N'', N'', N'', N'3', N'1', N''), (N'370725', N'3707', N'00,37,3707', N'昌乐县', N'37', N'山东省', N'3707', N'潍坊市', N'370725', N'昌乐县', N'', N'', N'', N'', N'3', N'1', N''), (N'370781', N'3707', N'00,37,3707', N'青州市', N'37', N'山东省', N'3707', N'潍坊市', N'370781', N'青州市', N'', N'', N'', N'', N'3', N'1', N''), (N'370782', N'3707', N'00,37,3707', N'诸城市', N'37', N'山东省', N'3707', N'潍坊市', N'370782', N'诸城市', N'', N'', N'', N'', N'3', N'1', N''), (N'370783', N'3707', N'00,37,3707', N'寿光市', N'37', N'山东省', N'3707', N'潍坊市', N'370783', N'寿光市', N'', N'', N'', N'', N'3', N'1', N''), (N'370784', N'3707', N'00,37,3707', N'安丘市', N'37', N'山东省', N'3707', N'潍坊市', N'370784', N'安丘市', N'', N'', N'', N'', N'3', N'1', N''), (N'370785', N'3707', N'00,37,3707', N'高密市', N'37', N'山东省', N'3707', N'潍坊市', N'370785', N'高密市', N'', N'', N'', N'', N'3', N'1', N''), (N'370786', N'3707', N'00,37,3707', N'昌邑市', N'37', N'山东省', N'3707', N'潍坊市', N'370786', N'昌邑市', N'', N'', N'', N'', N'3', N'1', N''), (N'3708', N'37', N'00,37', N'济宁市', N'37', N'山东省', N'3708', N'济宁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370811', N'3708', N'00,37,3708', N'任城区', N'37', N'山东省', N'3708', N'济宁市', N'370811', N'任城区', N'', N'', N'', N'', N'3', N'1', N''), (N'370812', N'3708', N'00,37,3708', N'兖州区', N'37', N'山东省', N'3708', N'济宁市', N'370812', N'兖州区', N'', N'', N'', N'', N'3', N'1', N''), (N'370826', N'3708', N'00,37,3708', N'微山县', N'37', N'山东省', N'3708', N'济宁市', N'370826', N'微山县', N'', N'', N'', N'', N'3', N'1', N''), (N'370827', N'3708', N'00,37,3708', N'鱼台县', N'37', N'山东省', N'3708', N'济宁市', N'370827', N'鱼台县', N'', N'', N'', N'', N'3', N'1', N''), (N'370828', N'3708', N'00,37,3708', N'金乡县', N'37', N'山东省', N'3708', N'济宁市', N'370828', N'金乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'370829', N'3708', N'00,37,3708', N'嘉祥县', N'37', N'山东省', N'3708', N'济宁市', N'370829', N'嘉祥县', N'', N'', N'', N'', N'3', N'1', N''), (N'370830', N'3708', N'00,37,3708', N'汶上县', N'37', N'山东省', N'3708', N'济宁市', N'370830', N'汶上县', N'', N'', N'', N'', N'3', N'1', N''), (N'370831', N'3708', N'00,37,3708', N'泗水县', N'37', N'山东省', N'3708', N'济宁市', N'370831', N'泗水县', N'', N'', N'', N'', N'3', N'1', N''), (N'370832', N'3708', N'00,37,3708', N'梁山县', N'37', N'山东省', N'3708', N'济宁市', N'370832', N'梁山县', N'', N'', N'', N'', N'3', N'1', N''), (N'370881', N'3708', N'00,37,3708', N'曲阜市', N'37', N'山东省', N'3708', N'济宁市', N'370881', N'曲阜市', N'', N'', N'', N'', N'3', N'1', N''), (N'370883', N'3708', N'00,37,3708', N'邹城市', N'37', N'山东省', N'3708', N'济宁市', N'370883', N'邹城市', N'', N'', N'', N'', N'3', N'1', N''), (N'3709', N'37', N'00,37', N'泰安市', N'37', N'山东省', N'3709', N'泰安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'370902', N'3709', N'00,37,3709', N'泰山区', N'37', N'山东省', N'3709', N'泰安市', N'370902', N'泰山区', N'', N'', N'', N'', N'3', N'1', N''), (N'370911', N'3709', N'00,37,3709', N'岱岳区', N'37', N'山东省', N'3709', N'泰安市', N'370911', N'岱岳区', N'', N'', N'', N'', N'3', N'1', N''), (N'370921', N'3709', N'00,37,3709', N'宁阳县', N'37', N'山东省', N'3709', N'泰安市', N'370921', N'宁阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'370923', N'3709', N'00,37,3709', N'东平县', N'37', N'山东省', N'3709', N'泰安市', N'370923', N'东平县', N'', N'', N'', N'', N'3', N'1', N''), (N'370982', N'3709', N'00,37,3709', N'新泰市', N'37', N'山东省', N'3709', N'泰安市', N'370982', N'新泰市', N'', N'', N'', N'', N'3', N'1', N''), (N'370983', N'3709', N'00,37,3709', N'肥城市', N'37', N'山东省', N'3709', N'泰安市', N'370983', N'肥城市', N'', N'', N'', N'', N'3', N'1', N''), (N'3710', N'37', N'00,37', N'威海市', N'37', N'山东省', N'3710', N'威海市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'371002', N'3710', N'00,37,3710', N'环翠区', N'37', N'山东省', N'3710', N'威海市', N'371002', N'环翠区', N'', N'', N'', N'', N'3', N'1', N''), (N'371003', N'3710', N'00,37,3710', N'文登区', N'37', N'山东省', N'3710', N'威海市', N'371003', N'文登区', N'', N'', N'', N'', N'3', N'1', N''), (N'371082', N'3710', N'00,37,3710', N'荣成市', N'37', N'山东省', N'3710', N'威海市', N'371082', N'荣成市', N'', N'', N'', N'', N'3', N'1', N''), (N'371083', N'3710', N'00,37,3710', N'乳山市', N'37', N'山东省', N'3710', N'威海市', N'371083', N'乳山市', N'', N'', N'', N'', N'3', N'1', N''), (N'3711', N'37', N'00,37', N'日照市', N'37', N'山东省', N'3711', N'日照市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'371102', N'3711', N'00,37,3711', N'东港区', N'37', N'山东省', N'3711', N'日照市', N'371102', N'东港区', N'', N'', N'', N'', N'3', N'1', N''), (N'371103', N'3711', N'00,37,3711', N'岚山区', N'37', N'山东省', N'3711', N'日照市', N'371103', N'岚山区', N'', N'', N'', N'', N'3', N'1', N''), (N'371121', N'3711', N'00,37,3711', N'五莲县', N'37', N'山东省', N'3711', N'日照市', N'371121', N'五莲县', N'', N'', N'', N'', N'3', N'1', N''), (N'371122', N'3711', N'00,37,3711', N'莒县', N'37', N'山东省', N'3711', N'日照市', N'371122', N'莒县', N'', N'', N'', N'', N'3', N'1', N''), (N'3713', N'37', N'00,37', N'临沂市', N'37', N'山东省', N'3713', N'临沂市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'371302', N'3713', N'00,37,3713', N'兰山区', N'37', N'山东省', N'3713', N'临沂市', N'371302', N'兰山区', N'', N'', N'', N'', N'3', N'1', N''), (N'371311', N'3713', N'00,37,3713', N'罗庄区', N'37', N'山东省', N'3713', N'临沂市', N'371311', N'罗庄区', N'', N'', N'', N'', N'3', N'1', N''), (N'371312', N'3713', N'00,37,3713', N'河东区', N'37', N'山东省', N'3713', N'临沂市', N'371312', N'河东区', N'', N'', N'', N'', N'3', N'1', N''), (N'371321', N'3713', N'00,37,3713', N'沂南县', N'37', N'山东省', N'3713', N'临沂市', N'371321', N'沂南县', N'', N'', N'', N'', N'3', N'1', N''), (N'371322', N'3713', N'00,37,3713', N'郯城县', N'37', N'山东省', N'3713', N'临沂市', N'371322', N'郯城县', N'', N'', N'', N'', N'3', N'1', N''), (N'371323', N'3713', N'00,37,3713', N'沂水县', N'37', N'山东省', N'3713', N'临沂市', N'371323', N'沂水县', N'', N'', N'', N'', N'3', N'1', N''), (N'371324', N'3713', N'00,37,3713', N'兰陵县', N'37', N'山东省', N'3713', N'临沂市', N'371324', N'兰陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'371325', N'3713', N'00,37,3713', N'费县', N'37', N'山东省', N'3713', N'临沂市', N'371325', N'费县', N'', N'', N'', N'', N'3', N'1', N''), (N'371326', N'3713', N'00,37,3713', N'平邑县', N'37', N'山东省', N'3713', N'临沂市', N'371326', N'平邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'371327', N'3713', N'00,37,3713', N'莒南县', N'37', N'山东省', N'3713', N'临沂市', N'371327', N'莒南县', N'', N'', N'', N'', N'3', N'1', N''), (N'371328', N'3713', N'00,37,3713', N'蒙阴县', N'37', N'山东省', N'3713', N'临沂市', N'371328', N'蒙阴县', N'', N'', N'', N'', N'3', N'1', N''), (N'371329', N'3713', N'00,37,3713', N'临沭县', N'37', N'山东省', N'3713', N'临沂市', N'371329', N'临沭县', N'', N'', N'', N'', N'3', N'1', N''), (N'3714', N'37', N'00,37', N'德州市', N'37', N'山东省', N'3714', N'德州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'371402', N'3714', N'00,37,3714', N'德城区', N'37', N'山东省', N'3714', N'德州市', N'371402', N'德城区', N'', N'', N'', N'', N'3', N'1', N''), (N'371403', N'3714', N'00,37,3714', N'陵城区', N'37', N'山东省', N'3714', N'德州市', N'371403', N'陵城区', N'', N'', N'', N'', N'3', N'1', N''), (N'371422', N'3714', N'00,37,3714', N'宁津县', N'37', N'山东省', N'3714', N'德州市', N'371422', N'宁津县', N'', N'', N'', N'', N'3', N'1', N''), (N'371423', N'3714', N'00,37,3714', N'庆云县', N'37', N'山东省', N'3714', N'德州市', N'371423', N'庆云县', N'', N'', N'', N'', N'3', N'1', N''), (N'371424', N'3714', N'00,37,3714', N'临邑县', N'37', N'山东省', N'3714', N'德州市', N'371424', N'临邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'371425', N'3714', N'00,37,3714', N'齐河县', N'37', N'山东省', N'3714', N'德州市', N'371425', N'齐河县', N'', N'', N'', N'', N'3', N'1', N''), (N'371426', N'3714', N'00,37,3714', N'平原县', N'37', N'山东省', N'3714', N'德州市', N'371426', N'平原县', N'', N'', N'', N'', N'3', N'1', N''), (N'371427', N'3714', N'00,37,3714', N'夏津县', N'37', N'山东省', N'3714', N'德州市', N'371427', N'夏津县', N'', N'', N'', N'', N'3', N'1', N''), (N'371428', N'3714', N'00,37,3714', N'武城县', N'37', N'山东省', N'3714', N'德州市', N'371428', N'武城县', N'', N'', N'', N'', N'3', N'1', N''), (N'371481', N'3714', N'00,37,3714', N'乐陵市', N'37', N'山东省', N'3714', N'德州市', N'371481', N'乐陵市', N'', N'', N'', N'', N'3', N'1', N''), (N'371482', N'3714', N'00,37,3714', N'禹城市', N'37', N'山东省', N'3714', N'德州市', N'371482', N'禹城市', N'', N'', N'', N'', N'3', N'1', N''), (N'3715', N'37', N'00,37', N'聊城市', N'37', N'山东省', N'3715', N'聊城市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'371502', N'3715', N'00,37,3715', N'东昌府区', N'37', N'山东省', N'3715', N'聊城市', N'371502', N'东昌府区', N'', N'', N'', N'', N'3', N'1', N''), (N'371503', N'3715', N'00,37,3715', N'茌平区', N'37', N'山东省', N'3715', N'聊城市', N'371503', N'茌平区', N'', N'', N'', N'', N'3', N'1', N''), (N'371521', N'3715', N'00,37,3715', N'阳谷县', N'37', N'山东省', N'3715', N'聊城市', N'371521', N'阳谷县', N'', N'', N'', N'', N'3', N'1', N''), (N'371522', N'3715', N'00,37,3715', N'莘县', N'37', N'山东省', N'3715', N'聊城市', N'371522', N'莘县', N'', N'', N'', N'', N'3', N'1', N''), (N'371524', N'3715', N'00,37,3715', N'东阿县', N'37', N'山东省', N'3715', N'聊城市', N'371524', N'东阿县', N'', N'', N'', N'', N'3', N'1', N''), (N'371525', N'3715', N'00,37,3715', N'冠县', N'37', N'山东省', N'3715', N'聊城市', N'371525', N'冠县', N'', N'', N'', N'', N'3', N'1', N''), (N'371526', N'3715', N'00,37,3715', N'高唐县', N'37', N'山东省', N'3715', N'聊城市', N'371526', N'高唐县', N'', N'', N'', N'', N'3', N'1', N''), (N'371581', N'3715', N'00,37,3715', N'临清市', N'37', N'山东省', N'3715', N'聊城市', N'371581', N'临清市', N'', N'', N'', N'', N'3', N'1', N''), (N'3716', N'37', N'00,37', N'滨州市', N'37', N'山东省', N'3716', N'滨州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'371602', N'3716', N'00,37,3716', N'滨城区', N'37', N'山东省', N'3716', N'滨州市', N'371602', N'滨城区', N'', N'', N'', N'', N'3', N'1', N''), (N'371603', N'3716', N'00,37,3716', N'沾化区', N'37', N'山东省', N'3716', N'滨州市', N'371603', N'沾化区', N'', N'', N'', N'', N'3', N'1', N''), (N'371621', N'3716', N'00,37,3716', N'惠民县', N'37', N'山东省', N'3716', N'滨州市', N'371621', N'惠民县', N'', N'', N'', N'', N'3', N'1', N''), (N'371622', N'3716', N'00,37,3716', N'阳信县', N'37', N'山东省', N'3716', N'滨州市', N'371622', N'阳信县', N'', N'', N'', N'', N'3', N'1', N''), (N'371623', N'3716', N'00,37,3716', N'无棣县', N'37', N'山东省', N'3716', N'滨州市', N'371623', N'无棣县', N'', N'', N'', N'', N'3', N'1', N''), (N'371625', N'3716', N'00,37,3716', N'博兴县', N'37', N'山东省', N'3716', N'滨州市', N'371625', N'博兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'371681', N'3716', N'00,37,3716', N'邹平市', N'37', N'山东省', N'3716', N'滨州市', N'371681', N'邹平市', N'', N'', N'', N'', N'3', N'1', N''), (N'3717', N'37', N'00,37', N'菏泽市', N'37', N'山东省', N'3717', N'菏泽市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'371702', N'3717', N'00,37,3717', N'牡丹区', N'37', N'山东省', N'3717', N'菏泽市', N'371702', N'牡丹区', N'', N'', N'', N'', N'3', N'1', N''), (N'371703', N'3717', N'00,37,3717', N'定陶区', N'37', N'山东省', N'3717', N'菏泽市', N'371703', N'定陶区', N'', N'', N'', N'', N'3', N'1', N''), (N'371721', N'3717', N'00,37,3717', N'曹县', N'37', N'山东省', N'3717', N'菏泽市', N'371721', N'曹县', N'', N'', N'', N'', N'3', N'1', N''), (N'371722', N'3717', N'00,37,3717', N'单县', N'37', N'山东省', N'3717', N'菏泽市', N'371722', N'单县', N'', N'', N'', N'', N'3', N'1', N''), (N'371723', N'3717', N'00,37,3717', N'成武县', N'37', N'山东省', N'3717', N'菏泽市', N'371723', N'成武县', N'', N'', N'', N'', N'3', N'1', N''), (N'371724', N'3717', N'00,37,3717', N'巨野县', N'37', N'山东省', N'3717', N'菏泽市', N'371724', N'巨野县', N'', N'', N'', N'', N'3', N'1', N''), (N'371725', N'3717', N'00,37,3717', N'郓城县', N'37', N'山东省', N'3717', N'菏泽市', N'371725', N'郓城县', N'', N'', N'', N'', N'3', N'1', N''), (N'371726', N'3717', N'00,37,3717', N'鄄城县', N'37', N'山东省', N'3717', N'菏泽市', N'371726', N'鄄城县', N'', N'', N'', N'', N'3', N'1', N''), (N'371728', N'3717', N'00,37,3717', N'东明县', N'37', N'山东省', N'3717', N'菏泽市', N'371728', N'东明县', N'', N'', N'', N'', N'3', N'1', N''), (N'41', N'00', N'00', N'河南省', N'41', N'河南省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'4101', N'41', N'00,41', N'郑州市', N'41', N'河南省', N'4101', N'郑州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410102', N'4101', N'00,41,4101', N'中原区', N'41', N'河南省', N'4101', N'郑州市', N'410102', N'中原区', N'', N'', N'', N'', N'3', N'1', N''), (N'410103', N'4101', N'00,41,4101', N'二七区', N'41', N'河南省', N'4101', N'郑州市', N'410103', N'二七区', N'', N'', N'', N'', N'3', N'1', N''), (N'410104', N'4101', N'00,41,4101', N'管城回族区', N'41', N'河南省', N'4101', N'郑州市', N'410104', N'管城回族区', N'', N'', N'', N'', N'3', N'1', N''), (N'410105', N'4101', N'00,41,4101', N'金水区', N'41', N'河南省', N'4101', N'郑州市', N'410105', N'金水区', N'', N'', N'', N'', N'3', N'1', N''), (N'410106', N'4101', N'00,41,4101', N'上街区', N'41', N'河南省', N'4101', N'郑州市', N'410106', N'上街区', N'', N'', N'', N'', N'3', N'1', N''), (N'410108', N'4101', N'00,41,4101', N'惠济区', N'41', N'河南省', N'4101', N'郑州市', N'410108', N'惠济区', N'', N'', N'', N'', N'3', N'1', N''), (N'410122', N'4101', N'00,41,4101', N'中牟县', N'41', N'河南省', N'4101', N'郑州市', N'410122', N'中牟县', N'', N'', N'', N'', N'3', N'1', N''), (N'410181', N'4101', N'00,41,4101', N'巩义市', N'41', N'河南省', N'4101', N'郑州市', N'410181', N'巩义市', N'', N'', N'', N'', N'3', N'1', N''), (N'410182', N'4101', N'00,41,4101', N'荥阳市', N'41', N'河南省', N'4101', N'郑州市', N'410182', N'荥阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'410183', N'4101', N'00,41,4101', N'新密市', N'41', N'河南省', N'4101', N'郑州市', N'410183', N'新密市', N'', N'', N'', N'', N'3', N'1', N''), (N'410184', N'4101', N'00,41,4101', N'新郑市', N'41', N'河南省', N'4101', N'郑州市', N'410184', N'新郑市', N'', N'', N'', N'', N'3', N'1', N''), (N'410185', N'4101', N'00,41,4101', N'登封市', N'41', N'河南省', N'4101', N'郑州市', N'410185', N'登封市', N'', N'', N'', N'', N'3', N'1', N''), (N'4102', N'41', N'00,41', N'开封市', N'41', N'河南省', N'4102', N'开封市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410202', N'4102', N'00,41,4102', N'龙亭区', N'41', N'河南省', N'4102', N'开封市', N'410202', N'龙亭区', N'', N'', N'', N'', N'3', N'1', N''), (N'410203', N'4102', N'00,41,4102', N'顺河回族区', N'41', N'河南省', N'4102', N'开封市', N'410203', N'顺河回族区', N'', N'', N'', N'', N'3', N'1', N''), (N'410204', N'4102', N'00,41,4102', N'鼓楼区', N'41', N'河南省', N'4102', N'开封市', N'410204', N'鼓楼区', N'', N'', N'', N'', N'3', N'1', N''), (N'410205', N'4102', N'00,41,4102', N'禹王台区', N'41', N'河南省', N'4102', N'开封市', N'410205', N'禹王台区', N'', N'', N'', N'', N'3', N'1', N''), (N'410212', N'4102', N'00,41,4102', N'祥符区', N'41', N'河南省', N'4102', N'开封市', N'410212', N'祥符区', N'', N'', N'', N'', N'3', N'1', N''), (N'410221', N'4102', N'00,41,4102', N'杞县', N'41', N'河南省', N'4102', N'开封市', N'410221', N'杞县', N'', N'', N'', N'', N'3', N'1', N''), (N'410222', N'4102', N'00,41,4102', N'通许县', N'41', N'河南省', N'4102', N'开封市', N'410222', N'通许县', N'', N'', N'', N'', N'3', N'1', N''), (N'410223', N'4102', N'00,41,4102', N'尉氏县', N'41', N'河南省', N'4102', N'开封市', N'410223', N'尉氏县', N'', N'', N'', N'', N'3', N'1', N''), (N'410225', N'4102', N'00,41,4102', N'兰考县', N'41', N'河南省', N'4102', N'开封市', N'410225', N'兰考县', N'', N'', N'', N'', N'3', N'1', N''), (N'4103', N'41', N'00,41', N'洛阳市', N'41', N'河南省', N'4103', N'洛阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410302', N'4103', N'00,41,4103', N'老城区', N'41', N'河南省', N'4103', N'洛阳市', N'410302', N'老城区', N'', N'', N'', N'', N'3', N'1', N''), (N'410303', N'4103', N'00,41,4103', N'西工区', N'41', N'河南省', N'4103', N'洛阳市', N'410303', N'西工区', N'', N'', N'', N'', N'3', N'1', N''), (N'410304', N'4103', N'00,41,4103', N'瀍河回族区', N'41', N'河南省', N'4103', N'洛阳市', N'410304', N'瀍河回族区', N'', N'', N'', N'', N'3', N'1', N''), (N'410305', N'4103', N'00,41,4103', N'涧西区', N'41', N'河南省', N'4103', N'洛阳市', N'410305', N'涧西区', N'', N'', N'', N'', N'3', N'1', N''), (N'410306', N'4103', N'00,41,4103', N'吉利区', N'41', N'河南省', N'4103', N'洛阳市', N'410306', N'吉利区', N'', N'', N'', N'', N'3', N'1', N''), (N'410311', N'4103', N'00,41,4103', N'洛龙区', N'41', N'河南省', N'4103', N'洛阳市', N'410311', N'洛龙区', N'', N'', N'', N'', N'3', N'1', N''), (N'410322', N'4103', N'00,41,4103', N'孟津县', N'41', N'河南省', N'4103', N'洛阳市', N'410322', N'孟津县', N'', N'', N'', N'', N'3', N'1', N''), (N'410323', N'4103', N'00,41,4103', N'新安县', N'41', N'河南省', N'4103', N'洛阳市', N'410323', N'新安县', N'', N'', N'', N'', N'3', N'1', N''), (N'410324', N'4103', N'00,41,4103', N'栾川县', N'41', N'河南省', N'4103', N'洛阳市', N'410324', N'栾川县', N'', N'', N'', N'', N'3', N'1', N''), (N'410325', N'4103', N'00,41,4103', N'嵩县', N'41', N'河南省', N'4103', N'洛阳市', N'410325', N'嵩县', N'', N'', N'', N'', N'3', N'1', N''), (N'410326', N'4103', N'00,41,4103', N'汝阳县', N'41', N'河南省', N'4103', N'洛阳市', N'410326', N'汝阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'410327', N'4103', N'00,41,4103', N'宜阳县', N'41', N'河南省', N'4103', N'洛阳市', N'410327', N'宜阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'410328', N'4103', N'00,41,4103', N'洛宁县', N'41', N'河南省', N'4103', N'洛阳市', N'410328', N'洛宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'410329', N'4103', N'00,41,4103', N'伊川县', N'41', N'河南省', N'4103', N'洛阳市', N'410329', N'伊川县', N'', N'', N'', N'', N'3', N'1', N''), (N'410381', N'4103', N'00,41,4103', N'偃师市', N'41', N'河南省', N'4103', N'洛阳市', N'410381', N'偃师市', N'', N'', N'', N'', N'3', N'1', N''), (N'4104', N'41', N'00,41', N'平顶山市', N'41', N'河南省', N'4104', N'平顶山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410402', N'4104', N'00,41,4104', N'新华区', N'41', N'河南省', N'4104', N'平顶山市', N'410402', N'新华区', N'', N'', N'', N'', N'3', N'1', N''), (N'410403', N'4104', N'00,41,4104', N'卫东区', N'41', N'河南省', N'4104', N'平顶山市', N'410403', N'卫东区', N'', N'', N'', N'', N'3', N'1', N''), (N'410404', N'4104', N'00,41,4104', N'石龙区', N'41', N'河南省', N'4104', N'平顶山市', N'410404', N'石龙区', N'', N'', N'', N'', N'3', N'1', N''), (N'410411', N'4104', N'00,41,4104', N'湛河区', N'41', N'河南省', N'4104', N'平顶山市', N'410411', N'湛河区', N'', N'', N'', N'', N'3', N'1', N''), (N'410421', N'4104', N'00,41,4104', N'宝丰县', N'41', N'河南省', N'4104', N'平顶山市', N'410421', N'宝丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'410422', N'4104', N'00,41,4104', N'叶县', N'41', N'河南省', N'4104', N'平顶山市', N'410422', N'叶县', N'', N'', N'', N'', N'3', N'1', N''), (N'410423', N'4104', N'00,41,4104', N'鲁山县', N'41', N'河南省', N'4104', N'平顶山市', N'410423', N'鲁山县', N'', N'', N'', N'', N'3', N'1', N''), (N'410425', N'4104', N'00,41,4104', N'郏县', N'41', N'河南省', N'4104', N'平顶山市', N'410425', N'郏县', N'', N'', N'', N'', N'3', N'1', N''), (N'410481', N'4104', N'00,41,4104', N'舞钢市', N'41', N'河南省', N'4104', N'平顶山市', N'410481', N'舞钢市', N'', N'', N'', N'', N'3', N'1', N''), (N'410482', N'4104', N'00,41,4104', N'汝州市', N'41', N'河南省', N'4104', N'平顶山市', N'410482', N'汝州市', N'', N'', N'', N'', N'3', N'1', N''), (N'4105', N'41', N'00,41', N'安阳市', N'41', N'河南省', N'4105', N'安阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410502', N'4105', N'00,41,4105', N'文峰区', N'41', N'河南省', N'4105', N'安阳市', N'410502', N'文峰区', N'', N'', N'', N'', N'3', N'1', N''), (N'410503', N'4105', N'00,41,4105', N'北关区', N'41', N'河南省', N'4105', N'安阳市', N'410503', N'北关区', N'', N'', N'', N'', N'3', N'1', N''), (N'410505', N'4105', N'00,41,4105', N'殷都区', N'41', N'河南省', N'4105', N'安阳市', N'410505', N'殷都区', N'', N'', N'', N'', N'3', N'1', N''), (N'410506', N'4105', N'00,41,4105', N'龙安区', N'41', N'河南省', N'4105', N'安阳市', N'410506', N'龙安区', N'', N'', N'', N'', N'3', N'1', N''), (N'410522', N'4105', N'00,41,4105', N'安阳县', N'41', N'河南省', N'4105', N'安阳市', N'410522', N'安阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'410523', N'4105', N'00,41,4105', N'汤阴县', N'41', N'河南省', N'4105', N'安阳市', N'410523', N'汤阴县', N'', N'', N'', N'', N'3', N'1', N''), (N'410526', N'4105', N'00,41,4105', N'滑县', N'41', N'河南省', N'4105', N'安阳市', N'410526', N'滑县', N'', N'', N'', N'', N'3', N'1', N''), (N'410527', N'4105', N'00,41,4105', N'内黄县', N'41', N'河南省', N'4105', N'安阳市', N'410527', N'内黄县', N'', N'', N'', N'', N'3', N'1', N''), (N'410581', N'4105', N'00,41,4105', N'林州市', N'41', N'河南省', N'4105', N'安阳市', N'410581', N'林州市', N'', N'', N'', N'', N'3', N'1', N''), (N'4106', N'41', N'00,41', N'鹤壁市', N'41', N'河南省', N'4106', N'鹤壁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410602', N'4106', N'00,41,4106', N'鹤山区', N'41', N'河南省', N'4106', N'鹤壁市', N'410602', N'鹤山区', N'', N'', N'', N'', N'3', N'1', N''), (N'410603', N'4106', N'00,41,4106', N'山城区', N'41', N'河南省', N'4106', N'鹤壁市', N'410603', N'山城区', N'', N'', N'', N'', N'3', N'1', N''), (N'410611', N'4106', N'00,41,4106', N'淇滨区', N'41', N'河南省', N'4106', N'鹤壁市', N'410611', N'淇滨区', N'', N'', N'', N'', N'3', N'1', N''), (N'410621', N'4106', N'00,41,4106', N'浚县', N'41', N'河南省', N'4106', N'鹤壁市', N'410621', N'浚县', N'', N'', N'', N'', N'3', N'1', N''), (N'410622', N'4106', N'00,41,4106', N'淇县', N'41', N'河南省', N'4106', N'鹤壁市', N'410622', N'淇县', N'', N'', N'', N'', N'3', N'1', N''), (N'4107', N'41', N'00,41', N'新乡市', N'41', N'河南省', N'4107', N'新乡市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410702', N'4107', N'00,41,4107', N'红旗区', N'41', N'河南省', N'4107', N'新乡市', N'410702', N'红旗区', N'', N'', N'', N'', N'3', N'1', N''), (N'410703', N'4107', N'00,41,4107', N'卫滨区', N'41', N'河南省', N'4107', N'新乡市', N'410703', N'卫滨区', N'', N'', N'', N'', N'3', N'1', N''), (N'410704', N'4107', N'00,41,4107', N'凤泉区', N'41', N'河南省', N'4107', N'新乡市', N'410704', N'凤泉区', N'', N'', N'', N'', N'3', N'1', N''), (N'410711', N'4107', N'00,41,4107', N'牧野区', N'41', N'河南省', N'4107', N'新乡市', N'410711', N'牧野区', N'', N'', N'', N'', N'3', N'1', N''), (N'410721', N'4107', N'00,41,4107', N'新乡县', N'41', N'河南省', N'4107', N'新乡市', N'410721', N'新乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'410724', N'4107', N'00,41,4107', N'获嘉县', N'41', N'河南省', N'4107', N'新乡市', N'410724', N'获嘉县', N'', N'', N'', N'', N'3', N'1', N''), (N'410725', N'4107', N'00,41,4107', N'原阳县', N'41', N'河南省', N'4107', N'新乡市', N'410725', N'原阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'410726', N'4107', N'00,41,4107', N'延津县', N'41', N'河南省', N'4107', N'新乡市', N'410726', N'延津县', N'', N'', N'', N'', N'3', N'1', N''), (N'410727', N'4107', N'00,41,4107', N'封丘县', N'41', N'河南省', N'4107', N'新乡市', N'410727', N'封丘县', N'', N'', N'', N'', N'3', N'1', N''), (N'410781', N'4107', N'00,41,4107', N'卫辉市', N'41', N'河南省', N'4107', N'新乡市', N'410781', N'卫辉市', N'', N'', N'', N'', N'3', N'1', N''), (N'410782', N'4107', N'00,41,4107', N'辉县市', N'41', N'河南省', N'4107', N'新乡市', N'410782', N'辉县市', N'', N'', N'', N'', N'3', N'1', N''), (N'410783', N'4107', N'00,41,4107', N'长垣市', N'41', N'河南省', N'4107', N'新乡市', N'410783', N'长垣市', N'', N'', N'', N'', N'3', N'1', N''), (N'4108', N'41', N'00,41', N'焦作市', N'41', N'河南省', N'4108', N'焦作市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410802', N'4108', N'00,41,4108', N'解放区', N'41', N'河南省', N'4108', N'焦作市', N'410802', N'解放区', N'', N'', N'', N'', N'3', N'1', N''), (N'410803', N'4108', N'00,41,4108', N'中站区', N'41', N'河南省', N'4108', N'焦作市', N'410803', N'中站区', N'', N'', N'', N'', N'3', N'1', N''), (N'410804', N'4108', N'00,41,4108', N'马村区', N'41', N'河南省', N'4108', N'焦作市', N'410804', N'马村区', N'', N'', N'', N'', N'3', N'1', N''), (N'410811', N'4108', N'00,41,4108', N'山阳区', N'41', N'河南省', N'4108', N'焦作市', N'410811', N'山阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'410821', N'4108', N'00,41,4108', N'修武县', N'41', N'河南省', N'4108', N'焦作市', N'410821', N'修武县', N'', N'', N'', N'', N'3', N'1', N''), (N'410822', N'4108', N'00,41,4108', N'博爱县', N'41', N'河南省', N'4108', N'焦作市', N'410822', N'博爱县', N'', N'', N'', N'', N'3', N'1', N''), (N'410823', N'4108', N'00,41,4108', N'武陟县', N'41', N'河南省', N'4108', N'焦作市', N'410823', N'武陟县', N'', N'', N'', N'', N'3', N'1', N''), (N'410825', N'4108', N'00,41,4108', N'温县', N'41', N'河南省', N'4108', N'焦作市', N'410825', N'温县', N'', N'', N'', N'', N'3', N'1', N''), (N'410882', N'4108', N'00,41,4108', N'沁阳市', N'41', N'河南省', N'4108', N'焦作市', N'410882', N'沁阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'410883', N'4108', N'00,41,4108', N'孟州市', N'41', N'河南省', N'4108', N'焦作市', N'410883', N'孟州市', N'', N'', N'', N'', N'3', N'1', N''), (N'4109', N'41', N'00,41', N'濮阳市', N'41', N'河南省', N'4109', N'濮阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'410902', N'4109', N'00,41,4109', N'华龙区', N'41', N'河南省', N'4109', N'濮阳市', N'410902', N'华龙区', N'', N'', N'', N'', N'3', N'1', N''), (N'410922', N'4109', N'00,41,4109', N'清丰县', N'41', N'河南省', N'4109', N'濮阳市', N'410922', N'清丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'410923', N'4109', N'00,41,4109', N'南乐县', N'41', N'河南省', N'4109', N'濮阳市', N'410923', N'南乐县', N'', N'', N'', N'', N'3', N'1', N''), (N'410926', N'4109', N'00,41,4109', N'范县', N'41', N'河南省', N'4109', N'濮阳市', N'410926', N'范县', N'', N'', N'', N'', N'3', N'1', N''), (N'410927', N'4109', N'00,41,4109', N'台前县', N'41', N'河南省', N'4109', N'濮阳市', N'410927', N'台前县', N'', N'', N'', N'', N'3', N'1', N''), (N'410928', N'4109', N'00,41,4109', N'濮阳县', N'41', N'河南省', N'4109', N'濮阳市', N'410928', N'濮阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'4110', N'41', N'00,41', N'许昌市', N'41', N'河南省', N'4110', N'许昌市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411002', N'4110', N'00,41,4110', N'魏都区', N'41', N'河南省', N'4110', N'许昌市', N'411002', N'魏都区', N'', N'', N'', N'', N'3', N'1', N''), (N'411003', N'4110', N'00,41,4110', N'建安区', N'41', N'河南省', N'4110', N'许昌市', N'411003', N'建安区', N'', N'', N'', N'', N'3', N'1', N''), (N'411024', N'4110', N'00,41,4110', N'鄢陵县', N'41', N'河南省', N'4110', N'许昌市', N'411024', N'鄢陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'411025', N'4110', N'00,41,4110', N'襄城县', N'41', N'河南省', N'4110', N'许昌市', N'411025', N'襄城县', N'', N'', N'', N'', N'3', N'1', N''), (N'411081', N'4110', N'00,41,4110', N'禹州市', N'41', N'河南省', N'4110', N'许昌市', N'411081', N'禹州市', N'', N'', N'', N'', N'3', N'1', N''), (N'411082', N'4110', N'00,41,4110', N'长葛市', N'41', N'河南省', N'4110', N'许昌市', N'411082', N'长葛市', N'', N'', N'', N'', N'3', N'1', N''), (N'4111', N'41', N'00,41', N'漯河市', N'41', N'河南省', N'4111', N'漯河市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411102', N'4111', N'00,41,4111', N'源汇区', N'41', N'河南省', N'4111', N'漯河市', N'411102', N'源汇区', N'', N'', N'', N'', N'3', N'1', N''), (N'411103', N'4111', N'00,41,4111', N'郾城区', N'41', N'河南省', N'4111', N'漯河市', N'411103', N'郾城区', N'', N'', N'', N'', N'3', N'1', N''), (N'411104', N'4111', N'00,41,4111', N'召陵区', N'41', N'河南省', N'4111', N'漯河市', N'411104', N'召陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'411121', N'4111', N'00,41,4111', N'舞阳县', N'41', N'河南省', N'4111', N'漯河市', N'411121', N'舞阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'411122', N'4111', N'00,41,4111', N'临颍县', N'41', N'河南省', N'4111', N'漯河市', N'411122', N'临颍县', N'', N'', N'', N'', N'3', N'1', N''), (N'4112', N'41', N'00,41', N'三门峡市', N'41', N'河南省', N'4112', N'三门峡市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411202', N'4112', N'00,41,4112', N'湖滨区', N'41', N'河南省', N'4112', N'三门峡市', N'411202', N'湖滨区', N'', N'', N'', N'', N'3', N'1', N''), (N'411203', N'4112', N'00,41,4112', N'陕州区', N'41', N'河南省', N'4112', N'三门峡市', N'411203', N'陕州区', N'', N'', N'', N'', N'3', N'1', N''), (N'411221', N'4112', N'00,41,4112', N'渑池县', N'41', N'河南省', N'4112', N'三门峡市', N'411221', N'渑池县', N'', N'', N'', N'', N'3', N'1', N''), (N'411224', N'4112', N'00,41,4112', N'卢氏县', N'41', N'河南省', N'4112', N'三门峡市', N'411224', N'卢氏县', N'', N'', N'', N'', N'3', N'1', N''), (N'411281', N'4112', N'00,41,4112', N'义马市', N'41', N'河南省', N'4112', N'三门峡市', N'411281', N'义马市', N'', N'', N'', N'', N'3', N'1', N''), (N'411282', N'4112', N'00,41,4112', N'灵宝市', N'41', N'河南省', N'4112', N'三门峡市', N'411282', N'灵宝市', N'', N'', N'', N'', N'3', N'1', N''), (N'4113', N'41', N'00,41', N'南阳市', N'41', N'河南省', N'4113', N'南阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411302', N'4113', N'00,41,4113', N'宛城区', N'41', N'河南省', N'4113', N'南阳市', N'411302', N'宛城区', N'', N'', N'', N'', N'3', N'1', N''), (N'411303', N'4113', N'00,41,4113', N'卧龙区', N'41', N'河南省', N'4113', N'南阳市', N'411303', N'卧龙区', N'', N'', N'', N'', N'3', N'1', N''), (N'411321', N'4113', N'00,41,4113', N'南召县', N'41', N'河南省', N'4113', N'南阳市', N'411321', N'南召县', N'', N'', N'', N'', N'3', N'1', N''), (N'411322', N'4113', N'00,41,4113', N'方城县', N'41', N'河南省', N'4113', N'南阳市', N'411322', N'方城县', N'', N'', N'', N'', N'3', N'1', N''), (N'411323', N'4113', N'00,41,4113', N'西峡县', N'41', N'河南省', N'4113', N'南阳市', N'411323', N'西峡县', N'', N'', N'', N'', N'3', N'1', N''), (N'411324', N'4113', N'00,41,4113', N'镇平县', N'41', N'河南省', N'4113', N'南阳市', N'411324', N'镇平县', N'', N'', N'', N'', N'3', N'1', N''), (N'411325', N'4113', N'00,41,4113', N'内乡县', N'41', N'河南省', N'4113', N'南阳市', N'411325', N'内乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'411326', N'4113', N'00,41,4113', N'淅川县', N'41', N'河南省', N'4113', N'南阳市', N'411326', N'淅川县', N'', N'', N'', N'', N'3', N'1', N''), (N'411327', N'4113', N'00,41,4113', N'社旗县', N'41', N'河南省', N'4113', N'南阳市', N'411327', N'社旗县', N'', N'', N'', N'', N'3', N'1', N''), (N'411328', N'4113', N'00,41,4113', N'唐河县', N'41', N'河南省', N'4113', N'南阳市', N'411328', N'唐河县', N'', N'', N'', N'', N'3', N'1', N''), (N'411329', N'4113', N'00,41,4113', N'新野县', N'41', N'河南省', N'4113', N'南阳市', N'411329', N'新野县', N'', N'', N'', N'', N'3', N'1', N''), (N'411330', N'4113', N'00,41,4113', N'桐柏县', N'41', N'河南省', N'4113', N'南阳市', N'411330', N'桐柏县', N'', N'', N'', N'', N'3', N'1', N''), (N'411381', N'4113', N'00,41,4113', N'邓州市', N'41', N'河南省', N'4113', N'南阳市', N'411381', N'邓州市', N'', N'', N'', N'', N'3', N'1', N''), (N'4114', N'41', N'00,41', N'商丘市', N'41', N'河南省', N'4114', N'商丘市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411402', N'4114', N'00,41,4114', N'梁园区', N'41', N'河南省', N'4114', N'商丘市', N'411402', N'梁园区', N'', N'', N'', N'', N'3', N'1', N''), (N'411403', N'4114', N'00,41,4114', N'睢阳区', N'41', N'河南省', N'4114', N'商丘市', N'411403', N'睢阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'411421', N'4114', N'00,41,4114', N'民权县', N'41', N'河南省', N'4114', N'商丘市', N'411421', N'民权县', N'', N'', N'', N'', N'3', N'1', N''), (N'411422', N'4114', N'00,41,4114', N'睢县', N'41', N'河南省', N'4114', N'商丘市', N'411422', N'睢县', N'', N'', N'', N'', N'3', N'1', N''), (N'411423', N'4114', N'00,41,4114', N'宁陵县', N'41', N'河南省', N'4114', N'商丘市', N'411423', N'宁陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'411424', N'4114', N'00,41,4114', N'柘城县', N'41', N'河南省', N'4114', N'商丘市', N'411424', N'柘城县', N'', N'', N'', N'', N'3', N'1', N''), (N'411425', N'4114', N'00,41,4114', N'虞城县', N'41', N'河南省', N'4114', N'商丘市', N'411425', N'虞城县', N'', N'', N'', N'', N'3', N'1', N''), (N'411426', N'4114', N'00,41,4114', N'夏邑县', N'41', N'河南省', N'4114', N'商丘市', N'411426', N'夏邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'411481', N'4114', N'00,41,4114', N'永城市', N'41', N'河南省', N'4114', N'商丘市', N'411481', N'永城市', N'', N'', N'', N'', N'3', N'1', N''), (N'4115', N'41', N'00,41', N'信阳市', N'41', N'河南省', N'4115', N'信阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411502', N'4115', N'00,41,4115', N'浉河区', N'41', N'河南省', N'4115', N'信阳市', N'411502', N'浉河区', N'', N'', N'', N'', N'3', N'1', N''), (N'411503', N'4115', N'00,41,4115', N'平桥区', N'41', N'河南省', N'4115', N'信阳市', N'411503', N'平桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'411521', N'4115', N'00,41,4115', N'罗山县', N'41', N'河南省', N'4115', N'信阳市', N'411521', N'罗山县', N'', N'', N'', N'', N'3', N'1', N''), (N'411522', N'4115', N'00,41,4115', N'光山县', N'41', N'河南省', N'4115', N'信阳市', N'411522', N'光山县', N'', N'', N'', N'', N'3', N'1', N''), (N'411523', N'4115', N'00,41,4115', N'新县', N'41', N'河南省', N'4115', N'信阳市', N'411523', N'新县', N'', N'', N'', N'', N'3', N'1', N''), (N'411524', N'4115', N'00,41,4115', N'商城县', N'41', N'河南省', N'4115', N'信阳市', N'411524', N'商城县', N'', N'', N'', N'', N'3', N'1', N''), (N'411525', N'4115', N'00,41,4115', N'固始县', N'41', N'河南省', N'4115', N'信阳市', N'411525', N'固始县', N'', N'', N'', N'', N'3', N'1', N''), (N'411526', N'4115', N'00,41,4115', N'潢川县', N'41', N'河南省', N'4115', N'信阳市', N'411526', N'潢川县', N'', N'', N'', N'', N'3', N'1', N''), (N'411527', N'4115', N'00,41,4115', N'淮滨县', N'41', N'河南省', N'4115', N'信阳市', N'411527', N'淮滨县', N'', N'', N'', N'', N'3', N'1', N''), (N'411528', N'4115', N'00,41,4115', N'息县', N'41', N'河南省', N'4115', N'信阳市', N'411528', N'息县', N'', N'', N'', N'', N'3', N'1', N''), (N'4116', N'41', N'00,41', N'周口市', N'41', N'河南省', N'4116', N'周口市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411602', N'4116', N'00,41,4116', N'川汇区', N'41', N'河南省', N'4116', N'周口市', N'411602', N'川汇区', N'', N'', N'', N'', N'3', N'1', N''), (N'411603', N'4116', N'00,41,4116', N'淮阳区', N'41', N'河南省', N'4116', N'周口市', N'411603', N'淮阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'411621', N'4116', N'00,41,4116', N'扶沟县', N'41', N'河南省', N'4116', N'周口市', N'411621', N'扶沟县', N'', N'', N'', N'', N'3', N'1', N''), (N'411622', N'4116', N'00,41,4116', N'西华县', N'41', N'河南省', N'4116', N'周口市', N'411622', N'西华县', N'', N'', N'', N'', N'3', N'1', N''), (N'411623', N'4116', N'00,41,4116', N'商水县', N'41', N'河南省', N'4116', N'周口市', N'411623', N'商水县', N'', N'', N'', N'', N'3', N'1', N''), (N'411624', N'4116', N'00,41,4116', N'沈丘县', N'41', N'河南省', N'4116', N'周口市', N'411624', N'沈丘县', N'', N'', N'', N'', N'3', N'1', N''), (N'411625', N'4116', N'00,41,4116', N'郸城县', N'41', N'河南省', N'4116', N'周口市', N'411625', N'郸城县', N'', N'', N'', N'', N'3', N'1', N''), (N'411627', N'4116', N'00,41,4116', N'太康县', N'41', N'河南省', N'4116', N'周口市', N'411627', N'太康县', N'', N'', N'', N'', N'3', N'1', N''), (N'411628', N'4116', N'00,41,4116', N'鹿邑县', N'41', N'河南省', N'4116', N'周口市', N'411628', N'鹿邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'411681', N'4116', N'00,41,4116', N'项城市', N'41', N'河南省', N'4116', N'周口市', N'411681', N'项城市', N'', N'', N'', N'', N'3', N'1', N''), (N'4117', N'41', N'00,41', N'驻马店市', N'41', N'河南省', N'4117', N'驻马店市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'411702', N'4117', N'00,41,4117', N'驿城区', N'41', N'河南省', N'4117', N'驻马店市', N'411702', N'驿城区', N'', N'', N'', N'', N'3', N'1', N''), (N'411721', N'4117', N'00,41,4117', N'西平县', N'41', N'河南省', N'4117', N'驻马店市', N'411721', N'西平县', N'', N'', N'', N'', N'3', N'1', N''), (N'411722', N'4117', N'00,41,4117', N'上蔡县', N'41', N'河南省', N'4117', N'驻马店市', N'411722', N'上蔡县', N'', N'', N'', N'', N'3', N'1', N''), (N'411723', N'4117', N'00,41,4117', N'平舆县', N'41', N'河南省', N'4117', N'驻马店市', N'411723', N'平舆县', N'', N'', N'', N'', N'3', N'1', N''), (N'411724', N'4117', N'00,41,4117', N'正阳县', N'41', N'河南省', N'4117', N'驻马店市', N'411724', N'正阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'411725', N'4117', N'00,41,4117', N'确山县', N'41', N'河南省', N'4117', N'驻马店市', N'411725', N'确山县', N'', N'', N'', N'', N'3', N'1', N''), (N'411726', N'4117', N'00,41,4117', N'泌阳县', N'41', N'河南省', N'4117', N'驻马店市', N'411726', N'泌阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'411727', N'4117', N'00,41,4117', N'汝南县', N'41', N'河南省', N'4117', N'驻马店市', N'411727', N'汝南县', N'', N'', N'', N'', N'3', N'1', N''), (N'411728', N'4117', N'00,41,4117', N'遂平县', N'41', N'河南省', N'4117', N'驻马店市', N'411728', N'遂平县', N'', N'', N'', N'', N'3', N'1', N''), (N'411729', N'4117', N'00,41,4117', N'新蔡县', N'41', N'河南省', N'4117', N'驻马店市', N'411729', N'新蔡县', N'', N'', N'', N'', N'3', N'1', N''), (N'4190', N'41', N'00,41', N'省直辖县级行政区', N'41', N'河南省', N'4190', N'省直辖县级行政区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'419001', N'4190', N'00,41,4190', N'济源市', N'41', N'河南省', N'4190', N'省直辖县级行政区', N'419001', N'济源市', N'', N'', N'', N'', N'3', N'1', N''), (N'42', N'00', N'00', N'湖北省', N'42', N'湖北省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'4201', N'42', N'00,42', N'武汉市', N'42', N'湖北省', N'4201', N'武汉市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420102', N'4201', N'00,42,4201', N'江岸区', N'42', N'湖北省', N'4201', N'武汉市', N'420102', N'江岸区', N'', N'', N'', N'', N'3', N'1', N''), (N'420103', N'4201', N'00,42,4201', N'江汉区', N'42', N'湖北省', N'4201', N'武汉市', N'420103', N'江汉区', N'', N'', N'', N'', N'3', N'1', N'')
GO

INSERT INTO [dbo].[blade_region] VALUES (N'420104', N'4201', N'00,42,4201', N'硚口区', N'42', N'湖北省', N'4201', N'武汉市', N'420104', N'硚口区', N'', N'', N'', N'', N'3', N'1', N''), (N'420105', N'4201', N'00,42,4201', N'汉阳区', N'42', N'湖北省', N'4201', N'武汉市', N'420105', N'汉阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'420106', N'4201', N'00,42,4201', N'武昌区', N'42', N'湖北省', N'4201', N'武汉市', N'420106', N'武昌区', N'', N'', N'', N'', N'3', N'1', N''), (N'420107', N'4201', N'00,42,4201', N'青山区', N'42', N'湖北省', N'4201', N'武汉市', N'420107', N'青山区', N'', N'', N'', N'', N'3', N'1', N''), (N'420111', N'4201', N'00,42,4201', N'洪山区', N'42', N'湖北省', N'4201', N'武汉市', N'420111', N'洪山区', N'', N'', N'', N'', N'3', N'1', N''), (N'420112', N'4201', N'00,42,4201', N'东西湖区', N'42', N'湖北省', N'4201', N'武汉市', N'420112', N'东西湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'420113', N'4201', N'00,42,4201', N'汉南区', N'42', N'湖北省', N'4201', N'武汉市', N'420113', N'汉南区', N'', N'', N'', N'', N'3', N'1', N''), (N'420114', N'4201', N'00,42,4201', N'蔡甸区', N'42', N'湖北省', N'4201', N'武汉市', N'420114', N'蔡甸区', N'', N'', N'', N'', N'3', N'1', N''), (N'420115', N'4201', N'00,42,4201', N'江夏区', N'42', N'湖北省', N'4201', N'武汉市', N'420115', N'江夏区', N'', N'', N'', N'', N'3', N'1', N''), (N'420116', N'4201', N'00,42,4201', N'黄陂区', N'42', N'湖北省', N'4201', N'武汉市', N'420116', N'黄陂区', N'', N'', N'', N'', N'3', N'1', N''), (N'420117', N'4201', N'00,42,4201', N'新洲区', N'42', N'湖北省', N'4201', N'武汉市', N'420117', N'新洲区', N'', N'', N'', N'', N'3', N'1', N''), (N'4202', N'42', N'00,42', N'黄石市', N'42', N'湖北省', N'4202', N'黄石市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420202', N'4202', N'00,42,4202', N'黄石港区', N'42', N'湖北省', N'4202', N'黄石市', N'420202', N'黄石港区', N'', N'', N'', N'', N'3', N'1', N''), (N'420203', N'4202', N'00,42,4202', N'西塞山区', N'42', N'湖北省', N'4202', N'黄石市', N'420203', N'西塞山区', N'', N'', N'', N'', N'3', N'1', N''), (N'420204', N'4202', N'00,42,4202', N'下陆区', N'42', N'湖北省', N'4202', N'黄石市', N'420204', N'下陆区', N'', N'', N'', N'', N'3', N'1', N''), (N'420205', N'4202', N'00,42,4202', N'铁山区', N'42', N'湖北省', N'4202', N'黄石市', N'420205', N'铁山区', N'', N'', N'', N'', N'3', N'1', N''), (N'420222', N'4202', N'00,42,4202', N'阳新县', N'42', N'湖北省', N'4202', N'黄石市', N'420222', N'阳新县', N'', N'', N'', N'', N'3', N'1', N''), (N'420281', N'4202', N'00,42,4202', N'大冶市', N'42', N'湖北省', N'4202', N'黄石市', N'420281', N'大冶市', N'', N'', N'', N'', N'3', N'1', N''), (N'4203', N'42', N'00,42', N'十堰市', N'42', N'湖北省', N'4203', N'十堰市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420302', N'4203', N'00,42,4203', N'茅箭区', N'42', N'湖北省', N'4203', N'十堰市', N'420302', N'茅箭区', N'', N'', N'', N'', N'3', N'1', N''), (N'420303', N'4203', N'00,42,4203', N'张湾区', N'42', N'湖北省', N'4203', N'十堰市', N'420303', N'张湾区', N'', N'', N'', N'', N'3', N'1', N''), (N'420304', N'4203', N'00,42,4203', N'郧阳区', N'42', N'湖北省', N'4203', N'十堰市', N'420304', N'郧阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'420322', N'4203', N'00,42,4203', N'郧西县', N'42', N'湖北省', N'4203', N'十堰市', N'420322', N'郧西县', N'', N'', N'', N'', N'3', N'1', N''), (N'420323', N'4203', N'00,42,4203', N'竹山县', N'42', N'湖北省', N'4203', N'十堰市', N'420323', N'竹山县', N'', N'', N'', N'', N'3', N'1', N''), (N'420324', N'4203', N'00,42,4203', N'竹溪县', N'42', N'湖北省', N'4203', N'十堰市', N'420324', N'竹溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'420325', N'4203', N'00,42,4203', N'房县', N'42', N'湖北省', N'4203', N'十堰市', N'420325', N'房县', N'', N'', N'', N'', N'3', N'1', N''), (N'420381', N'4203', N'00,42,4203', N'丹江口市', N'42', N'湖北省', N'4203', N'十堰市', N'420381', N'丹江口市', N'', N'', N'', N'', N'3', N'1', N''), (N'4205', N'42', N'00,42', N'宜昌市', N'42', N'湖北省', N'4205', N'宜昌市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420502', N'4205', N'00,42,4205', N'西陵区', N'42', N'湖北省', N'4205', N'宜昌市', N'420502', N'西陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'420503', N'4205', N'00,42,4205', N'伍家岗区', N'42', N'湖北省', N'4205', N'宜昌市', N'420503', N'伍家岗区', N'', N'', N'', N'', N'3', N'1', N''), (N'420504', N'4205', N'00,42,4205', N'点军区', N'42', N'湖北省', N'4205', N'宜昌市', N'420504', N'点军区', N'', N'', N'', N'', N'3', N'1', N''), (N'420505', N'4205', N'00,42,4205', N'猇亭区', N'42', N'湖北省', N'4205', N'宜昌市', N'420505', N'猇亭区', N'', N'', N'', N'', N'3', N'1', N''), (N'420506', N'4205', N'00,42,4205', N'夷陵区', N'42', N'湖北省', N'4205', N'宜昌市', N'420506', N'夷陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'420525', N'4205', N'00,42,4205', N'远安县', N'42', N'湖北省', N'4205', N'宜昌市', N'420525', N'远安县', N'', N'', N'', N'', N'3', N'1', N''), (N'420526', N'4205', N'00,42,4205', N'兴山县', N'42', N'湖北省', N'4205', N'宜昌市', N'420526', N'兴山县', N'', N'', N'', N'', N'3', N'1', N''), (N'420527', N'4205', N'00,42,4205', N'秭归县', N'42', N'湖北省', N'4205', N'宜昌市', N'420527', N'秭归县', N'', N'', N'', N'', N'3', N'1', N''), (N'420528', N'4205', N'00,42,4205', N'长阳土家族自治县', N'42', N'湖北省', N'4205', N'宜昌市', N'420528', N'长阳土家族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'420529', N'4205', N'00,42,4205', N'五峰土家族自治县', N'42', N'湖北省', N'4205', N'宜昌市', N'420529', N'五峰土家族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'420581', N'4205', N'00,42,4205', N'宜都市', N'42', N'湖北省', N'4205', N'宜昌市', N'420581', N'宜都市', N'', N'', N'', N'', N'3', N'1', N''), (N'420582', N'4205', N'00,42,4205', N'当阳市', N'42', N'湖北省', N'4205', N'宜昌市', N'420582', N'当阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'420583', N'4205', N'00,42,4205', N'枝江市', N'42', N'湖北省', N'4205', N'宜昌市', N'420583', N'枝江市', N'', N'', N'', N'', N'3', N'1', N''), (N'4206', N'42', N'00,42', N'襄阳市', N'42', N'湖北省', N'4206', N'襄阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420602', N'4206', N'00,42,4206', N'襄城区', N'42', N'湖北省', N'4206', N'襄阳市', N'420602', N'襄城区', N'', N'', N'', N'', N'3', N'1', N''), (N'420606', N'4206', N'00,42,4206', N'樊城区', N'42', N'湖北省', N'4206', N'襄阳市', N'420606', N'樊城区', N'', N'', N'', N'', N'3', N'1', N''), (N'420607', N'4206', N'00,42,4206', N'襄州区', N'42', N'湖北省', N'4206', N'襄阳市', N'420607', N'襄州区', N'', N'', N'', N'', N'3', N'1', N''), (N'420624', N'4206', N'00,42,4206', N'南漳县', N'42', N'湖北省', N'4206', N'襄阳市', N'420624', N'南漳县', N'', N'', N'', N'', N'3', N'1', N''), (N'420625', N'4206', N'00,42,4206', N'谷城县', N'42', N'湖北省', N'4206', N'襄阳市', N'420625', N'谷城县', N'', N'', N'', N'', N'3', N'1', N''), (N'420626', N'4206', N'00,42,4206', N'保康县', N'42', N'湖北省', N'4206', N'襄阳市', N'420626', N'保康县', N'', N'', N'', N'', N'3', N'1', N''), (N'420682', N'4206', N'00,42,4206', N'老河口市', N'42', N'湖北省', N'4206', N'襄阳市', N'420682', N'老河口市', N'', N'', N'', N'', N'3', N'1', N''), (N'420683', N'4206', N'00,42,4206', N'枣阳市', N'42', N'湖北省', N'4206', N'襄阳市', N'420683', N'枣阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'420684', N'4206', N'00,42,4206', N'宜城市', N'42', N'湖北省', N'4206', N'襄阳市', N'420684', N'宜城市', N'', N'', N'', N'', N'3', N'1', N''), (N'4207', N'42', N'00,42', N'鄂州市', N'42', N'湖北省', N'4207', N'鄂州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420702', N'4207', N'00,42,4207', N'梁子湖区', N'42', N'湖北省', N'4207', N'鄂州市', N'420702', N'梁子湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'420703', N'4207', N'00,42,4207', N'华容区', N'42', N'湖北省', N'4207', N'鄂州市', N'420703', N'华容区', N'', N'', N'', N'', N'3', N'1', N''), (N'420704', N'4207', N'00,42,4207', N'鄂城区', N'42', N'湖北省', N'4207', N'鄂州市', N'420704', N'鄂城区', N'', N'', N'', N'', N'3', N'1', N''), (N'4208', N'42', N'00,42', N'荆门市', N'42', N'湖北省', N'4208', N'荆门市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420802', N'4208', N'00,42,4208', N'东宝区', N'42', N'湖北省', N'4208', N'荆门市', N'420802', N'东宝区', N'', N'', N'', N'', N'3', N'1', N''), (N'420804', N'4208', N'00,42,4208', N'掇刀区', N'42', N'湖北省', N'4208', N'荆门市', N'420804', N'掇刀区', N'', N'', N'', N'', N'3', N'1', N''), (N'420822', N'4208', N'00,42,4208', N'沙洋县', N'42', N'湖北省', N'4208', N'荆门市', N'420822', N'沙洋县', N'', N'', N'', N'', N'3', N'1', N''), (N'420881', N'4208', N'00,42,4208', N'钟祥市', N'42', N'湖北省', N'4208', N'荆门市', N'420881', N'钟祥市', N'', N'', N'', N'', N'3', N'1', N''), (N'420882', N'4208', N'00,42,4208', N'京山市', N'42', N'湖北省', N'4208', N'荆门市', N'420882', N'京山市', N'', N'', N'', N'', N'3', N'1', N''), (N'4209', N'42', N'00,42', N'孝感市', N'42', N'湖北省', N'4209', N'孝感市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'420902', N'4209', N'00,42,4209', N'孝南区', N'42', N'湖北省', N'4209', N'孝感市', N'420902', N'孝南区', N'', N'', N'', N'', N'3', N'1', N''), (N'420921', N'4209', N'00,42,4209', N'孝昌县', N'42', N'湖北省', N'4209', N'孝感市', N'420921', N'孝昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'420922', N'4209', N'00,42,4209', N'大悟县', N'42', N'湖北省', N'4209', N'孝感市', N'420922', N'大悟县', N'', N'', N'', N'', N'3', N'1', N''), (N'420923', N'4209', N'00,42,4209', N'云梦县', N'42', N'湖北省', N'4209', N'孝感市', N'420923', N'云梦县', N'', N'', N'', N'', N'3', N'1', N''), (N'420981', N'4209', N'00,42,4209', N'应城市', N'42', N'湖北省', N'4209', N'孝感市', N'420981', N'应城市', N'', N'', N'', N'', N'3', N'1', N''), (N'420982', N'4209', N'00,42,4209', N'安陆市', N'42', N'湖北省', N'4209', N'孝感市', N'420982', N'安陆市', N'', N'', N'', N'', N'3', N'1', N''), (N'420984', N'4209', N'00,42,4209', N'汉川市', N'42', N'湖北省', N'4209', N'孝感市', N'420984', N'汉川市', N'', N'', N'', N'', N'3', N'1', N''), (N'4210', N'42', N'00,42', N'荆州市', N'42', N'湖北省', N'4210', N'荆州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'421002', N'4210', N'00,42,4210', N'沙市区', N'42', N'湖北省', N'4210', N'荆州市', N'421002', N'沙市区', N'', N'', N'', N'', N'3', N'1', N''), (N'421003', N'4210', N'00,42,4210', N'荆州区', N'42', N'湖北省', N'4210', N'荆州市', N'421003', N'荆州区', N'', N'', N'', N'', N'3', N'1', N''), (N'421022', N'4210', N'00,42,4210', N'公安县', N'42', N'湖北省', N'4210', N'荆州市', N'421022', N'公安县', N'', N'', N'', N'', N'3', N'1', N''), (N'421023', N'4210', N'00,42,4210', N'监利县', N'42', N'湖北省', N'4210', N'荆州市', N'421023', N'监利县', N'', N'', N'', N'', N'3', N'1', N''), (N'421024', N'4210', N'00,42,4210', N'江陵县', N'42', N'湖北省', N'4210', N'荆州市', N'421024', N'江陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'421081', N'4210', N'00,42,4210', N'石首市', N'42', N'湖北省', N'4210', N'荆州市', N'421081', N'石首市', N'', N'', N'', N'', N'3', N'1', N''), (N'421083', N'4210', N'00,42,4210', N'洪湖市', N'42', N'湖北省', N'4210', N'荆州市', N'421083', N'洪湖市', N'', N'', N'', N'', N'3', N'1', N''), (N'421087', N'4210', N'00,42,4210', N'松滋市', N'42', N'湖北省', N'4210', N'荆州市', N'421087', N'松滋市', N'', N'', N'', N'', N'3', N'1', N''), (N'4211', N'42', N'00,42', N'黄冈市', N'42', N'湖北省', N'4211', N'黄冈市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'421102', N'4211', N'00,42,4211', N'黄州区', N'42', N'湖北省', N'4211', N'黄冈市', N'421102', N'黄州区', N'', N'', N'', N'', N'3', N'1', N''), (N'421121', N'4211', N'00,42,4211', N'团风县', N'42', N'湖北省', N'4211', N'黄冈市', N'421121', N'团风县', N'', N'', N'', N'', N'3', N'1', N''), (N'421122', N'4211', N'00,42,4211', N'红安县', N'42', N'湖北省', N'4211', N'黄冈市', N'421122', N'红安县', N'', N'', N'', N'', N'3', N'1', N''), (N'421123', N'4211', N'00,42,4211', N'罗田县', N'42', N'湖北省', N'4211', N'黄冈市', N'421123', N'罗田县', N'', N'', N'', N'', N'3', N'1', N''), (N'421124', N'4211', N'00,42,4211', N'英山县', N'42', N'湖北省', N'4211', N'黄冈市', N'421124', N'英山县', N'', N'', N'', N'', N'3', N'1', N''), (N'421125', N'4211', N'00,42,4211', N'浠水县', N'42', N'湖北省', N'4211', N'黄冈市', N'421125', N'浠水县', N'', N'', N'', N'', N'3', N'1', N''), (N'421126', N'4211', N'00,42,4211', N'蕲春县', N'42', N'湖北省', N'4211', N'黄冈市', N'421126', N'蕲春县', N'', N'', N'', N'', N'3', N'1', N''), (N'421127', N'4211', N'00,42,4211', N'黄梅县', N'42', N'湖北省', N'4211', N'黄冈市', N'421127', N'黄梅县', N'', N'', N'', N'', N'3', N'1', N''), (N'421181', N'4211', N'00,42,4211', N'麻城市', N'42', N'湖北省', N'4211', N'黄冈市', N'421181', N'麻城市', N'', N'', N'', N'', N'3', N'1', N''), (N'421182', N'4211', N'00,42,4211', N'武穴市', N'42', N'湖北省', N'4211', N'黄冈市', N'421182', N'武穴市', N'', N'', N'', N'', N'3', N'1', N''), (N'4212', N'42', N'00,42', N'咸宁市', N'42', N'湖北省', N'4212', N'咸宁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'421202', N'4212', N'00,42,4212', N'咸安区', N'42', N'湖北省', N'4212', N'咸宁市', N'421202', N'咸安区', N'', N'', N'', N'', N'3', N'1', N''), (N'421221', N'4212', N'00,42,4212', N'嘉鱼县', N'42', N'湖北省', N'4212', N'咸宁市', N'421221', N'嘉鱼县', N'', N'', N'', N'', N'3', N'1', N''), (N'421222', N'4212', N'00,42,4212', N'通城县', N'42', N'湖北省', N'4212', N'咸宁市', N'421222', N'通城县', N'', N'', N'', N'', N'3', N'1', N''), (N'421223', N'4212', N'00,42,4212', N'崇阳县', N'42', N'湖北省', N'4212', N'咸宁市', N'421223', N'崇阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'421224', N'4212', N'00,42,4212', N'通山县', N'42', N'湖北省', N'4212', N'咸宁市', N'421224', N'通山县', N'', N'', N'', N'', N'3', N'1', N''), (N'421281', N'4212', N'00,42,4212', N'赤壁市', N'42', N'湖北省', N'4212', N'咸宁市', N'421281', N'赤壁市', N'', N'', N'', N'', N'3', N'1', N''), (N'4213', N'42', N'00,42', N'随州市', N'42', N'湖北省', N'4213', N'随州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'421303', N'4213', N'00,42,4213', N'曾都区', N'42', N'湖北省', N'4213', N'随州市', N'421303', N'曾都区', N'', N'', N'', N'', N'3', N'1', N''), (N'421321', N'4213', N'00,42,4213', N'随县', N'42', N'湖北省', N'4213', N'随州市', N'421321', N'随县', N'', N'', N'', N'', N'3', N'1', N''), (N'421381', N'4213', N'00,42,4213', N'广水市', N'42', N'湖北省', N'4213', N'随州市', N'421381', N'广水市', N'', N'', N'', N'', N'3', N'1', N''), (N'4228', N'42', N'00,42', N'恩施土家族苗族自治州', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'422801', N'4228', N'00,42,4228', N'恩施市', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422801', N'恩施市', N'', N'', N'', N'', N'3', N'1', N''), (N'422802', N'4228', N'00,42,4228', N'利川市', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422802', N'利川市', N'', N'', N'', N'', N'3', N'1', N''), (N'422822', N'4228', N'00,42,4228', N'建始县', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422822', N'建始县', N'', N'', N'', N'', N'3', N'1', N''), (N'422823', N'4228', N'00,42,4228', N'巴东县', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422823', N'巴东县', N'', N'', N'', N'', N'3', N'1', N''), (N'422825', N'4228', N'00,42,4228', N'宣恩县', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422825', N'宣恩县', N'', N'', N'', N'', N'3', N'1', N''), (N'422826', N'4228', N'00,42,4228', N'咸丰县', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422826', N'咸丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'422827', N'4228', N'00,42,4228', N'来凤县', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422827', N'来凤县', N'', N'', N'', N'', N'3', N'1', N''), (N'422828', N'4228', N'00,42,4228', N'鹤峰县', N'42', N'湖北省', N'4228', N'恩施土家族苗族自治州', N'422828', N'鹤峰县', N'', N'', N'', N'', N'3', N'1', N''), (N'4290', N'42', N'00,42', N'省直辖县级行政区', N'42', N'湖北省', N'4290', N'省直辖县级行政区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'429004', N'4290', N'00,42,4290', N'仙桃市', N'42', N'湖北省', N'4290', N'省直辖县级行政区', N'429004', N'仙桃市', N'', N'', N'', N'', N'3', N'1', N''), (N'429005', N'4290', N'00,42,4290', N'潜江市', N'42', N'湖北省', N'4290', N'省直辖县级行政区', N'429005', N'潜江市', N'', N'', N'', N'', N'3', N'1', N''), (N'429006', N'4290', N'00,42,4290', N'天门市', N'42', N'湖北省', N'4290', N'省直辖县级行政区', N'429006', N'天门市', N'', N'', N'', N'', N'3', N'1', N''), (N'429021', N'4290', N'00,42,4290', N'神农架林区', N'42', N'湖北省', N'4290', N'省直辖县级行政区', N'429021', N'神农架林区', N'', N'', N'', N'', N'3', N'1', N''), (N'43', N'00', N'00', N'湖南省', N'43', N'湖南省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'4301', N'43', N'00,43', N'长沙市', N'43', N'湖南省', N'4301', N'长沙市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430102', N'4301', N'00,43,4301', N'芙蓉区', N'43', N'湖南省', N'4301', N'长沙市', N'430102', N'芙蓉区', N'', N'', N'', N'', N'3', N'1', N''), (N'430103', N'4301', N'00,43,4301', N'天心区', N'43', N'湖南省', N'4301', N'长沙市', N'430103', N'天心区', N'', N'', N'', N'', N'3', N'1', N''), (N'430104', N'4301', N'00,43,4301', N'岳麓区', N'43', N'湖南省', N'4301', N'长沙市', N'430104', N'岳麓区', N'', N'', N'', N'', N'3', N'1', N''), (N'430105', N'4301', N'00,43,4301', N'开福区', N'43', N'湖南省', N'4301', N'长沙市', N'430105', N'开福区', N'', N'', N'', N'', N'3', N'1', N''), (N'430111', N'4301', N'00,43,4301', N'雨花区', N'43', N'湖南省', N'4301', N'长沙市', N'430111', N'雨花区', N'', N'', N'', N'', N'3', N'1', N''), (N'430112', N'4301', N'00,43,4301', N'望城区', N'43', N'湖南省', N'4301', N'长沙市', N'430112', N'望城区', N'', N'', N'', N'', N'3', N'1', N''), (N'430121', N'4301', N'00,43,4301', N'长沙县', N'43', N'湖南省', N'4301', N'长沙市', N'430121', N'长沙县', N'', N'', N'', N'', N'3', N'1', N''), (N'430181', N'4301', N'00,43,4301', N'浏阳市', N'43', N'湖南省', N'4301', N'长沙市', N'430181', N'浏阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'430182', N'4301', N'00,43,4301', N'宁乡市', N'43', N'湖南省', N'4301', N'长沙市', N'430182', N'宁乡市', N'', N'', N'', N'', N'3', N'1', N''), (N'4302', N'43', N'00,43', N'株洲市', N'43', N'湖南省', N'4302', N'株洲市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430202', N'4302', N'00,43,4302', N'荷塘区', N'43', N'湖南省', N'4302', N'株洲市', N'430202', N'荷塘区', N'', N'', N'', N'', N'3', N'1', N''), (N'430203', N'4302', N'00,43,4302', N'芦淞区', N'43', N'湖南省', N'4302', N'株洲市', N'430203', N'芦淞区', N'', N'', N'', N'', N'3', N'1', N''), (N'430204', N'4302', N'00,43,4302', N'石峰区', N'43', N'湖南省', N'4302', N'株洲市', N'430204', N'石峰区', N'', N'', N'', N'', N'3', N'1', N''), (N'430211', N'4302', N'00,43,4302', N'天元区', N'43', N'湖南省', N'4302', N'株洲市', N'430211', N'天元区', N'', N'', N'', N'', N'3', N'1', N''), (N'430212', N'4302', N'00,43,4302', N'渌口区', N'43', N'湖南省', N'4302', N'株洲市', N'430212', N'渌口区', N'', N'', N'', N'', N'3', N'1', N''), (N'430223', N'4302', N'00,43,4302', N'攸县', N'43', N'湖南省', N'4302', N'株洲市', N'430223', N'攸县', N'', N'', N'', N'', N'3', N'1', N''), (N'430224', N'4302', N'00,43,4302', N'茶陵县', N'43', N'湖南省', N'4302', N'株洲市', N'430224', N'茶陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'430225', N'4302', N'00,43,4302', N'炎陵县', N'43', N'湖南省', N'4302', N'株洲市', N'430225', N'炎陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'430281', N'4302', N'00,43,4302', N'醴陵市', N'43', N'湖南省', N'4302', N'株洲市', N'430281', N'醴陵市', N'', N'', N'', N'', N'3', N'1', N''), (N'4303', N'43', N'00,43', N'湘潭市', N'43', N'湖南省', N'4303', N'湘潭市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430302', N'4303', N'00,43,4303', N'雨湖区', N'43', N'湖南省', N'4303', N'湘潭市', N'430302', N'雨湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'430304', N'4303', N'00,43,4303', N'岳塘区', N'43', N'湖南省', N'4303', N'湘潭市', N'430304', N'岳塘区', N'', N'', N'', N'', N'3', N'1', N''), (N'430321', N'4303', N'00,43,4303', N'湘潭县', N'43', N'湖南省', N'4303', N'湘潭市', N'430321', N'湘潭县', N'', N'', N'', N'', N'3', N'1', N''), (N'430381', N'4303', N'00,43,4303', N'湘乡市', N'43', N'湖南省', N'4303', N'湘潭市', N'430381', N'湘乡市', N'', N'', N'', N'', N'3', N'1', N''), (N'430382', N'4303', N'00,43,4303', N'韶山市', N'43', N'湖南省', N'4303', N'湘潭市', N'430382', N'韶山市', N'', N'', N'', N'', N'3', N'1', N''), (N'4304', N'43', N'00,43', N'衡阳市', N'43', N'湖南省', N'4304', N'衡阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430405', N'4304', N'00,43,4304', N'珠晖区', N'43', N'湖南省', N'4304', N'衡阳市', N'430405', N'珠晖区', N'', N'', N'', N'', N'3', N'1', N''), (N'430406', N'4304', N'00,43,4304', N'雁峰区', N'43', N'湖南省', N'4304', N'衡阳市', N'430406', N'雁峰区', N'', N'', N'', N'', N'3', N'1', N''), (N'430407', N'4304', N'00,43,4304', N'石鼓区', N'43', N'湖南省', N'4304', N'衡阳市', N'430407', N'石鼓区', N'', N'', N'', N'', N'3', N'1', N''), (N'430408', N'4304', N'00,43,4304', N'蒸湘区', N'43', N'湖南省', N'4304', N'衡阳市', N'430408', N'蒸湘区', N'', N'', N'', N'', N'3', N'1', N''), (N'430412', N'4304', N'00,43,4304', N'南岳区', N'43', N'湖南省', N'4304', N'衡阳市', N'430412', N'南岳区', N'', N'', N'', N'', N'3', N'1', N''), (N'430421', N'4304', N'00,43,4304', N'衡阳县', N'43', N'湖南省', N'4304', N'衡阳市', N'430421', N'衡阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'430422', N'4304', N'00,43,4304', N'衡南县', N'43', N'湖南省', N'4304', N'衡阳市', N'430422', N'衡南县', N'', N'', N'', N'', N'3', N'1', N''), (N'430423', N'4304', N'00,43,4304', N'衡山县', N'43', N'湖南省', N'4304', N'衡阳市', N'430423', N'衡山县', N'', N'', N'', N'', N'3', N'1', N''), (N'430424', N'4304', N'00,43,4304', N'衡东县', N'43', N'湖南省', N'4304', N'衡阳市', N'430424', N'衡东县', N'', N'', N'', N'', N'3', N'1', N''), (N'430426', N'4304', N'00,43,4304', N'祁东县', N'43', N'湖南省', N'4304', N'衡阳市', N'430426', N'祁东县', N'', N'', N'', N'', N'3', N'1', N''), (N'430481', N'4304', N'00,43,4304', N'耒阳市', N'43', N'湖南省', N'4304', N'衡阳市', N'430481', N'耒阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'430482', N'4304', N'00,43,4304', N'常宁市', N'43', N'湖南省', N'4304', N'衡阳市', N'430482', N'常宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'4305', N'43', N'00,43', N'邵阳市', N'43', N'湖南省', N'4305', N'邵阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430502', N'4305', N'00,43,4305', N'双清区', N'43', N'湖南省', N'4305', N'邵阳市', N'430502', N'双清区', N'', N'', N'', N'', N'3', N'1', N''), (N'430503', N'4305', N'00,43,4305', N'大祥区', N'43', N'湖南省', N'4305', N'邵阳市', N'430503', N'大祥区', N'', N'', N'', N'', N'3', N'1', N''), (N'430511', N'4305', N'00,43,4305', N'北塔区', N'43', N'湖南省', N'4305', N'邵阳市', N'430511', N'北塔区', N'', N'', N'', N'', N'3', N'1', N''), (N'430522', N'4305', N'00,43,4305', N'新邵县', N'43', N'湖南省', N'4305', N'邵阳市', N'430522', N'新邵县', N'', N'', N'', N'', N'3', N'1', N''), (N'430523', N'4305', N'00,43,4305', N'邵阳县', N'43', N'湖南省', N'4305', N'邵阳市', N'430523', N'邵阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'430524', N'4305', N'00,43,4305', N'隆回县', N'43', N'湖南省', N'4305', N'邵阳市', N'430524', N'隆回县', N'', N'', N'', N'', N'3', N'1', N''), (N'430525', N'4305', N'00,43,4305', N'洞口县', N'43', N'湖南省', N'4305', N'邵阳市', N'430525', N'洞口县', N'', N'', N'', N'', N'3', N'1', N''), (N'430527', N'4305', N'00,43,4305', N'绥宁县', N'43', N'湖南省', N'4305', N'邵阳市', N'430527', N'绥宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'430528', N'4305', N'00,43,4305', N'新宁县', N'43', N'湖南省', N'4305', N'邵阳市', N'430528', N'新宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'430529', N'4305', N'00,43,4305', N'城步苗族自治县', N'43', N'湖南省', N'4305', N'邵阳市', N'430529', N'城步苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'430581', N'4305', N'00,43,4305', N'武冈市', N'43', N'湖南省', N'4305', N'邵阳市', N'430581', N'武冈市', N'', N'', N'', N'', N'3', N'1', N''), (N'430582', N'4305', N'00,43,4305', N'邵东市', N'43', N'湖南省', N'4305', N'邵阳市', N'430582', N'邵东市', N'', N'', N'', N'', N'3', N'1', N''), (N'4306', N'43', N'00,43', N'岳阳市', N'43', N'湖南省', N'4306', N'岳阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430602', N'4306', N'00,43,4306', N'岳阳楼区', N'43', N'湖南省', N'4306', N'岳阳市', N'430602', N'岳阳楼区', N'', N'', N'', N'', N'3', N'1', N''), (N'430603', N'4306', N'00,43,4306', N'云溪区', N'43', N'湖南省', N'4306', N'岳阳市', N'430603', N'云溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'430611', N'4306', N'00,43,4306', N'君山区', N'43', N'湖南省', N'4306', N'岳阳市', N'430611', N'君山区', N'', N'', N'', N'', N'3', N'1', N''), (N'430621', N'4306', N'00,43,4306', N'岳阳县', N'43', N'湖南省', N'4306', N'岳阳市', N'430621', N'岳阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'430623', N'4306', N'00,43,4306', N'华容县', N'43', N'湖南省', N'4306', N'岳阳市', N'430623', N'华容县', N'', N'', N'', N'', N'3', N'1', N''), (N'430624', N'4306', N'00,43,4306', N'湘阴县', N'43', N'湖南省', N'4306', N'岳阳市', N'430624', N'湘阴县', N'', N'', N'', N'', N'3', N'1', N''), (N'430626', N'4306', N'00,43,4306', N'平江县', N'43', N'湖南省', N'4306', N'岳阳市', N'430626', N'平江县', N'', N'', N'', N'', N'3', N'1', N''), (N'430681', N'4306', N'00,43,4306', N'汨罗市', N'43', N'湖南省', N'4306', N'岳阳市', N'430681', N'汨罗市', N'', N'', N'', N'', N'3', N'1', N''), (N'430682', N'4306', N'00,43,4306', N'临湘市', N'43', N'湖南省', N'4306', N'岳阳市', N'430682', N'临湘市', N'', N'', N'', N'', N'3', N'1', N''), (N'4307', N'43', N'00,43', N'常德市', N'43', N'湖南省', N'4307', N'常德市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430702', N'4307', N'00,43,4307', N'武陵区', N'43', N'湖南省', N'4307', N'常德市', N'430702', N'武陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'430703', N'4307', N'00,43,4307', N'鼎城区', N'43', N'湖南省', N'4307', N'常德市', N'430703', N'鼎城区', N'', N'', N'', N'', N'3', N'1', N''), (N'430721', N'4307', N'00,43,4307', N'安乡县', N'43', N'湖南省', N'4307', N'常德市', N'430721', N'安乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'430722', N'4307', N'00,43,4307', N'汉寿县', N'43', N'湖南省', N'4307', N'常德市', N'430722', N'汉寿县', N'', N'', N'', N'', N'3', N'1', N''), (N'430723', N'4307', N'00,43,4307', N'澧县', N'43', N'湖南省', N'4307', N'常德市', N'430723', N'澧县', N'', N'', N'', N'', N'3', N'1', N''), (N'430724', N'4307', N'00,43,4307', N'临澧县', N'43', N'湖南省', N'4307', N'常德市', N'430724', N'临澧县', N'', N'', N'', N'', N'3', N'1', N''), (N'430725', N'4307', N'00,43,4307', N'桃源县', N'43', N'湖南省', N'4307', N'常德市', N'430725', N'桃源县', N'', N'', N'', N'', N'3', N'1', N''), (N'430726', N'4307', N'00,43,4307', N'石门县', N'43', N'湖南省', N'4307', N'常德市', N'430726', N'石门县', N'', N'', N'', N'', N'3', N'1', N''), (N'430781', N'4307', N'00,43,4307', N'津市市', N'43', N'湖南省', N'4307', N'常德市', N'430781', N'津市市', N'', N'', N'', N'', N'3', N'1', N''), (N'4308', N'43', N'00,43', N'张家界市', N'43', N'湖南省', N'4308', N'张家界市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430802', N'4308', N'00,43,4308', N'永定区', N'43', N'湖南省', N'4308', N'张家界市', N'430802', N'永定区', N'', N'', N'', N'', N'3', N'1', N''), (N'430811', N'4308', N'00,43,4308', N'武陵源区', N'43', N'湖南省', N'4308', N'张家界市', N'430811', N'武陵源区', N'', N'', N'', N'', N'3', N'1', N''), (N'430821', N'4308', N'00,43,4308', N'慈利县', N'43', N'湖南省', N'4308', N'张家界市', N'430821', N'慈利县', N'', N'', N'', N'', N'3', N'1', N''), (N'430822', N'4308', N'00,43,4308', N'桑植县', N'43', N'湖南省', N'4308', N'张家界市', N'430822', N'桑植县', N'', N'', N'', N'', N'3', N'1', N''), (N'4309', N'43', N'00,43', N'益阳市', N'43', N'湖南省', N'4309', N'益阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'430902', N'4309', N'00,43,4309', N'资阳区', N'43', N'湖南省', N'4309', N'益阳市', N'430902', N'资阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'430903', N'4309', N'00,43,4309', N'赫山区', N'43', N'湖南省', N'4309', N'益阳市', N'430903', N'赫山区', N'', N'', N'', N'', N'3', N'1', N''), (N'430921', N'4309', N'00,43,4309', N'南县', N'43', N'湖南省', N'4309', N'益阳市', N'430921', N'南县', N'', N'', N'', N'', N'3', N'1', N''), (N'430922', N'4309', N'00,43,4309', N'桃江县', N'43', N'湖南省', N'4309', N'益阳市', N'430922', N'桃江县', N'', N'', N'', N'', N'3', N'1', N''), (N'430923', N'4309', N'00,43,4309', N'安化县', N'43', N'湖南省', N'4309', N'益阳市', N'430923', N'安化县', N'', N'', N'', N'', N'3', N'1', N''), (N'430981', N'4309', N'00,43,4309', N'沅江市', N'43', N'湖南省', N'4309', N'益阳市', N'430981', N'沅江市', N'', N'', N'', N'', N'3', N'1', N''), (N'4310', N'43', N'00,43', N'郴州市', N'43', N'湖南省', N'4310', N'郴州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'431002', N'4310', N'00,43,4310', N'北湖区', N'43', N'湖南省', N'4310', N'郴州市', N'431002', N'北湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'431003', N'4310', N'00,43,4310', N'苏仙区', N'43', N'湖南省', N'4310', N'郴州市', N'431003', N'苏仙区', N'', N'', N'', N'', N'3', N'1', N''), (N'431021', N'4310', N'00,43,4310', N'桂阳县', N'43', N'湖南省', N'4310', N'郴州市', N'431021', N'桂阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'431022', N'4310', N'00,43,4310', N'宜章县', N'43', N'湖南省', N'4310', N'郴州市', N'431022', N'宜章县', N'', N'', N'', N'', N'3', N'1', N''), (N'431023', N'4310', N'00,43,4310', N'永兴县', N'43', N'湖南省', N'4310', N'郴州市', N'431023', N'永兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'431024', N'4310', N'00,43,4310', N'嘉禾县', N'43', N'湖南省', N'4310', N'郴州市', N'431024', N'嘉禾县', N'', N'', N'', N'', N'3', N'1', N''), (N'431025', N'4310', N'00,43,4310', N'临武县', N'43', N'湖南省', N'4310', N'郴州市', N'431025', N'临武县', N'', N'', N'', N'', N'3', N'1', N''), (N'431026', N'4310', N'00,43,4310', N'汝城县', N'43', N'湖南省', N'4310', N'郴州市', N'431026', N'汝城县', N'', N'', N'', N'', N'3', N'1', N''), (N'431027', N'4310', N'00,43,4310', N'桂东县', N'43', N'湖南省', N'4310', N'郴州市', N'431027', N'桂东县', N'', N'', N'', N'', N'3', N'1', N''), (N'431028', N'4310', N'00,43,4310', N'安仁县', N'43', N'湖南省', N'4310', N'郴州市', N'431028', N'安仁县', N'', N'', N'', N'', N'3', N'1', N''), (N'431081', N'4310', N'00,43,4310', N'资兴市', N'43', N'湖南省', N'4310', N'郴州市', N'431081', N'资兴市', N'', N'', N'', N'', N'3', N'1', N''), (N'4311', N'43', N'00,43', N'永州市', N'43', N'湖南省', N'4311', N'永州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'431102', N'4311', N'00,43,4311', N'零陵区', N'43', N'湖南省', N'4311', N'永州市', N'431102', N'零陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'431103', N'4311', N'00,43,4311', N'冷水滩区', N'43', N'湖南省', N'4311', N'永州市', N'431103', N'冷水滩区', N'', N'', N'', N'', N'3', N'1', N''), (N'431121', N'4311', N'00,43,4311', N'祁阳县', N'43', N'湖南省', N'4311', N'永州市', N'431121', N'祁阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'431122', N'4311', N'00,43,4311', N'东安县', N'43', N'湖南省', N'4311', N'永州市', N'431122', N'东安县', N'', N'', N'', N'', N'3', N'1', N''), (N'431123', N'4311', N'00,43,4311', N'双牌县', N'43', N'湖南省', N'4311', N'永州市', N'431123', N'双牌县', N'', N'', N'', N'', N'3', N'1', N''), (N'431124', N'4311', N'00,43,4311', N'道县', N'43', N'湖南省', N'4311', N'永州市', N'431124', N'道县', N'', N'', N'', N'', N'3', N'1', N''), (N'431125', N'4311', N'00,43,4311', N'江永县', N'43', N'湖南省', N'4311', N'永州市', N'431125', N'江永县', N'', N'', N'', N'', N'3', N'1', N''), (N'431126', N'4311', N'00,43,4311', N'宁远县', N'43', N'湖南省', N'4311', N'永州市', N'431126', N'宁远县', N'', N'', N'', N'', N'3', N'1', N''), (N'431127', N'4311', N'00,43,4311', N'蓝山县', N'43', N'湖南省', N'4311', N'永州市', N'431127', N'蓝山县', N'', N'', N'', N'', N'3', N'1', N''), (N'431128', N'4311', N'00,43,4311', N'新田县', N'43', N'湖南省', N'4311', N'永州市', N'431128', N'新田县', N'', N'', N'', N'', N'3', N'1', N''), (N'431129', N'4311', N'00,43,4311', N'江华瑶族自治县', N'43', N'湖南省', N'4311', N'永州市', N'431129', N'江华瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'4312', N'43', N'00,43', N'怀化市', N'43', N'湖南省', N'4312', N'怀化市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'431202', N'4312', N'00,43,4312', N'鹤城区', N'43', N'湖南省', N'4312', N'怀化市', N'431202', N'鹤城区', N'', N'', N'', N'', N'3', N'1', N''), (N'431221', N'4312', N'00,43,4312', N'中方县', N'43', N'湖南省', N'4312', N'怀化市', N'431221', N'中方县', N'', N'', N'', N'', N'3', N'1', N''), (N'431222', N'4312', N'00,43,4312', N'沅陵县', N'43', N'湖南省', N'4312', N'怀化市', N'431222', N'沅陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'431223', N'4312', N'00,43,4312', N'辰溪县', N'43', N'湖南省', N'4312', N'怀化市', N'431223', N'辰溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'431224', N'4312', N'00,43,4312', N'溆浦县', N'43', N'湖南省', N'4312', N'怀化市', N'431224', N'溆浦县', N'', N'', N'', N'', N'3', N'1', N''), (N'431225', N'4312', N'00,43,4312', N'会同县', N'43', N'湖南省', N'4312', N'怀化市', N'431225', N'会同县', N'', N'', N'', N'', N'3', N'1', N''), (N'431226', N'4312', N'00,43,4312', N'麻阳苗族自治县', N'43', N'湖南省', N'4312', N'怀化市', N'431226', N'麻阳苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'431227', N'4312', N'00,43,4312', N'新晃侗族自治县', N'43', N'湖南省', N'4312', N'怀化市', N'431227', N'新晃侗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'431228', N'4312', N'00,43,4312', N'芷江侗族自治县', N'43', N'湖南省', N'4312', N'怀化市', N'431228', N'芷江侗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'431229', N'4312', N'00,43,4312', N'靖州苗族侗族自治县', N'43', N'湖南省', N'4312', N'怀化市', N'431229', N'靖州苗族侗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'431230', N'4312', N'00,43,4312', N'通道侗族自治县', N'43', N'湖南省', N'4312', N'怀化市', N'431230', N'通道侗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'431281', N'4312', N'00,43,4312', N'洪江市', N'43', N'湖南省', N'4312', N'怀化市', N'431281', N'洪江市', N'', N'', N'', N'', N'3', N'1', N''), (N'4313', N'43', N'00,43', N'娄底市', N'43', N'湖南省', N'4313', N'娄底市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'431302', N'4313', N'00,43,4313', N'娄星区', N'43', N'湖南省', N'4313', N'娄底市', N'431302', N'娄星区', N'', N'', N'', N'', N'3', N'1', N''), (N'431321', N'4313', N'00,43,4313', N'双峰县', N'43', N'湖南省', N'4313', N'娄底市', N'431321', N'双峰县', N'', N'', N'', N'', N'3', N'1', N''), (N'431322', N'4313', N'00,43,4313', N'新化县', N'43', N'湖南省', N'4313', N'娄底市', N'431322', N'新化县', N'', N'', N'', N'', N'3', N'1', N''), (N'431381', N'4313', N'00,43,4313', N'冷水江市', N'43', N'湖南省', N'4313', N'娄底市', N'431381', N'冷水江市', N'', N'', N'', N'', N'3', N'1', N''), (N'431382', N'4313', N'00,43,4313', N'涟源市', N'43', N'湖南省', N'4313', N'娄底市', N'431382', N'涟源市', N'', N'', N'', N'', N'3', N'1', N''), (N'4331', N'43', N'00,43', N'湘西土家族苗族自治州', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'433101', N'4331', N'00,43,4331', N'吉首市', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433101', N'吉首市', N'', N'', N'', N'', N'3', N'1', N''), (N'433122', N'4331', N'00,43,4331', N'泸溪县', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433122', N'泸溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'433123', N'4331', N'00,43,4331', N'凤凰县', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433123', N'凤凰县', N'', N'', N'', N'', N'3', N'1', N''), (N'433124', N'4331', N'00,43,4331', N'花垣县', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433124', N'花垣县', N'', N'', N'', N'', N'3', N'1', N''), (N'433125', N'4331', N'00,43,4331', N'保靖县', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433125', N'保靖县', N'', N'', N'', N'', N'3', N'1', N''), (N'433126', N'4331', N'00,43,4331', N'古丈县', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433126', N'古丈县', N'', N'', N'', N'', N'3', N'1', N''), (N'433127', N'4331', N'00,43,4331', N'永顺县', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433127', N'永顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'433130', N'4331', N'00,43,4331', N'龙山县', N'43', N'湖南省', N'4331', N'湘西土家族苗族自治州', N'433130', N'龙山县', N'', N'', N'', N'', N'3', N'1', N''), (N'44', N'00', N'00', N'广东省', N'44', N'广东省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'4401', N'44', N'00,44', N'广州市', N'44', N'广东省', N'4401', N'广州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440103', N'4401', N'00,44,4401', N'荔湾区', N'44', N'广东省', N'4401', N'广州市', N'440103', N'荔湾区', N'', N'', N'', N'', N'3', N'1', N''), (N'440104', N'4401', N'00,44,4401', N'越秀区', N'44', N'广东省', N'4401', N'广州市', N'440104', N'越秀区', N'', N'', N'', N'', N'3', N'1', N''), (N'440105', N'4401', N'00,44,4401', N'海珠区', N'44', N'广东省', N'4401', N'广州市', N'440105', N'海珠区', N'', N'', N'', N'', N'3', N'1', N''), (N'440106', N'4401', N'00,44,4401', N'天河区', N'44', N'广东省', N'4401', N'广州市', N'440106', N'天河区', N'', N'', N'', N'', N'3', N'1', N''), (N'440111', N'4401', N'00,44,4401', N'白云区', N'44', N'广东省', N'4401', N'广州市', N'440111', N'白云区', N'', N'', N'', N'', N'3', N'1', N''), (N'440112', N'4401', N'00,44,4401', N'黄埔区', N'44', N'广东省', N'4401', N'广州市', N'440112', N'黄埔区', N'', N'', N'', N'', N'3', N'1', N''), (N'440113', N'4401', N'00,44,4401', N'番禺区', N'44', N'广东省', N'4401', N'广州市', N'440113', N'番禺区', N'', N'', N'', N'', N'3', N'1', N''), (N'440114', N'4401', N'00,44,4401', N'花都区', N'44', N'广东省', N'4401', N'广州市', N'440114', N'花都区', N'', N'', N'', N'', N'3', N'1', N''), (N'440115', N'4401', N'00,44,4401', N'南沙区', N'44', N'广东省', N'4401', N'广州市', N'440115', N'南沙区', N'', N'', N'', N'', N'3', N'1', N''), (N'440117', N'4401', N'00,44,4401', N'从化区', N'44', N'广东省', N'4401', N'广州市', N'440117', N'从化区', N'', N'', N'', N'', N'3', N'1', N''), (N'440118', N'4401', N'00,44,4401', N'增城区', N'44', N'广东省', N'4401', N'广州市', N'440118', N'增城区', N'', N'', N'', N'', N'3', N'1', N''), (N'4402', N'44', N'00,44', N'韶关市', N'44', N'广东省', N'4402', N'韶关市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440203', N'4402', N'00,44,4402', N'武江区', N'44', N'广东省', N'4402', N'韶关市', N'440203', N'武江区', N'', N'', N'', N'', N'3', N'1', N''), (N'440204', N'4402', N'00,44,4402', N'浈江区', N'44', N'广东省', N'4402', N'韶关市', N'440204', N'浈江区', N'', N'', N'', N'', N'3', N'1', N''), (N'440205', N'4402', N'00,44,4402', N'曲江区', N'44', N'广东省', N'4402', N'韶关市', N'440205', N'曲江区', N'', N'', N'', N'', N'3', N'1', N''), (N'440222', N'4402', N'00,44,4402', N'始兴县', N'44', N'广东省', N'4402', N'韶关市', N'440222', N'始兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'440224', N'4402', N'00,44,4402', N'仁化县', N'44', N'广东省', N'4402', N'韶关市', N'440224', N'仁化县', N'', N'', N'', N'', N'3', N'1', N''), (N'440229', N'4402', N'00,44,4402', N'翁源县', N'44', N'广东省', N'4402', N'韶关市', N'440229', N'翁源县', N'', N'', N'', N'', N'3', N'1', N''), (N'440232', N'4402', N'00,44,4402', N'乳源瑶族自治县', N'44', N'广东省', N'4402', N'韶关市', N'440232', N'乳源瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'440233', N'4402', N'00,44,4402', N'新丰县', N'44', N'广东省', N'4402', N'韶关市', N'440233', N'新丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'440281', N'4402', N'00,44,4402', N'乐昌市', N'44', N'广东省', N'4402', N'韶关市', N'440281', N'乐昌市', N'', N'', N'', N'', N'3', N'1', N''), (N'440282', N'4402', N'00,44,4402', N'南雄市', N'44', N'广东省', N'4402', N'韶关市', N'440282', N'南雄市', N'', N'', N'', N'', N'3', N'1', N''), (N'4403', N'44', N'00,44', N'深圳市', N'44', N'广东省', N'4403', N'深圳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440303', N'4403', N'00,44,4403', N'罗湖区', N'44', N'广东省', N'4403', N'深圳市', N'440303', N'罗湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'440304', N'4403', N'00,44,4403', N'福田区', N'44', N'广东省', N'4403', N'深圳市', N'440304', N'福田区', N'', N'', N'', N'', N'3', N'1', N''), (N'440305', N'4403', N'00,44,4403', N'南山区', N'44', N'广东省', N'4403', N'深圳市', N'440305', N'南山区', N'', N'', N'', N'', N'3', N'1', N''), (N'440306', N'4403', N'00,44,4403', N'宝安区', N'44', N'广东省', N'4403', N'深圳市', N'440306', N'宝安区', N'', N'', N'', N'', N'3', N'1', N''), (N'440307', N'4403', N'00,44,4403', N'龙岗区', N'44', N'广东省', N'4403', N'深圳市', N'440307', N'龙岗区', N'', N'', N'', N'', N'3', N'1', N''), (N'440308', N'4403', N'00,44,4403', N'盐田区', N'44', N'广东省', N'4403', N'深圳市', N'440308', N'盐田区', N'', N'', N'', N'', N'3', N'1', N''), (N'440309', N'4403', N'00,44,4403', N'龙华区', N'44', N'广东省', N'4403', N'深圳市', N'440309', N'龙华区', N'', N'', N'', N'', N'3', N'1', N''), (N'440310', N'4403', N'00,44,4403', N'坪山区', N'44', N'广东省', N'4403', N'深圳市', N'440310', N'坪山区', N'', N'', N'', N'', N'3', N'1', N''), (N'440311', N'4403', N'00,44,4403', N'光明区', N'44', N'广东省', N'4403', N'深圳市', N'440311', N'光明区', N'', N'', N'', N'', N'3', N'1', N''), (N'4404', N'44', N'00,44', N'珠海市', N'44', N'广东省', N'4404', N'珠海市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440402', N'4404', N'00,44,4404', N'香洲区', N'44', N'广东省', N'4404', N'珠海市', N'440402', N'香洲区', N'', N'', N'', N'', N'3', N'1', N''), (N'440403', N'4404', N'00,44,4404', N'斗门区', N'44', N'广东省', N'4404', N'珠海市', N'440403', N'斗门区', N'', N'', N'', N'', N'3', N'1', N''), (N'440404', N'4404', N'00,44,4404', N'金湾区', N'44', N'广东省', N'4404', N'珠海市', N'440404', N'金湾区', N'', N'', N'', N'', N'3', N'1', N''), (N'4405', N'44', N'00,44', N'汕头市', N'44', N'广东省', N'4405', N'汕头市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440507', N'4405', N'00,44,4405', N'龙湖区', N'44', N'广东省', N'4405', N'汕头市', N'440507', N'龙湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'440511', N'4405', N'00,44,4405', N'金平区', N'44', N'广东省', N'4405', N'汕头市', N'440511', N'金平区', N'', N'', N'', N'', N'3', N'1', N''), (N'440512', N'4405', N'00,44,4405', N'濠江区', N'44', N'广东省', N'4405', N'汕头市', N'440512', N'濠江区', N'', N'', N'', N'', N'3', N'1', N''), (N'440513', N'4405', N'00,44,4405', N'潮阳区', N'44', N'广东省', N'4405', N'汕头市', N'440513', N'潮阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'440514', N'4405', N'00,44,4405', N'潮南区', N'44', N'广东省', N'4405', N'汕头市', N'440514', N'潮南区', N'', N'', N'', N'', N'3', N'1', N''), (N'440515', N'4405', N'00,44,4405', N'澄海区', N'44', N'广东省', N'4405', N'汕头市', N'440515', N'澄海区', N'', N'', N'', N'', N'3', N'1', N''), (N'440523', N'4405', N'00,44,4405', N'南澳县', N'44', N'广东省', N'4405', N'汕头市', N'440523', N'南澳县', N'', N'', N'', N'', N'3', N'1', N''), (N'4406', N'44', N'00,44', N'佛山市', N'44', N'广东省', N'4406', N'佛山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440604', N'4406', N'00,44,4406', N'禅城区', N'44', N'广东省', N'4406', N'佛山市', N'440604', N'禅城区', N'', N'', N'', N'', N'3', N'1', N''), (N'440605', N'4406', N'00,44,4406', N'南海区', N'44', N'广东省', N'4406', N'佛山市', N'440605', N'南海区', N'', N'', N'', N'', N'3', N'1', N''), (N'440606', N'4406', N'00,44,4406', N'顺德区', N'44', N'广东省', N'4406', N'佛山市', N'440606', N'顺德区', N'', N'', N'', N'', N'3', N'1', N''), (N'440607', N'4406', N'00,44,4406', N'三水区', N'44', N'广东省', N'4406', N'佛山市', N'440607', N'三水区', N'', N'', N'', N'', N'3', N'1', N''), (N'440608', N'4406', N'00,44,4406', N'高明区', N'44', N'广东省', N'4406', N'佛山市', N'440608', N'高明区', N'', N'', N'', N'', N'3', N'1', N''), (N'4407', N'44', N'00,44', N'江门市', N'44', N'广东省', N'4407', N'江门市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440703', N'4407', N'00,44,4407', N'蓬江区', N'44', N'广东省', N'4407', N'江门市', N'440703', N'蓬江区', N'', N'', N'', N'', N'3', N'1', N''), (N'440704', N'4407', N'00,44,4407', N'江海区', N'44', N'广东省', N'4407', N'江门市', N'440704', N'江海区', N'', N'', N'', N'', N'3', N'1', N''), (N'440705', N'4407', N'00,44,4407', N'新会区', N'44', N'广东省', N'4407', N'江门市', N'440705', N'新会区', N'', N'', N'', N'', N'3', N'1', N''), (N'440781', N'4407', N'00,44,4407', N'台山市', N'44', N'广东省', N'4407', N'江门市', N'440781', N'台山市', N'', N'', N'', N'', N'3', N'1', N''), (N'440783', N'4407', N'00,44,4407', N'开平市', N'44', N'广东省', N'4407', N'江门市', N'440783', N'开平市', N'', N'', N'', N'', N'3', N'1', N''), (N'440784', N'4407', N'00,44,4407', N'鹤山市', N'44', N'广东省', N'4407', N'江门市', N'440784', N'鹤山市', N'', N'', N'', N'', N'3', N'1', N''), (N'440785', N'4407', N'00,44,4407', N'恩平市', N'44', N'广东省', N'4407', N'江门市', N'440785', N'恩平市', N'', N'', N'', N'', N'3', N'1', N''), (N'4408', N'44', N'00,44', N'湛江市', N'44', N'广东省', N'4408', N'湛江市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440802', N'4408', N'00,44,4408', N'赤坎区', N'44', N'广东省', N'4408', N'湛江市', N'440802', N'赤坎区', N'', N'', N'', N'', N'3', N'1', N''), (N'440803', N'4408', N'00,44,4408', N'霞山区', N'44', N'广东省', N'4408', N'湛江市', N'440803', N'霞山区', N'', N'', N'', N'', N'3', N'1', N''), (N'440804', N'4408', N'00,44,4408', N'坡头区', N'44', N'广东省', N'4408', N'湛江市', N'440804', N'坡头区', N'', N'', N'', N'', N'3', N'1', N''), (N'440811', N'4408', N'00,44,4408', N'麻章区', N'44', N'广东省', N'4408', N'湛江市', N'440811', N'麻章区', N'', N'', N'', N'', N'3', N'1', N''), (N'440823', N'4408', N'00,44,4408', N'遂溪县', N'44', N'广东省', N'4408', N'湛江市', N'440823', N'遂溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'440825', N'4408', N'00,44,4408', N'徐闻县', N'44', N'广东省', N'4408', N'湛江市', N'440825', N'徐闻县', N'', N'', N'', N'', N'3', N'1', N''), (N'440881', N'4408', N'00,44,4408', N'廉江市', N'44', N'广东省', N'4408', N'湛江市', N'440881', N'廉江市', N'', N'', N'', N'', N'3', N'1', N''), (N'440882', N'4408', N'00,44,4408', N'雷州市', N'44', N'广东省', N'4408', N'湛江市', N'440882', N'雷州市', N'', N'', N'', N'', N'3', N'1', N''), (N'440883', N'4408', N'00,44,4408', N'吴川市', N'44', N'广东省', N'4408', N'湛江市', N'440883', N'吴川市', N'', N'', N'', N'', N'3', N'1', N''), (N'4409', N'44', N'00,44', N'茂名市', N'44', N'广东省', N'4409', N'茂名市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'440902', N'4409', N'00,44,4409', N'茂南区', N'44', N'广东省', N'4409', N'茂名市', N'440902', N'茂南区', N'', N'', N'', N'', N'3', N'1', N''), (N'440904', N'4409', N'00,44,4409', N'电白区', N'44', N'广东省', N'4409', N'茂名市', N'440904', N'电白区', N'', N'', N'', N'', N'3', N'1', N''), (N'440981', N'4409', N'00,44,4409', N'高州市', N'44', N'广东省', N'4409', N'茂名市', N'440981', N'高州市', N'', N'', N'', N'', N'3', N'1', N''), (N'440982', N'4409', N'00,44,4409', N'化州市', N'44', N'广东省', N'4409', N'茂名市', N'440982', N'化州市', N'', N'', N'', N'', N'3', N'1', N''), (N'440983', N'4409', N'00,44,4409', N'信宜市', N'44', N'广东省', N'4409', N'茂名市', N'440983', N'信宜市', N'', N'', N'', N'', N'3', N'1', N''), (N'4412', N'44', N'00,44', N'肇庆市', N'44', N'广东省', N'4412', N'肇庆市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441202', N'4412', N'00,44,4412', N'端州区', N'44', N'广东省', N'4412', N'肇庆市', N'441202', N'端州区', N'', N'', N'', N'', N'3', N'1', N''), (N'441203', N'4412', N'00,44,4412', N'鼎湖区', N'44', N'广东省', N'4412', N'肇庆市', N'441203', N'鼎湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'441204', N'4412', N'00,44,4412', N'高要区', N'44', N'广东省', N'4412', N'肇庆市', N'441204', N'高要区', N'', N'', N'', N'', N'3', N'1', N''), (N'441223', N'4412', N'00,44,4412', N'广宁县', N'44', N'广东省', N'4412', N'肇庆市', N'441223', N'广宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'441224', N'4412', N'00,44,4412', N'怀集县', N'44', N'广东省', N'4412', N'肇庆市', N'441224', N'怀集县', N'', N'', N'', N'', N'3', N'1', N''), (N'441225', N'4412', N'00,44,4412', N'封开县', N'44', N'广东省', N'4412', N'肇庆市', N'441225', N'封开县', N'', N'', N'', N'', N'3', N'1', N''), (N'441226', N'4412', N'00,44,4412', N'德庆县', N'44', N'广东省', N'4412', N'肇庆市', N'441226', N'德庆县', N'', N'', N'', N'', N'3', N'1', N''), (N'441284', N'4412', N'00,44,4412', N'四会市', N'44', N'广东省', N'4412', N'肇庆市', N'441284', N'四会市', N'', N'', N'', N'', N'3', N'1', N''), (N'4413', N'44', N'00,44', N'惠州市', N'44', N'广东省', N'4413', N'惠州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441302', N'4413', N'00,44,4413', N'惠城区', N'44', N'广东省', N'4413', N'惠州市', N'441302', N'惠城区', N'', N'', N'', N'', N'3', N'1', N''), (N'441303', N'4413', N'00,44,4413', N'惠阳区', N'44', N'广东省', N'4413', N'惠州市', N'441303', N'惠阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'441322', N'4413', N'00,44,4413', N'博罗县', N'44', N'广东省', N'4413', N'惠州市', N'441322', N'博罗县', N'', N'', N'', N'', N'3', N'1', N''), (N'441323', N'4413', N'00,44,4413', N'惠东县', N'44', N'广东省', N'4413', N'惠州市', N'441323', N'惠东县', N'', N'', N'', N'', N'3', N'1', N''), (N'441324', N'4413', N'00,44,4413', N'龙门县', N'44', N'广东省', N'4413', N'惠州市', N'441324', N'龙门县', N'', N'', N'', N'', N'3', N'1', N''), (N'4414', N'44', N'00,44', N'梅州市', N'44', N'广东省', N'4414', N'梅州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441402', N'4414', N'00,44,4414', N'梅江区', N'44', N'广东省', N'4414', N'梅州市', N'441402', N'梅江区', N'', N'', N'', N'', N'3', N'1', N''), (N'441403', N'4414', N'00,44,4414', N'梅县区', N'44', N'广东省', N'4414', N'梅州市', N'441403', N'梅县区', N'', N'', N'', N'', N'3', N'1', N''), (N'441422', N'4414', N'00,44,4414', N'大埔县', N'44', N'广东省', N'4414', N'梅州市', N'441422', N'大埔县', N'', N'', N'', N'', N'3', N'1', N''), (N'441423', N'4414', N'00,44,4414', N'丰顺县', N'44', N'广东省', N'4414', N'梅州市', N'441423', N'丰顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'441424', N'4414', N'00,44,4414', N'五华县', N'44', N'广东省', N'4414', N'梅州市', N'441424', N'五华县', N'', N'', N'', N'', N'3', N'1', N''), (N'441426', N'4414', N'00,44,4414', N'平远县', N'44', N'广东省', N'4414', N'梅州市', N'441426', N'平远县', N'', N'', N'', N'', N'3', N'1', N''), (N'441427', N'4414', N'00,44,4414', N'蕉岭县', N'44', N'广东省', N'4414', N'梅州市', N'441427', N'蕉岭县', N'', N'', N'', N'', N'3', N'1', N''), (N'441481', N'4414', N'00,44,4414', N'兴宁市', N'44', N'广东省', N'4414', N'梅州市', N'441481', N'兴宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'4415', N'44', N'00,44', N'汕尾市', N'44', N'广东省', N'4415', N'汕尾市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441502', N'4415', N'00,44,4415', N'城区', N'44', N'广东省', N'4415', N'汕尾市', N'441502', N'城区', N'', N'', N'', N'', N'3', N'1', N''), (N'441521', N'4415', N'00,44,4415', N'海丰县', N'44', N'广东省', N'4415', N'汕尾市', N'441521', N'海丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'441523', N'4415', N'00,44,4415', N'陆河县', N'44', N'广东省', N'4415', N'汕尾市', N'441523', N'陆河县', N'', N'', N'', N'', N'3', N'1', N''), (N'441581', N'4415', N'00,44,4415', N'陆丰市', N'44', N'广东省', N'4415', N'汕尾市', N'441581', N'陆丰市', N'', N'', N'', N'', N'3', N'1', N''), (N'4416', N'44', N'00,44', N'河源市', N'44', N'广东省', N'4416', N'河源市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441602', N'4416', N'00,44,4416', N'源城区', N'44', N'广东省', N'4416', N'河源市', N'441602', N'源城区', N'', N'', N'', N'', N'3', N'1', N''), (N'441621', N'4416', N'00,44,4416', N'紫金县', N'44', N'广东省', N'4416', N'河源市', N'441621', N'紫金县', N'', N'', N'', N'', N'3', N'1', N''), (N'441622', N'4416', N'00,44,4416', N'龙川县', N'44', N'广东省', N'4416', N'河源市', N'441622', N'龙川县', N'', N'', N'', N'', N'3', N'1', N''), (N'441623', N'4416', N'00,44,4416', N'连平县', N'44', N'广东省', N'4416', N'河源市', N'441623', N'连平县', N'', N'', N'', N'', N'3', N'1', N''), (N'441624', N'4416', N'00,44,4416', N'和平县', N'44', N'广东省', N'4416', N'河源市', N'441624', N'和平县', N'', N'', N'', N'', N'3', N'1', N''), (N'441625', N'4416', N'00,44,4416', N'东源县', N'44', N'广东省', N'4416', N'河源市', N'441625', N'东源县', N'', N'', N'', N'', N'3', N'1', N''), (N'4417', N'44', N'00,44', N'阳江市', N'44', N'广东省', N'4417', N'阳江市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441702', N'4417', N'00,44,4417', N'江城区', N'44', N'广东省', N'4417', N'阳江市', N'441702', N'江城区', N'', N'', N'', N'', N'3', N'1', N''), (N'441704', N'4417', N'00,44,4417', N'阳东区', N'44', N'广东省', N'4417', N'阳江市', N'441704', N'阳东区', N'', N'', N'', N'', N'3', N'1', N''), (N'441721', N'4417', N'00,44,4417', N'阳西县', N'44', N'广东省', N'4417', N'阳江市', N'441721', N'阳西县', N'', N'', N'', N'', N'3', N'1', N''), (N'441781', N'4417', N'00,44,4417', N'阳春市', N'44', N'广东省', N'4417', N'阳江市', N'441781', N'阳春市', N'', N'', N'', N'', N'3', N'1', N''), (N'4418', N'44', N'00,44', N'清远市', N'44', N'广东省', N'4418', N'清远市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441802', N'4418', N'00,44,4418', N'清城区', N'44', N'广东省', N'4418', N'清远市', N'441802', N'清城区', N'', N'', N'', N'', N'3', N'1', N''), (N'441803', N'4418', N'00,44,4418', N'清新区', N'44', N'广东省', N'4418', N'清远市', N'441803', N'清新区', N'', N'', N'', N'', N'3', N'1', N''), (N'441821', N'4418', N'00,44,4418', N'佛冈县', N'44', N'广东省', N'4418', N'清远市', N'441821', N'佛冈县', N'', N'', N'', N'', N'3', N'1', N''), (N'441823', N'4418', N'00,44,4418', N'阳山县', N'44', N'广东省', N'4418', N'清远市', N'441823', N'阳山县', N'', N'', N'', N'', N'3', N'1', N''), (N'441825', N'4418', N'00,44,4418', N'连山壮族瑶族自治县', N'44', N'广东省', N'4418', N'清远市', N'441825', N'连山壮族瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'441826', N'4418', N'00,44,4418', N'连南瑶族自治县', N'44', N'广东省', N'4418', N'清远市', N'441826', N'连南瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'441881', N'4418', N'00,44,4418', N'英德市', N'44', N'广东省', N'4418', N'清远市', N'441881', N'英德市', N'', N'', N'', N'', N'3', N'1', N''), (N'441882', N'4418', N'00,44,4418', N'连州市', N'44', N'广东省', N'4418', N'清远市', N'441882', N'连州市', N'', N'', N'', N'', N'3', N'1', N''), (N'4419', N'44', N'00,44', N'东莞市', N'44', N'广东省', N'4419', N'东莞市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'441900', N'4419', N'00,44,4419', N'东莞市', N'44', N'广东省', N'4419', N'东莞市', N'441900', N'东莞市', N'', N'', N'', N'', N'3', N'1', N''), (N'4420', N'44', N'00,44', N'中山市', N'44', N'广东省', N'4420', N'中山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'442000', N'4420', N'00,44,4420', N'中山市', N'44', N'广东省', N'4420', N'中山市', N'442000', N'中山市', N'', N'', N'', N'', N'3', N'1', N''), (N'4451', N'44', N'00,44', N'潮州市', N'44', N'广东省', N'4451', N'潮州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'445102', N'4451', N'00,44,4451', N'湘桥区', N'44', N'广东省', N'4451', N'潮州市', N'445102', N'湘桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'445103', N'4451', N'00,44,4451', N'潮安区', N'44', N'广东省', N'4451', N'潮州市', N'445103', N'潮安区', N'', N'', N'', N'', N'3', N'1', N''), (N'445122', N'4451', N'00,44,4451', N'饶平县', N'44', N'广东省', N'4451', N'潮州市', N'445122', N'饶平县', N'', N'', N'', N'', N'3', N'1', N''), (N'4452', N'44', N'00,44', N'揭阳市', N'44', N'广东省', N'4452', N'揭阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'445202', N'4452', N'00,44,4452', N'榕城区', N'44', N'广东省', N'4452', N'揭阳市', N'445202', N'榕城区', N'', N'', N'', N'', N'3', N'1', N''), (N'445203', N'4452', N'00,44,4452', N'揭东区', N'44', N'广东省', N'4452', N'揭阳市', N'445203', N'揭东区', N'', N'', N'', N'', N'3', N'1', N''), (N'445222', N'4452', N'00,44,4452', N'揭西县', N'44', N'广东省', N'4452', N'揭阳市', N'445222', N'揭西县', N'', N'', N'', N'', N'3', N'1', N''), (N'445224', N'4452', N'00,44,4452', N'惠来县', N'44', N'广东省', N'4452', N'揭阳市', N'445224', N'惠来县', N'', N'', N'', N'', N'3', N'1', N''), (N'445281', N'4452', N'00,44,4452', N'普宁市', N'44', N'广东省', N'4452', N'揭阳市', N'445281', N'普宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'4453', N'44', N'00,44', N'云浮市', N'44', N'广东省', N'4453', N'云浮市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'445302', N'4453', N'00,44,4453', N'云城区', N'44', N'广东省', N'4453', N'云浮市', N'445302', N'云城区', N'', N'', N'', N'', N'3', N'1', N''), (N'445303', N'4453', N'00,44,4453', N'云安区', N'44', N'广东省', N'4453', N'云浮市', N'445303', N'云安区', N'', N'', N'', N'', N'3', N'1', N''), (N'445321', N'4453', N'00,44,4453', N'新兴县', N'44', N'广东省', N'4453', N'云浮市', N'445321', N'新兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'445322', N'4453', N'00,44,4453', N'郁南县', N'44', N'广东省', N'4453', N'云浮市', N'445322', N'郁南县', N'', N'', N'', N'', N'3', N'1', N''), (N'445381', N'4453', N'00,44,4453', N'罗定市', N'44', N'广东省', N'4453', N'云浮市', N'445381', N'罗定市', N'', N'', N'', N'', N'3', N'1', N''), (N'45', N'00', N'00', N'广西壮族自治区', N'45', N'广西壮族自治区', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'4501', N'45', N'00,45', N'南宁市', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450102', N'4501', N'00,45,4501', N'兴宁区', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450102', N'兴宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'450103', N'4501', N'00,45,4501', N'青秀区', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450103', N'青秀区', N'', N'', N'', N'', N'3', N'1', N''), (N'450105', N'4501', N'00,45,4501', N'江南区', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450105', N'江南区', N'', N'', N'', N'', N'3', N'1', N''), (N'450107', N'4501', N'00,45,4501', N'西乡塘区', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450107', N'西乡塘区', N'', N'', N'', N'', N'3', N'1', N''), (N'450108', N'4501', N'00,45,4501', N'良庆区', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450108', N'良庆区', N'', N'', N'', N'', N'3', N'1', N''), (N'450109', N'4501', N'00,45,4501', N'邕宁区', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450109', N'邕宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'450110', N'4501', N'00,45,4501', N'武鸣区', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450110', N'武鸣区', N'', N'', N'', N'', N'3', N'1', N''), (N'450123', N'4501', N'00,45,4501', N'隆安县', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450123', N'隆安县', N'', N'', N'', N'', N'3', N'1', N''), (N'450124', N'4501', N'00,45,4501', N'马山县', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450124', N'马山县', N'', N'', N'', N'', N'3', N'1', N''), (N'450125', N'4501', N'00,45,4501', N'上林县', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450125', N'上林县', N'', N'', N'', N'', N'3', N'1', N''), (N'450126', N'4501', N'00,45,4501', N'宾阳县', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450126', N'宾阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'450127', N'4501', N'00,45,4501', N'横县', N'45', N'广西壮族自治区', N'4501', N'南宁市', N'450127', N'横县', N'', N'', N'', N'', N'3', N'1', N''), (N'4502', N'45', N'00,45', N'柳州市', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450202', N'4502', N'00,45,4502', N'城中区', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450202', N'城中区', N'', N'', N'', N'', N'3', N'1', N''), (N'450203', N'4502', N'00,45,4502', N'鱼峰区', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450203', N'鱼峰区', N'', N'', N'', N'', N'3', N'1', N''), (N'450204', N'4502', N'00,45,4502', N'柳南区', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450204', N'柳南区', N'', N'', N'', N'', N'3', N'1', N''), (N'450205', N'4502', N'00,45,4502', N'柳北区', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450205', N'柳北区', N'', N'', N'', N'', N'3', N'1', N''), (N'450206', N'4502', N'00,45,4502', N'柳江区', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450206', N'柳江区', N'', N'', N'', N'', N'3', N'1', N''), (N'450222', N'4502', N'00,45,4502', N'柳城县', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450222', N'柳城县', N'', N'', N'', N'', N'3', N'1', N''), (N'450223', N'4502', N'00,45,4502', N'鹿寨县', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450223', N'鹿寨县', N'', N'', N'', N'', N'3', N'1', N'')
GO

INSERT INTO [dbo].[blade_region] VALUES (N'450224', N'4502', N'00,45,4502', N'融安县', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450224', N'融安县', N'', N'', N'', N'', N'3', N'1', N''), (N'450225', N'4502', N'00,45,4502', N'融水苗族自治县', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450225', N'融水苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'450226', N'4502', N'00,45,4502', N'三江侗族自治县', N'45', N'广西壮族自治区', N'4502', N'柳州市', N'450226', N'三江侗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'4503', N'45', N'00,45', N'桂林市', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450302', N'4503', N'00,45,4503', N'秀峰区', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450302', N'秀峰区', N'', N'', N'', N'', N'3', N'1', N''), (N'450303', N'4503', N'00,45,4503', N'叠彩区', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450303', N'叠彩区', N'', N'', N'', N'', N'3', N'1', N''), (N'450304', N'4503', N'00,45,4503', N'象山区', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450304', N'象山区', N'', N'', N'', N'', N'3', N'1', N''), (N'450305', N'4503', N'00,45,4503', N'七星区', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450305', N'七星区', N'', N'', N'', N'', N'3', N'1', N''), (N'450311', N'4503', N'00,45,4503', N'雁山区', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450311', N'雁山区', N'', N'', N'', N'', N'3', N'1', N''), (N'450312', N'4503', N'00,45,4503', N'临桂区', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450312', N'临桂区', N'', N'', N'', N'', N'3', N'1', N''), (N'450321', N'4503', N'00,45,4503', N'阳朔县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450321', N'阳朔县', N'', N'', N'', N'', N'3', N'1', N''), (N'450323', N'4503', N'00,45,4503', N'灵川县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450323', N'灵川县', N'', N'', N'', N'', N'3', N'1', N''), (N'450324', N'4503', N'00,45,4503', N'全州县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450324', N'全州县', N'', N'', N'', N'', N'3', N'1', N''), (N'450325', N'4503', N'00,45,4503', N'兴安县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450325', N'兴安县', N'', N'', N'', N'', N'3', N'1', N''), (N'450326', N'4503', N'00,45,4503', N'永福县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450326', N'永福县', N'', N'', N'', N'', N'3', N'1', N''), (N'450327', N'4503', N'00,45,4503', N'灌阳县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450327', N'灌阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'450328', N'4503', N'00,45,4503', N'龙胜各族自治县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450328', N'龙胜各族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'450329', N'4503', N'00,45,4503', N'资源县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450329', N'资源县', N'', N'', N'', N'', N'3', N'1', N''), (N'450330', N'4503', N'00,45,4503', N'平乐县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450330', N'平乐县', N'', N'', N'', N'', N'3', N'1', N''), (N'450332', N'4503', N'00,45,4503', N'恭城瑶族自治县', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450332', N'恭城瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'450381', N'4503', N'00,45,4503', N'荔浦市', N'45', N'广西壮族自治区', N'4503', N'桂林市', N'450381', N'荔浦市', N'', N'', N'', N'', N'3', N'1', N''), (N'4504', N'45', N'00,45', N'梧州市', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450403', N'4504', N'00,45,4504', N'万秀区', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'450403', N'万秀区', N'', N'', N'', N'', N'3', N'1', N''), (N'450405', N'4504', N'00,45,4504', N'长洲区', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'450405', N'长洲区', N'', N'', N'', N'', N'3', N'1', N''), (N'450406', N'4504', N'00,45,4504', N'龙圩区', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'450406', N'龙圩区', N'', N'', N'', N'', N'3', N'1', N''), (N'450421', N'4504', N'00,45,4504', N'苍梧县', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'450421', N'苍梧县', N'', N'', N'', N'', N'3', N'1', N''), (N'450422', N'4504', N'00,45,4504', N'藤县', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'450422', N'藤县', N'', N'', N'', N'', N'3', N'1', N''), (N'450423', N'4504', N'00,45,4504', N'蒙山县', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'450423', N'蒙山县', N'', N'', N'', N'', N'3', N'1', N''), (N'450481', N'4504', N'00,45,4504', N'岑溪市', N'45', N'广西壮族自治区', N'4504', N'梧州市', N'450481', N'岑溪市', N'', N'', N'', N'', N'3', N'1', N''), (N'4505', N'45', N'00,45', N'北海市', N'45', N'广西壮族自治区', N'4505', N'北海市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450502', N'4505', N'00,45,4505', N'海城区', N'45', N'广西壮族自治区', N'4505', N'北海市', N'450502', N'海城区', N'', N'', N'', N'', N'3', N'1', N''), (N'450503', N'4505', N'00,45,4505', N'银海区', N'45', N'广西壮族自治区', N'4505', N'北海市', N'450503', N'银海区', N'', N'', N'', N'', N'3', N'1', N''), (N'450512', N'4505', N'00,45,4505', N'铁山港区', N'45', N'广西壮族自治区', N'4505', N'北海市', N'450512', N'铁山港区', N'', N'', N'', N'', N'3', N'1', N''), (N'450521', N'4505', N'00,45,4505', N'合浦县', N'45', N'广西壮族自治区', N'4505', N'北海市', N'450521', N'合浦县', N'', N'', N'', N'', N'3', N'1', N''), (N'4506', N'45', N'00,45', N'防城港市', N'45', N'广西壮族自治区', N'4506', N'防城港市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450602', N'4506', N'00,45,4506', N'港口区', N'45', N'广西壮族自治区', N'4506', N'防城港市', N'450602', N'港口区', N'', N'', N'', N'', N'3', N'1', N''), (N'450603', N'4506', N'00,45,4506', N'防城区', N'45', N'广西壮族自治区', N'4506', N'防城港市', N'450603', N'防城区', N'', N'', N'', N'', N'3', N'1', N''), (N'450621', N'4506', N'00,45,4506', N'上思县', N'45', N'广西壮族自治区', N'4506', N'防城港市', N'450621', N'上思县', N'', N'', N'', N'', N'3', N'1', N''), (N'450681', N'4506', N'00,45,4506', N'东兴市', N'45', N'广西壮族自治区', N'4506', N'防城港市', N'450681', N'东兴市', N'', N'', N'', N'', N'3', N'1', N''), (N'4507', N'45', N'00,45', N'钦州市', N'45', N'广西壮族自治区', N'4507', N'钦州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450702', N'4507', N'00,45,4507', N'钦南区', N'45', N'广西壮族自治区', N'4507', N'钦州市', N'450702', N'钦南区', N'', N'', N'', N'', N'3', N'1', N''), (N'450703', N'4507', N'00,45,4507', N'钦北区', N'45', N'广西壮族自治区', N'4507', N'钦州市', N'450703', N'钦北区', N'', N'', N'', N'', N'3', N'1', N''), (N'450721', N'4507', N'00,45,4507', N'灵山县', N'45', N'广西壮族自治区', N'4507', N'钦州市', N'450721', N'灵山县', N'', N'', N'', N'', N'3', N'1', N''), (N'450722', N'4507', N'00,45,4507', N'浦北县', N'45', N'广西壮族自治区', N'4507', N'钦州市', N'450722', N'浦北县', N'', N'', N'', N'', N'3', N'1', N''), (N'4508', N'45', N'00,45', N'贵港市', N'45', N'广西壮族自治区', N'4508', N'贵港市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450802', N'4508', N'00,45,4508', N'港北区', N'45', N'广西壮族自治区', N'4508', N'贵港市', N'450802', N'港北区', N'', N'', N'', N'', N'3', N'1', N''), (N'450803', N'4508', N'00,45,4508', N'港南区', N'45', N'广西壮族自治区', N'4508', N'贵港市', N'450803', N'港南区', N'', N'', N'', N'', N'3', N'1', N''), (N'450804', N'4508', N'00,45,4508', N'覃塘区', N'45', N'广西壮族自治区', N'4508', N'贵港市', N'450804', N'覃塘区', N'', N'', N'', N'', N'3', N'1', N''), (N'450821', N'4508', N'00,45,4508', N'平南县', N'45', N'广西壮族自治区', N'4508', N'贵港市', N'450821', N'平南县', N'', N'', N'', N'', N'3', N'1', N''), (N'450881', N'4508', N'00,45,4508', N'桂平市', N'45', N'广西壮族自治区', N'4508', N'贵港市', N'450881', N'桂平市', N'', N'', N'', N'', N'3', N'1', N''), (N'4509', N'45', N'00,45', N'玉林市', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'450902', N'4509', N'00,45,4509', N'玉州区', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'450902', N'玉州区', N'', N'', N'', N'', N'3', N'1', N''), (N'450903', N'4509', N'00,45,4509', N'福绵区', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'450903', N'福绵区', N'', N'', N'', N'', N'3', N'1', N''), (N'450921', N'4509', N'00,45,4509', N'容县', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'450921', N'容县', N'', N'', N'', N'', N'3', N'1', N''), (N'450922', N'4509', N'00,45,4509', N'陆川县', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'450922', N'陆川县', N'', N'', N'', N'', N'3', N'1', N''), (N'450923', N'4509', N'00,45,4509', N'博白县', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'450923', N'博白县', N'', N'', N'', N'', N'3', N'1', N''), (N'450924', N'4509', N'00,45,4509', N'兴业县', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'450924', N'兴业县', N'', N'', N'', N'', N'3', N'1', N''), (N'450981', N'4509', N'00,45,4509', N'北流市', N'45', N'广西壮族自治区', N'4509', N'玉林市', N'450981', N'北流市', N'', N'', N'', N'', N'3', N'1', N''), (N'4510', N'45', N'00,45', N'百色市', N'45', N'广西壮族自治区', N'4510', N'百色市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'451002', N'4510', N'00,45,4510', N'右江区', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451002', N'右江区', N'', N'', N'', N'', N'3', N'1', N''), (N'451003', N'4510', N'00,45,4510', N'田阳区', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451003', N'田阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'451022', N'4510', N'00,45,4510', N'田东县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451022', N'田东县', N'', N'', N'', N'', N'3', N'1', N''), (N'451024', N'4510', N'00,45,4510', N'德保县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451024', N'德保县', N'', N'', N'', N'', N'3', N'1', N''), (N'451026', N'4510', N'00,45,4510', N'那坡县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451026', N'那坡县', N'', N'', N'', N'', N'3', N'1', N''), (N'451027', N'4510', N'00,45,4510', N'凌云县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451027', N'凌云县', N'', N'', N'', N'', N'3', N'1', N''), (N'451028', N'4510', N'00,45,4510', N'乐业县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451028', N'乐业县', N'', N'', N'', N'', N'3', N'1', N''), (N'451029', N'4510', N'00,45,4510', N'田林县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451029', N'田林县', N'', N'', N'', N'', N'3', N'1', N''), (N'451030', N'4510', N'00,45,4510', N'西林县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451030', N'西林县', N'', N'', N'', N'', N'3', N'1', N''), (N'451031', N'4510', N'00,45,4510', N'隆林各族自治县', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451031', N'隆林各族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'451081', N'4510', N'00,45,4510', N'靖西市', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451081', N'靖西市', N'', N'', N'', N'', N'3', N'1', N''), (N'451082', N'4510', N'00,45,4510', N'平果市', N'45', N'广西壮族自治区', N'4510', N'百色市', N'451082', N'平果市', N'', N'', N'', N'', N'3', N'1', N''), (N'4511', N'45', N'00,45', N'贺州市', N'45', N'广西壮族自治区', N'4511', N'贺州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'451102', N'4511', N'00,45,4511', N'八步区', N'45', N'广西壮族自治区', N'4511', N'贺州市', N'451102', N'八步区', N'', N'', N'', N'', N'3', N'1', N''), (N'451103', N'4511', N'00,45,4511', N'平桂区', N'45', N'广西壮族自治区', N'4511', N'贺州市', N'451103', N'平桂区', N'', N'', N'', N'', N'3', N'1', N''), (N'451121', N'4511', N'00,45,4511', N'昭平县', N'45', N'广西壮族自治区', N'4511', N'贺州市', N'451121', N'昭平县', N'', N'', N'', N'', N'3', N'1', N''), (N'451122', N'4511', N'00,45,4511', N'钟山县', N'45', N'广西壮族自治区', N'4511', N'贺州市', N'451122', N'钟山县', N'', N'', N'', N'', N'3', N'1', N''), (N'451123', N'4511', N'00,45,4511', N'富川瑶族自治县', N'45', N'广西壮族自治区', N'4511', N'贺州市', N'451123', N'富川瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'4512', N'45', N'00,45', N'河池市', N'45', N'广西壮族自治区', N'4512', N'河池市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'451202', N'4512', N'00,45,4512', N'金城江区', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451202', N'金城江区', N'', N'', N'', N'', N'3', N'1', N''), (N'451203', N'4512', N'00,45,4512', N'宜州区', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451203', N'宜州区', N'', N'', N'', N'', N'3', N'1', N''), (N'451221', N'4512', N'00,45,4512', N'南丹县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451221', N'南丹县', N'', N'', N'', N'', N'3', N'1', N''), (N'451222', N'4512', N'00,45,4512', N'天峨县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451222', N'天峨县', N'', N'', N'', N'', N'3', N'1', N''), (N'451223', N'4512', N'00,45,4512', N'凤山县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451223', N'凤山县', N'', N'', N'', N'', N'3', N'1', N''), (N'451224', N'4512', N'00,45,4512', N'东兰县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451224', N'东兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'451225', N'4512', N'00,45,4512', N'罗城仫佬族自治县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451225', N'罗城仫佬族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'451226', N'4512', N'00,45,4512', N'环江毛南族自治县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451226', N'环江毛南族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'451227', N'4512', N'00,45,4512', N'巴马瑶族自治县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451227', N'巴马瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'451228', N'4512', N'00,45,4512', N'都安瑶族自治县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451228', N'都安瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'451229', N'4512', N'00,45,4512', N'大化瑶族自治县', N'45', N'广西壮族自治区', N'4512', N'河池市', N'451229', N'大化瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'4513', N'45', N'00,45', N'来宾市', N'45', N'广西壮族自治区', N'4513', N'来宾市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'451302', N'4513', N'00,45,4513', N'兴宾区', N'45', N'广西壮族自治区', N'4513', N'来宾市', N'451302', N'兴宾区', N'', N'', N'', N'', N'3', N'1', N''), (N'451321', N'4513', N'00,45,4513', N'忻城县', N'45', N'广西壮族自治区', N'4513', N'来宾市', N'451321', N'忻城县', N'', N'', N'', N'', N'3', N'1', N''), (N'451322', N'4513', N'00,45,4513', N'象州县', N'45', N'广西壮族自治区', N'4513', N'来宾市', N'451322', N'象州县', N'', N'', N'', N'', N'3', N'1', N''), (N'451323', N'4513', N'00,45,4513', N'武宣县', N'45', N'广西壮族自治区', N'4513', N'来宾市', N'451323', N'武宣县', N'', N'', N'', N'', N'3', N'1', N''), (N'451324', N'4513', N'00,45,4513', N'金秀瑶族自治县', N'45', N'广西壮族自治区', N'4513', N'来宾市', N'451324', N'金秀瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'451381', N'4513', N'00,45,4513', N'合山市', N'45', N'广西壮族自治区', N'4513', N'来宾市', N'451381', N'合山市', N'', N'', N'', N'', N'3', N'1', N''), (N'4514', N'45', N'00,45', N'崇左市', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'451402', N'4514', N'00,45,4514', N'江州区', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'451402', N'江州区', N'', N'', N'', N'', N'3', N'1', N''), (N'451421', N'4514', N'00,45,4514', N'扶绥县', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'451421', N'扶绥县', N'', N'', N'', N'', N'3', N'1', N''), (N'451422', N'4514', N'00,45,4514', N'宁明县', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'451422', N'宁明县', N'', N'', N'', N'', N'3', N'1', N''), (N'451423', N'4514', N'00,45,4514', N'龙州县', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'451423', N'龙州县', N'', N'', N'', N'', N'3', N'1', N''), (N'451424', N'4514', N'00,45,4514', N'大新县', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'451424', N'大新县', N'', N'', N'', N'', N'3', N'1', N''), (N'451425', N'4514', N'00,45,4514', N'天等县', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'451425', N'天等县', N'', N'', N'', N'', N'3', N'1', N''), (N'451481', N'4514', N'00,45,4514', N'凭祥市', N'45', N'广西壮族自治区', N'4514', N'崇左市', N'451481', N'凭祥市', N'', N'', N'', N'', N'3', N'1', N''), (N'46', N'00', N'00', N'海南省', N'46', N'海南省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'4601', N'46', N'00,46', N'海口市', N'46', N'海南省', N'4601', N'海口市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'460105', N'4601', N'00,46,4601', N'秀英区', N'46', N'海南省', N'4601', N'海口市', N'460105', N'秀英区', N'', N'', N'', N'', N'3', N'1', N''), (N'460106', N'4601', N'00,46,4601', N'龙华区', N'46', N'海南省', N'4601', N'海口市', N'460106', N'龙华区', N'', N'', N'', N'', N'3', N'1', N''), (N'460107', N'4601', N'00,46,4601', N'琼山区', N'46', N'海南省', N'4601', N'海口市', N'460107', N'琼山区', N'', N'', N'', N'', N'3', N'1', N''), (N'460108', N'4601', N'00,46,4601', N'美兰区', N'46', N'海南省', N'4601', N'海口市', N'460108', N'美兰区', N'', N'', N'', N'', N'3', N'1', N''), (N'4602', N'46', N'00,46', N'三亚市', N'46', N'海南省', N'4602', N'三亚市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'460202', N'4602', N'00,46,4602', N'海棠区', N'46', N'海南省', N'4602', N'三亚市', N'460202', N'海棠区', N'', N'', N'', N'', N'3', N'1', N''), (N'460203', N'4602', N'00,46,4602', N'吉阳区', N'46', N'海南省', N'4602', N'三亚市', N'460203', N'吉阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'460204', N'4602', N'00,46,4602', N'天涯区', N'46', N'海南省', N'4602', N'三亚市', N'460204', N'天涯区', N'', N'', N'', N'', N'3', N'1', N''), (N'460205', N'4602', N'00,46,4602', N'崖州区', N'46', N'海南省', N'4602', N'三亚市', N'460205', N'崖州区', N'', N'', N'', N'', N'3', N'1', N''), (N'4603', N'46', N'00,46', N'三沙市', N'46', N'海南省', N'4603', N'三沙市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'460300', N'4603', N'00,46,4603', N'三沙市', N'46', N'海南省', N'4603', N'三沙市', N'460300', N'三沙市', N'', N'', N'', N'', N'3', N'1', N''), (N'4604', N'46', N'00,46', N'儋州市', N'46', N'海南省', N'4604', N'儋州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'460400', N'4604', N'00,46,4604', N'儋州市', N'46', N'海南省', N'4604', N'儋州市', N'460400', N'儋州市', N'', N'', N'', N'', N'3', N'1', N''), (N'4690', N'46', N'00,46', N'省直辖县级行政区', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'469001', N'4690', N'00,46,4690', N'五指山市', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469001', N'五指山市', N'', N'', N'', N'', N'3', N'1', N''), (N'469002', N'4690', N'00,46,4690', N'琼海市', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469002', N'琼海市', N'', N'', N'', N'', N'3', N'1', N''), (N'469005', N'4690', N'00,46,4690', N'文昌市', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469005', N'文昌市', N'', N'', N'', N'', N'3', N'1', N''), (N'469006', N'4690', N'00,46,4690', N'万宁市', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469006', N'万宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'469007', N'4690', N'00,46,4690', N'东方市', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469007', N'东方市', N'', N'', N'', N'', N'3', N'1', N''), (N'469021', N'4690', N'00,46,4690', N'定安县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469021', N'定安县', N'', N'', N'', N'', N'3', N'1', N''), (N'469022', N'4690', N'00,46,4690', N'屯昌县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469022', N'屯昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'469023', N'4690', N'00,46,4690', N'澄迈县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469023', N'澄迈县', N'', N'', N'', N'', N'3', N'1', N''), (N'469024', N'4690', N'00,46,4690', N'临高县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469024', N'临高县', N'', N'', N'', N'', N'3', N'1', N''), (N'469025', N'4690', N'00,46,4690', N'白沙黎族自治县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469025', N'白沙黎族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'469026', N'4690', N'00,46,4690', N'昌江黎族自治县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469026', N'昌江黎族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'469027', N'4690', N'00,46,4690', N'乐东黎族自治县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469027', N'乐东黎族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'469028', N'4690', N'00,46,4690', N'陵水黎族自治县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469028', N'陵水黎族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'469029', N'4690', N'00,46,4690', N'保亭黎族苗族自治县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469029', N'保亭黎族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'469030', N'4690', N'00,46,4690', N'琼中黎族苗族自治县', N'46', N'海南省', N'4690', N'省直辖县级行政区', N'469030', N'琼中黎族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'50', N'00', N'00', N'重庆市', N'50', N'重庆市', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'5001', N'50', N'00,50', N'重庆市', N'50', N'重庆市', N'5001', N'重庆市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'500101', N'5001', N'00,50,5001', N'万州区', N'50', N'重庆市', N'5001', N'重庆市', N'500101', N'万州区', N'', N'', N'', N'', N'3', N'1', N''), (N'500102', N'5001', N'00,50,5001', N'涪陵区', N'50', N'重庆市', N'5001', N'重庆市', N'500102', N'涪陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'500103', N'5001', N'00,50,5001', N'渝中区', N'50', N'重庆市', N'5001', N'重庆市', N'500103', N'渝中区', N'', N'', N'', N'', N'3', N'1', N''), (N'500104', N'5001', N'00,50,5001', N'大渡口区', N'50', N'重庆市', N'5001', N'重庆市', N'500104', N'大渡口区', N'', N'', N'', N'', N'3', N'1', N''), (N'500105', N'5001', N'00,50,5001', N'江北区', N'50', N'重庆市', N'5001', N'重庆市', N'500105', N'江北区', N'', N'', N'', N'', N'3', N'1', N''), (N'500106', N'5001', N'00,50,5001', N'沙坪坝区', N'50', N'重庆市', N'5001', N'重庆市', N'500106', N'沙坪坝区', N'', N'', N'', N'', N'3', N'1', N''), (N'500107', N'5001', N'00,50,5001', N'九龙坡区', N'50', N'重庆市', N'5001', N'重庆市', N'500107', N'九龙坡区', N'', N'', N'', N'', N'3', N'1', N''), (N'500108', N'5001', N'00,50,5001', N'南岸区', N'50', N'重庆市', N'5001', N'重庆市', N'500108', N'南岸区', N'', N'', N'', N'', N'3', N'1', N''), (N'500109', N'5001', N'00,50,5001', N'北碚区', N'50', N'重庆市', N'5001', N'重庆市', N'500109', N'北碚区', N'', N'', N'', N'', N'3', N'1', N''), (N'500110', N'5001', N'00,50,5001', N'綦江区', N'50', N'重庆市', N'5001', N'重庆市', N'500110', N'綦江区', N'', N'', N'', N'', N'3', N'1', N''), (N'500111', N'5001', N'00,50,5001', N'大足区', N'50', N'重庆市', N'5001', N'重庆市', N'500111', N'大足区', N'', N'', N'', N'', N'3', N'1', N''), (N'500112', N'5001', N'00,50,5001', N'渝北区', N'50', N'重庆市', N'5001', N'重庆市', N'500112', N'渝北区', N'', N'', N'', N'', N'3', N'1', N''), (N'500113', N'5001', N'00,50,5001', N'巴南区', N'50', N'重庆市', N'5001', N'重庆市', N'500113', N'巴南区', N'', N'', N'', N'', N'3', N'1', N''), (N'500114', N'5001', N'00,50,5001', N'黔江区', N'50', N'重庆市', N'5001', N'重庆市', N'500114', N'黔江区', N'', N'', N'', N'', N'3', N'1', N''), (N'500115', N'5001', N'00,50,5001', N'长寿区', N'50', N'重庆市', N'5001', N'重庆市', N'500115', N'长寿区', N'', N'', N'', N'', N'3', N'1', N''), (N'500116', N'5001', N'00,50,5001', N'江津区', N'50', N'重庆市', N'5001', N'重庆市', N'500116', N'江津区', N'', N'', N'', N'', N'3', N'1', N''), (N'500117', N'5001', N'00,50,5001', N'合川区', N'50', N'重庆市', N'5001', N'重庆市', N'500117', N'合川区', N'', N'', N'', N'', N'3', N'1', N''), (N'500118', N'5001', N'00,50,5001', N'永川区', N'50', N'重庆市', N'5001', N'重庆市', N'500118', N'永川区', N'', N'', N'', N'', N'3', N'1', N''), (N'500119', N'5001', N'00,50,5001', N'南川区', N'50', N'重庆市', N'5001', N'重庆市', N'500119', N'南川区', N'', N'', N'', N'', N'3', N'1', N''), (N'500120', N'5001', N'00,50,5001', N'璧山区', N'50', N'重庆市', N'5001', N'重庆市', N'500120', N'璧山区', N'', N'', N'', N'', N'3', N'1', N''), (N'500151', N'5001', N'00,50,5001', N'铜梁区', N'50', N'重庆市', N'5001', N'重庆市', N'500151', N'铜梁区', N'', N'', N'', N'', N'3', N'1', N''), (N'500152', N'5001', N'00,50,5001', N'潼南区', N'50', N'重庆市', N'5001', N'重庆市', N'500152', N'潼南区', N'', N'', N'', N'', N'3', N'1', N''), (N'500153', N'5001', N'00,50,5001', N'荣昌区', N'50', N'重庆市', N'5001', N'重庆市', N'500153', N'荣昌区', N'', N'', N'', N'', N'3', N'1', N''), (N'500154', N'5001', N'00,50,5001', N'开州区', N'50', N'重庆市', N'5001', N'重庆市', N'500154', N'开州区', N'', N'', N'', N'', N'3', N'1', N''), (N'500155', N'5001', N'00,50,5001', N'梁平区', N'50', N'重庆市', N'5001', N'重庆市', N'500155', N'梁平区', N'', N'', N'', N'', N'3', N'1', N''), (N'500156', N'5001', N'00,50,5001', N'武隆区', N'50', N'重庆市', N'5001', N'重庆市', N'500156', N'武隆区', N'', N'', N'', N'', N'3', N'1', N''), (N'5002', N'50', N'00,50', N'重庆市', N'50', N'重庆市', N'5002', N'重庆市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'500229', N'5002', N'00,50,5002', N'城口县', N'50', N'重庆市', N'5002', N'重庆市', N'500229', N'城口县', N'', N'', N'', N'', N'3', N'1', N''), (N'500230', N'5002', N'00,50,5002', N'丰都县', N'50', N'重庆市', N'5002', N'重庆市', N'500230', N'丰都县', N'', N'', N'', N'', N'3', N'1', N''), (N'500231', N'5002', N'00,50,5002', N'垫江县', N'50', N'重庆市', N'5002', N'重庆市', N'500231', N'垫江县', N'', N'', N'', N'', N'3', N'1', N''), (N'500233', N'5002', N'00,50,5002', N'忠县', N'50', N'重庆市', N'5002', N'重庆市', N'500233', N'忠县', N'', N'', N'', N'', N'3', N'1', N''), (N'500235', N'5002', N'00,50,5002', N'云阳县', N'50', N'重庆市', N'5002', N'重庆市', N'500235', N'云阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'500236', N'5002', N'00,50,5002', N'奉节县', N'50', N'重庆市', N'5002', N'重庆市', N'500236', N'奉节县', N'', N'', N'', N'', N'3', N'1', N''), (N'500237', N'5002', N'00,50,5002', N'巫山县', N'50', N'重庆市', N'5002', N'重庆市', N'500237', N'巫山县', N'', N'', N'', N'', N'3', N'1', N''), (N'500238', N'5002', N'00,50,5002', N'巫溪县', N'50', N'重庆市', N'5002', N'重庆市', N'500238', N'巫溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'500240', N'5002', N'00,50,5002', N'石柱土家族自治县', N'50', N'重庆市', N'5002', N'重庆市', N'500240', N'石柱土家族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'500241', N'5002', N'00,50,5002', N'秀山土家族苗族自治县', N'50', N'重庆市', N'5002', N'重庆市', N'500241', N'秀山土家族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'500242', N'5002', N'00,50,5002', N'酉阳土家族苗族自治县', N'50', N'重庆市', N'5002', N'重庆市', N'500242', N'酉阳土家族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'500243', N'5002', N'00,50,5002', N'彭水苗族土家族自治县', N'50', N'重庆市', N'5002', N'重庆市', N'500243', N'彭水苗族土家族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'51', N'00', N'00', N'四川省', N'51', N'四川省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'5101', N'51', N'00,51', N'成都市', N'51', N'四川省', N'5101', N'成都市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510104', N'5101', N'00,51,5101', N'锦江区', N'51', N'四川省', N'5101', N'成都市', N'510104', N'锦江区', N'', N'', N'', N'', N'3', N'1', N''), (N'510105', N'5101', N'00,51,5101', N'青羊区', N'51', N'四川省', N'5101', N'成都市', N'510105', N'青羊区', N'', N'', N'', N'', N'3', N'1', N''), (N'510106', N'5101', N'00,51,5101', N'金牛区', N'51', N'四川省', N'5101', N'成都市', N'510106', N'金牛区', N'', N'', N'', N'', N'3', N'1', N''), (N'510107', N'5101', N'00,51,5101', N'武侯区', N'51', N'四川省', N'5101', N'成都市', N'510107', N'武侯区', N'', N'', N'', N'', N'3', N'1', N''), (N'510108', N'5101', N'00,51,5101', N'成华区', N'51', N'四川省', N'5101', N'成都市', N'510108', N'成华区', N'', N'', N'', N'', N'3', N'1', N''), (N'510112', N'5101', N'00,51,5101', N'龙泉驿区', N'51', N'四川省', N'5101', N'成都市', N'510112', N'龙泉驿区', N'', N'', N'', N'', N'3', N'1', N''), (N'510113', N'5101', N'00,51,5101', N'青白江区', N'51', N'四川省', N'5101', N'成都市', N'510113', N'青白江区', N'', N'', N'', N'', N'3', N'1', N''), (N'510114', N'5101', N'00,51,5101', N'新都区', N'51', N'四川省', N'5101', N'成都市', N'510114', N'新都区', N'', N'', N'', N'', N'3', N'1', N''), (N'510115', N'5101', N'00,51,5101', N'温江区', N'51', N'四川省', N'5101', N'成都市', N'510115', N'温江区', N'', N'', N'', N'', N'3', N'1', N''), (N'510116', N'5101', N'00,51,5101', N'双流区', N'51', N'四川省', N'5101', N'成都市', N'510116', N'双流区', N'', N'', N'', N'', N'3', N'1', N''), (N'510117', N'5101', N'00,51,5101', N'郫都区', N'51', N'四川省', N'5101', N'成都市', N'510117', N'郫都区', N'', N'', N'', N'', N'3', N'1', N''), (N'510121', N'5101', N'00,51,5101', N'金堂县', N'51', N'四川省', N'5101', N'成都市', N'510121', N'金堂县', N'', N'', N'', N'', N'3', N'1', N''), (N'510129', N'5101', N'00,51,5101', N'大邑县', N'51', N'四川省', N'5101', N'成都市', N'510129', N'大邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'510131', N'5101', N'00,51,5101', N'蒲江县', N'51', N'四川省', N'5101', N'成都市', N'510131', N'蒲江县', N'', N'', N'', N'', N'3', N'1', N''), (N'510132', N'5101', N'00,51,5101', N'新津县', N'51', N'四川省', N'5101', N'成都市', N'510132', N'新津县', N'', N'', N'', N'', N'3', N'1', N''), (N'510181', N'5101', N'00,51,5101', N'都江堰市', N'51', N'四川省', N'5101', N'成都市', N'510181', N'都江堰市', N'', N'', N'', N'', N'3', N'1', N''), (N'510182', N'5101', N'00,51,5101', N'彭州市', N'51', N'四川省', N'5101', N'成都市', N'510182', N'彭州市', N'', N'', N'', N'', N'3', N'1', N''), (N'510183', N'5101', N'00,51,5101', N'邛崃市', N'51', N'四川省', N'5101', N'成都市', N'510183', N'邛崃市', N'', N'', N'', N'', N'3', N'1', N''), (N'510184', N'5101', N'00,51,5101', N'崇州市', N'51', N'四川省', N'5101', N'成都市', N'510184', N'崇州市', N'', N'', N'', N'', N'3', N'1', N''), (N'510185', N'5101', N'00,51,5101', N'简阳市', N'51', N'四川省', N'5101', N'成都市', N'510185', N'简阳市', N'', N'', N'', N'', N'3', N'1', N''), (N'5103', N'51', N'00,51', N'自贡市', N'51', N'四川省', N'5103', N'自贡市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510302', N'5103', N'00,51,5103', N'自流井区', N'51', N'四川省', N'5103', N'自贡市', N'510302', N'自流井区', N'', N'', N'', N'', N'3', N'1', N''), (N'510303', N'5103', N'00,51,5103', N'贡井区', N'51', N'四川省', N'5103', N'自贡市', N'510303', N'贡井区', N'', N'', N'', N'', N'3', N'1', N''), (N'510304', N'5103', N'00,51,5103', N'大安区', N'51', N'四川省', N'5103', N'自贡市', N'510304', N'大安区', N'', N'', N'', N'', N'3', N'1', N''), (N'510311', N'5103', N'00,51,5103', N'沿滩区', N'51', N'四川省', N'5103', N'自贡市', N'510311', N'沿滩区', N'', N'', N'', N'', N'3', N'1', N''), (N'510321', N'5103', N'00,51,5103', N'荣县', N'51', N'四川省', N'5103', N'自贡市', N'510321', N'荣县', N'', N'', N'', N'', N'3', N'1', N''), (N'510322', N'5103', N'00,51,5103', N'富顺县', N'51', N'四川省', N'5103', N'自贡市', N'510322', N'富顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'5104', N'51', N'00,51', N'攀枝花市', N'51', N'四川省', N'5104', N'攀枝花市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510402', N'5104', N'00,51,5104', N'东区', N'51', N'四川省', N'5104', N'攀枝花市', N'510402', N'东区', N'', N'', N'', N'', N'3', N'1', N''), (N'510403', N'5104', N'00,51,5104', N'西区', N'51', N'四川省', N'5104', N'攀枝花市', N'510403', N'西区', N'', N'', N'', N'', N'3', N'1', N''), (N'510411', N'5104', N'00,51,5104', N'仁和区', N'51', N'四川省', N'5104', N'攀枝花市', N'510411', N'仁和区', N'', N'', N'', N'', N'3', N'1', N''), (N'510421', N'5104', N'00,51,5104', N'米易县', N'51', N'四川省', N'5104', N'攀枝花市', N'510421', N'米易县', N'', N'', N'', N'', N'3', N'1', N''), (N'510422', N'5104', N'00,51,5104', N'盐边县', N'51', N'四川省', N'5104', N'攀枝花市', N'510422', N'盐边县', N'', N'', N'', N'', N'3', N'1', N''), (N'5105', N'51', N'00,51', N'泸州市', N'51', N'四川省', N'5105', N'泸州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510502', N'5105', N'00,51,5105', N'江阳区', N'51', N'四川省', N'5105', N'泸州市', N'510502', N'江阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'510503', N'5105', N'00,51,5105', N'纳溪区', N'51', N'四川省', N'5105', N'泸州市', N'510503', N'纳溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'510504', N'5105', N'00,51,5105', N'龙马潭区', N'51', N'四川省', N'5105', N'泸州市', N'510504', N'龙马潭区', N'', N'', N'', N'', N'3', N'1', N''), (N'510521', N'5105', N'00,51,5105', N'泸县', N'51', N'四川省', N'5105', N'泸州市', N'510521', N'泸县', N'', N'', N'', N'', N'3', N'1', N''), (N'510522', N'5105', N'00,51,5105', N'合江县', N'51', N'四川省', N'5105', N'泸州市', N'510522', N'合江县', N'', N'', N'', N'', N'3', N'1', N''), (N'510524', N'5105', N'00,51,5105', N'叙永县', N'51', N'四川省', N'5105', N'泸州市', N'510524', N'叙永县', N'', N'', N'', N'', N'3', N'1', N''), (N'510525', N'5105', N'00,51,5105', N'古蔺县', N'51', N'四川省', N'5105', N'泸州市', N'510525', N'古蔺县', N'', N'', N'', N'', N'3', N'1', N''), (N'5106', N'51', N'00,51', N'德阳市', N'51', N'四川省', N'5106', N'德阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510603', N'5106', N'00,51,5106', N'旌阳区', N'51', N'四川省', N'5106', N'德阳市', N'510603', N'旌阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'510604', N'5106', N'00,51,5106', N'罗江区', N'51', N'四川省', N'5106', N'德阳市', N'510604', N'罗江区', N'', N'', N'', N'', N'3', N'1', N''), (N'510623', N'5106', N'00,51,5106', N'中江县', N'51', N'四川省', N'5106', N'德阳市', N'510623', N'中江县', N'', N'', N'', N'', N'3', N'1', N''), (N'510681', N'5106', N'00,51,5106', N'广汉市', N'51', N'四川省', N'5106', N'德阳市', N'510681', N'广汉市', N'', N'', N'', N'', N'3', N'1', N''), (N'510682', N'5106', N'00,51,5106', N'什邡市', N'51', N'四川省', N'5106', N'德阳市', N'510682', N'什邡市', N'', N'', N'', N'', N'3', N'1', N''), (N'510683', N'5106', N'00,51,5106', N'绵竹市', N'51', N'四川省', N'5106', N'德阳市', N'510683', N'绵竹市', N'', N'', N'', N'', N'3', N'1', N''), (N'5107', N'51', N'00,51', N'绵阳市', N'51', N'四川省', N'5107', N'绵阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510703', N'5107', N'00,51,5107', N'涪城区', N'51', N'四川省', N'5107', N'绵阳市', N'510703', N'涪城区', N'', N'', N'', N'', N'3', N'1', N''), (N'510704', N'5107', N'00,51,5107', N'游仙区', N'51', N'四川省', N'5107', N'绵阳市', N'510704', N'游仙区', N'', N'', N'', N'', N'3', N'1', N''), (N'510705', N'5107', N'00,51,5107', N'安州区', N'51', N'四川省', N'5107', N'绵阳市', N'510705', N'安州区', N'', N'', N'', N'', N'3', N'1', N''), (N'510722', N'5107', N'00,51,5107', N'三台县', N'51', N'四川省', N'5107', N'绵阳市', N'510722', N'三台县', N'', N'', N'', N'', N'3', N'1', N''), (N'510723', N'5107', N'00,51,5107', N'盐亭县', N'51', N'四川省', N'5107', N'绵阳市', N'510723', N'盐亭县', N'', N'', N'', N'', N'3', N'1', N''), (N'510725', N'5107', N'00,51,5107', N'梓潼县', N'51', N'四川省', N'5107', N'绵阳市', N'510725', N'梓潼县', N'', N'', N'', N'', N'3', N'1', N''), (N'510726', N'5107', N'00,51,5107', N'北川羌族自治县', N'51', N'四川省', N'5107', N'绵阳市', N'510726', N'北川羌族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'510727', N'5107', N'00,51,5107', N'平武县', N'51', N'四川省', N'5107', N'绵阳市', N'510727', N'平武县', N'', N'', N'', N'', N'3', N'1', N''), (N'510781', N'5107', N'00,51,5107', N'江油市', N'51', N'四川省', N'5107', N'绵阳市', N'510781', N'江油市', N'', N'', N'', N'', N'3', N'1', N''), (N'5108', N'51', N'00,51', N'广元市', N'51', N'四川省', N'5108', N'广元市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510802', N'5108', N'00,51,5108', N'利州区', N'51', N'四川省', N'5108', N'广元市', N'510802', N'利州区', N'', N'', N'', N'', N'3', N'1', N''), (N'510811', N'5108', N'00,51,5108', N'昭化区', N'51', N'四川省', N'5108', N'广元市', N'510811', N'昭化区', N'', N'', N'', N'', N'3', N'1', N''), (N'510812', N'5108', N'00,51,5108', N'朝天区', N'51', N'四川省', N'5108', N'广元市', N'510812', N'朝天区', N'', N'', N'', N'', N'3', N'1', N''), (N'510821', N'5108', N'00,51,5108', N'旺苍县', N'51', N'四川省', N'5108', N'广元市', N'510821', N'旺苍县', N'', N'', N'', N'', N'3', N'1', N''), (N'510822', N'5108', N'00,51,5108', N'青川县', N'51', N'四川省', N'5108', N'广元市', N'510822', N'青川县', N'', N'', N'', N'', N'3', N'1', N''), (N'510823', N'5108', N'00,51,5108', N'剑阁县', N'51', N'四川省', N'5108', N'广元市', N'510823', N'剑阁县', N'', N'', N'', N'', N'3', N'1', N''), (N'510824', N'5108', N'00,51,5108', N'苍溪县', N'51', N'四川省', N'5108', N'广元市', N'510824', N'苍溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'5109', N'51', N'00,51', N'遂宁市', N'51', N'四川省', N'5109', N'遂宁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'510903', N'5109', N'00,51,5109', N'船山区', N'51', N'四川省', N'5109', N'遂宁市', N'510903', N'船山区', N'', N'', N'', N'', N'3', N'1', N''), (N'510904', N'5109', N'00,51,5109', N'安居区', N'51', N'四川省', N'5109', N'遂宁市', N'510904', N'安居区', N'', N'', N'', N'', N'3', N'1', N''), (N'510921', N'5109', N'00,51,5109', N'蓬溪县', N'51', N'四川省', N'5109', N'遂宁市', N'510921', N'蓬溪县', N'', N'', N'', N'', N'3', N'1', N''), (N'510923', N'5109', N'00,51,5109', N'大英县', N'51', N'四川省', N'5109', N'遂宁市', N'510923', N'大英县', N'', N'', N'', N'', N'3', N'1', N''), (N'510981', N'5109', N'00,51,5109', N'射洪市', N'51', N'四川省', N'5109', N'遂宁市', N'510981', N'射洪市', N'', N'', N'', N'', N'3', N'1', N''), (N'5110', N'51', N'00,51', N'内江市', N'51', N'四川省', N'5110', N'内江市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511002', N'5110', N'00,51,5110', N'市中区', N'51', N'四川省', N'5110', N'内江市', N'511002', N'市中区', N'', N'', N'', N'', N'3', N'1', N''), (N'511011', N'5110', N'00,51,5110', N'东兴区', N'51', N'四川省', N'5110', N'内江市', N'511011', N'东兴区', N'', N'', N'', N'', N'3', N'1', N''), (N'511024', N'5110', N'00,51,5110', N'威远县', N'51', N'四川省', N'5110', N'内江市', N'511024', N'威远县', N'', N'', N'', N'', N'3', N'1', N''), (N'511025', N'5110', N'00,51,5110', N'资中县', N'51', N'四川省', N'5110', N'内江市', N'511025', N'资中县', N'', N'', N'', N'', N'3', N'1', N''), (N'511083', N'5110', N'00,51,5110', N'隆昌市', N'51', N'四川省', N'5110', N'内江市', N'511083', N'隆昌市', N'', N'', N'', N'', N'3', N'1', N''), (N'5111', N'51', N'00,51', N'乐山市', N'51', N'四川省', N'5111', N'乐山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511102', N'5111', N'00,51,5111', N'市中区', N'51', N'四川省', N'5111', N'乐山市', N'511102', N'市中区', N'', N'', N'', N'', N'3', N'1', N''), (N'511111', N'5111', N'00,51,5111', N'沙湾区', N'51', N'四川省', N'5111', N'乐山市', N'511111', N'沙湾区', N'', N'', N'', N'', N'3', N'1', N''), (N'511112', N'5111', N'00,51,5111', N'五通桥区', N'51', N'四川省', N'5111', N'乐山市', N'511112', N'五通桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'511113', N'5111', N'00,51,5111', N'金口河区', N'51', N'四川省', N'5111', N'乐山市', N'511113', N'金口河区', N'', N'', N'', N'', N'3', N'1', N''), (N'511123', N'5111', N'00,51,5111', N'犍为县', N'51', N'四川省', N'5111', N'乐山市', N'511123', N'犍为县', N'', N'', N'', N'', N'3', N'1', N''), (N'511124', N'5111', N'00,51,5111', N'井研县', N'51', N'四川省', N'5111', N'乐山市', N'511124', N'井研县', N'', N'', N'', N'', N'3', N'1', N''), (N'511126', N'5111', N'00,51,5111', N'夹江县', N'51', N'四川省', N'5111', N'乐山市', N'511126', N'夹江县', N'', N'', N'', N'', N'3', N'1', N''), (N'511129', N'5111', N'00,51,5111', N'沐川县', N'51', N'四川省', N'5111', N'乐山市', N'511129', N'沐川县', N'', N'', N'', N'', N'3', N'1', N''), (N'511132', N'5111', N'00,51,5111', N'峨边彝族自治县', N'51', N'四川省', N'5111', N'乐山市', N'511132', N'峨边彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'511133', N'5111', N'00,51,5111', N'马边彝族自治县', N'51', N'四川省', N'5111', N'乐山市', N'511133', N'马边彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'511181', N'5111', N'00,51,5111', N'峨眉山市', N'51', N'四川省', N'5111', N'乐山市', N'511181', N'峨眉山市', N'', N'', N'', N'', N'3', N'1', N''), (N'5113', N'51', N'00,51', N'南充市', N'51', N'四川省', N'5113', N'南充市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511302', N'5113', N'00,51,5113', N'顺庆区', N'51', N'四川省', N'5113', N'南充市', N'511302', N'顺庆区', N'', N'', N'', N'', N'3', N'1', N''), (N'511303', N'5113', N'00,51,5113', N'高坪区', N'51', N'四川省', N'5113', N'南充市', N'511303', N'高坪区', N'', N'', N'', N'', N'3', N'1', N''), (N'511304', N'5113', N'00,51,5113', N'嘉陵区', N'51', N'四川省', N'5113', N'南充市', N'511304', N'嘉陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'511321', N'5113', N'00,51,5113', N'南部县', N'51', N'四川省', N'5113', N'南充市', N'511321', N'南部县', N'', N'', N'', N'', N'3', N'1', N''), (N'511322', N'5113', N'00,51,5113', N'营山县', N'51', N'四川省', N'5113', N'南充市', N'511322', N'营山县', N'', N'', N'', N'', N'3', N'1', N''), (N'511323', N'5113', N'00,51,5113', N'蓬安县', N'51', N'四川省', N'5113', N'南充市', N'511323', N'蓬安县', N'', N'', N'', N'', N'3', N'1', N''), (N'511324', N'5113', N'00,51,5113', N'仪陇县', N'51', N'四川省', N'5113', N'南充市', N'511324', N'仪陇县', N'', N'', N'', N'', N'3', N'1', N''), (N'511325', N'5113', N'00,51,5113', N'西充县', N'51', N'四川省', N'5113', N'南充市', N'511325', N'西充县', N'', N'', N'', N'', N'3', N'1', N''), (N'511381', N'5113', N'00,51,5113', N'阆中市', N'51', N'四川省', N'5113', N'南充市', N'511381', N'阆中市', N'', N'', N'', N'', N'3', N'1', N''), (N'5114', N'51', N'00,51', N'眉山市', N'51', N'四川省', N'5114', N'眉山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511402', N'5114', N'00,51,5114', N'东坡区', N'51', N'四川省', N'5114', N'眉山市', N'511402', N'东坡区', N'', N'', N'', N'', N'3', N'1', N''), (N'511403', N'5114', N'00,51,5114', N'彭山区', N'51', N'四川省', N'5114', N'眉山市', N'511403', N'彭山区', N'', N'', N'', N'', N'3', N'1', N''), (N'511421', N'5114', N'00,51,5114', N'仁寿县', N'51', N'四川省', N'5114', N'眉山市', N'511421', N'仁寿县', N'', N'', N'', N'', N'3', N'1', N''), (N'511423', N'5114', N'00,51,5114', N'洪雅县', N'51', N'四川省', N'5114', N'眉山市', N'511423', N'洪雅县', N'', N'', N'', N'', N'3', N'1', N''), (N'511424', N'5114', N'00,51,5114', N'丹棱县', N'51', N'四川省', N'5114', N'眉山市', N'511424', N'丹棱县', N'', N'', N'', N'', N'3', N'1', N''), (N'511425', N'5114', N'00,51,5114', N'青神县', N'51', N'四川省', N'5114', N'眉山市', N'511425', N'青神县', N'', N'', N'', N'', N'3', N'1', N''), (N'5115', N'51', N'00,51', N'宜宾市', N'51', N'四川省', N'5115', N'宜宾市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511502', N'5115', N'00,51,5115', N'翠屏区', N'51', N'四川省', N'5115', N'宜宾市', N'511502', N'翠屏区', N'', N'', N'', N'', N'3', N'1', N''), (N'511503', N'5115', N'00,51,5115', N'南溪区', N'51', N'四川省', N'5115', N'宜宾市', N'511503', N'南溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'511504', N'5115', N'00,51,5115', N'叙州区', N'51', N'四川省', N'5115', N'宜宾市', N'511504', N'叙州区', N'', N'', N'', N'', N'3', N'1', N''), (N'511523', N'5115', N'00,51,5115', N'江安县', N'51', N'四川省', N'5115', N'宜宾市', N'511523', N'江安县', N'', N'', N'', N'', N'3', N'1', N''), (N'511524', N'5115', N'00,51,5115', N'长宁县', N'51', N'四川省', N'5115', N'宜宾市', N'511524', N'长宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'511525', N'5115', N'00,51,5115', N'高县', N'51', N'四川省', N'5115', N'宜宾市', N'511525', N'高县', N'', N'', N'', N'', N'3', N'1', N''), (N'511526', N'5115', N'00,51,5115', N'珙县', N'51', N'四川省', N'5115', N'宜宾市', N'511526', N'珙县', N'', N'', N'', N'', N'3', N'1', N''), (N'511527', N'5115', N'00,51,5115', N'筠连县', N'51', N'四川省', N'5115', N'宜宾市', N'511527', N'筠连县', N'', N'', N'', N'', N'3', N'1', N''), (N'511528', N'5115', N'00,51,5115', N'兴文县', N'51', N'四川省', N'5115', N'宜宾市', N'511528', N'兴文县', N'', N'', N'', N'', N'3', N'1', N''), (N'511529', N'5115', N'00,51,5115', N'屏山县', N'51', N'四川省', N'5115', N'宜宾市', N'511529', N'屏山县', N'', N'', N'', N'', N'3', N'1', N''), (N'5116', N'51', N'00,51', N'广安市', N'51', N'四川省', N'5116', N'广安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511602', N'5116', N'00,51,5116', N'广安区', N'51', N'四川省', N'5116', N'广安市', N'511602', N'广安区', N'', N'', N'', N'', N'3', N'1', N''), (N'511603', N'5116', N'00,51,5116', N'前锋区', N'51', N'四川省', N'5116', N'广安市', N'511603', N'前锋区', N'', N'', N'', N'', N'3', N'1', N''), (N'511621', N'5116', N'00,51,5116', N'岳池县', N'51', N'四川省', N'5116', N'广安市', N'511621', N'岳池县', N'', N'', N'', N'', N'3', N'1', N''), (N'511622', N'5116', N'00,51,5116', N'武胜县', N'51', N'四川省', N'5116', N'广安市', N'511622', N'武胜县', N'', N'', N'', N'', N'3', N'1', N''), (N'511623', N'5116', N'00,51,5116', N'邻水县', N'51', N'四川省', N'5116', N'广安市', N'511623', N'邻水县', N'', N'', N'', N'', N'3', N'1', N''), (N'511681', N'5116', N'00,51,5116', N'华蓥市', N'51', N'四川省', N'5116', N'广安市', N'511681', N'华蓥市', N'', N'', N'', N'', N'3', N'1', N''), (N'5117', N'51', N'00,51', N'达州市', N'51', N'四川省', N'5117', N'达州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511702', N'5117', N'00,51,5117', N'通川区', N'51', N'四川省', N'5117', N'达州市', N'511702', N'通川区', N'', N'', N'', N'', N'3', N'1', N''), (N'511703', N'5117', N'00,51,5117', N'达川区', N'51', N'四川省', N'5117', N'达州市', N'511703', N'达川区', N'', N'', N'', N'', N'3', N'1', N''), (N'511722', N'5117', N'00,51,5117', N'宣汉县', N'51', N'四川省', N'5117', N'达州市', N'511722', N'宣汉县', N'', N'', N'', N'', N'3', N'1', N''), (N'511723', N'5117', N'00,51,5117', N'开江县', N'51', N'四川省', N'5117', N'达州市', N'511723', N'开江县', N'', N'', N'', N'', N'3', N'1', N''), (N'511724', N'5117', N'00,51,5117', N'大竹县', N'51', N'四川省', N'5117', N'达州市', N'511724', N'大竹县', N'', N'', N'', N'', N'3', N'1', N''), (N'511725', N'5117', N'00,51,5117', N'渠县', N'51', N'四川省', N'5117', N'达州市', N'511725', N'渠县', N'', N'', N'', N'', N'3', N'1', N''), (N'511781', N'5117', N'00,51,5117', N'万源市', N'51', N'四川省', N'5117', N'达州市', N'511781', N'万源市', N'', N'', N'', N'', N'3', N'1', N''), (N'5118', N'51', N'00,51', N'雅安市', N'51', N'四川省', N'5118', N'雅安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511802', N'5118', N'00,51,5118', N'雨城区', N'51', N'四川省', N'5118', N'雅安市', N'511802', N'雨城区', N'', N'', N'', N'', N'3', N'1', N''), (N'511803', N'5118', N'00,51,5118', N'名山区', N'51', N'四川省', N'5118', N'雅安市', N'511803', N'名山区', N'', N'', N'', N'', N'3', N'1', N''), (N'511822', N'5118', N'00,51,5118', N'荥经县', N'51', N'四川省', N'5118', N'雅安市', N'511822', N'荥经县', N'', N'', N'', N'', N'3', N'1', N''), (N'511823', N'5118', N'00,51,5118', N'汉源县', N'51', N'四川省', N'5118', N'雅安市', N'511823', N'汉源县', N'', N'', N'', N'', N'3', N'1', N''), (N'511824', N'5118', N'00,51,5118', N'石棉县', N'51', N'四川省', N'5118', N'雅安市', N'511824', N'石棉县', N'', N'', N'', N'', N'3', N'1', N''), (N'511825', N'5118', N'00,51,5118', N'天全县', N'51', N'四川省', N'5118', N'雅安市', N'511825', N'天全县', N'', N'', N'', N'', N'3', N'1', N''), (N'511826', N'5118', N'00,51,5118', N'芦山县', N'51', N'四川省', N'5118', N'雅安市', N'511826', N'芦山县', N'', N'', N'', N'', N'3', N'1', N''), (N'511827', N'5118', N'00,51,5118', N'宝兴县', N'51', N'四川省', N'5118', N'雅安市', N'511827', N'宝兴县', N'', N'', N'', N'', N'3', N'1', N''), (N'5119', N'51', N'00,51', N'巴中市', N'51', N'四川省', N'5119', N'巴中市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'511902', N'5119', N'00,51,5119', N'巴州区', N'51', N'四川省', N'5119', N'巴中市', N'511902', N'巴州区', N'', N'', N'', N'', N'3', N'1', N''), (N'511903', N'5119', N'00,51,5119', N'恩阳区', N'51', N'四川省', N'5119', N'巴中市', N'511903', N'恩阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'511921', N'5119', N'00,51,5119', N'通江县', N'51', N'四川省', N'5119', N'巴中市', N'511921', N'通江县', N'', N'', N'', N'', N'3', N'1', N''), (N'511922', N'5119', N'00,51,5119', N'南江县', N'51', N'四川省', N'5119', N'巴中市', N'511922', N'南江县', N'', N'', N'', N'', N'3', N'1', N''), (N'511923', N'5119', N'00,51,5119', N'平昌县', N'51', N'四川省', N'5119', N'巴中市', N'511923', N'平昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'5120', N'51', N'00,51', N'资阳市', N'51', N'四川省', N'5120', N'资阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'512002', N'5120', N'00,51,5120', N'雁江区', N'51', N'四川省', N'5120', N'资阳市', N'512002', N'雁江区', N'', N'', N'', N'', N'3', N'1', N''), (N'512021', N'5120', N'00,51,5120', N'安岳县', N'51', N'四川省', N'5120', N'资阳市', N'512021', N'安岳县', N'', N'', N'', N'', N'3', N'1', N''), (N'512022', N'5120', N'00,51,5120', N'乐至县', N'51', N'四川省', N'5120', N'资阳市', N'512022', N'乐至县', N'', N'', N'', N'', N'3', N'1', N''), (N'5132', N'51', N'00,51', N'阿坝藏族羌族自治州', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'513201', N'5132', N'00,51,5132', N'马尔康市', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513201', N'马尔康市', N'', N'', N'', N'', N'3', N'1', N''), (N'513221', N'5132', N'00,51,5132', N'汶川县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513221', N'汶川县', N'', N'', N'', N'', N'3', N'1', N''), (N'513222', N'5132', N'00,51,5132', N'理县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513222', N'理县', N'', N'', N'', N'', N'3', N'1', N''), (N'513223', N'5132', N'00,51,5132', N'茂县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513223', N'茂县', N'', N'', N'', N'', N'3', N'1', N''), (N'513224', N'5132', N'00,51,5132', N'松潘县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513224', N'松潘县', N'', N'', N'', N'', N'3', N'1', N''), (N'513225', N'5132', N'00,51,5132', N'九寨沟县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513225', N'九寨沟县', N'', N'', N'', N'', N'3', N'1', N''), (N'513226', N'5132', N'00,51,5132', N'金川县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513226', N'金川县', N'', N'', N'', N'', N'3', N'1', N''), (N'513227', N'5132', N'00,51,5132', N'小金县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513227', N'小金县', N'', N'', N'', N'', N'3', N'1', N''), (N'513228', N'5132', N'00,51,5132', N'黑水县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513228', N'黑水县', N'', N'', N'', N'', N'3', N'1', N''), (N'513230', N'5132', N'00,51,5132', N'壤塘县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513230', N'壤塘县', N'', N'', N'', N'', N'3', N'1', N''), (N'513231', N'5132', N'00,51,5132', N'阿坝县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513231', N'阿坝县', N'', N'', N'', N'', N'3', N'1', N''), (N'513232', N'5132', N'00,51,5132', N'若尔盖县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513232', N'若尔盖县', N'', N'', N'', N'', N'3', N'1', N''), (N'513233', N'5132', N'00,51,5132', N'红原县', N'51', N'四川省', N'5132', N'阿坝藏族羌族自治州', N'513233', N'红原县', N'', N'', N'', N'', N'3', N'1', N''), (N'5133', N'51', N'00,51', N'甘孜藏族自治州', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'513301', N'5133', N'00,51,5133', N'康定市', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513301', N'康定市', N'', N'', N'', N'', N'3', N'1', N''), (N'513322', N'5133', N'00,51,5133', N'泸定县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513322', N'泸定县', N'', N'', N'', N'', N'3', N'1', N''), (N'513323', N'5133', N'00,51,5133', N'丹巴县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513323', N'丹巴县', N'', N'', N'', N'', N'3', N'1', N''), (N'513324', N'5133', N'00,51,5133', N'九龙县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513324', N'九龙县', N'', N'', N'', N'', N'3', N'1', N''), (N'513325', N'5133', N'00,51,5133', N'雅江县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513325', N'雅江县', N'', N'', N'', N'', N'3', N'1', N''), (N'513326', N'5133', N'00,51,5133', N'道孚县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513326', N'道孚县', N'', N'', N'', N'', N'3', N'1', N''), (N'513327', N'5133', N'00,51,5133', N'炉霍县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513327', N'炉霍县', N'', N'', N'', N'', N'3', N'1', N''), (N'513328', N'5133', N'00,51,5133', N'甘孜县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513328', N'甘孜县', N'', N'', N'', N'', N'3', N'1', N''), (N'513329', N'5133', N'00,51,5133', N'新龙县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513329', N'新龙县', N'', N'', N'', N'', N'3', N'1', N''), (N'513330', N'5133', N'00,51,5133', N'德格县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513330', N'德格县', N'', N'', N'', N'', N'3', N'1', N''), (N'513331', N'5133', N'00,51,5133', N'白玉县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513331', N'白玉县', N'', N'', N'', N'', N'3', N'1', N''), (N'513332', N'5133', N'00,51,5133', N'石渠县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513332', N'石渠县', N'', N'', N'', N'', N'3', N'1', N''), (N'513333', N'5133', N'00,51,5133', N'色达县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513333', N'色达县', N'', N'', N'', N'', N'3', N'1', N''), (N'513334', N'5133', N'00,51,5133', N'理塘县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513334', N'理塘县', N'', N'', N'', N'', N'3', N'1', N''), (N'513335', N'5133', N'00,51,5133', N'巴塘县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513335', N'巴塘县', N'', N'', N'', N'', N'3', N'1', N''), (N'513336', N'5133', N'00,51,5133', N'乡城县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513336', N'乡城县', N'', N'', N'', N'', N'3', N'1', N''), (N'513337', N'5133', N'00,51,5133', N'稻城县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513337', N'稻城县', N'', N'', N'', N'', N'3', N'1', N''), (N'513338', N'5133', N'00,51,5133', N'得荣县', N'51', N'四川省', N'5133', N'甘孜藏族自治州', N'513338', N'得荣县', N'', N'', N'', N'', N'3', N'1', N''), (N'5134', N'51', N'00,51', N'凉山彝族自治州', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'513401', N'5134', N'00,51,5134', N'西昌市', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513401', N'西昌市', N'', N'', N'', N'', N'3', N'1', N''), (N'513422', N'5134', N'00,51,5134', N'木里藏族自治县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513422', N'木里藏族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'513423', N'5134', N'00,51,5134', N'盐源县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513423', N'盐源县', N'', N'', N'', N'', N'3', N'1', N''), (N'513424', N'5134', N'00,51,5134', N'德昌县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513424', N'德昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'513425', N'5134', N'00,51,5134', N'会理县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513425', N'会理县', N'', N'', N'', N'', N'3', N'1', N''), (N'513426', N'5134', N'00,51,5134', N'会东县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513426', N'会东县', N'', N'', N'', N'', N'3', N'1', N''), (N'513427', N'5134', N'00,51,5134', N'宁南县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513427', N'宁南县', N'', N'', N'', N'', N'3', N'1', N''), (N'513428', N'5134', N'00,51,5134', N'普格县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513428', N'普格县', N'', N'', N'', N'', N'3', N'1', N''), (N'513429', N'5134', N'00,51,5134', N'布拖县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513429', N'布拖县', N'', N'', N'', N'', N'3', N'1', N''), (N'513430', N'5134', N'00,51,5134', N'金阳县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513430', N'金阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'513431', N'5134', N'00,51,5134', N'昭觉县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513431', N'昭觉县', N'', N'', N'', N'', N'3', N'1', N''), (N'513432', N'5134', N'00,51,5134', N'喜德县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513432', N'喜德县', N'', N'', N'', N'', N'3', N'1', N''), (N'513433', N'5134', N'00,51,5134', N'冕宁县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513433', N'冕宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'513434', N'5134', N'00,51,5134', N'越西县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513434', N'越西县', N'', N'', N'', N'', N'3', N'1', N''), (N'513435', N'5134', N'00,51,5134', N'甘洛县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513435', N'甘洛县', N'', N'', N'', N'', N'3', N'1', N''), (N'513436', N'5134', N'00,51,5134', N'美姑县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513436', N'美姑县', N'', N'', N'', N'', N'3', N'1', N''), (N'513437', N'5134', N'00,51,5134', N'雷波县', N'51', N'四川省', N'5134', N'凉山彝族自治州', N'513437', N'雷波县', N'', N'', N'', N'', N'3', N'1', N''), (N'52', N'00', N'00', N'贵州省', N'52', N'贵州省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'5201', N'52', N'00,52', N'贵阳市', N'52', N'贵州省', N'5201', N'贵阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'520102', N'5201', N'00,52,5201', N'南明区', N'52', N'贵州省', N'5201', N'贵阳市', N'520102', N'南明区', N'', N'', N'', N'', N'3', N'1', N''), (N'520103', N'5201', N'00,52,5201', N'云岩区', N'52', N'贵州省', N'5201', N'贵阳市', N'520103', N'云岩区', N'', N'', N'', N'', N'3', N'1', N''), (N'520111', N'5201', N'00,52,5201', N'花溪区', N'52', N'贵州省', N'5201', N'贵阳市', N'520111', N'花溪区', N'', N'', N'', N'', N'3', N'1', N''), (N'520112', N'5201', N'00,52,5201', N'乌当区', N'52', N'贵州省', N'5201', N'贵阳市', N'520112', N'乌当区', N'', N'', N'', N'', N'3', N'1', N''), (N'520113', N'5201', N'00,52,5201', N'白云区', N'52', N'贵州省', N'5201', N'贵阳市', N'520113', N'白云区', N'', N'', N'', N'', N'3', N'1', N''), (N'520115', N'5201', N'00,52,5201', N'观山湖区', N'52', N'贵州省', N'5201', N'贵阳市', N'520115', N'观山湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'520121', N'5201', N'00,52,5201', N'开阳县', N'52', N'贵州省', N'5201', N'贵阳市', N'520121', N'开阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'520122', N'5201', N'00,52,5201', N'息烽县', N'52', N'贵州省', N'5201', N'贵阳市', N'520122', N'息烽县', N'', N'', N'', N'', N'3', N'1', N''), (N'520123', N'5201', N'00,52,5201', N'修文县', N'52', N'贵州省', N'5201', N'贵阳市', N'520123', N'修文县', N'', N'', N'', N'', N'3', N'1', N''), (N'520181', N'5201', N'00,52,5201', N'清镇市', N'52', N'贵州省', N'5201', N'贵阳市', N'520181', N'清镇市', N'', N'', N'', N'', N'3', N'1', N''), (N'5202', N'52', N'00,52', N'六盘水市', N'52', N'贵州省', N'5202', N'六盘水市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'520201', N'5202', N'00,52,5202', N'钟山区', N'52', N'贵州省', N'5202', N'六盘水市', N'520201', N'钟山区', N'', N'', N'', N'', N'3', N'1', N''), (N'520203', N'5202', N'00,52,5202', N'六枝特区', N'52', N'贵州省', N'5202', N'六盘水市', N'520203', N'六枝特区', N'', N'', N'', N'', N'3', N'1', N''), (N'520221', N'5202', N'00,52,5202', N'水城县', N'52', N'贵州省', N'5202', N'六盘水市', N'520221', N'水城县', N'', N'', N'', N'', N'3', N'1', N''), (N'520281', N'5202', N'00,52,5202', N'盘州市', N'52', N'贵州省', N'5202', N'六盘水市', N'520281', N'盘州市', N'', N'', N'', N'', N'3', N'1', N''), (N'5203', N'52', N'00,52', N'遵义市', N'52', N'贵州省', N'5203', N'遵义市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'520302', N'5203', N'00,52,5203', N'红花岗区', N'52', N'贵州省', N'5203', N'遵义市', N'520302', N'红花岗区', N'', N'', N'', N'', N'3', N'1', N''), (N'520303', N'5203', N'00,52,5203', N'汇川区', N'52', N'贵州省', N'5203', N'遵义市', N'520303', N'汇川区', N'', N'', N'', N'', N'3', N'1', N''), (N'520304', N'5203', N'00,52,5203', N'播州区', N'52', N'贵州省', N'5203', N'遵义市', N'520304', N'播州区', N'', N'', N'', N'', N'3', N'1', N''), (N'520322', N'5203', N'00,52,5203', N'桐梓县', N'52', N'贵州省', N'5203', N'遵义市', N'520322', N'桐梓县', N'', N'', N'', N'', N'3', N'1', N''), (N'520323', N'5203', N'00,52,5203', N'绥阳县', N'52', N'贵州省', N'5203', N'遵义市', N'520323', N'绥阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'520324', N'5203', N'00,52,5203', N'正安县', N'52', N'贵州省', N'5203', N'遵义市', N'520324', N'正安县', N'', N'', N'', N'', N'3', N'1', N''), (N'520325', N'5203', N'00,52,5203', N'道真仡佬族苗族自治县', N'52', N'贵州省', N'5203', N'遵义市', N'520325', N'道真仡佬族苗族自治县', N'', N'', N'', N'', N'3', N'1', N'')
GO

INSERT INTO [dbo].[blade_region] VALUES (N'520326', N'5203', N'00,52,5203', N'务川仡佬族苗族自治县', N'52', N'贵州省', N'5203', N'遵义市', N'520326', N'务川仡佬族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'520327', N'5203', N'00,52,5203', N'凤冈县', N'52', N'贵州省', N'5203', N'遵义市', N'520327', N'凤冈县', N'', N'', N'', N'', N'3', N'1', N''), (N'520328', N'5203', N'00,52,5203', N'湄潭县', N'52', N'贵州省', N'5203', N'遵义市', N'520328', N'湄潭县', N'', N'', N'', N'', N'3', N'1', N''), (N'520329', N'5203', N'00,52,5203', N'余庆县', N'52', N'贵州省', N'5203', N'遵义市', N'520329', N'余庆县', N'', N'', N'', N'', N'3', N'1', N''), (N'520330', N'5203', N'00,52,5203', N'习水县', N'52', N'贵州省', N'5203', N'遵义市', N'520330', N'习水县', N'', N'', N'', N'', N'3', N'1', N''), (N'520381', N'5203', N'00,52,5203', N'赤水市', N'52', N'贵州省', N'5203', N'遵义市', N'520381', N'赤水市', N'', N'', N'', N'', N'3', N'1', N''), (N'520382', N'5203', N'00,52,5203', N'仁怀市', N'52', N'贵州省', N'5203', N'遵义市', N'520382', N'仁怀市', N'', N'', N'', N'', N'3', N'1', N''), (N'5204', N'52', N'00,52', N'安顺市', N'52', N'贵州省', N'5204', N'安顺市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'520402', N'5204', N'00,52,5204', N'西秀区', N'52', N'贵州省', N'5204', N'安顺市', N'520402', N'西秀区', N'', N'', N'', N'', N'3', N'1', N''), (N'520403', N'5204', N'00,52,5204', N'平坝区', N'52', N'贵州省', N'5204', N'安顺市', N'520403', N'平坝区', N'', N'', N'', N'', N'3', N'1', N''), (N'520422', N'5204', N'00,52,5204', N'普定县', N'52', N'贵州省', N'5204', N'安顺市', N'520422', N'普定县', N'', N'', N'', N'', N'3', N'1', N''), (N'520423', N'5204', N'00,52,5204', N'镇宁布依族苗族自治县', N'52', N'贵州省', N'5204', N'安顺市', N'520423', N'镇宁布依族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'520424', N'5204', N'00,52,5204', N'关岭布依族苗族自治县', N'52', N'贵州省', N'5204', N'安顺市', N'520424', N'关岭布依族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'520425', N'5204', N'00,52,5204', N'紫云苗族布依族自治县', N'52', N'贵州省', N'5204', N'安顺市', N'520425', N'紫云苗族布依族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'5205', N'52', N'00,52', N'毕节市', N'52', N'贵州省', N'5205', N'毕节市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'520502', N'5205', N'00,52,5205', N'七星关区', N'52', N'贵州省', N'5205', N'毕节市', N'520502', N'七星关区', N'', N'', N'', N'', N'3', N'1', N''), (N'520521', N'5205', N'00,52,5205', N'大方县', N'52', N'贵州省', N'5205', N'毕节市', N'520521', N'大方县', N'', N'', N'', N'', N'3', N'1', N''), (N'520522', N'5205', N'00,52,5205', N'黔西县', N'52', N'贵州省', N'5205', N'毕节市', N'520522', N'黔西县', N'', N'', N'', N'', N'3', N'1', N''), (N'520523', N'5205', N'00,52,5205', N'金沙县', N'52', N'贵州省', N'5205', N'毕节市', N'520523', N'金沙县', N'', N'', N'', N'', N'3', N'1', N''), (N'520524', N'5205', N'00,52,5205', N'织金县', N'52', N'贵州省', N'5205', N'毕节市', N'520524', N'织金县', N'', N'', N'', N'', N'3', N'1', N''), (N'520525', N'5205', N'00,52,5205', N'纳雍县', N'52', N'贵州省', N'5205', N'毕节市', N'520525', N'纳雍县', N'', N'', N'', N'', N'3', N'1', N''), (N'520526', N'5205', N'00,52,5205', N'威宁彝族回族苗族自治县', N'52', N'贵州省', N'5205', N'毕节市', N'520526', N'威宁彝族回族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'520527', N'5205', N'00,52,5205', N'赫章县', N'52', N'贵州省', N'5205', N'毕节市', N'520527', N'赫章县', N'', N'', N'', N'', N'3', N'1', N''), (N'5206', N'52', N'00,52', N'铜仁市', N'52', N'贵州省', N'5206', N'铜仁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'520602', N'5206', N'00,52,5206', N'碧江区', N'52', N'贵州省', N'5206', N'铜仁市', N'520602', N'碧江区', N'', N'', N'', N'', N'3', N'1', N''), (N'520603', N'5206', N'00,52,5206', N'万山区', N'52', N'贵州省', N'5206', N'铜仁市', N'520603', N'万山区', N'', N'', N'', N'', N'3', N'1', N''), (N'520621', N'5206', N'00,52,5206', N'江口县', N'52', N'贵州省', N'5206', N'铜仁市', N'520621', N'江口县', N'', N'', N'', N'', N'3', N'1', N''), (N'520622', N'5206', N'00,52,5206', N'玉屏侗族自治县', N'52', N'贵州省', N'5206', N'铜仁市', N'520622', N'玉屏侗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'520623', N'5206', N'00,52,5206', N'石阡县', N'52', N'贵州省', N'5206', N'铜仁市', N'520623', N'石阡县', N'', N'', N'', N'', N'3', N'1', N''), (N'520624', N'5206', N'00,52,5206', N'思南县', N'52', N'贵州省', N'5206', N'铜仁市', N'520624', N'思南县', N'', N'', N'', N'', N'3', N'1', N''), (N'520625', N'5206', N'00,52,5206', N'印江土家族苗族自治县', N'52', N'贵州省', N'5206', N'铜仁市', N'520625', N'印江土家族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'520626', N'5206', N'00,52,5206', N'德江县', N'52', N'贵州省', N'5206', N'铜仁市', N'520626', N'德江县', N'', N'', N'', N'', N'3', N'1', N''), (N'520627', N'5206', N'00,52,5206', N'沿河土家族自治县', N'52', N'贵州省', N'5206', N'铜仁市', N'520627', N'沿河土家族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'520628', N'5206', N'00,52,5206', N'松桃苗族自治县', N'52', N'贵州省', N'5206', N'铜仁市', N'520628', N'松桃苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'5223', N'52', N'00,52', N'黔西南布依族苗族自治州', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'522301', N'5223', N'00,52,5223', N'兴义市', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522301', N'兴义市', N'', N'', N'', N'', N'3', N'1', N''), (N'522302', N'5223', N'00,52,5223', N'兴仁市', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522302', N'兴仁市', N'', N'', N'', N'', N'3', N'1', N''), (N'522323', N'5223', N'00,52,5223', N'普安县', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522323', N'普安县', N'', N'', N'', N'', N'3', N'1', N''), (N'522324', N'5223', N'00,52,5223', N'晴隆县', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522324', N'晴隆县', N'', N'', N'', N'', N'3', N'1', N''), (N'522325', N'5223', N'00,52,5223', N'贞丰县', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522325', N'贞丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'522326', N'5223', N'00,52,5223', N'望谟县', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522326', N'望谟县', N'', N'', N'', N'', N'3', N'1', N''), (N'522327', N'5223', N'00,52,5223', N'册亨县', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522327', N'册亨县', N'', N'', N'', N'', N'3', N'1', N''), (N'522328', N'5223', N'00,52,5223', N'安龙县', N'52', N'贵州省', N'5223', N'黔西南布依族苗族自治州', N'522328', N'安龙县', N'', N'', N'', N'', N'3', N'1', N''), (N'5226', N'52', N'00,52', N'黔东南苗族侗族自治州', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'522601', N'5226', N'00,52,5226', N'凯里市', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522601', N'凯里市', N'', N'', N'', N'', N'3', N'1', N''), (N'522622', N'5226', N'00,52,5226', N'黄平县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522622', N'黄平县', N'', N'', N'', N'', N'3', N'1', N''), (N'522623', N'5226', N'00,52,5226', N'施秉县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522623', N'施秉县', N'', N'', N'', N'', N'3', N'1', N''), (N'522624', N'5226', N'00,52,5226', N'三穗县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522624', N'三穗县', N'', N'', N'', N'', N'3', N'1', N''), (N'522625', N'5226', N'00,52,5226', N'镇远县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522625', N'镇远县', N'', N'', N'', N'', N'3', N'1', N''), (N'522626', N'5226', N'00,52,5226', N'岑巩县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522626', N'岑巩县', N'', N'', N'', N'', N'3', N'1', N''), (N'522627', N'5226', N'00,52,5226', N'天柱县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522627', N'天柱县', N'', N'', N'', N'', N'3', N'1', N''), (N'522628', N'5226', N'00,52,5226', N'锦屏县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522628', N'锦屏县', N'', N'', N'', N'', N'3', N'1', N''), (N'522629', N'5226', N'00,52,5226', N'剑河县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522629', N'剑河县', N'', N'', N'', N'', N'3', N'1', N''), (N'522630', N'5226', N'00,52,5226', N'台江县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522630', N'台江县', N'', N'', N'', N'', N'3', N'1', N''), (N'522631', N'5226', N'00,52,5226', N'黎平县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522631', N'黎平县', N'', N'', N'', N'', N'3', N'1', N''), (N'522632', N'5226', N'00,52,5226', N'榕江县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522632', N'榕江县', N'', N'', N'', N'', N'3', N'1', N''), (N'522633', N'5226', N'00,52,5226', N'从江县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522633', N'从江县', N'', N'', N'', N'', N'3', N'1', N''), (N'522634', N'5226', N'00,52,5226', N'雷山县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522634', N'雷山县', N'', N'', N'', N'', N'3', N'1', N''), (N'522635', N'5226', N'00,52,5226', N'麻江县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522635', N'麻江县', N'', N'', N'', N'', N'3', N'1', N''), (N'522636', N'5226', N'00,52,5226', N'丹寨县', N'52', N'贵州省', N'5226', N'黔东南苗族侗族自治州', N'522636', N'丹寨县', N'', N'', N'', N'', N'3', N'1', N''), (N'5227', N'52', N'00,52', N'黔南布依族苗族自治州', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'522701', N'5227', N'00,52,5227', N'都匀市', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522701', N'都匀市', N'', N'', N'', N'', N'3', N'1', N''), (N'522702', N'5227', N'00,52,5227', N'福泉市', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522702', N'福泉市', N'', N'', N'', N'', N'3', N'1', N''), (N'522722', N'5227', N'00,52,5227', N'荔波县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522722', N'荔波县', N'', N'', N'', N'', N'3', N'1', N''), (N'522723', N'5227', N'00,52,5227', N'贵定县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522723', N'贵定县', N'', N'', N'', N'', N'3', N'1', N''), (N'522725', N'5227', N'00,52,5227', N'瓮安县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522725', N'瓮安县', N'', N'', N'', N'', N'3', N'1', N''), (N'522726', N'5227', N'00,52,5227', N'独山县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522726', N'独山县', N'', N'', N'', N'', N'3', N'1', N''), (N'522727', N'5227', N'00,52,5227', N'平塘县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522727', N'平塘县', N'', N'', N'', N'', N'3', N'1', N''), (N'522728', N'5227', N'00,52,5227', N'罗甸县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522728', N'罗甸县', N'', N'', N'', N'', N'3', N'1', N''), (N'522729', N'5227', N'00,52,5227', N'长顺县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522729', N'长顺县', N'', N'', N'', N'', N'3', N'1', N''), (N'522730', N'5227', N'00,52,5227', N'龙里县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522730', N'龙里县', N'', N'', N'', N'', N'3', N'1', N''), (N'522731', N'5227', N'00,52,5227', N'惠水县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522731', N'惠水县', N'', N'', N'', N'', N'3', N'1', N''), (N'522732', N'5227', N'00,52,5227', N'三都水族自治县', N'52', N'贵州省', N'5227', N'黔南布依族苗族自治州', N'522732', N'三都水族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'53', N'00', N'00', N'云南省', N'53', N'云南省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'5301', N'53', N'00,53', N'昆明市', N'53', N'云南省', N'5301', N'昆明市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530102', N'5301', N'00,53,5301', N'五华区', N'53', N'云南省', N'5301', N'昆明市', N'530102', N'五华区', N'', N'', N'', N'', N'3', N'1', N''), (N'530103', N'5301', N'00,53,5301', N'盘龙区', N'53', N'云南省', N'5301', N'昆明市', N'530103', N'盘龙区', N'', N'', N'', N'', N'3', N'1', N''), (N'530111', N'5301', N'00,53,5301', N'官渡区', N'53', N'云南省', N'5301', N'昆明市', N'530111', N'官渡区', N'', N'', N'', N'', N'3', N'1', N''), (N'530112', N'5301', N'00,53,5301', N'西山区', N'53', N'云南省', N'5301', N'昆明市', N'530112', N'西山区', N'', N'', N'', N'', N'3', N'1', N''), (N'530113', N'5301', N'00,53,5301', N'东川区', N'53', N'云南省', N'5301', N'昆明市', N'530113', N'东川区', N'', N'', N'', N'', N'3', N'1', N''), (N'530114', N'5301', N'00,53,5301', N'呈贡区', N'53', N'云南省', N'5301', N'昆明市', N'530114', N'呈贡区', N'', N'', N'', N'', N'3', N'1', N''), (N'530115', N'5301', N'00,53,5301', N'晋宁区', N'53', N'云南省', N'5301', N'昆明市', N'530115', N'晋宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'530124', N'5301', N'00,53,5301', N'富民县', N'53', N'云南省', N'5301', N'昆明市', N'530124', N'富民县', N'', N'', N'', N'', N'3', N'1', N''), (N'530125', N'5301', N'00,53,5301', N'宜良县', N'53', N'云南省', N'5301', N'昆明市', N'530125', N'宜良县', N'', N'', N'', N'', N'3', N'1', N''), (N'530126', N'5301', N'00,53,5301', N'石林彝族自治县', N'53', N'云南省', N'5301', N'昆明市', N'530126', N'石林彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530127', N'5301', N'00,53,5301', N'嵩明县', N'53', N'云南省', N'5301', N'昆明市', N'530127', N'嵩明县', N'', N'', N'', N'', N'3', N'1', N''), (N'530128', N'5301', N'00,53,5301', N'禄劝彝族苗族自治县', N'53', N'云南省', N'5301', N'昆明市', N'530128', N'禄劝彝族苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530129', N'5301', N'00,53,5301', N'寻甸回族彝族自治县', N'53', N'云南省', N'5301', N'昆明市', N'530129', N'寻甸回族彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530181', N'5301', N'00,53,5301', N'安宁市', N'53', N'云南省', N'5301', N'昆明市', N'530181', N'安宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'5303', N'53', N'00,53', N'曲靖市', N'53', N'云南省', N'5303', N'曲靖市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530302', N'5303', N'00,53,5303', N'麒麟区', N'53', N'云南省', N'5303', N'曲靖市', N'530302', N'麒麟区', N'', N'', N'', N'', N'3', N'1', N''), (N'530303', N'5303', N'00,53,5303', N'沾益区', N'53', N'云南省', N'5303', N'曲靖市', N'530303', N'沾益区', N'', N'', N'', N'', N'3', N'1', N''), (N'530304', N'5303', N'00,53,5303', N'马龙区', N'53', N'云南省', N'5303', N'曲靖市', N'530304', N'马龙区', N'', N'', N'', N'', N'3', N'1', N''), (N'530322', N'5303', N'00,53,5303', N'陆良县', N'53', N'云南省', N'5303', N'曲靖市', N'530322', N'陆良县', N'', N'', N'', N'', N'3', N'1', N''), (N'530323', N'5303', N'00,53,5303', N'师宗县', N'53', N'云南省', N'5303', N'曲靖市', N'530323', N'师宗县', N'', N'', N'', N'', N'3', N'1', N''), (N'530324', N'5303', N'00,53,5303', N'罗平县', N'53', N'云南省', N'5303', N'曲靖市', N'530324', N'罗平县', N'', N'', N'', N'', N'3', N'1', N''), (N'530325', N'5303', N'00,53,5303', N'富源县', N'53', N'云南省', N'5303', N'曲靖市', N'530325', N'富源县', N'', N'', N'', N'', N'3', N'1', N''), (N'530326', N'5303', N'00,53,5303', N'会泽县', N'53', N'云南省', N'5303', N'曲靖市', N'530326', N'会泽县', N'', N'', N'', N'', N'3', N'1', N''), (N'530381', N'5303', N'00,53,5303', N'宣威市', N'53', N'云南省', N'5303', N'曲靖市', N'530381', N'宣威市', N'', N'', N'', N'', N'3', N'1', N''), (N'5304', N'53', N'00,53', N'玉溪市', N'53', N'云南省', N'5304', N'玉溪市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530402', N'5304', N'00,53,5304', N'红塔区', N'53', N'云南省', N'5304', N'玉溪市', N'530402', N'红塔区', N'', N'', N'', N'', N'3', N'1', N''), (N'530403', N'5304', N'00,53,5304', N'江川区', N'53', N'云南省', N'5304', N'玉溪市', N'530403', N'江川区', N'', N'', N'', N'', N'3', N'1', N''), (N'530423', N'5304', N'00,53,5304', N'通海县', N'53', N'云南省', N'5304', N'玉溪市', N'530423', N'通海县', N'', N'', N'', N'', N'3', N'1', N''), (N'530424', N'5304', N'00,53,5304', N'华宁县', N'53', N'云南省', N'5304', N'玉溪市', N'530424', N'华宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'530425', N'5304', N'00,53,5304', N'易门县', N'53', N'云南省', N'5304', N'玉溪市', N'530425', N'易门县', N'', N'', N'', N'', N'3', N'1', N''), (N'530426', N'5304', N'00,53,5304', N'峨山彝族自治县', N'53', N'云南省', N'5304', N'玉溪市', N'530426', N'峨山彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530427', N'5304', N'00,53,5304', N'新平彝族傣族自治县', N'53', N'云南省', N'5304', N'玉溪市', N'530427', N'新平彝族傣族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530428', N'5304', N'00,53,5304', N'元江哈尼族彝族傣族自治县', N'53', N'云南省', N'5304', N'玉溪市', N'530428', N'元江哈尼族彝族傣族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530481', N'5304', N'00,53,5304', N'澄江市', N'53', N'云南省', N'5304', N'玉溪市', N'530481', N'澄江市', N'', N'', N'', N'', N'3', N'1', N''), (N'5305', N'53', N'00,53', N'保山市', N'53', N'云南省', N'5305', N'保山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530502', N'5305', N'00,53,5305', N'隆阳区', N'53', N'云南省', N'5305', N'保山市', N'530502', N'隆阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'530521', N'5305', N'00,53,5305', N'施甸县', N'53', N'云南省', N'5305', N'保山市', N'530521', N'施甸县', N'', N'', N'', N'', N'3', N'1', N''), (N'530523', N'5305', N'00,53,5305', N'龙陵县', N'53', N'云南省', N'5305', N'保山市', N'530523', N'龙陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'530524', N'5305', N'00,53,5305', N'昌宁县', N'53', N'云南省', N'5305', N'保山市', N'530524', N'昌宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'530581', N'5305', N'00,53,5305', N'腾冲市', N'53', N'云南省', N'5305', N'保山市', N'530581', N'腾冲市', N'', N'', N'', N'', N'3', N'1', N''), (N'5306', N'53', N'00,53', N'昭通市', N'53', N'云南省', N'5306', N'昭通市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530602', N'5306', N'00,53,5306', N'昭阳区', N'53', N'云南省', N'5306', N'昭通市', N'530602', N'昭阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'530621', N'5306', N'00,53,5306', N'鲁甸县', N'53', N'云南省', N'5306', N'昭通市', N'530621', N'鲁甸县', N'', N'', N'', N'', N'3', N'1', N''), (N'530622', N'5306', N'00,53,5306', N'巧家县', N'53', N'云南省', N'5306', N'昭通市', N'530622', N'巧家县', N'', N'', N'', N'', N'3', N'1', N''), (N'530623', N'5306', N'00,53,5306', N'盐津县', N'53', N'云南省', N'5306', N'昭通市', N'530623', N'盐津县', N'', N'', N'', N'', N'3', N'1', N''), (N'530624', N'5306', N'00,53,5306', N'大关县', N'53', N'云南省', N'5306', N'昭通市', N'530624', N'大关县', N'', N'', N'', N'', N'3', N'1', N''), (N'530625', N'5306', N'00,53,5306', N'永善县', N'53', N'云南省', N'5306', N'昭通市', N'530625', N'永善县', N'', N'', N'', N'', N'3', N'1', N''), (N'530626', N'5306', N'00,53,5306', N'绥江县', N'53', N'云南省', N'5306', N'昭通市', N'530626', N'绥江县', N'', N'', N'', N'', N'3', N'1', N''), (N'530627', N'5306', N'00,53,5306', N'镇雄县', N'53', N'云南省', N'5306', N'昭通市', N'530627', N'镇雄县', N'', N'', N'', N'', N'3', N'1', N''), (N'530628', N'5306', N'00,53,5306', N'彝良县', N'53', N'云南省', N'5306', N'昭通市', N'530628', N'彝良县', N'', N'', N'', N'', N'3', N'1', N''), (N'530629', N'5306', N'00,53,5306', N'威信县', N'53', N'云南省', N'5306', N'昭通市', N'530629', N'威信县', N'', N'', N'', N'', N'3', N'1', N''), (N'530681', N'5306', N'00,53,5306', N'水富市', N'53', N'云南省', N'5306', N'昭通市', N'530681', N'水富市', N'', N'', N'', N'', N'3', N'1', N''), (N'5307', N'53', N'00,53', N'丽江市', N'53', N'云南省', N'5307', N'丽江市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530702', N'5307', N'00,53,5307', N'古城区', N'53', N'云南省', N'5307', N'丽江市', N'530702', N'古城区', N'', N'', N'', N'', N'3', N'1', N''), (N'530721', N'5307', N'00,53,5307', N'玉龙纳西族自治县', N'53', N'云南省', N'5307', N'丽江市', N'530721', N'玉龙纳西族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530722', N'5307', N'00,53,5307', N'永胜县', N'53', N'云南省', N'5307', N'丽江市', N'530722', N'永胜县', N'', N'', N'', N'', N'3', N'1', N''), (N'530723', N'5307', N'00,53,5307', N'华坪县', N'53', N'云南省', N'5307', N'丽江市', N'530723', N'华坪县', N'', N'', N'', N'', N'3', N'1', N''), (N'530724', N'5307', N'00,53,5307', N'宁蒗彝族自治县', N'53', N'云南省', N'5307', N'丽江市', N'530724', N'宁蒗彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'5308', N'53', N'00,53', N'普洱市', N'53', N'云南省', N'5308', N'普洱市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530802', N'5308', N'00,53,5308', N'思茅区', N'53', N'云南省', N'5308', N'普洱市', N'530802', N'思茅区', N'', N'', N'', N'', N'3', N'1', N''), (N'530821', N'5308', N'00,53,5308', N'宁洱哈尼族彝族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530821', N'宁洱哈尼族彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530822', N'5308', N'00,53,5308', N'墨江哈尼族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530822', N'墨江哈尼族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530823', N'5308', N'00,53,5308', N'景东彝族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530823', N'景东彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530824', N'5308', N'00,53,5308', N'景谷傣族彝族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530824', N'景谷傣族彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530825', N'5308', N'00,53,5308', N'镇沅彝族哈尼族拉祜族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530825', N'镇沅彝族哈尼族拉祜族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530826', N'5308', N'00,53,5308', N'江城哈尼族彝族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530826', N'江城哈尼族彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530827', N'5308', N'00,53,5308', N'孟连傣族拉祜族佤族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530827', N'孟连傣族拉祜族佤族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530828', N'5308', N'00,53,5308', N'澜沧拉祜族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530828', N'澜沧拉祜族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530829', N'5308', N'00,53,5308', N'西盟佤族自治县', N'53', N'云南省', N'5308', N'普洱市', N'530829', N'西盟佤族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'5309', N'53', N'00,53', N'临沧市', N'53', N'云南省', N'5309', N'临沧市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'530902', N'5309', N'00,53,5309', N'临翔区', N'53', N'云南省', N'5309', N'临沧市', N'530902', N'临翔区', N'', N'', N'', N'', N'3', N'1', N''), (N'530921', N'5309', N'00,53,5309', N'凤庆县', N'53', N'云南省', N'5309', N'临沧市', N'530921', N'凤庆县', N'', N'', N'', N'', N'3', N'1', N''), (N'530922', N'5309', N'00,53,5309', N'云县', N'53', N'云南省', N'5309', N'临沧市', N'530922', N'云县', N'', N'', N'', N'', N'3', N'1', N''), (N'530923', N'5309', N'00,53,5309', N'永德县', N'53', N'云南省', N'5309', N'临沧市', N'530923', N'永德县', N'', N'', N'', N'', N'3', N'1', N''), (N'530924', N'5309', N'00,53,5309', N'镇康县', N'53', N'云南省', N'5309', N'临沧市', N'530924', N'镇康县', N'', N'', N'', N'', N'3', N'1', N''), (N'530925', N'5309', N'00,53,5309', N'双江拉祜族佤族布朗族傣族自治县', N'53', N'云南省', N'5309', N'临沧市', N'530925', N'双江拉祜族佤族布朗族傣族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530926', N'5309', N'00,53,5309', N'耿马傣族佤族自治县', N'53', N'云南省', N'5309', N'临沧市', N'530926', N'耿马傣族佤族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'530927', N'5309', N'00,53,5309', N'沧源佤族自治县', N'53', N'云南省', N'5309', N'临沧市', N'530927', N'沧源佤族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'5323', N'53', N'00,53', N'楚雄彝族自治州', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'532301', N'5323', N'00,53,5323', N'楚雄市', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532301', N'楚雄市', N'', N'', N'', N'', N'3', N'1', N''), (N'532322', N'5323', N'00,53,5323', N'双柏县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532322', N'双柏县', N'', N'', N'', N'', N'3', N'1', N''), (N'532323', N'5323', N'00,53,5323', N'牟定县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532323', N'牟定县', N'', N'', N'', N'', N'3', N'1', N''), (N'532324', N'5323', N'00,53,5323', N'南华县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532324', N'南华县', N'', N'', N'', N'', N'3', N'1', N''), (N'532325', N'5323', N'00,53,5323', N'姚安县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532325', N'姚安县', N'', N'', N'', N'', N'3', N'1', N''), (N'532326', N'5323', N'00,53,5323', N'大姚县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532326', N'大姚县', N'', N'', N'', N'', N'3', N'1', N''), (N'532327', N'5323', N'00,53,5323', N'永仁县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532327', N'永仁县', N'', N'', N'', N'', N'3', N'1', N''), (N'532328', N'5323', N'00,53,5323', N'元谋县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532328', N'元谋县', N'', N'', N'', N'', N'3', N'1', N''), (N'532329', N'5323', N'00,53,5323', N'武定县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532329', N'武定县', N'', N'', N'', N'', N'3', N'1', N''), (N'532331', N'5323', N'00,53,5323', N'禄丰县', N'53', N'云南省', N'5323', N'楚雄彝族自治州', N'532331', N'禄丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'5325', N'53', N'00,53', N'红河哈尼族彝族自治州', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'532501', N'5325', N'00,53,5325', N'个旧市', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532501', N'个旧市', N'', N'', N'', N'', N'3', N'1', N''), (N'532502', N'5325', N'00,53,5325', N'开远市', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532502', N'开远市', N'', N'', N'', N'', N'3', N'1', N''), (N'532503', N'5325', N'00,53,5325', N'蒙自市', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532503', N'蒙自市', N'', N'', N'', N'', N'3', N'1', N''), (N'532504', N'5325', N'00,53,5325', N'弥勒市', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532504', N'弥勒市', N'', N'', N'', N'', N'3', N'1', N''), (N'532523', N'5325', N'00,53,5325', N'屏边苗族自治县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532523', N'屏边苗族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'532524', N'5325', N'00,53,5325', N'建水县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532524', N'建水县', N'', N'', N'', N'', N'3', N'1', N''), (N'532525', N'5325', N'00,53,5325', N'石屏县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532525', N'石屏县', N'', N'', N'', N'', N'3', N'1', N''), (N'532527', N'5325', N'00,53,5325', N'泸西县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532527', N'泸西县', N'', N'', N'', N'', N'3', N'1', N''), (N'532528', N'5325', N'00,53,5325', N'元阳县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532528', N'元阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'532529', N'5325', N'00,53,5325', N'红河县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532529', N'红河县', N'', N'', N'', N'', N'3', N'1', N''), (N'532530', N'5325', N'00,53,5325', N'金平苗族瑶族傣族自治县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532530', N'金平苗族瑶族傣族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'532531', N'5325', N'00,53,5325', N'绿春县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532531', N'绿春县', N'', N'', N'', N'', N'3', N'1', N''), (N'532532', N'5325', N'00,53,5325', N'河口瑶族自治县', N'53', N'云南省', N'5325', N'红河哈尼族彝族自治州', N'532532', N'河口瑶族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'5326', N'53', N'00,53', N'文山壮族苗族自治州', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'532601', N'5326', N'00,53,5326', N'文山市', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532601', N'文山市', N'', N'', N'', N'', N'3', N'1', N''), (N'532622', N'5326', N'00,53,5326', N'砚山县', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532622', N'砚山县', N'', N'', N'', N'', N'3', N'1', N''), (N'532623', N'5326', N'00,53,5326', N'西畴县', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532623', N'西畴县', N'', N'', N'', N'', N'3', N'1', N''), (N'532624', N'5326', N'00,53,5326', N'麻栗坡县', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532624', N'麻栗坡县', N'', N'', N'', N'', N'3', N'1', N''), (N'532625', N'5326', N'00,53,5326', N'马关县', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532625', N'马关县', N'', N'', N'', N'', N'3', N'1', N''), (N'532626', N'5326', N'00,53,5326', N'丘北县', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532626', N'丘北县', N'', N'', N'', N'', N'3', N'1', N''), (N'532627', N'5326', N'00,53,5326', N'广南县', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532627', N'广南县', N'', N'', N'', N'', N'3', N'1', N''), (N'532628', N'5326', N'00,53,5326', N'富宁县', N'53', N'云南省', N'5326', N'文山壮族苗族自治州', N'532628', N'富宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'5328', N'53', N'00,53', N'西双版纳傣族自治州', N'53', N'云南省', N'5328', N'西双版纳傣族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'532801', N'5328', N'00,53,5328', N'景洪市', N'53', N'云南省', N'5328', N'西双版纳傣族自治州', N'532801', N'景洪市', N'', N'', N'', N'', N'3', N'1', N''), (N'532822', N'5328', N'00,53,5328', N'勐海县', N'53', N'云南省', N'5328', N'西双版纳傣族自治州', N'532822', N'勐海县', N'', N'', N'', N'', N'3', N'1', N''), (N'532823', N'5328', N'00,53,5328', N'勐腊县', N'53', N'云南省', N'5328', N'西双版纳傣族自治州', N'532823', N'勐腊县', N'', N'', N'', N'', N'3', N'1', N''), (N'5329', N'53', N'00,53', N'大理白族自治州', N'53', N'云南省', N'5329', N'大理白族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'532901', N'5329', N'00,53,5329', N'大理市', N'53', N'云南省', N'5329', N'大理白族自治州', N'532901', N'大理市', N'', N'', N'', N'', N'3', N'1', N''), (N'532922', N'5329', N'00,53,5329', N'漾濞彝族自治县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532922', N'漾濞彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'532923', N'5329', N'00,53,5329', N'祥云县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532923', N'祥云县', N'', N'', N'', N'', N'3', N'1', N''), (N'532924', N'5329', N'00,53,5329', N'宾川县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532924', N'宾川县', N'', N'', N'', N'', N'3', N'1', N''), (N'532925', N'5329', N'00,53,5329', N'弥渡县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532925', N'弥渡县', N'', N'', N'', N'', N'3', N'1', N''), (N'532926', N'5329', N'00,53,5329', N'南涧彝族自治县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532926', N'南涧彝族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'532927', N'5329', N'00,53,5329', N'巍山彝族回族自治县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532927', N'巍山彝族回族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'532928', N'5329', N'00,53,5329', N'永平县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532928', N'永平县', N'', N'', N'', N'', N'3', N'1', N''), (N'532929', N'5329', N'00,53,5329', N'云龙县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532929', N'云龙县', N'', N'', N'', N'', N'3', N'1', N''), (N'532930', N'5329', N'00,53,5329', N'洱源县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532930', N'洱源县', N'', N'', N'', N'', N'3', N'1', N''), (N'532931', N'5329', N'00,53,5329', N'剑川县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532931', N'剑川县', N'', N'', N'', N'', N'3', N'1', N''), (N'532932', N'5329', N'00,53,5329', N'鹤庆县', N'53', N'云南省', N'5329', N'大理白族自治州', N'532932', N'鹤庆县', N'', N'', N'', N'', N'3', N'1', N''), (N'5331', N'53', N'00,53', N'德宏傣族景颇族自治州', N'53', N'云南省', N'5331', N'德宏傣族景颇族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'533102', N'5331', N'00,53,5331', N'瑞丽市', N'53', N'云南省', N'5331', N'德宏傣族景颇族自治州', N'533102', N'瑞丽市', N'', N'', N'', N'', N'3', N'1', N''), (N'533103', N'5331', N'00,53,5331', N'芒市', N'53', N'云南省', N'5331', N'德宏傣族景颇族自治州', N'533103', N'芒市', N'', N'', N'', N'', N'3', N'1', N''), (N'533122', N'5331', N'00,53,5331', N'梁河县', N'53', N'云南省', N'5331', N'德宏傣族景颇族自治州', N'533122', N'梁河县', N'', N'', N'', N'', N'3', N'1', N''), (N'533123', N'5331', N'00,53,5331', N'盈江县', N'53', N'云南省', N'5331', N'德宏傣族景颇族自治州', N'533123', N'盈江县', N'', N'', N'', N'', N'3', N'1', N''), (N'533124', N'5331', N'00,53,5331', N'陇川县', N'53', N'云南省', N'5331', N'德宏傣族景颇族自治州', N'533124', N'陇川县', N'', N'', N'', N'', N'3', N'1', N''), (N'5333', N'53', N'00,53', N'怒江傈僳族自治州', N'53', N'云南省', N'5333', N'怒江傈僳族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'533301', N'5333', N'00,53,5333', N'泸水市', N'53', N'云南省', N'5333', N'怒江傈僳族自治州', N'533301', N'泸水市', N'', N'', N'', N'', N'3', N'1', N''), (N'533323', N'5333', N'00,53,5333', N'福贡县', N'53', N'云南省', N'5333', N'怒江傈僳族自治州', N'533323', N'福贡县', N'', N'', N'', N'', N'3', N'1', N''), (N'533324', N'5333', N'00,53,5333', N'贡山独龙族怒族自治县', N'53', N'云南省', N'5333', N'怒江傈僳族自治州', N'533324', N'贡山独龙族怒族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'533325', N'5333', N'00,53,5333', N'兰坪白族普米族自治县', N'53', N'云南省', N'5333', N'怒江傈僳族自治州', N'533325', N'兰坪白族普米族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'5334', N'53', N'00,53', N'迪庆藏族自治州', N'53', N'云南省', N'5334', N'迪庆藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'533401', N'5334', N'00,53,5334', N'香格里拉市', N'53', N'云南省', N'5334', N'迪庆藏族自治州', N'533401', N'香格里拉市', N'', N'', N'', N'', N'3', N'1', N''), (N'533422', N'5334', N'00,53,5334', N'德钦县', N'53', N'云南省', N'5334', N'迪庆藏族自治州', N'533422', N'德钦县', N'', N'', N'', N'', N'3', N'1', N''), (N'533423', N'5334', N'00,53,5334', N'维西傈僳族自治县', N'53', N'云南省', N'5334', N'迪庆藏族自治州', N'533423', N'维西傈僳族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'54', N'00', N'00', N'西藏自治区', N'54', N'西藏自治区', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'5401', N'54', N'00,54', N'拉萨市', N'54', N'西藏自治区', N'5401', N'拉萨市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'540102', N'5401', N'00,54,5401', N'城关区', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540102', N'城关区', N'', N'', N'', N'', N'3', N'1', N''), (N'540103', N'5401', N'00,54,5401', N'堆龙德庆区', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540103', N'堆龙德庆区', N'', N'', N'', N'', N'3', N'1', N''), (N'540104', N'5401', N'00,54,5401', N'达孜区', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540104', N'达孜区', N'', N'', N'', N'', N'3', N'1', N''), (N'540121', N'5401', N'00,54,5401', N'林周县', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540121', N'林周县', N'', N'', N'', N'', N'3', N'1', N''), (N'540122', N'5401', N'00,54,5401', N'当雄县', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540122', N'当雄县', N'', N'', N'', N'', N'3', N'1', N''), (N'540123', N'5401', N'00,54,5401', N'尼木县', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540123', N'尼木县', N'', N'', N'', N'', N'3', N'1', N''), (N'540124', N'5401', N'00,54,5401', N'曲水县', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540124', N'曲水县', N'', N'', N'', N'', N'3', N'1', N''), (N'540127', N'5401', N'00,54,5401', N'墨竹工卡县', N'54', N'西藏自治区', N'5401', N'拉萨市', N'540127', N'墨竹工卡县', N'', N'', N'', N'', N'3', N'1', N''), (N'5402', N'54', N'00,54', N'日喀则市', N'54', N'西藏自治区', N'5402', N'日喀则市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'540202', N'5402', N'00,54,5402', N'桑珠孜区', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540202', N'桑珠孜区', N'', N'', N'', N'', N'3', N'1', N''), (N'540221', N'5402', N'00,54,5402', N'南木林县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540221', N'南木林县', N'', N'', N'', N'', N'3', N'1', N''), (N'540222', N'5402', N'00,54,5402', N'江孜县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540222', N'江孜县', N'', N'', N'', N'', N'3', N'1', N''), (N'540223', N'5402', N'00,54,5402', N'定日县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540223', N'定日县', N'', N'', N'', N'', N'3', N'1', N''), (N'540224', N'5402', N'00,54,5402', N'萨迦县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540224', N'萨迦县', N'', N'', N'', N'', N'3', N'1', N''), (N'540225', N'5402', N'00,54,5402', N'拉孜县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540225', N'拉孜县', N'', N'', N'', N'', N'3', N'1', N''), (N'540226', N'5402', N'00,54,5402', N'昂仁县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540226', N'昂仁县', N'', N'', N'', N'', N'3', N'1', N''), (N'540227', N'5402', N'00,54,5402', N'谢通门县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540227', N'谢通门县', N'', N'', N'', N'', N'3', N'1', N''), (N'540228', N'5402', N'00,54,5402', N'白朗县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540228', N'白朗县', N'', N'', N'', N'', N'3', N'1', N''), (N'540229', N'5402', N'00,54,5402', N'仁布县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540229', N'仁布县', N'', N'', N'', N'', N'3', N'1', N''), (N'540230', N'5402', N'00,54,5402', N'康马县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540230', N'康马县', N'', N'', N'', N'', N'3', N'1', N''), (N'540231', N'5402', N'00,54,5402', N'定结县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540231', N'定结县', N'', N'', N'', N'', N'3', N'1', N''), (N'540232', N'5402', N'00,54,5402', N'仲巴县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540232', N'仲巴县', N'', N'', N'', N'', N'3', N'1', N''), (N'540233', N'5402', N'00,54,5402', N'亚东县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540233', N'亚东县', N'', N'', N'', N'', N'3', N'1', N''), (N'540234', N'5402', N'00,54,5402', N'吉隆县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540234', N'吉隆县', N'', N'', N'', N'', N'3', N'1', N''), (N'540235', N'5402', N'00,54,5402', N'聂拉木县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540235', N'聂拉木县', N'', N'', N'', N'', N'3', N'1', N''), (N'540236', N'5402', N'00,54,5402', N'萨嘎县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540236', N'萨嘎县', N'', N'', N'', N'', N'3', N'1', N''), (N'540237', N'5402', N'00,54,5402', N'岗巴县', N'54', N'西藏自治区', N'5402', N'日喀则市', N'540237', N'岗巴县', N'', N'', N'', N'', N'3', N'1', N''), (N'5403', N'54', N'00,54', N'昌都市', N'54', N'西藏自治区', N'5403', N'昌都市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'540302', N'5403', N'00,54,5403', N'卡若区', N'54', N'西藏自治区', N'5403', N'昌都市', N'540302', N'卡若区', N'', N'', N'', N'', N'3', N'1', N''), (N'540321', N'5403', N'00,54,5403', N'江达县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540321', N'江达县', N'', N'', N'', N'', N'3', N'1', N''), (N'540322', N'5403', N'00,54,5403', N'贡觉县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540322', N'贡觉县', N'', N'', N'', N'', N'3', N'1', N''), (N'540323', N'5403', N'00,54,5403', N'类乌齐县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540323', N'类乌齐县', N'', N'', N'', N'', N'3', N'1', N''), (N'540324', N'5403', N'00,54,5403', N'丁青县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540324', N'丁青县', N'', N'', N'', N'', N'3', N'1', N''), (N'540325', N'5403', N'00,54,5403', N'察雅县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540325', N'察雅县', N'', N'', N'', N'', N'3', N'1', N''), (N'540326', N'5403', N'00,54,5403', N'八宿县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540326', N'八宿县', N'', N'', N'', N'', N'3', N'1', N''), (N'540327', N'5403', N'00,54,5403', N'左贡县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540327', N'左贡县', N'', N'', N'', N'', N'3', N'1', N''), (N'540328', N'5403', N'00,54,5403', N'芒康县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540328', N'芒康县', N'', N'', N'', N'', N'3', N'1', N''), (N'540329', N'5403', N'00,54,5403', N'洛隆县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540329', N'洛隆县', N'', N'', N'', N'', N'3', N'1', N''), (N'540330', N'5403', N'00,54,5403', N'边坝县', N'54', N'西藏自治区', N'5403', N'昌都市', N'540330', N'边坝县', N'', N'', N'', N'', N'3', N'1', N''), (N'5404', N'54', N'00,54', N'林芝市', N'54', N'西藏自治区', N'5404', N'林芝市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'540402', N'5404', N'00,54,5404', N'巴宜区', N'54', N'西藏自治区', N'5404', N'林芝市', N'540402', N'巴宜区', N'', N'', N'', N'', N'3', N'1', N''), (N'540421', N'5404', N'00,54,5404', N'工布江达县', N'54', N'西藏自治区', N'5404', N'林芝市', N'540421', N'工布江达县', N'', N'', N'', N'', N'3', N'1', N''), (N'540422', N'5404', N'00,54,5404', N'米林县', N'54', N'西藏自治区', N'5404', N'林芝市', N'540422', N'米林县', N'', N'', N'', N'', N'3', N'1', N''), (N'540423', N'5404', N'00,54,5404', N'墨脱县', N'54', N'西藏自治区', N'5404', N'林芝市', N'540423', N'墨脱县', N'', N'', N'', N'', N'3', N'1', N''), (N'540424', N'5404', N'00,54,5404', N'波密县', N'54', N'西藏自治区', N'5404', N'林芝市', N'540424', N'波密县', N'', N'', N'', N'', N'3', N'1', N''), (N'540425', N'5404', N'00,54,5404', N'察隅县', N'54', N'西藏自治区', N'5404', N'林芝市', N'540425', N'察隅县', N'', N'', N'', N'', N'3', N'1', N''), (N'540426', N'5404', N'00,54,5404', N'朗县', N'54', N'西藏自治区', N'5404', N'林芝市', N'540426', N'朗县', N'', N'', N'', N'', N'3', N'1', N''), (N'5405', N'54', N'00,54', N'山南市', N'54', N'西藏自治区', N'5405', N'山南市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'540502', N'5405', N'00,54,5405', N'乃东区', N'54', N'西藏自治区', N'5405', N'山南市', N'540502', N'乃东区', N'', N'', N'', N'', N'3', N'1', N''), (N'540521', N'5405', N'00,54,5405', N'扎囊县', N'54', N'西藏自治区', N'5405', N'山南市', N'540521', N'扎囊县', N'', N'', N'', N'', N'3', N'1', N''), (N'540522', N'5405', N'00,54,5405', N'贡嘎县', N'54', N'西藏自治区', N'5405', N'山南市', N'540522', N'贡嘎县', N'', N'', N'', N'', N'3', N'1', N''), (N'540523', N'5405', N'00,54,5405', N'桑日县', N'54', N'西藏自治区', N'5405', N'山南市', N'540523', N'桑日县', N'', N'', N'', N'', N'3', N'1', N''), (N'540524', N'5405', N'00,54,5405', N'琼结县', N'54', N'西藏自治区', N'5405', N'山南市', N'540524', N'琼结县', N'', N'', N'', N'', N'3', N'1', N''), (N'540525', N'5405', N'00,54,5405', N'曲松县', N'54', N'西藏自治区', N'5405', N'山南市', N'540525', N'曲松县', N'', N'', N'', N'', N'3', N'1', N''), (N'540526', N'5405', N'00,54,5405', N'措美县', N'54', N'西藏自治区', N'5405', N'山南市', N'540526', N'措美县', N'', N'', N'', N'', N'3', N'1', N''), (N'540527', N'5405', N'00,54,5405', N'洛扎县', N'54', N'西藏自治区', N'5405', N'山南市', N'540527', N'洛扎县', N'', N'', N'', N'', N'3', N'1', N''), (N'540528', N'5405', N'00,54,5405', N'加查县', N'54', N'西藏自治区', N'5405', N'山南市', N'540528', N'加查县', N'', N'', N'', N'', N'3', N'1', N''), (N'540529', N'5405', N'00,54,5405', N'隆子县', N'54', N'西藏自治区', N'5405', N'山南市', N'540529', N'隆子县', N'', N'', N'', N'', N'3', N'1', N''), (N'540530', N'5405', N'00,54,5405', N'错那县', N'54', N'西藏自治区', N'5405', N'山南市', N'540530', N'错那县', N'', N'', N'', N'', N'3', N'1', N''), (N'540531', N'5405', N'00,54,5405', N'浪卡子县', N'54', N'西藏自治区', N'5405', N'山南市', N'540531', N'浪卡子县', N'', N'', N'', N'', N'3', N'1', N''), (N'5406', N'54', N'00,54', N'那曲市', N'54', N'西藏自治区', N'5406', N'那曲市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'540602', N'5406', N'00,54,5406', N'色尼区', N'54', N'西藏自治区', N'5406', N'那曲市', N'540602', N'色尼区', N'', N'', N'', N'', N'3', N'1', N''), (N'540621', N'5406', N'00,54,5406', N'嘉黎县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540621', N'嘉黎县', N'', N'', N'', N'', N'3', N'1', N''), (N'540622', N'5406', N'00,54,5406', N'比如县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540622', N'比如县', N'', N'', N'', N'', N'3', N'1', N''), (N'540623', N'5406', N'00,54,5406', N'聂荣县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540623', N'聂荣县', N'', N'', N'', N'', N'3', N'1', N''), (N'540624', N'5406', N'00,54,5406', N'安多县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540624', N'安多县', N'', N'', N'', N'', N'3', N'1', N''), (N'540625', N'5406', N'00,54,5406', N'申扎县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540625', N'申扎县', N'', N'', N'', N'', N'3', N'1', N''), (N'540626', N'5406', N'00,54,5406', N'索县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540626', N'索县', N'', N'', N'', N'', N'3', N'1', N''), (N'540627', N'5406', N'00,54,5406', N'班戈县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540627', N'班戈县', N'', N'', N'', N'', N'3', N'1', N''), (N'540628', N'5406', N'00,54,5406', N'巴青县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540628', N'巴青县', N'', N'', N'', N'', N'3', N'1', N''), (N'540629', N'5406', N'00,54,5406', N'尼玛县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540629', N'尼玛县', N'', N'', N'', N'', N'3', N'1', N''), (N'540630', N'5406', N'00,54,5406', N'双湖县', N'54', N'西藏自治区', N'5406', N'那曲市', N'540630', N'双湖县', N'', N'', N'', N'', N'3', N'1', N''), (N'5425', N'54', N'00,54', N'阿里地区', N'54', N'西藏自治区', N'5425', N'阿里地区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'542521', N'5425', N'00,54,5425', N'普兰县', N'54', N'西藏自治区', N'5425', N'阿里地区', N'542521', N'普兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'542522', N'5425', N'00,54,5425', N'札达县', N'54', N'西藏自治区', N'5425', N'阿里地区', N'542522', N'札达县', N'', N'', N'', N'', N'3', N'1', N''), (N'542523', N'5425', N'00,54,5425', N'噶尔县', N'54', N'西藏自治区', N'5425', N'阿里地区', N'542523', N'噶尔县', N'', N'', N'', N'', N'3', N'1', N''), (N'542524', N'5425', N'00,54,5425', N'日土县', N'54', N'西藏自治区', N'5425', N'阿里地区', N'542524', N'日土县', N'', N'', N'', N'', N'3', N'1', N''), (N'542525', N'5425', N'00,54,5425', N'革吉县', N'54', N'西藏自治区', N'5425', N'阿里地区', N'542525', N'革吉县', N'', N'', N'', N'', N'3', N'1', N''), (N'542526', N'5425', N'00,54,5425', N'改则县', N'54', N'西藏自治区', N'5425', N'阿里地区', N'542526', N'改则县', N'', N'', N'', N'', N'3', N'1', N''), (N'542527', N'5425', N'00,54,5425', N'措勤县', N'54', N'西藏自治区', N'5425', N'阿里地区', N'542527', N'措勤县', N'', N'', N'', N'', N'3', N'1', N''), (N'61', N'00', N'00', N'陕西省', N'61', N'陕西省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'6101', N'61', N'00,61', N'西安市', N'61', N'陕西省', N'6101', N'西安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610102', N'6101', N'00,61,6101', N'新城区', N'61', N'陕西省', N'6101', N'西安市', N'610102', N'新城区', N'', N'', N'', N'', N'3', N'1', N''), (N'610103', N'6101', N'00,61,6101', N'碑林区', N'61', N'陕西省', N'6101', N'西安市', N'610103', N'碑林区', N'', N'', N'', N'', N'3', N'1', N''), (N'610104', N'6101', N'00,61,6101', N'莲湖区', N'61', N'陕西省', N'6101', N'西安市', N'610104', N'莲湖区', N'', N'', N'', N'', N'3', N'1', N''), (N'610111', N'6101', N'00,61,6101', N'灞桥区', N'61', N'陕西省', N'6101', N'西安市', N'610111', N'灞桥区', N'', N'', N'', N'', N'3', N'1', N''), (N'610112', N'6101', N'00,61,6101', N'未央区', N'61', N'陕西省', N'6101', N'西安市', N'610112', N'未央区', N'', N'', N'', N'', N'3', N'1', N''), (N'610113', N'6101', N'00,61,6101', N'雁塔区', N'61', N'陕西省', N'6101', N'西安市', N'610113', N'雁塔区', N'', N'', N'', N'', N'3', N'1', N''), (N'610114', N'6101', N'00,61,6101', N'阎良区', N'61', N'陕西省', N'6101', N'西安市', N'610114', N'阎良区', N'', N'', N'', N'', N'3', N'1', N''), (N'610115', N'6101', N'00,61,6101', N'临潼区', N'61', N'陕西省', N'6101', N'西安市', N'610115', N'临潼区', N'', N'', N'', N'', N'3', N'1', N''), (N'610116', N'6101', N'00,61,6101', N'长安区', N'61', N'陕西省', N'6101', N'西安市', N'610116', N'长安区', N'', N'', N'', N'', N'3', N'1', N''), (N'610117', N'6101', N'00,61,6101', N'高陵区', N'61', N'陕西省', N'6101', N'西安市', N'610117', N'高陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'610118', N'6101', N'00,61,6101', N'鄠邑区', N'61', N'陕西省', N'6101', N'西安市', N'610118', N'鄠邑区', N'', N'', N'', N'', N'3', N'1', N''), (N'610122', N'6101', N'00,61,6101', N'蓝田县', N'61', N'陕西省', N'6101', N'西安市', N'610122', N'蓝田县', N'', N'', N'', N'', N'3', N'1', N''), (N'610124', N'6101', N'00,61,6101', N'周至县', N'61', N'陕西省', N'6101', N'西安市', N'610124', N'周至县', N'', N'', N'', N'', N'3', N'1', N''), (N'6102', N'61', N'00,61', N'铜川市', N'61', N'陕西省', N'6102', N'铜川市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610202', N'6102', N'00,61,6102', N'王益区', N'61', N'陕西省', N'6102', N'铜川市', N'610202', N'王益区', N'', N'', N'', N'', N'3', N'1', N''), (N'610203', N'6102', N'00,61,6102', N'印台区', N'61', N'陕西省', N'6102', N'铜川市', N'610203', N'印台区', N'', N'', N'', N'', N'3', N'1', N''), (N'610204', N'6102', N'00,61,6102', N'耀州区', N'61', N'陕西省', N'6102', N'铜川市', N'610204', N'耀州区', N'', N'', N'', N'', N'3', N'1', N''), (N'610222', N'6102', N'00,61,6102', N'宜君县', N'61', N'陕西省', N'6102', N'铜川市', N'610222', N'宜君县', N'', N'', N'', N'', N'3', N'1', N''), (N'6103', N'61', N'00,61', N'宝鸡市', N'61', N'陕西省', N'6103', N'宝鸡市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610302', N'6103', N'00,61,6103', N'渭滨区', N'61', N'陕西省', N'6103', N'宝鸡市', N'610302', N'渭滨区', N'', N'', N'', N'', N'3', N'1', N''), (N'610303', N'6103', N'00,61,6103', N'金台区', N'61', N'陕西省', N'6103', N'宝鸡市', N'610303', N'金台区', N'', N'', N'', N'', N'3', N'1', N''), (N'610304', N'6103', N'00,61,6103', N'陈仓区', N'61', N'陕西省', N'6103', N'宝鸡市', N'610304', N'陈仓区', N'', N'', N'', N'', N'3', N'1', N''), (N'610322', N'6103', N'00,61,6103', N'凤翔县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610322', N'凤翔县', N'', N'', N'', N'', N'3', N'1', N''), (N'610323', N'6103', N'00,61,6103', N'岐山县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610323', N'岐山县', N'', N'', N'', N'', N'3', N'1', N''), (N'610324', N'6103', N'00,61,6103', N'扶风县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610324', N'扶风县', N'', N'', N'', N'', N'3', N'1', N''), (N'610326', N'6103', N'00,61,6103', N'眉县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610326', N'眉县', N'', N'', N'', N'', N'3', N'1', N''), (N'610327', N'6103', N'00,61,6103', N'陇县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610327', N'陇县', N'', N'', N'', N'', N'3', N'1', N''), (N'610328', N'6103', N'00,61,6103', N'千阳县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610328', N'千阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'610329', N'6103', N'00,61,6103', N'麟游县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610329', N'麟游县', N'', N'', N'', N'', N'3', N'1', N''), (N'610330', N'6103', N'00,61,6103', N'凤县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610330', N'凤县', N'', N'', N'', N'', N'3', N'1', N''), (N'610331', N'6103', N'00,61,6103', N'太白县', N'61', N'陕西省', N'6103', N'宝鸡市', N'610331', N'太白县', N'', N'', N'', N'', N'3', N'1', N''), (N'6104', N'61', N'00,61', N'咸阳市', N'61', N'陕西省', N'6104', N'咸阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610402', N'6104', N'00,61,6104', N'秦都区', N'61', N'陕西省', N'6104', N'咸阳市', N'610402', N'秦都区', N'', N'', N'', N'', N'3', N'1', N''), (N'610403', N'6104', N'00,61,6104', N'杨陵区', N'61', N'陕西省', N'6104', N'咸阳市', N'610403', N'杨陵区', N'', N'', N'', N'', N'3', N'1', N''), (N'610404', N'6104', N'00,61,6104', N'渭城区', N'61', N'陕西省', N'6104', N'咸阳市', N'610404', N'渭城区', N'', N'', N'', N'', N'3', N'1', N''), (N'610422', N'6104', N'00,61,6104', N'三原县', N'61', N'陕西省', N'6104', N'咸阳市', N'610422', N'三原县', N'', N'', N'', N'', N'3', N'1', N''), (N'610423', N'6104', N'00,61,6104', N'泾阳县', N'61', N'陕西省', N'6104', N'咸阳市', N'610423', N'泾阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'610424', N'6104', N'00,61,6104', N'乾县', N'61', N'陕西省', N'6104', N'咸阳市', N'610424', N'乾县', N'', N'', N'', N'', N'3', N'1', N''), (N'610425', N'6104', N'00,61,6104', N'礼泉县', N'61', N'陕西省', N'6104', N'咸阳市', N'610425', N'礼泉县', N'', N'', N'', N'', N'3', N'1', N''), (N'610426', N'6104', N'00,61,6104', N'永寿县', N'61', N'陕西省', N'6104', N'咸阳市', N'610426', N'永寿县', N'', N'', N'', N'', N'3', N'1', N''), (N'610428', N'6104', N'00,61,6104', N'长武县', N'61', N'陕西省', N'6104', N'咸阳市', N'610428', N'长武县', N'', N'', N'', N'', N'3', N'1', N''), (N'610429', N'6104', N'00,61,6104', N'旬邑县', N'61', N'陕西省', N'6104', N'咸阳市', N'610429', N'旬邑县', N'', N'', N'', N'', N'3', N'1', N''), (N'610430', N'6104', N'00,61,6104', N'淳化县', N'61', N'陕西省', N'6104', N'咸阳市', N'610430', N'淳化县', N'', N'', N'', N'', N'3', N'1', N''), (N'610431', N'6104', N'00,61,6104', N'武功县', N'61', N'陕西省', N'6104', N'咸阳市', N'610431', N'武功县', N'', N'', N'', N'', N'3', N'1', N''), (N'610481', N'6104', N'00,61,6104', N'兴平市', N'61', N'陕西省', N'6104', N'咸阳市', N'610481', N'兴平市', N'', N'', N'', N'', N'3', N'1', N''), (N'610482', N'6104', N'00,61,6104', N'彬州市', N'61', N'陕西省', N'6104', N'咸阳市', N'610482', N'彬州市', N'', N'', N'', N'', N'3', N'1', N''), (N'6105', N'61', N'00,61', N'渭南市', N'61', N'陕西省', N'6105', N'渭南市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610502', N'6105', N'00,61,6105', N'临渭区', N'61', N'陕西省', N'6105', N'渭南市', N'610502', N'临渭区', N'', N'', N'', N'', N'3', N'1', N''), (N'610503', N'6105', N'00,61,6105', N'华州区', N'61', N'陕西省', N'6105', N'渭南市', N'610503', N'华州区', N'', N'', N'', N'', N'3', N'1', N''), (N'610522', N'6105', N'00,61,6105', N'潼关县', N'61', N'陕西省', N'6105', N'渭南市', N'610522', N'潼关县', N'', N'', N'', N'', N'3', N'1', N''), (N'610523', N'6105', N'00,61,6105', N'大荔县', N'61', N'陕西省', N'6105', N'渭南市', N'610523', N'大荔县', N'', N'', N'', N'', N'3', N'1', N''), (N'610524', N'6105', N'00,61,6105', N'合阳县', N'61', N'陕西省', N'6105', N'渭南市', N'610524', N'合阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'610525', N'6105', N'00,61,6105', N'澄城县', N'61', N'陕西省', N'6105', N'渭南市', N'610525', N'澄城县', N'', N'', N'', N'', N'3', N'1', N''), (N'610526', N'6105', N'00,61,6105', N'蒲城县', N'61', N'陕西省', N'6105', N'渭南市', N'610526', N'蒲城县', N'', N'', N'', N'', N'3', N'1', N''), (N'610527', N'6105', N'00,61,6105', N'白水县', N'61', N'陕西省', N'6105', N'渭南市', N'610527', N'白水县', N'', N'', N'', N'', N'3', N'1', N''), (N'610528', N'6105', N'00,61,6105', N'富平县', N'61', N'陕西省', N'6105', N'渭南市', N'610528', N'富平县', N'', N'', N'', N'', N'3', N'1', N''), (N'610581', N'6105', N'00,61,6105', N'韩城市', N'61', N'陕西省', N'6105', N'渭南市', N'610581', N'韩城市', N'', N'', N'', N'', N'3', N'1', N''), (N'610582', N'6105', N'00,61,6105', N'华阴市', N'61', N'陕西省', N'6105', N'渭南市', N'610582', N'华阴市', N'', N'', N'', N'', N'3', N'1', N''), (N'6106', N'61', N'00,61', N'延安市', N'61', N'陕西省', N'6106', N'延安市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610602', N'6106', N'00,61,6106', N'宝塔区', N'61', N'陕西省', N'6106', N'延安市', N'610602', N'宝塔区', N'', N'', N'', N'', N'3', N'1', N''), (N'610603', N'6106', N'00,61,6106', N'安塞区', N'61', N'陕西省', N'6106', N'延安市', N'610603', N'安塞区', N'', N'', N'', N'', N'3', N'1', N''), (N'610621', N'6106', N'00,61,6106', N'延长县', N'61', N'陕西省', N'6106', N'延安市', N'610621', N'延长县', N'', N'', N'', N'', N'3', N'1', N''), (N'610622', N'6106', N'00,61,6106', N'延川县', N'61', N'陕西省', N'6106', N'延安市', N'610622', N'延川县', N'', N'', N'', N'', N'3', N'1', N''), (N'610625', N'6106', N'00,61,6106', N'志丹县', N'61', N'陕西省', N'6106', N'延安市', N'610625', N'志丹县', N'', N'', N'', N'', N'3', N'1', N''), (N'610626', N'6106', N'00,61,6106', N'吴起县', N'61', N'陕西省', N'6106', N'延安市', N'610626', N'吴起县', N'', N'', N'', N'', N'3', N'1', N''), (N'610627', N'6106', N'00,61,6106', N'甘泉县', N'61', N'陕西省', N'6106', N'延安市', N'610627', N'甘泉县', N'', N'', N'', N'', N'3', N'1', N''), (N'610628', N'6106', N'00,61,6106', N'富县', N'61', N'陕西省', N'6106', N'延安市', N'610628', N'富县', N'', N'', N'', N'', N'3', N'1', N''), (N'610629', N'6106', N'00,61,6106', N'洛川县', N'61', N'陕西省', N'6106', N'延安市', N'610629', N'洛川县', N'', N'', N'', N'', N'3', N'1', N''), (N'610630', N'6106', N'00,61,6106', N'宜川县', N'61', N'陕西省', N'6106', N'延安市', N'610630', N'宜川县', N'', N'', N'', N'', N'3', N'1', N''), (N'610631', N'6106', N'00,61,6106', N'黄龙县', N'61', N'陕西省', N'6106', N'延安市', N'610631', N'黄龙县', N'', N'', N'', N'', N'3', N'1', N''), (N'610632', N'6106', N'00,61,6106', N'黄陵县', N'61', N'陕西省', N'6106', N'延安市', N'610632', N'黄陵县', N'', N'', N'', N'', N'3', N'1', N''), (N'610681', N'6106', N'00,61,6106', N'子长市', N'61', N'陕西省', N'6106', N'延安市', N'610681', N'子长市', N'', N'', N'', N'', N'3', N'1', N''), (N'6107', N'61', N'00,61', N'汉中市', N'61', N'陕西省', N'6107', N'汉中市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610702', N'6107', N'00,61,6107', N'汉台区', N'61', N'陕西省', N'6107', N'汉中市', N'610702', N'汉台区', N'', N'', N'', N'', N'3', N'1', N''), (N'610703', N'6107', N'00,61,6107', N'南郑区', N'61', N'陕西省', N'6107', N'汉中市', N'610703', N'南郑区', N'', N'', N'', N'', N'3', N'1', N''), (N'610722', N'6107', N'00,61,6107', N'城固县', N'61', N'陕西省', N'6107', N'汉中市', N'610722', N'城固县', N'', N'', N'', N'', N'3', N'1', N''), (N'610723', N'6107', N'00,61,6107', N'洋县', N'61', N'陕西省', N'6107', N'汉中市', N'610723', N'洋县', N'', N'', N'', N'', N'3', N'1', N''), (N'610724', N'6107', N'00,61,6107', N'西乡县', N'61', N'陕西省', N'6107', N'汉中市', N'610724', N'西乡县', N'', N'', N'', N'', N'3', N'1', N''), (N'610725', N'6107', N'00,61,6107', N'勉县', N'61', N'陕西省', N'6107', N'汉中市', N'610725', N'勉县', N'', N'', N'', N'', N'3', N'1', N''), (N'610726', N'6107', N'00,61,6107', N'宁强县', N'61', N'陕西省', N'6107', N'汉中市', N'610726', N'宁强县', N'', N'', N'', N'', N'3', N'1', N''), (N'610727', N'6107', N'00,61,6107', N'略阳县', N'61', N'陕西省', N'6107', N'汉中市', N'610727', N'略阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'610728', N'6107', N'00,61,6107', N'镇巴县', N'61', N'陕西省', N'6107', N'汉中市', N'610728', N'镇巴县', N'', N'', N'', N'', N'3', N'1', N''), (N'610729', N'6107', N'00,61,6107', N'留坝县', N'61', N'陕西省', N'6107', N'汉中市', N'610729', N'留坝县', N'', N'', N'', N'', N'3', N'1', N''), (N'610730', N'6107', N'00,61,6107', N'佛坪县', N'61', N'陕西省', N'6107', N'汉中市', N'610730', N'佛坪县', N'', N'', N'', N'', N'3', N'1', N''), (N'6108', N'61', N'00,61', N'榆林市', N'61', N'陕西省', N'6108', N'榆林市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610802', N'6108', N'00,61,6108', N'榆阳区', N'61', N'陕西省', N'6108', N'榆林市', N'610802', N'榆阳区', N'', N'', N'', N'', N'3', N'1', N''), (N'610803', N'6108', N'00,61,6108', N'横山区', N'61', N'陕西省', N'6108', N'榆林市', N'610803', N'横山区', N'', N'', N'', N'', N'3', N'1', N''), (N'610822', N'6108', N'00,61,6108', N'府谷县', N'61', N'陕西省', N'6108', N'榆林市', N'610822', N'府谷县', N'', N'', N'', N'', N'3', N'1', N''), (N'610824', N'6108', N'00,61,6108', N'靖边县', N'61', N'陕西省', N'6108', N'榆林市', N'610824', N'靖边县', N'', N'', N'', N'', N'3', N'1', N''), (N'610825', N'6108', N'00,61,6108', N'定边县', N'61', N'陕西省', N'6108', N'榆林市', N'610825', N'定边县', N'', N'', N'', N'', N'3', N'1', N''), (N'610826', N'6108', N'00,61,6108', N'绥德县', N'61', N'陕西省', N'6108', N'榆林市', N'610826', N'绥德县', N'', N'', N'', N'', N'3', N'1', N''), (N'610827', N'6108', N'00,61,6108', N'米脂县', N'61', N'陕西省', N'6108', N'榆林市', N'610827', N'米脂县', N'', N'', N'', N'', N'3', N'1', N''), (N'610828', N'6108', N'00,61,6108', N'佳县', N'61', N'陕西省', N'6108', N'榆林市', N'610828', N'佳县', N'', N'', N'', N'', N'3', N'1', N''), (N'610829', N'6108', N'00,61,6108', N'吴堡县', N'61', N'陕西省', N'6108', N'榆林市', N'610829', N'吴堡县', N'', N'', N'', N'', N'3', N'1', N''), (N'610830', N'6108', N'00,61,6108', N'清涧县', N'61', N'陕西省', N'6108', N'榆林市', N'610830', N'清涧县', N'', N'', N'', N'', N'3', N'1', N'')
GO

INSERT INTO [dbo].[blade_region] VALUES (N'610831', N'6108', N'00,61,6108', N'子洲县', N'61', N'陕西省', N'6108', N'榆林市', N'610831', N'子洲县', N'', N'', N'', N'', N'3', N'1', N''), (N'610881', N'6108', N'00,61,6108', N'神木市', N'61', N'陕西省', N'6108', N'榆林市', N'610881', N'神木市', N'', N'', N'', N'', N'3', N'1', N''), (N'6109', N'61', N'00,61', N'安康市', N'61', N'陕西省', N'6109', N'安康市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'610902', N'6109', N'00,61,6109', N'汉滨区', N'61', N'陕西省', N'6109', N'安康市', N'610902', N'汉滨区', N'', N'', N'', N'', N'3', N'1', N''), (N'610921', N'6109', N'00,61,6109', N'汉阴县', N'61', N'陕西省', N'6109', N'安康市', N'610921', N'汉阴县', N'', N'', N'', N'', N'3', N'1', N''), (N'610922', N'6109', N'00,61,6109', N'石泉县', N'61', N'陕西省', N'6109', N'安康市', N'610922', N'石泉县', N'', N'', N'', N'', N'3', N'1', N''), (N'610923', N'6109', N'00,61,6109', N'宁陕县', N'61', N'陕西省', N'6109', N'安康市', N'610923', N'宁陕县', N'', N'', N'', N'', N'3', N'1', N''), (N'610924', N'6109', N'00,61,6109', N'紫阳县', N'61', N'陕西省', N'6109', N'安康市', N'610924', N'紫阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'610925', N'6109', N'00,61,6109', N'岚皋县', N'61', N'陕西省', N'6109', N'安康市', N'610925', N'岚皋县', N'', N'', N'', N'', N'3', N'1', N''), (N'610926', N'6109', N'00,61,6109', N'平利县', N'61', N'陕西省', N'6109', N'安康市', N'610926', N'平利县', N'', N'', N'', N'', N'3', N'1', N''), (N'610927', N'6109', N'00,61,6109', N'镇坪县', N'61', N'陕西省', N'6109', N'安康市', N'610927', N'镇坪县', N'', N'', N'', N'', N'3', N'1', N''), (N'610928', N'6109', N'00,61,6109', N'旬阳县', N'61', N'陕西省', N'6109', N'安康市', N'610928', N'旬阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'610929', N'6109', N'00,61,6109', N'白河县', N'61', N'陕西省', N'6109', N'安康市', N'610929', N'白河县', N'', N'', N'', N'', N'3', N'1', N''), (N'6110', N'61', N'00,61', N'商洛市', N'61', N'陕西省', N'6110', N'商洛市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'611002', N'6110', N'00,61,6110', N'商州区', N'61', N'陕西省', N'6110', N'商洛市', N'611002', N'商州区', N'', N'', N'', N'', N'3', N'1', N''), (N'611021', N'6110', N'00,61,6110', N'洛南县', N'61', N'陕西省', N'6110', N'商洛市', N'611021', N'洛南县', N'', N'', N'', N'', N'3', N'1', N''), (N'611022', N'6110', N'00,61,6110', N'丹凤县', N'61', N'陕西省', N'6110', N'商洛市', N'611022', N'丹凤县', N'', N'', N'', N'', N'3', N'1', N''), (N'611023', N'6110', N'00,61,6110', N'商南县', N'61', N'陕西省', N'6110', N'商洛市', N'611023', N'商南县', N'', N'', N'', N'', N'3', N'1', N''), (N'611024', N'6110', N'00,61,6110', N'山阳县', N'61', N'陕西省', N'6110', N'商洛市', N'611024', N'山阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'611025', N'6110', N'00,61,6110', N'镇安县', N'61', N'陕西省', N'6110', N'商洛市', N'611025', N'镇安县', N'', N'', N'', N'', N'3', N'1', N''), (N'611026', N'6110', N'00,61,6110', N'柞水县', N'61', N'陕西省', N'6110', N'商洛市', N'611026', N'柞水县', N'', N'', N'', N'', N'3', N'1', N''), (N'62', N'00', N'00', N'甘肃省', N'62', N'甘肃省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'6201', N'62', N'00,62', N'兰州市', N'62', N'甘肃省', N'6201', N'兰州市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620102', N'6201', N'00,62,6201', N'城关区', N'62', N'甘肃省', N'6201', N'兰州市', N'620102', N'城关区', N'', N'', N'', N'', N'3', N'1', N''), (N'620103', N'6201', N'00,62,6201', N'七里河区', N'62', N'甘肃省', N'6201', N'兰州市', N'620103', N'七里河区', N'', N'', N'', N'', N'3', N'1', N''), (N'620104', N'6201', N'00,62,6201', N'西固区', N'62', N'甘肃省', N'6201', N'兰州市', N'620104', N'西固区', N'', N'', N'', N'', N'3', N'1', N''), (N'620105', N'6201', N'00,62,6201', N'安宁区', N'62', N'甘肃省', N'6201', N'兰州市', N'620105', N'安宁区', N'', N'', N'', N'', N'3', N'1', N''), (N'620111', N'6201', N'00,62,6201', N'红古区', N'62', N'甘肃省', N'6201', N'兰州市', N'620111', N'红古区', N'', N'', N'', N'', N'3', N'1', N''), (N'620121', N'6201', N'00,62,6201', N'永登县', N'62', N'甘肃省', N'6201', N'兰州市', N'620121', N'永登县', N'', N'', N'', N'', N'3', N'1', N''), (N'620122', N'6201', N'00,62,6201', N'皋兰县', N'62', N'甘肃省', N'6201', N'兰州市', N'620122', N'皋兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'620123', N'6201', N'00,62,6201', N'榆中县', N'62', N'甘肃省', N'6201', N'兰州市', N'620123', N'榆中县', N'', N'', N'', N'', N'3', N'1', N''), (N'6202', N'62', N'00,62', N'嘉峪关市', N'62', N'甘肃省', N'6202', N'嘉峪关市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620200', N'6202', N'00,62,6202', N'嘉峪关市', N'62', N'甘肃省', N'6202', N'嘉峪关市', N'620200', N'嘉峪关市', N'', N'', N'', N'', N'3', N'1', N''), (N'6203', N'62', N'00,62', N'金昌市', N'62', N'甘肃省', N'6203', N'金昌市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620302', N'6203', N'00,62,6203', N'金川区', N'62', N'甘肃省', N'6203', N'金昌市', N'620302', N'金川区', N'', N'', N'', N'', N'3', N'1', N''), (N'620321', N'6203', N'00,62,6203', N'永昌县', N'62', N'甘肃省', N'6203', N'金昌市', N'620321', N'永昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'6204', N'62', N'00,62', N'白银市', N'62', N'甘肃省', N'6204', N'白银市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620402', N'6204', N'00,62,6204', N'白银区', N'62', N'甘肃省', N'6204', N'白银市', N'620402', N'白银区', N'', N'', N'', N'', N'3', N'1', N''), (N'620403', N'6204', N'00,62,6204', N'平川区', N'62', N'甘肃省', N'6204', N'白银市', N'620403', N'平川区', N'', N'', N'', N'', N'3', N'1', N''), (N'620421', N'6204', N'00,62,6204', N'靖远县', N'62', N'甘肃省', N'6204', N'白银市', N'620421', N'靖远县', N'', N'', N'', N'', N'3', N'1', N''), (N'620422', N'6204', N'00,62,6204', N'会宁县', N'62', N'甘肃省', N'6204', N'白银市', N'620422', N'会宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'620423', N'6204', N'00,62,6204', N'景泰县', N'62', N'甘肃省', N'6204', N'白银市', N'620423', N'景泰县', N'', N'', N'', N'', N'3', N'1', N''), (N'6205', N'62', N'00,62', N'天水市', N'62', N'甘肃省', N'6205', N'天水市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620502', N'6205', N'00,62,6205', N'秦州区', N'62', N'甘肃省', N'6205', N'天水市', N'620502', N'秦州区', N'', N'', N'', N'', N'3', N'1', N''), (N'620503', N'6205', N'00,62,6205', N'麦积区', N'62', N'甘肃省', N'6205', N'天水市', N'620503', N'麦积区', N'', N'', N'', N'', N'3', N'1', N''), (N'620521', N'6205', N'00,62,6205', N'清水县', N'62', N'甘肃省', N'6205', N'天水市', N'620521', N'清水县', N'', N'', N'', N'', N'3', N'1', N''), (N'620522', N'6205', N'00,62,6205', N'秦安县', N'62', N'甘肃省', N'6205', N'天水市', N'620522', N'秦安县', N'', N'', N'', N'', N'3', N'1', N''), (N'620523', N'6205', N'00,62,6205', N'甘谷县', N'62', N'甘肃省', N'6205', N'天水市', N'620523', N'甘谷县', N'', N'', N'', N'', N'3', N'1', N''), (N'620524', N'6205', N'00,62,6205', N'武山县', N'62', N'甘肃省', N'6205', N'天水市', N'620524', N'武山县', N'', N'', N'', N'', N'3', N'1', N''), (N'620525', N'6205', N'00,62,6205', N'张家川回族自治县', N'62', N'甘肃省', N'6205', N'天水市', N'620525', N'张家川回族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6206', N'62', N'00,62', N'武威市', N'62', N'甘肃省', N'6206', N'武威市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620602', N'6206', N'00,62,6206', N'凉州区', N'62', N'甘肃省', N'6206', N'武威市', N'620602', N'凉州区', N'', N'', N'', N'', N'3', N'1', N''), (N'620621', N'6206', N'00,62,6206', N'民勤县', N'62', N'甘肃省', N'6206', N'武威市', N'620621', N'民勤县', N'', N'', N'', N'', N'3', N'1', N''), (N'620622', N'6206', N'00,62,6206', N'古浪县', N'62', N'甘肃省', N'6206', N'武威市', N'620622', N'古浪县', N'', N'', N'', N'', N'3', N'1', N''), (N'620623', N'6206', N'00,62,6206', N'天祝藏族自治县', N'62', N'甘肃省', N'6206', N'武威市', N'620623', N'天祝藏族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6207', N'62', N'00,62', N'张掖市', N'62', N'甘肃省', N'6207', N'张掖市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620702', N'6207', N'00,62,6207', N'甘州区', N'62', N'甘肃省', N'6207', N'张掖市', N'620702', N'甘州区', N'', N'', N'', N'', N'3', N'1', N''), (N'620721', N'6207', N'00,62,6207', N'肃南裕固族自治县', N'62', N'甘肃省', N'6207', N'张掖市', N'620721', N'肃南裕固族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'620722', N'6207', N'00,62,6207', N'民乐县', N'62', N'甘肃省', N'6207', N'张掖市', N'620722', N'民乐县', N'', N'', N'', N'', N'3', N'1', N''), (N'620723', N'6207', N'00,62,6207', N'临泽县', N'62', N'甘肃省', N'6207', N'张掖市', N'620723', N'临泽县', N'', N'', N'', N'', N'3', N'1', N''), (N'620724', N'6207', N'00,62,6207', N'高台县', N'62', N'甘肃省', N'6207', N'张掖市', N'620724', N'高台县', N'', N'', N'', N'', N'3', N'1', N''), (N'620725', N'6207', N'00,62,6207', N'山丹县', N'62', N'甘肃省', N'6207', N'张掖市', N'620725', N'山丹县', N'', N'', N'', N'', N'3', N'1', N''), (N'6208', N'62', N'00,62', N'平凉市', N'62', N'甘肃省', N'6208', N'平凉市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620802', N'6208', N'00,62,6208', N'崆峒区', N'62', N'甘肃省', N'6208', N'平凉市', N'620802', N'崆峒区', N'', N'', N'', N'', N'3', N'1', N''), (N'620821', N'6208', N'00,62,6208', N'泾川县', N'62', N'甘肃省', N'6208', N'平凉市', N'620821', N'泾川县', N'', N'', N'', N'', N'3', N'1', N''), (N'620822', N'6208', N'00,62,6208', N'灵台县', N'62', N'甘肃省', N'6208', N'平凉市', N'620822', N'灵台县', N'', N'', N'', N'', N'3', N'1', N''), (N'620823', N'6208', N'00,62,6208', N'崇信县', N'62', N'甘肃省', N'6208', N'平凉市', N'620823', N'崇信县', N'', N'', N'', N'', N'3', N'1', N''), (N'620825', N'6208', N'00,62,6208', N'庄浪县', N'62', N'甘肃省', N'6208', N'平凉市', N'620825', N'庄浪县', N'', N'', N'', N'', N'3', N'1', N''), (N'620826', N'6208', N'00,62,6208', N'静宁县', N'62', N'甘肃省', N'6208', N'平凉市', N'620826', N'静宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'620881', N'6208', N'00,62,6208', N'华亭市', N'62', N'甘肃省', N'6208', N'平凉市', N'620881', N'华亭市', N'', N'', N'', N'', N'3', N'1', N''), (N'6209', N'62', N'00,62', N'酒泉市', N'62', N'甘肃省', N'6209', N'酒泉市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'620902', N'6209', N'00,62,6209', N'肃州区', N'62', N'甘肃省', N'6209', N'酒泉市', N'620902', N'肃州区', N'', N'', N'', N'', N'3', N'1', N''), (N'620921', N'6209', N'00,62,6209', N'金塔县', N'62', N'甘肃省', N'6209', N'酒泉市', N'620921', N'金塔县', N'', N'', N'', N'', N'3', N'1', N''), (N'620922', N'6209', N'00,62,6209', N'瓜州县', N'62', N'甘肃省', N'6209', N'酒泉市', N'620922', N'瓜州县', N'', N'', N'', N'', N'3', N'1', N''), (N'620923', N'6209', N'00,62,6209', N'肃北蒙古族自治县', N'62', N'甘肃省', N'6209', N'酒泉市', N'620923', N'肃北蒙古族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'620924', N'6209', N'00,62,6209', N'阿克塞哈萨克族自治县', N'62', N'甘肃省', N'6209', N'酒泉市', N'620924', N'阿克塞哈萨克族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'620981', N'6209', N'00,62,6209', N'玉门市', N'62', N'甘肃省', N'6209', N'酒泉市', N'620981', N'玉门市', N'', N'', N'', N'', N'3', N'1', N''), (N'620982', N'6209', N'00,62,6209', N'敦煌市', N'62', N'甘肃省', N'6209', N'酒泉市', N'620982', N'敦煌市', N'', N'', N'', N'', N'3', N'1', N''), (N'6210', N'62', N'00,62', N'庆阳市', N'62', N'甘肃省', N'6210', N'庆阳市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'621002', N'6210', N'00,62,6210', N'西峰区', N'62', N'甘肃省', N'6210', N'庆阳市', N'621002', N'西峰区', N'', N'', N'', N'', N'3', N'1', N''), (N'621021', N'6210', N'00,62,6210', N'庆城县', N'62', N'甘肃省', N'6210', N'庆阳市', N'621021', N'庆城县', N'', N'', N'', N'', N'3', N'1', N''), (N'621022', N'6210', N'00,62,6210', N'环县', N'62', N'甘肃省', N'6210', N'庆阳市', N'621022', N'环县', N'', N'', N'', N'', N'3', N'1', N''), (N'621023', N'6210', N'00,62,6210', N'华池县', N'62', N'甘肃省', N'6210', N'庆阳市', N'621023', N'华池县', N'', N'', N'', N'', N'3', N'1', N''), (N'621024', N'6210', N'00,62,6210', N'合水县', N'62', N'甘肃省', N'6210', N'庆阳市', N'621024', N'合水县', N'', N'', N'', N'', N'3', N'1', N''), (N'621025', N'6210', N'00,62,6210', N'正宁县', N'62', N'甘肃省', N'6210', N'庆阳市', N'621025', N'正宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'621026', N'6210', N'00,62,6210', N'宁县', N'62', N'甘肃省', N'6210', N'庆阳市', N'621026', N'宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'621027', N'6210', N'00,62,6210', N'镇原县', N'62', N'甘肃省', N'6210', N'庆阳市', N'621027', N'镇原县', N'', N'', N'', N'', N'3', N'1', N''), (N'6211', N'62', N'00,62', N'定西市', N'62', N'甘肃省', N'6211', N'定西市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'621102', N'6211', N'00,62,6211', N'安定区', N'62', N'甘肃省', N'6211', N'定西市', N'621102', N'安定区', N'', N'', N'', N'', N'3', N'1', N''), (N'621121', N'6211', N'00,62,6211', N'通渭县', N'62', N'甘肃省', N'6211', N'定西市', N'621121', N'通渭县', N'', N'', N'', N'', N'3', N'1', N''), (N'621122', N'6211', N'00,62,6211', N'陇西县', N'62', N'甘肃省', N'6211', N'定西市', N'621122', N'陇西县', N'', N'', N'', N'', N'3', N'1', N''), (N'621123', N'6211', N'00,62,6211', N'渭源县', N'62', N'甘肃省', N'6211', N'定西市', N'621123', N'渭源县', N'', N'', N'', N'', N'3', N'1', N''), (N'621124', N'6211', N'00,62,6211', N'临洮县', N'62', N'甘肃省', N'6211', N'定西市', N'621124', N'临洮县', N'', N'', N'', N'', N'3', N'1', N''), (N'621125', N'6211', N'00,62,6211', N'漳县', N'62', N'甘肃省', N'6211', N'定西市', N'621125', N'漳县', N'', N'', N'', N'', N'3', N'1', N''), (N'621126', N'6211', N'00,62,6211', N'岷县', N'62', N'甘肃省', N'6211', N'定西市', N'621126', N'岷县', N'', N'', N'', N'', N'3', N'1', N''), (N'6212', N'62', N'00,62', N'陇南市', N'62', N'甘肃省', N'6212', N'陇南市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'621202', N'6212', N'00,62,6212', N'武都区', N'62', N'甘肃省', N'6212', N'陇南市', N'621202', N'武都区', N'', N'', N'', N'', N'3', N'1', N''), (N'621221', N'6212', N'00,62,6212', N'成县', N'62', N'甘肃省', N'6212', N'陇南市', N'621221', N'成县', N'', N'', N'', N'', N'3', N'1', N''), (N'621222', N'6212', N'00,62,6212', N'文县', N'62', N'甘肃省', N'6212', N'陇南市', N'621222', N'文县', N'', N'', N'', N'', N'3', N'1', N''), (N'621223', N'6212', N'00,62,6212', N'宕昌县', N'62', N'甘肃省', N'6212', N'陇南市', N'621223', N'宕昌县', N'', N'', N'', N'', N'3', N'1', N''), (N'621224', N'6212', N'00,62,6212', N'康县', N'62', N'甘肃省', N'6212', N'陇南市', N'621224', N'康县', N'', N'', N'', N'', N'3', N'1', N''), (N'621225', N'6212', N'00,62,6212', N'西和县', N'62', N'甘肃省', N'6212', N'陇南市', N'621225', N'西和县', N'', N'', N'', N'', N'3', N'1', N''), (N'621226', N'6212', N'00,62,6212', N'礼县', N'62', N'甘肃省', N'6212', N'陇南市', N'621226', N'礼县', N'', N'', N'', N'', N'3', N'1', N''), (N'621227', N'6212', N'00,62,6212', N'徽县', N'62', N'甘肃省', N'6212', N'陇南市', N'621227', N'徽县', N'', N'', N'', N'', N'3', N'1', N''), (N'621228', N'6212', N'00,62,6212', N'两当县', N'62', N'甘肃省', N'6212', N'陇南市', N'621228', N'两当县', N'', N'', N'', N'', N'3', N'1', N''), (N'6229', N'62', N'00,62', N'临夏回族自治州', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'622901', N'6229', N'00,62,6229', N'临夏市', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622901', N'临夏市', N'', N'', N'', N'', N'3', N'1', N''), (N'622921', N'6229', N'00,62,6229', N'临夏县', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622921', N'临夏县', N'', N'', N'', N'', N'3', N'1', N''), (N'622922', N'6229', N'00,62,6229', N'康乐县', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622922', N'康乐县', N'', N'', N'', N'', N'3', N'1', N''), (N'622923', N'6229', N'00,62,6229', N'永靖县', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622923', N'永靖县', N'', N'', N'', N'', N'3', N'1', N''), (N'622924', N'6229', N'00,62,6229', N'广河县', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622924', N'广河县', N'', N'', N'', N'', N'3', N'1', N''), (N'622925', N'6229', N'00,62,6229', N'和政县', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622925', N'和政县', N'', N'', N'', N'', N'3', N'1', N''), (N'622926', N'6229', N'00,62,6229', N'东乡族自治县', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622926', N'东乡族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'622927', N'6229', N'00,62,6229', N'积石山保安族东乡族撒拉族自治县', N'62', N'甘肃省', N'6229', N'临夏回族自治州', N'622927', N'积石山保安族东乡族撒拉族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6230', N'62', N'00,62', N'甘南藏族自治州', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'623001', N'6230', N'00,62,6230', N'合作市', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623001', N'合作市', N'', N'', N'', N'', N'3', N'1', N''), (N'623021', N'6230', N'00,62,6230', N'临潭县', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623021', N'临潭县', N'', N'', N'', N'', N'3', N'1', N''), (N'623022', N'6230', N'00,62,6230', N'卓尼县', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623022', N'卓尼县', N'', N'', N'', N'', N'3', N'1', N''), (N'623023', N'6230', N'00,62,6230', N'舟曲县', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623023', N'舟曲县', N'', N'', N'', N'', N'3', N'1', N''), (N'623024', N'6230', N'00,62,6230', N'迭部县', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623024', N'迭部县', N'', N'', N'', N'', N'3', N'1', N''), (N'623025', N'6230', N'00,62,6230', N'玛曲县', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623025', N'玛曲县', N'', N'', N'', N'', N'3', N'1', N''), (N'623026', N'6230', N'00,62,6230', N'碌曲县', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623026', N'碌曲县', N'', N'', N'', N'', N'3', N'1', N''), (N'623027', N'6230', N'00,62,6230', N'夏河县', N'62', N'甘肃省', N'6230', N'甘南藏族自治州', N'623027', N'夏河县', N'', N'', N'', N'', N'3', N'1', N''), (N'63', N'00', N'00', N'青海省', N'63', N'青海省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'6301', N'63', N'00,63', N'西宁市', N'63', N'青海省', N'6301', N'西宁市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'630102', N'6301', N'00,63,6301', N'城东区', N'63', N'青海省', N'6301', N'西宁市', N'630102', N'城东区', N'', N'', N'', N'', N'3', N'1', N''), (N'630103', N'6301', N'00,63,6301', N'城中区', N'63', N'青海省', N'6301', N'西宁市', N'630103', N'城中区', N'', N'', N'', N'', N'3', N'1', N''), (N'630104', N'6301', N'00,63,6301', N'城西区', N'63', N'青海省', N'6301', N'西宁市', N'630104', N'城西区', N'', N'', N'', N'', N'3', N'1', N''), (N'630105', N'6301', N'00,63,6301', N'城北区', N'63', N'青海省', N'6301', N'西宁市', N'630105', N'城北区', N'', N'', N'', N'', N'3', N'1', N''), (N'630106', N'6301', N'00,63,6301', N'湟中区', N'63', N'青海省', N'6301', N'西宁市', N'630106', N'湟中区', N'', N'', N'', N'', N'3', N'1', N''), (N'630121', N'6301', N'00,63,6301', N'大通回族土族自治县', N'63', N'青海省', N'6301', N'西宁市', N'630121', N'大通回族土族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'630123', N'6301', N'00,63,6301', N'湟源县', N'63', N'青海省', N'6301', N'西宁市', N'630123', N'湟源县', N'', N'', N'', N'', N'3', N'1', N''), (N'6302', N'63', N'00,63', N'海东市', N'63', N'青海省', N'6302', N'海东市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'630202', N'6302', N'00,63,6302', N'乐都区', N'63', N'青海省', N'6302', N'海东市', N'630202', N'乐都区', N'', N'', N'', N'', N'3', N'1', N''), (N'630203', N'6302', N'00,63,6302', N'平安区', N'63', N'青海省', N'6302', N'海东市', N'630203', N'平安区', N'', N'', N'', N'', N'3', N'1', N''), (N'630222', N'6302', N'00,63,6302', N'民和回族土族自治县', N'63', N'青海省', N'6302', N'海东市', N'630222', N'民和回族土族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'630223', N'6302', N'00,63,6302', N'互助土族自治县', N'63', N'青海省', N'6302', N'海东市', N'630223', N'互助土族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'630224', N'6302', N'00,63,6302', N'化隆回族自治县', N'63', N'青海省', N'6302', N'海东市', N'630224', N'化隆回族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'630225', N'6302', N'00,63,6302', N'循化撒拉族自治县', N'63', N'青海省', N'6302', N'海东市', N'630225', N'循化撒拉族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6322', N'63', N'00,63', N'海北藏族自治州', N'63', N'青海省', N'6322', N'海北藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'632221', N'6322', N'00,63,6322', N'门源回族自治县', N'63', N'青海省', N'6322', N'海北藏族自治州', N'632221', N'门源回族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'632222', N'6322', N'00,63,6322', N'祁连县', N'63', N'青海省', N'6322', N'海北藏族自治州', N'632222', N'祁连县', N'', N'', N'', N'', N'3', N'1', N''), (N'632223', N'6322', N'00,63,6322', N'海晏县', N'63', N'青海省', N'6322', N'海北藏族自治州', N'632223', N'海晏县', N'', N'', N'', N'', N'3', N'1', N''), (N'632224', N'6322', N'00,63,6322', N'刚察县', N'63', N'青海省', N'6322', N'海北藏族自治州', N'632224', N'刚察县', N'', N'', N'', N'', N'3', N'1', N''), (N'6323', N'63', N'00,63', N'黄南藏族自治州', N'63', N'青海省', N'6323', N'黄南藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'632321', N'6323', N'00,63,6323', N'同仁县', N'63', N'青海省', N'6323', N'黄南藏族自治州', N'632321', N'同仁县', N'', N'', N'', N'', N'3', N'1', N''), (N'632322', N'6323', N'00,63,6323', N'尖扎县', N'63', N'青海省', N'6323', N'黄南藏族自治州', N'632322', N'尖扎县', N'', N'', N'', N'', N'3', N'1', N''), (N'632323', N'6323', N'00,63,6323', N'泽库县', N'63', N'青海省', N'6323', N'黄南藏族自治州', N'632323', N'泽库县', N'', N'', N'', N'', N'3', N'1', N''), (N'632324', N'6323', N'00,63,6323', N'河南蒙古族自治县', N'63', N'青海省', N'6323', N'黄南藏族自治州', N'632324', N'河南蒙古族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6325', N'63', N'00,63', N'海南藏族自治州', N'63', N'青海省', N'6325', N'海南藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'632521', N'6325', N'00,63,6325', N'共和县', N'63', N'青海省', N'6325', N'海南藏族自治州', N'632521', N'共和县', N'', N'', N'', N'', N'3', N'1', N''), (N'632522', N'6325', N'00,63,6325', N'同德县', N'63', N'青海省', N'6325', N'海南藏族自治州', N'632522', N'同德县', N'', N'', N'', N'', N'3', N'1', N''), (N'632523', N'6325', N'00,63,6325', N'贵德县', N'63', N'青海省', N'6325', N'海南藏族自治州', N'632523', N'贵德县', N'', N'', N'', N'', N'3', N'1', N''), (N'632524', N'6325', N'00,63,6325', N'兴海县', N'63', N'青海省', N'6325', N'海南藏族自治州', N'632524', N'兴海县', N'', N'', N'', N'', N'3', N'1', N''), (N'632525', N'6325', N'00,63,6325', N'贵南县', N'63', N'青海省', N'6325', N'海南藏族自治州', N'632525', N'贵南县', N'', N'', N'', N'', N'3', N'1', N''), (N'6326', N'63', N'00,63', N'果洛藏族自治州', N'63', N'青海省', N'6326', N'果洛藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'632621', N'6326', N'00,63,6326', N'玛沁县', N'63', N'青海省', N'6326', N'果洛藏族自治州', N'632621', N'玛沁县', N'', N'', N'', N'', N'3', N'1', N''), (N'632622', N'6326', N'00,63,6326', N'班玛县', N'63', N'青海省', N'6326', N'果洛藏族自治州', N'632622', N'班玛县', N'', N'', N'', N'', N'3', N'1', N''), (N'632623', N'6326', N'00,63,6326', N'甘德县', N'63', N'青海省', N'6326', N'果洛藏族自治州', N'632623', N'甘德县', N'', N'', N'', N'', N'3', N'1', N''), (N'632624', N'6326', N'00,63,6326', N'达日县', N'63', N'青海省', N'6326', N'果洛藏族自治州', N'632624', N'达日县', N'', N'', N'', N'', N'3', N'1', N''), (N'632625', N'6326', N'00,63,6326', N'久治县', N'63', N'青海省', N'6326', N'果洛藏族自治州', N'632625', N'久治县', N'', N'', N'', N'', N'3', N'1', N''), (N'632626', N'6326', N'00,63,6326', N'玛多县', N'63', N'青海省', N'6326', N'果洛藏族自治州', N'632626', N'玛多县', N'', N'', N'', N'', N'3', N'1', N''), (N'6327', N'63', N'00,63', N'玉树藏族自治州', N'63', N'青海省', N'6327', N'玉树藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'632701', N'6327', N'00,63,6327', N'玉树市', N'63', N'青海省', N'6327', N'玉树藏族自治州', N'632701', N'玉树市', N'', N'', N'', N'', N'3', N'1', N''), (N'632722', N'6327', N'00,63,6327', N'杂多县', N'63', N'青海省', N'6327', N'玉树藏族自治州', N'632722', N'杂多县', N'', N'', N'', N'', N'3', N'1', N''), (N'632723', N'6327', N'00,63,6327', N'称多县', N'63', N'青海省', N'6327', N'玉树藏族自治州', N'632723', N'称多县', N'', N'', N'', N'', N'3', N'1', N''), (N'632724', N'6327', N'00,63,6327', N'治多县', N'63', N'青海省', N'6327', N'玉树藏族自治州', N'632724', N'治多县', N'', N'', N'', N'', N'3', N'1', N''), (N'632725', N'6327', N'00,63,6327', N'囊谦县', N'63', N'青海省', N'6327', N'玉树藏族自治州', N'632725', N'囊谦县', N'', N'', N'', N'', N'3', N'1', N''), (N'632726', N'6327', N'00,63,6327', N'曲麻莱县', N'63', N'青海省', N'6327', N'玉树藏族自治州', N'632726', N'曲麻莱县', N'', N'', N'', N'', N'3', N'1', N''), (N'6328', N'63', N'00,63', N'海西蒙古族藏族自治州', N'63', N'青海省', N'6328', N'海西蒙古族藏族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'632801', N'6328', N'00,63,6328', N'格尔木市', N'63', N'青海省', N'6328', N'海西蒙古族藏族自治州', N'632801', N'格尔木市', N'', N'', N'', N'', N'3', N'1', N''), (N'632802', N'6328', N'00,63,6328', N'德令哈市', N'63', N'青海省', N'6328', N'海西蒙古族藏族自治州', N'632802', N'德令哈市', N'', N'', N'', N'', N'3', N'1', N''), (N'632803', N'6328', N'00,63,6328', N'茫崖市', N'63', N'青海省', N'6328', N'海西蒙古族藏族自治州', N'632803', N'茫崖市', N'', N'', N'', N'', N'3', N'1', N''), (N'632821', N'6328', N'00,63,6328', N'乌兰县', N'63', N'青海省', N'6328', N'海西蒙古族藏族自治州', N'632821', N'乌兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'632822', N'6328', N'00,63,6328', N'都兰县', N'63', N'青海省', N'6328', N'海西蒙古族藏族自治州', N'632822', N'都兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'632823', N'6328', N'00,63,6328', N'天峻县', N'63', N'青海省', N'6328', N'海西蒙古族藏族自治州', N'632823', N'天峻县', N'', N'', N'', N'', N'3', N'1', N''), (N'64', N'00', N'00', N'宁夏回族自治区', N'64', N'宁夏回族自治区', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'6401', N'64', N'00,64', N'银川市', N'64', N'宁夏回族自治区', N'6401', N'银川市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'640104', N'6401', N'00,64,6401', N'兴庆区', N'64', N'宁夏回族自治区', N'6401', N'银川市', N'640104', N'兴庆区', N'', N'', N'', N'', N'3', N'1', N''), (N'640105', N'6401', N'00,64,6401', N'西夏区', N'64', N'宁夏回族自治区', N'6401', N'银川市', N'640105', N'西夏区', N'', N'', N'', N'', N'3', N'1', N''), (N'640106', N'6401', N'00,64,6401', N'金凤区', N'64', N'宁夏回族自治区', N'6401', N'银川市', N'640106', N'金凤区', N'', N'', N'', N'', N'3', N'1', N''), (N'640121', N'6401', N'00,64,6401', N'永宁县', N'64', N'宁夏回族自治区', N'6401', N'银川市', N'640121', N'永宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'640122', N'6401', N'00,64,6401', N'贺兰县', N'64', N'宁夏回族自治区', N'6401', N'银川市', N'640122', N'贺兰县', N'', N'', N'', N'', N'3', N'1', N''), (N'640181', N'6401', N'00,64,6401', N'灵武市', N'64', N'宁夏回族自治区', N'6401', N'银川市', N'640181', N'灵武市', N'', N'', N'', N'', N'3', N'1', N''), (N'6402', N'64', N'00,64', N'石嘴山市', N'64', N'宁夏回族自治区', N'6402', N'石嘴山市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'640202', N'6402', N'00,64,6402', N'大武口区', N'64', N'宁夏回族自治区', N'6402', N'石嘴山市', N'640202', N'大武口区', N'', N'', N'', N'', N'3', N'1', N''), (N'640205', N'6402', N'00,64,6402', N'惠农区', N'64', N'宁夏回族自治区', N'6402', N'石嘴山市', N'640205', N'惠农区', N'', N'', N'', N'', N'3', N'1', N''), (N'640221', N'6402', N'00,64,6402', N'平罗县', N'64', N'宁夏回族自治区', N'6402', N'石嘴山市', N'640221', N'平罗县', N'', N'', N'', N'', N'3', N'1', N''), (N'6403', N'64', N'00,64', N'吴忠市', N'64', N'宁夏回族自治区', N'6403', N'吴忠市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'640302', N'6403', N'00,64,6403', N'利通区', N'64', N'宁夏回族自治区', N'6403', N'吴忠市', N'640302', N'利通区', N'', N'', N'', N'', N'3', N'1', N''), (N'640303', N'6403', N'00,64,6403', N'红寺堡区', N'64', N'宁夏回族自治区', N'6403', N'吴忠市', N'640303', N'红寺堡区', N'', N'', N'', N'', N'3', N'1', N''), (N'640323', N'6403', N'00,64,6403', N'盐池县', N'64', N'宁夏回族自治区', N'6403', N'吴忠市', N'640323', N'盐池县', N'', N'', N'', N'', N'3', N'1', N''), (N'640324', N'6403', N'00,64,6403', N'同心县', N'64', N'宁夏回族自治区', N'6403', N'吴忠市', N'640324', N'同心县', N'', N'', N'', N'', N'3', N'1', N''), (N'640381', N'6403', N'00,64,6403', N'青铜峡市', N'64', N'宁夏回族自治区', N'6403', N'吴忠市', N'640381', N'青铜峡市', N'', N'', N'', N'', N'3', N'1', N''), (N'6404', N'64', N'00,64', N'固原市', N'64', N'宁夏回族自治区', N'6404', N'固原市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'640402', N'6404', N'00,64,6404', N'原州区', N'64', N'宁夏回族自治区', N'6404', N'固原市', N'640402', N'原州区', N'', N'', N'', N'', N'3', N'1', N''), (N'640422', N'6404', N'00,64,6404', N'西吉县', N'64', N'宁夏回族自治区', N'6404', N'固原市', N'640422', N'西吉县', N'', N'', N'', N'', N'3', N'1', N''), (N'640423', N'6404', N'00,64,6404', N'隆德县', N'64', N'宁夏回族自治区', N'6404', N'固原市', N'640423', N'隆德县', N'', N'', N'', N'', N'3', N'1', N''), (N'640424', N'6404', N'00,64,6404', N'泾源县', N'64', N'宁夏回族自治区', N'6404', N'固原市', N'640424', N'泾源县', N'', N'', N'', N'', N'3', N'1', N''), (N'640425', N'6404', N'00,64,6404', N'彭阳县', N'64', N'宁夏回族自治区', N'6404', N'固原市', N'640425', N'彭阳县', N'', N'', N'', N'', N'3', N'1', N''), (N'6405', N'64', N'00,64', N'中卫市', N'64', N'宁夏回族自治区', N'6405', N'中卫市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'640502', N'6405', N'00,64,6405', N'沙坡头区', N'64', N'宁夏回族自治区', N'6405', N'中卫市', N'640502', N'沙坡头区', N'', N'', N'', N'', N'3', N'1', N''), (N'640521', N'6405', N'00,64,6405', N'中宁县', N'64', N'宁夏回族自治区', N'6405', N'中卫市', N'640521', N'中宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'640522', N'6405', N'00,64,6405', N'海原县', N'64', N'宁夏回族自治区', N'6405', N'中卫市', N'640522', N'海原县', N'', N'', N'', N'', N'3', N'1', N''), (N'65', N'00', N'00', N'新疆维吾尔自治区', N'65', N'新疆维吾尔自治区', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'6501', N'65', N'00,65', N'乌鲁木齐市', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'650102', N'6501', N'00,65,6501', N'天山区', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650102', N'天山区', N'', N'', N'', N'', N'3', N'1', N''), (N'650103', N'6501', N'00,65,6501', N'沙依巴克区', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650103', N'沙依巴克区', N'', N'', N'', N'', N'3', N'1', N''), (N'650104', N'6501', N'00,65,6501', N'新市区', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650104', N'新市区', N'', N'', N'', N'', N'3', N'1', N''), (N'650105', N'6501', N'00,65,6501', N'水磨沟区', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650105', N'水磨沟区', N'', N'', N'', N'', N'3', N'1', N''), (N'650106', N'6501', N'00,65,6501', N'头屯河区', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650106', N'头屯河区', N'', N'', N'', N'', N'3', N'1', N''), (N'650107', N'6501', N'00,65,6501', N'达坂城区', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650107', N'达坂城区', N'', N'', N'', N'', N'3', N'1', N''), (N'650109', N'6501', N'00,65,6501', N'米东区', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650109', N'米东区', N'', N'', N'', N'', N'3', N'1', N''), (N'650121', N'6501', N'00,65,6501', N'乌鲁木齐县', N'65', N'新疆维吾尔自治区', N'6501', N'乌鲁木齐市', N'650121', N'乌鲁木齐县', N'', N'', N'', N'', N'3', N'1', N''), (N'6502', N'65', N'00,65', N'克拉玛依市', N'65', N'新疆维吾尔自治区', N'6502', N'克拉玛依市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'650202', N'6502', N'00,65,6502', N'独山子区', N'65', N'新疆维吾尔自治区', N'6502', N'克拉玛依市', N'650202', N'独山子区', N'', N'', N'', N'', N'3', N'1', N''), (N'650203', N'6502', N'00,65,6502', N'克拉玛依区', N'65', N'新疆维吾尔自治区', N'6502', N'克拉玛依市', N'650203', N'克拉玛依区', N'', N'', N'', N'', N'3', N'1', N''), (N'650204', N'6502', N'00,65,6502', N'白碱滩区', N'65', N'新疆维吾尔自治区', N'6502', N'克拉玛依市', N'650204', N'白碱滩区', N'', N'', N'', N'', N'3', N'1', N''), (N'650205', N'6502', N'00,65,6502', N'乌尔禾区', N'65', N'新疆维吾尔自治区', N'6502', N'克拉玛依市', N'650205', N'乌尔禾区', N'', N'', N'', N'', N'3', N'1', N''), (N'6504', N'65', N'00,65', N'吐鲁番市', N'65', N'新疆维吾尔自治区', N'6504', N'吐鲁番市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'650402', N'6504', N'00,65,6504', N'高昌区', N'65', N'新疆维吾尔自治区', N'6504', N'吐鲁番市', N'650402', N'高昌区', N'', N'', N'', N'', N'3', N'1', N''), (N'650421', N'6504', N'00,65,6504', N'鄯善县', N'65', N'新疆维吾尔自治区', N'6504', N'吐鲁番市', N'650421', N'鄯善县', N'', N'', N'', N'', N'3', N'1', N''), (N'650422', N'6504', N'00,65,6504', N'托克逊县', N'65', N'新疆维吾尔自治区', N'6504', N'吐鲁番市', N'650422', N'托克逊县', N'', N'', N'', N'', N'3', N'1', N''), (N'6505', N'65', N'00,65', N'哈密市', N'65', N'新疆维吾尔自治区', N'6505', N'哈密市', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'650502', N'6505', N'00,65,6505', N'伊州区', N'65', N'新疆维吾尔自治区', N'6505', N'哈密市', N'650502', N'伊州区', N'', N'', N'', N'', N'3', N'1', N''), (N'650521', N'6505', N'00,65,6505', N'巴里坤哈萨克自治县', N'65', N'新疆维吾尔自治区', N'6505', N'哈密市', N'650521', N'巴里坤哈萨克自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'650522', N'6505', N'00,65,6505', N'伊吾县', N'65', N'新疆维吾尔自治区', N'6505', N'哈密市', N'650522', N'伊吾县', N'', N'', N'', N'', N'3', N'1', N''), (N'6523', N'65', N'00,65', N'昌吉回族自治州', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'652301', N'6523', N'00,65,6523', N'昌吉市', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'652301', N'昌吉市', N'', N'', N'', N'', N'3', N'1', N''), (N'652302', N'6523', N'00,65,6523', N'阜康市', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'652302', N'阜康市', N'', N'', N'', N'', N'3', N'1', N''), (N'652323', N'6523', N'00,65,6523', N'呼图壁县', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'652323', N'呼图壁县', N'', N'', N'', N'', N'3', N'1', N''), (N'652324', N'6523', N'00,65,6523', N'玛纳斯县', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'652324', N'玛纳斯县', N'', N'', N'', N'', N'3', N'1', N''), (N'652325', N'6523', N'00,65,6523', N'奇台县', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'652325', N'奇台县', N'', N'', N'', N'', N'3', N'1', N''), (N'652327', N'6523', N'00,65,6523', N'吉木萨尔县', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'652327', N'吉木萨尔县', N'', N'', N'', N'', N'3', N'1', N''), (N'652328', N'6523', N'00,65,6523', N'木垒哈萨克自治县', N'65', N'新疆维吾尔自治区', N'6523', N'昌吉回族自治州', N'652328', N'木垒哈萨克自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6527', N'65', N'00,65', N'博尔塔拉蒙古自治州', N'65', N'新疆维吾尔自治区', N'6527', N'博尔塔拉蒙古自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'652701', N'6527', N'00,65,6527', N'博乐市', N'65', N'新疆维吾尔自治区', N'6527', N'博尔塔拉蒙古自治州', N'652701', N'博乐市', N'', N'', N'', N'', N'3', N'1', N''), (N'652702', N'6527', N'00,65,6527', N'阿拉山口市', N'65', N'新疆维吾尔自治区', N'6527', N'博尔塔拉蒙古自治州', N'652702', N'阿拉山口市', N'', N'', N'', N'', N'3', N'1', N''), (N'652722', N'6527', N'00,65,6527', N'精河县', N'65', N'新疆维吾尔自治区', N'6527', N'博尔塔拉蒙古自治州', N'652722', N'精河县', N'', N'', N'', N'', N'3', N'1', N''), (N'652723', N'6527', N'00,65,6527', N'温泉县', N'65', N'新疆维吾尔自治区', N'6527', N'博尔塔拉蒙古自治州', N'652723', N'温泉县', N'', N'', N'', N'', N'3', N'1', N''), (N'6528', N'65', N'00,65', N'巴音郭楞蒙古自治州', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'652801', N'6528', N'00,65,6528', N'库尔勒市', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652801', N'库尔勒市', N'', N'', N'', N'', N'3', N'1', N''), (N'652822', N'6528', N'00,65,6528', N'轮台县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652822', N'轮台县', N'', N'', N'', N'', N'3', N'1', N''), (N'652823', N'6528', N'00,65,6528', N'尉犁县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652823', N'尉犁县', N'', N'', N'', N'', N'3', N'1', N''), (N'652824', N'6528', N'00,65,6528', N'若羌县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652824', N'若羌县', N'', N'', N'', N'', N'3', N'1', N''), (N'652825', N'6528', N'00,65,6528', N'且末县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652825', N'且末县', N'', N'', N'', N'', N'3', N'1', N''), (N'652826', N'6528', N'00,65,6528', N'焉耆回族自治县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652826', N'焉耆回族自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'652827', N'6528', N'00,65,6528', N'和静县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652827', N'和静县', N'', N'', N'', N'', N'3', N'1', N''), (N'652828', N'6528', N'00,65,6528', N'和硕县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652828', N'和硕县', N'', N'', N'', N'', N'3', N'1', N''), (N'652829', N'6528', N'00,65,6528', N'博湖县', N'65', N'新疆维吾尔自治区', N'6528', N'巴音郭楞蒙古自治州', N'652829', N'博湖县', N'', N'', N'', N'', N'3', N'1', N''), (N'6529', N'65', N'00,65', N'阿克苏地区', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'652901', N'6529', N'00,65,6529', N'阿克苏市', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652901', N'阿克苏市', N'', N'', N'', N'', N'3', N'1', N''), (N'652902', N'6529', N'00,65,6529', N'库车市', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652902', N'库车市', N'', N'', N'', N'', N'3', N'1', N''), (N'652922', N'6529', N'00,65,6529', N'温宿县', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652922', N'温宿县', N'', N'', N'', N'', N'3', N'1', N''), (N'652924', N'6529', N'00,65,6529', N'沙雅县', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652924', N'沙雅县', N'', N'', N'', N'', N'3', N'1', N''), (N'652925', N'6529', N'00,65,6529', N'新和县', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652925', N'新和县', N'', N'', N'', N'', N'3', N'1', N''), (N'652926', N'6529', N'00,65,6529', N'拜城县', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652926', N'拜城县', N'', N'', N'', N'', N'3', N'1', N''), (N'652927', N'6529', N'00,65,6529', N'乌什县', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652927', N'乌什县', N'', N'', N'', N'', N'3', N'1', N''), (N'652928', N'6529', N'00,65,6529', N'阿瓦提县', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652928', N'阿瓦提县', N'', N'', N'', N'', N'3', N'1', N''), (N'652929', N'6529', N'00,65,6529', N'柯坪县', N'65', N'新疆维吾尔自治区', N'6529', N'阿克苏地区', N'652929', N'柯坪县', N'', N'', N'', N'', N'3', N'1', N''), (N'6530', N'65', N'00,65', N'克孜勒苏柯尔克孜自治州', N'65', N'新疆维吾尔自治区', N'6530', N'克孜勒苏柯尔克孜自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'653001', N'6530', N'00,65,6530', N'阿图什市', N'65', N'新疆维吾尔自治区', N'6530', N'克孜勒苏柯尔克孜自治州', N'653001', N'阿图什市', N'', N'', N'', N'', N'3', N'1', N''), (N'653022', N'6530', N'00,65,6530', N'阿克陶县', N'65', N'新疆维吾尔自治区', N'6530', N'克孜勒苏柯尔克孜自治州', N'653022', N'阿克陶县', N'', N'', N'', N'', N'3', N'1', N''), (N'653023', N'6530', N'00,65,6530', N'阿合奇县', N'65', N'新疆维吾尔自治区', N'6530', N'克孜勒苏柯尔克孜自治州', N'653023', N'阿合奇县', N'', N'', N'', N'', N'3', N'1', N''), (N'653024', N'6530', N'00,65,6530', N'乌恰县', N'65', N'新疆维吾尔自治区', N'6530', N'克孜勒苏柯尔克孜自治州', N'653024', N'乌恰县', N'', N'', N'', N'', N'3', N'1', N''), (N'6531', N'65', N'00,65', N'喀什地区', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'653101', N'6531', N'00,65,6531', N'喀什市', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653101', N'喀什市', N'', N'', N'', N'', N'3', N'1', N''), (N'653121', N'6531', N'00,65,6531', N'疏附县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653121', N'疏附县', N'', N'', N'', N'', N'3', N'1', N''), (N'653122', N'6531', N'00,65,6531', N'疏勒县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653122', N'疏勒县', N'', N'', N'', N'', N'3', N'1', N''), (N'653123', N'6531', N'00,65,6531', N'英吉沙县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653123', N'英吉沙县', N'', N'', N'', N'', N'3', N'1', N''), (N'653124', N'6531', N'00,65,6531', N'泽普县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653124', N'泽普县', N'', N'', N'', N'', N'3', N'1', N''), (N'653125', N'6531', N'00,65,6531', N'莎车县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653125', N'莎车县', N'', N'', N'', N'', N'3', N'1', N''), (N'653126', N'6531', N'00,65,6531', N'叶城县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653126', N'叶城县', N'', N'', N'', N'', N'3', N'1', N''), (N'653127', N'6531', N'00,65,6531', N'麦盖提县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653127', N'麦盖提县', N'', N'', N'', N'', N'3', N'1', N''), (N'653128', N'6531', N'00,65,6531', N'岳普湖县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653128', N'岳普湖县', N'', N'', N'', N'', N'3', N'1', N''), (N'653129', N'6531', N'00,65,6531', N'伽师县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653129', N'伽师县', N'', N'', N'', N'', N'3', N'1', N''), (N'653130', N'6531', N'00,65,6531', N'巴楚县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653130', N'巴楚县', N'', N'', N'', N'', N'3', N'1', N''), (N'653131', N'6531', N'00,65,6531', N'塔什库尔干塔吉克自治县', N'65', N'新疆维吾尔自治区', N'6531', N'喀什地区', N'653131', N'塔什库尔干塔吉克自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6532', N'65', N'00,65', N'和田地区', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'653201', N'6532', N'00,65,6532', N'和田市', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653201', N'和田市', N'', N'', N'', N'', N'3', N'1', N''), (N'653221', N'6532', N'00,65,6532', N'和田县', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653221', N'和田县', N'', N'', N'', N'', N'3', N'1', N''), (N'653222', N'6532', N'00,65,6532', N'墨玉县', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653222', N'墨玉县', N'', N'', N'', N'', N'3', N'1', N''), (N'653223', N'6532', N'00,65,6532', N'皮山县', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653223', N'皮山县', N'', N'', N'', N'', N'3', N'1', N''), (N'653224', N'6532', N'00,65,6532', N'洛浦县', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653224', N'洛浦县', N'', N'', N'', N'', N'3', N'1', N''), (N'653225', N'6532', N'00,65,6532', N'策勒县', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653225', N'策勒县', N'', N'', N'', N'', N'3', N'1', N''), (N'653226', N'6532', N'00,65,6532', N'于田县', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653226', N'于田县', N'', N'', N'', N'', N'3', N'1', N''), (N'653227', N'6532', N'00,65,6532', N'民丰县', N'65', N'新疆维吾尔自治区', N'6532', N'和田地区', N'653227', N'民丰县', N'', N'', N'', N'', N'3', N'1', N''), (N'6540', N'65', N'00,65', N'伊犁哈萨克自治州', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'654002', N'6540', N'00,65,6540', N'伊宁市', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654002', N'伊宁市', N'', N'', N'', N'', N'3', N'1', N''), (N'654003', N'6540', N'00,65,6540', N'奎屯市', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654003', N'奎屯市', N'', N'', N'', N'', N'3', N'1', N''), (N'654004', N'6540', N'00,65,6540', N'霍尔果斯市', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654004', N'霍尔果斯市', N'', N'', N'', N'', N'3', N'1', N''), (N'654021', N'6540', N'00,65,6540', N'伊宁县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654021', N'伊宁县', N'', N'', N'', N'', N'3', N'1', N''), (N'654022', N'6540', N'00,65,6540', N'察布查尔锡伯自治县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654022', N'察布查尔锡伯自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'654023', N'6540', N'00,65,6540', N'霍城县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654023', N'霍城县', N'', N'', N'', N'', N'3', N'1', N''), (N'654024', N'6540', N'00,65,6540', N'巩留县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654024', N'巩留县', N'', N'', N'', N'', N'3', N'1', N''), (N'654025', N'6540', N'00,65,6540', N'新源县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654025', N'新源县', N'', N'', N'', N'', N'3', N'1', N''), (N'654026', N'6540', N'00,65,6540', N'昭苏县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654026', N'昭苏县', N'', N'', N'', N'', N'3', N'1', N''), (N'654027', N'6540', N'00,65,6540', N'特克斯县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654027', N'特克斯县', N'', N'', N'', N'', N'3', N'1', N''), (N'654028', N'6540', N'00,65,6540', N'尼勒克县', N'65', N'新疆维吾尔自治区', N'6540', N'伊犁哈萨克自治州', N'654028', N'尼勒克县', N'', N'', N'', N'', N'3', N'1', N''), (N'6542', N'65', N'00,65', N'塔城地区', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'654201', N'6542', N'00,65,6542', N'塔城市', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'654201', N'塔城市', N'', N'', N'', N'', N'3', N'1', N''), (N'654202', N'6542', N'00,65,6542', N'乌苏市', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'654202', N'乌苏市', N'', N'', N'', N'', N'3', N'1', N''), (N'654221', N'6542', N'00,65,6542', N'额敏县', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'654221', N'额敏县', N'', N'', N'', N'', N'3', N'1', N''), (N'654223', N'6542', N'00,65,6542', N'沙湾县', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'654223', N'沙湾县', N'', N'', N'', N'', N'3', N'1', N''), (N'654224', N'6542', N'00,65,6542', N'托里县', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'654224', N'托里县', N'', N'', N'', N'', N'3', N'1', N''), (N'654225', N'6542', N'00,65,6542', N'裕民县', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'654225', N'裕民县', N'', N'', N'', N'', N'3', N'1', N''), (N'654226', N'6542', N'00,65,6542', N'和布克赛尔蒙古自治县', N'65', N'新疆维吾尔自治区', N'6542', N'塔城地区', N'654226', N'和布克赛尔蒙古自治县', N'', N'', N'', N'', N'3', N'1', N''), (N'6543', N'65', N'00,65', N'阿勒泰地区', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'654301', N'6543', N'00,65,6543', N'阿勒泰市', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'654301', N'阿勒泰市', N'', N'', N'', N'', N'3', N'1', N''), (N'654321', N'6543', N'00,65,6543', N'布尔津县', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'654321', N'布尔津县', N'', N'', N'', N'', N'3', N'1', N''), (N'654322', N'6543', N'00,65,6543', N'富蕴县', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'654322', N'富蕴县', N'', N'', N'', N'', N'3', N'1', N''), (N'654323', N'6543', N'00,65,6543', N'福海县', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'654323', N'福海县', N'', N'', N'', N'', N'3', N'1', N''), (N'654324', N'6543', N'00,65,6543', N'哈巴河县', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'654324', N'哈巴河县', N'', N'', N'', N'', N'3', N'1', N''), (N'654325', N'6543', N'00,65,6543', N'青河县', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'654325', N'青河县', N'', N'', N'', N'', N'3', N'1', N''), (N'654326', N'6543', N'00,65,6543', N'吉木乃县', N'65', N'新疆维吾尔自治区', N'6543', N'阿勒泰地区', N'654326', N'吉木乃县', N'', N'', N'', N'', N'3', N'1', N''), (N'6590', N'65', N'00,65', N'自治区直辖县级行政区', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'', N'', N'', N'', N'', N'', N'2', N'1', N''), (N'659001', N'6590', N'00,65,6590', N'石河子市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659001', N'石河子市', N'', N'', N'', N'', N'3', N'1', N''), (N'659002', N'6590', N'00,65,6590', N'阿拉尔市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659002', N'阿拉尔市', N'', N'', N'', N'', N'3', N'1', N''), (N'659003', N'6590', N'00,65,6590', N'图木舒克市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659003', N'图木舒克市', N'', N'', N'', N'', N'3', N'1', N''), (N'659004', N'6590', N'00,65,6590', N'五家渠市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659004', N'五家渠市', N'', N'', N'', N'', N'3', N'1', N''), (N'659005', N'6590', N'00,65,6590', N'北屯市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659005', N'北屯市', N'', N'', N'', N'', N'3', N'1', N''), (N'659006', N'6590', N'00,65,6590', N'铁门关市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659006', N'铁门关市', N'', N'', N'', N'', N'3', N'1', N''), (N'659007', N'6590', N'00,65,6590', N'双河市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659007', N'双河市', N'', N'', N'', N'', N'3', N'1', N''), (N'659008', N'6590', N'00,65,6590', N'可克达拉市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659008', N'可克达拉市', N'', N'', N'', N'', N'3', N'1', N''), (N'659009', N'6590', N'00,65,6590', N'昆玉市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659009', N'昆玉市', N'', N'', N'', N'', N'3', N'1', N''), (N'659010', N'6590', N'00,65,6590', N'胡杨河市', N'65', N'新疆维吾尔自治区', N'6590', N'自治区直辖县级行政区', N'659010', N'胡杨河市', N'', N'', N'', N'', N'3', N'1', N''), (N'71', N'00', N'00', N'台湾省', N'71', N'台湾省', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'81', N'00', N'00', N'香港特别行政区', N'81', N'香港特别行政区', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N''), (N'82', N'00', N'00', N'澳门特别行政区', N'82', N'澳门特别行政区', N'', N'', N'', N'', N'', N'', N'', N'', N'1', N'1', N'')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_report_file
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_report_file]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_report_file]
GO

CREATE TABLE [dbo].[blade_report_file] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [content] varbinary(max)  NULL,
  [create_time] datetime2(0)  NOT NULL,
  [update_time] datetime2(0)  NOT NULL,
  [is_deleted] int DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[blade_report_file] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_report_file',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件名',
'SCHEMA', N'dbo',
'TABLE', N'blade_report_file',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件内容',
'SCHEMA', N'dbo',
'TABLE', N'blade_report_file',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_report_file',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_report_file',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_report_file',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'报表文件表',
'SCHEMA', N'dbo',
'TABLE', N'blade_report_file'
GO

-- ----------------------------
-- Records of blade_report_file
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_report_file] VALUES (N'1291962038049910785', N'notice.ureport.xml', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E3C757265706F72743E3C63656C6C20657870616E643D22446F776E22206E616D653D2241312220726F773D22312220636F6C3D2231223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C6C6566742D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C72696768742D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C746F702D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C626F74746F6D2D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C2F63656C6C2D7374796C653E3C646174617365742D76616C756520646174617365742D6E616D653D226E6F7469636522206167677265676174653D2267726F7570222070726F70657274793D2274656E616E745F696422206F726465723D226E6F6E6522206D617070696E672D747970653D2273696D706C65223E3C2F646174617365742D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D22446F776E22206E616D653D2242312220726F773D22312220636F6C3D2232223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C6C6566742D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C72696768742D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C746F702D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C626F74746F6D2D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C2F63656C6C2D7374796C653E3C646174617365742D76616C756520646174617365742D6E616D653D226E6F7469636522206167677265676174653D2267726F7570222070726F70657274793D227469746C6522206F726465723D226E6F6E6522206D617070696E672D747970653D2273696D706C65223E3C2F646174617365742D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D22446F776E22206E616D653D2243312220726F773D22312220636F6C3D2233223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C6C6566742D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C72696768742D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C746F702D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C626F74746F6D2D626F726465722077696474683D223122207374796C653D22736F6C69642220636F6C6F723D22302C302C30222F3E3C2F63656C6C2D7374796C653E3C646174617365742D76616C756520646174617365742D6E616D653D226E6F7469636522206167677265676174653D2267726F7570222070726F70657274793D2272656C656173655F74696D6522206F726465723D226E6F6E6522206D617070696E672D747970653D2273696D706C65223E3C2F646174617365742D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2244312220726F773D22312220636F6C3D2234223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2241322220726F773D22322220636F6C3D2231223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2242322220726F773D22322220636F6C3D2232223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2243322220726F773D22322220636F6C3D2233223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2244322220726F773D22322220636F6C3D2234223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2241332220726F773D22332220636F6C3D2231223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2242332220726F773D22332220636F6C3D2232223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2243332220726F773D22332220636F6C3D2233223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C63656C6C20657870616E643D224E6F6E6522206E616D653D2244332220726F773D22332220636F6C3D2234223E3C63656C6C2D7374796C6520666F6E742D73697A653D2231302220616C69676E3D2263656E746572222076616C69676E3D226D6964646C65223E3C2F63656C6C2D7374796C653E3C73696D706C652D76616C75653E3C215B43444154415B5D5D3E3C2F73696D706C652D76616C75653E3C2F63656C6C3E3C726F7720726F772D6E756D6265723D223122206865696768743D223138222F3E3C726F7720726F772D6E756D6265723D223222206865696768743D223138222F3E3C726F7720726F772D6E756D6265723D223322206865696768743D223138222F3E3C636F6C756D6E20636F6C2D6E756D6265723D2231222077696474683D223830222F3E3C636F6C756D6E20636F6C2D6E756D6265723D2232222077696474683D223830222F3E3C636F6C756D6E20636F6C2D6E756D6265723D2233222077696474683D22313333222F3E3C636F6C756D6E20636F6C2D6E756D6265723D2234222077696474683D223830222F3E3C64617461736F75726365206E616D653D225265706F727444617461536F757263652220747970653D226275696C64696E223E3C64617461736574206E616D653D226E6F746963652220747970653D2273716C223E3C73716C3E3C215B43444154415B73656C656374202A2066726F6D20626C6164655F6E6F746963655D5D3E3C2F73716C3E3C6669656C64206E616D653D226964222F3E3C6669656C64206E616D653D2274656E616E745F6964222F3E3C6669656C64206E616D653D227469746C65222F3E3C6669656C64206E616D653D2263617465676F7279222F3E3C6669656C64206E616D653D2272656C656173655F74696D65222F3E3C6669656C64206E616D653D22636F6E74656E74222F3E3C6669656C64206E616D653D226372656174655F75736572222F3E3C6669656C64206E616D653D226372656174655F64657074222F3E3C6669656C64206E616D653D226372656174655F74696D65222F3E3C6669656C64206E616D653D227570646174655F75736572222F3E3C6669656C64206E616D653D227570646174655F74696D65222F3E3C6669656C64206E616D653D22737461747573222F3E3C6669656C64206E616D653D2269735F64656C65746564222F3E3C2F646174617365743E3C2F64617461736F757263653E3C706170657220747970653D22413422206C6566742D6D617267696E3D223930222072696768742D6D617267696E3D223930220A20202020746F702D6D617267696E3D2237322220626F74746F6D2D6D617267696E3D2237322220706167696E672D6D6F64653D22666974706167652220666978726F77733D2230220A2020202077696474683D2235393522206865696768743D2238343222206F7269656E746174696F6E3D22706F727472616974222068746D6C2D7265706F72742D616C69676E3D226C656674222062672D696D6167653D22222068746D6C2D696E74657276616C2D726566726573682D76616C75653D22302220636F6C756D6E2D656E61626C65643D2266616C7365223E3C2F70617065723E3C2F757265706F72743E, N'2020-08-08 12:58:48', N'2020-08-08 12:58:48', N'0')
GO

COMMIT
GO

-- ----------------------------
-- Table structure for blade_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_role]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_role]
GO

CREATE TABLE [dbo].[blade_role] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] bigint  NULL,
  [role_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [role_alias] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_role',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_role',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名',
'SCHEMA', N'dbo',
'TABLE', N'blade_role',
'COLUMN', N'role_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_role',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色别名',
'SCHEMA', N'dbo',
'TABLE', N'blade_role',
'COLUMN', N'role_alias'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_role',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色表',
'SCHEMA', N'dbo',
'TABLE', N'blade_role'
GO


-- ----------------------------
-- Records of blade_role
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_role] VALUES (N'1123598816738675201', N'000000', N'0', N'超级管理员', N'1', N'administrator', N'0'), (N'1123598816738675202', N'000000', N'0', N'用户', N'2', N'user', N'0'), (N'1123598816738675203', N'000000', N'1123598816738675202', N'人事', N'1', N'hr', N'0'), (N'1123598816738675204', N'000000', N'1123598816738675202', N'经理', N'2', N'manager', N'0'), (N'1123598816738675205', N'000000', N'1123598816738675202', N'老板', N'3', N'boss', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_role_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_role_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_role_menu]
GO

CREATE TABLE [dbo].[blade_role_menu] (
  [id] bigint  NOT NULL,
  [menu_id] bigint  NULL,
  [role_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[blade_role_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_menu',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单id',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_menu',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_menu',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色菜单关联表',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_menu'
GO


-- ----------------------------
-- Records of blade_role_menu
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_role_menu] VALUES (N'1123598817738675363', N'1123598815738675201', N'1123598816738675202'), (N'1123598817738675364', N'1123598815738675202', N'1123598816738675202'), (N'1123598817738675365', N'1123598815738675219', N'1123598816738675202'), (N'1123598817738675366', N'1123598815738675220', N'1123598816738675202'), (N'1123598817738675367', N'1123598815738675221', N'1123598816738675202'), (N'1123598817738675368', N'1123598815738675222', N'1123598816738675202'), (N'1123598817738675369', N'1123598815738675280', N'1123598816738675202'), (N'1123598817738675370', N'1123598815738675281', N'1123598816738675202'), (N'1123598817738675371', N'1123598815738675282', N'1123598816738675202'), (N'1123598817738675372', N'1123598815738675283', N'1123598816738675202'), (N'1123598817738675373', N'1123598815738675284', N'1123598816738675202'), (N'1123598817738675374', N'1123598815738675285', N'1123598816738675202'), (N'1123598817738675375', N'1123598815738675286', N'1123598816738675202'), (N'1123598817738675376', N'1123598815738675287', N'1123598816738675202'), (N'1123598817738675377', N'1123598815738675288', N'1123598816738675202'), (N'1123598817738675378', N'1123598815738675289', N'1123598816738675202'), (N'1123598817738675379', N'1123598815738675290', N'1123598816738675202'), (N'1123598817738675380', N'1123598815738675291', N'1123598816738675202'), (N'1123598817738675381', N'1123598815738675292', N'1123598816738675202'), (N'1123598817738675382', N'1123598815738675293', N'1123598816738675202'), (N'1123598817738675383', N'1123598815738675294', N'1123598816738675202'), (N'1123598817738675384', N'1123598815738675295', N'1123598816738675202'), (N'1123598817738675385', N'1123598815738675296', N'1123598816738675202'), (N'1123598817738675386', N'1123598815738675297', N'1123598816738675202'), (N'1123598817738675387', N'1123598815738675201', N'1123598816738675203'), (N'1123598817738675388', N'1123598815738675202', N'1123598816738675203'), (N'1123598817738675389', N'1123598815738675219', N'1123598816738675203'), (N'1123598817738675390', N'1123598815738675220', N'1123598816738675203'), (N'1123598817738675391', N'1123598815738675221', N'1123598816738675203'), (N'1123598817738675392', N'1123598815738675222', N'1123598816738675203'), (N'1123598817738675393', N'1123598815738675280', N'1123598816738675203'), (N'1123598817738675394', N'1123598815738675281', N'1123598816738675203'), (N'1123598817738675395', N'1123598815738675282', N'1123598816738675203'), (N'1123598817738675396', N'1123598815738675283', N'1123598816738675203'), (N'1123598817738675397', N'1123598815738675284', N'1123598816738675203'), (N'1123598817738675398', N'1123598815738675285', N'1123598816738675203'), (N'1123598817738675399', N'1123598815738675286', N'1123598816738675203'), (N'1123598817738675400', N'1123598815738675287', N'1123598816738675203'), (N'1123598817738675401', N'1123598815738675288', N'1123598816738675203'), (N'1123598817738675402', N'1123598815738675289', N'1123598816738675203'), (N'1123598817738675403', N'1123598815738675290', N'1123598816738675203'), (N'1123598817738675404', N'1123598815738675291', N'1123598816738675203'), (N'1123598817738675405', N'1123598815738675292', N'1123598816738675203'), (N'1123598817738675406', N'1123598815738675293', N'1123598816738675203'), (N'1123598817738675407', N'1123598815738675294', N'1123598816738675203'), (N'1123598817738675408', N'1123598815738675295', N'1123598816738675203'), (N'1123598817738675409', N'1123598815738675296', N'1123598816738675203'), (N'1123598817738675410', N'1123598815738675297', N'1123598816738675203'), (N'1123598817738675411', N'1123598815738675201', N'1123598816738675204'), (N'1123598817738675412', N'1123598815738675202', N'1123598816738675204'), (N'1123598817738675413', N'1123598815738675219', N'1123598816738675204'), (N'1123598817738675414', N'1123598815738675220', N'1123598816738675204'), (N'1123598817738675415', N'1123598815738675221', N'1123598816738675204'), (N'1123598817738675416', N'1123598815738675222', N'1123598816738675204'), (N'1123598817738675417', N'1123598815738675280', N'1123598816738675204'), (N'1123598817738675418', N'1123598815738675281', N'1123598816738675204'), (N'1123598817738675419', N'1123598815738675282', N'1123598816738675204'), (N'1123598817738675420', N'1123598815738675283', N'1123598816738675204'), (N'1123598817738675421', N'1123598815738675284', N'1123598816738675204'), (N'1123598817738675422', N'1123598815738675285', N'1123598816738675204'), (N'1123598817738675423', N'1123598815738675286', N'1123598816738675204'), (N'1123598817738675424', N'1123598815738675287', N'1123598816738675204'), (N'1123598817738675425', N'1123598815738675288', N'1123598816738675204'), (N'1123598817738675426', N'1123598815738675289', N'1123598816738675204'), (N'1123598817738675427', N'1123598815738675290', N'1123598816738675204'), (N'1123598817738675428', N'1123598815738675291', N'1123598816738675204'), (N'1123598817738675429', N'1123598815738675292', N'1123598816738675204'), (N'1123598817738675430', N'1123598815738675293', N'1123598816738675204'), (N'1123598817738675431', N'1123598815738675294', N'1123598816738675204'), (N'1123598817738675432', N'1123598815738675295', N'1123598816738675204'), (N'1123598817738675433', N'1123598815738675296', N'1123598816738675204'), (N'1123598817738675434', N'1123598815738675297', N'1123598816738675204'), (N'1123598817738675435', N'1123598815738675201', N'1123598816738675205'), (N'1123598817738675436', N'1123598815738675202', N'1123598816738675205'), (N'1123598817738675437', N'1123598815738675219', N'1123598816738675205'), (N'1123598817738675438', N'1123598815738675220', N'1123598816738675205'), (N'1123598817738675439', N'1123598815738675221', N'1123598816738675205'), (N'1123598817738675440', N'1123598815738675222', N'1123598816738675205'), (N'1123598817738675441', N'1123598815738675280', N'1123598816738675205'), (N'1123598817738675442', N'1123598815738675281', N'1123598816738675205'), (N'1123598817738675443', N'1123598815738675282', N'1123598816738675205'), (N'1123598817738675444', N'1123598815738675283', N'1123598816738675205'), (N'1123598817738675445', N'1123598815738675284', N'1123598816738675205'), (N'1123598817738675446', N'1123598815738675285', N'1123598816738675205'), (N'1123598817738675447', N'1123598815738675286', N'1123598816738675205'), (N'1123598817738675448', N'1123598815738675287', N'1123598816738675205'), (N'1123598817738675449', N'1123598815738675288', N'1123598816738675205'), (N'1123598817738675450', N'1123598815738675289', N'1123598816738675205'), (N'1123598817738675451', N'1123598815738675290', N'1123598816738675205'), (N'1123598817738675452', N'1123598815738675291', N'1123598816738675205'), (N'1123598817738675453', N'1123598815738675292', N'1123598816738675205'), (N'1123598817738675454', N'1123598815738675293', N'1123598816738675205'), (N'1123598817738675455', N'1123598815738675294', N'1123598816738675205'), (N'1123598817738675456', N'1123598815738675295', N'1123598816738675205'), (N'1123598817738675457', N'1123598815738675296', N'1123598816738675205'), (N'1123598817738675458', N'1123598815738675297', N'1123598816738675205'), (N'1149888293856833539', N'1123598815738675317', N'1123598816738675201'), (N'1149891666312130561', N'1123598815738675201', N'1123598816738675201'), (N'1149891666370850818', N'1123598815738675202', N'1123598816738675201'), (N'1149891666437959682', N'1123598815738675219', N'1123598816738675201'), (N'1149891666505068546', N'1123598815738675220', N'1123598816738675201'), (N'1149891666555400193', N'1123598815738675221', N'1123598816738675201'), (N'1149891666614120449', N'1123598815738675222', N'1123598816738675201'), (N'1149891666651869185', N'1123598815738675280', N'1123598816738675201'), (N'1149891666723172353', N'1123598815738675281', N'1123598816738675201'), (N'1149891666765115393', N'1123598815738675282', N'1123598816738675201'), (N'1149891666815447041', N'1123598815738675283', N'1123598816738675201'), (N'1149891666844807170', N'1123598815738675284', N'1123598816738675201'), (N'1149891666886750210', N'1123598815738675285', N'1123598816738675201'), (N'1149891666924498946', N'1123598815738675286', N'1123598816738675201'), (N'1149891666966441986', N'1123598815738675287', N'1123598816738675201'), (N'1149891667012579330', N'1123598815738675288', N'1123598816738675201'), (N'1149891667054522370', N'1123598815738675289', N'1123598816738675201'), (N'1149891667109048322', N'1123598815738675290', N'1123598816738675201'), (N'1149891667146797058', N'1123598815738675291', N'1123598816738675201'), (N'1149891667197128706', N'1123598815738675292', N'1123598816738675201'), (N'1149891667234877441', N'1123598815738675293', N'1123598816738675201'), (N'1149891667272626178', N'1123598815738675294', N'1123598816738675201'), (N'1149891667314569218', N'1123598815738675295', N'1123598816738675201'), (N'1149891667343929346', N'1123598815738675296', N'1123598816738675201'), (N'1149891667398455298', N'1123598815738675297', N'1123598816738675201'), (N'1149891667440398338', N'1123598815738675210', N'1123598816738675201'), (N'1149891667478147073', N'1123598815738675211', N'1123598816738675201'), (N'1149891667524284417', N'1123598815738675212', N'1123598816738675201'), (N'1149891667574616065', N'1123598815738675213', N'1123598816738675201'), (N'1149891667608170498', N'1123598815738675214', N'1123598816738675201'), (N'1149891667641724929', N'1123598815738675249', N'1123598816738675201'), (N'1149891667671085058', N'1123598815738675215', N'1123598816738675201'), (N'1149891667708833793', N'1123598815738675250', N'1123598816738675201'), (N'1149891667746582529', N'1123598815738675216', N'1123598816738675201'), (N'1149891667784331265', N'1123598815738675251', N'1123598816738675201'), (N'1149891667822080001', N'1123598815738675217', N'1123598816738675201'), (N'1149891667843051522', N'1123598815738675218', N'1123598816738675201'), (N'1149891667889188865', N'1123598815738675252', N'1123598816738675201'), (N'1149891667926937602', N'1123598815738675253', N'1123598816738675201'), (N'1149891667947909121', N'1123598815738675254', N'1123598816738675201'), (N'1149891667989852161', N'1123598815738675255', N'1123598816738675201'), (N'1149891668015017986', N'1123598815738675266', N'1123598816738675201'), (N'1149891668061155330', N'1123598815738675267', N'1123598816738675201'), (N'1149891668086321154', N'1123598815738675268', N'1123598816738675201'), (N'1149891668136652802', N'1123598815738675269', N'1123598816738675201'), (N'1149891668199567362', N'1123598815738675270', N'1123598816738675201'), (N'1149891668262481922', N'1123598815738675271', N'1123598816738675201'), (N'1149891668321202177', N'1123598815738675272', N'1123598816738675201'), (N'1149891668367339521', N'1123598815738675273', N'1123598816738675201'), (N'1149891668405088257', N'1123598815738675274', N'1123598816738675201'), (N'1149891668438642689', N'1123598815738675275', N'1123598816738675201'), (N'1149891668472197121', N'1123598815738675276', N'1123598816738675201'), (N'1149891668509945858', N'1123598815738675277', N'1123598816738675201'), (N'1149891668568666113', N'1123598815738675278', N'1123598816738675201'), (N'1149891668631580673', N'1123598815738675279', N'1123598816738675201'), (N'1149891668669329410', N'1123598815738675298', N'1123598816738675201'), (N'1149891668719661057', N'1123598815738675299', N'1123598816738675201'), (N'1149891668757409793', N'1123598815738675301', N'1123598816738675201'), (N'1149891668803547138', N'1123598815738675302', N'1123598816738675201'), (N'1149891668849684481', N'1123598815738675303', N'1123598816738675201'), (N'1149891668883238913', N'1123598815738675304', N'1123598816738675201'), (N'1149891668920987650', N'1123598815738675305', N'1123598816738675201'), (N'1149891668950347777', N'1123598815738675307', N'1123598816738675201'), (N'1149891668983902209', N'1123598815738675308', N'1123598816738675201'), (N'1149891669013262338', N'1123598815738675241', N'1123598816738675201'), (N'1149891669034233857', N'1123598815738675242', N'1123598816738675201'), (N'1149891669055205378', N'1123598815738675243', N'1123598816738675201'), (N'1149891669105537025', N'1123598815738675244', N'1123598816738675201'), (N'1149891669164257282', N'1123598815738675309', N'1123598816738675201'), (N'1149891669210394626', N'1123598815738675310', N'1123598816738675201'), (N'1149891669243949058', N'1123598815738675311', N'1123598816738675201'), (N'1149891669285892097', N'1123598815738675312', N'1123598816738675201'), (N'1149891669336223745', N'1123598815738675203', N'1123598816738675201'), (N'1149891669365583873', N'1123598815738675204', N'1123598816738675201'), (N'1149891669394944001', N'1123598815738675223', N'1123598816738675201'), (N'1149891669441081346', N'1123598815738675224', N'1123598816738675201'), (N'1149891669487218689', N'1123598815738675225', N'1123598816738675201'), (N'1149891669533356033', N'1123598815738675226', N'1123598816738675201'), (N'1149891669571104770', N'1123598815738675227', N'1123598816738675201'), (N'1149891669642407937', N'1123598815738675228', N'1123598816738675201'), (N'1149891669671768065', N'1123598815738675205', N'1123598816738675201'), (N'1149891669696933889', N'1123598815738675229', N'1123598816738675201'), (N'1149891669743071234', N'1123598815738675230', N'1123598816738675201'), (N'1149891669797597186', N'1123598815738675231', N'1123598816738675201'), (N'1149891669847928834', N'1123598815738675232', N'1123598816738675201'), (N'1149891669919232001', N'1123598815738675206', N'1123598816738675201'), (N'1149891669973757954', N'1123598815738675233', N'1123598816738675201'), (N'1149891670019895298', N'1123598815738675234', N'1123598816738675201'), (N'1149891670045061121', N'1123598815738675235', N'1123598816738675201'), (N'1149891670095392770', N'1123598815738675236', N'1123598816738675201'), (N'1149891670137335809', N'1123598815738675207', N'1123598816738675201'), (N'1149891670196056065', N'1123598815738675237', N'1123598816738675201'), (N'1149891670229610498', N'1123598815738675238', N'1123598816738675201'), (N'1149891670267359234', N'1123598815738675239', N'1123598816738675201'), (N'1149891670292525057', N'1123598815738675240', N'1123598816738675201'), (N'1149891670355439617', N'1123598815738675306', N'1123598816738675201'), (N'1149891670380605442', N'1123598815738675208', N'1123598816738675201'), (N'1149891670443520001', N'1123598815738675313', N'1123598816738675201'), (N'1149891670481268737', N'1123598815738675314', N'1123598816738675201'), (N'1149891670506434561', N'1123598815738675315', N'1123598816738675201'), (N'1149891670569349121', N'1123598815738675316', N'1123598816738675201'), (N'1149891670594514945', N'1123598815738675209', N'1123598816738675201'), (N'1149891670657429506', N'1123598815738675245', N'1123598816738675201'), (N'1149891670682595330', N'1123598815738675246', N'1123598816738675201'), (N'1149891670711955457', N'1123598815738675247', N'1123598816738675201'), (N'1149891670745509889', N'1123598815738675248', N'1123598816738675201'), (N'1149891670804230146', N'1123598815738675256', N'1123598816738675201'), (N'1149891670841978881', N'1123598815738675257', N'1123598816738675201'), (N'1149891670879727617', N'1123598815738675258', N'1123598816738675201'), (N'1149891670913282050', N'1123598815738675259', N'1123598816738675201'), (N'1149891670959419394', N'1123598815738675260', N'1123598816738675201'), (N'1149891670988779521', N'1123598815738675261', N'1123598816738675201'), (N'1149891671039111170', N'1123598815738675262', N'1123598816738675201'), (N'1149891671068471297', N'1123598815738675263', N'1123598816738675201'), (N'1149891671110414338', N'1123598815738675264', N'1123598816738675201'), (N'1149891671152357378', N'1123598815738675265', N'1123598816738675201'), (N'1161272593873322991', N'1161272593873321991', N'1123598816738675201'), (N'1161272593873322992', N'1161272593873321992', N'1123598816738675201'), (N'1161272593873322993', N'1161272593873321993', N'1123598816738675201'), (N'1161272593873322994', N'1161272593873321994', N'1123598816738675201'), (N'1161272593873322995', N'1161272593873321995', N'1123598816738675201'), (N'1161272593873322996', N'1164733121140551682', N'1123598816738675201'), (N'1161272593873322997', N'1164733349637844993', N'1123598816738675201'), (N'1161272693873322991', N'1164733369658963251', N'1123598816738675201'), (N'1161272693873322992', N'1164733369658963252', N'1123598816738675201'), (N'1161272693873322993', N'1164733369658963253', N'1123598816738675201'), (N'1161272693873322994', N'1164733369658963254', N'1123598816738675201'), (N'1161272693873322995', N'1164733369658963255', N'1123598816738675201'), (N'1161272793873322991', N'1164733379658963251', N'1123598816738675201'), (N'1161272793873322992', N'1164733379658963252', N'1123598816738675201'), (N'1161272793873322993', N'1164733379658963253', N'1123598816738675201'), (N'1161272793873322994', N'1164733379658963254', N'1123598816738675201'), (N'1161272793873322995', N'1164733379658963255', N'1123598816738675201'), (N'1161272893873222991', N'1164733389658962251', N'1123598816738675201'), (N'1161272893873222992', N'1164733389658962252', N'1123598816738675201'), (N'1161272893873222993', N'1164733389658962253', N'1123598816738675201'), (N'1161272893873222994', N'1164733389658962254', N'1123598816738675201'), (N'1161272893873222995', N'1164733389658962255', N'1123598816738675201'), (N'1161272893873222996', N'1164733389658962256', N'1123598816738675201'), (N'1161272893873322991', N'1164733389658963251', N'1123598816738675201'), (N'1161272893875225001', N'1164733389668962251', N'1123598816738675201'), (N'1161272893875225002', N'1164733389668962252', N'1123598816738675201'), (N'1161272893875225003', N'1164733389668962253', N'1123598816738675201'), (N'1161272893875225004', N'1164733389668962254', N'1123598816738675201'), (N'1161272893875225005', N'1164733389668962255', N'1123598816738675201'), (N'1161272893875225006', N'1164733389668962256', N'1123598816738675201'), (N'1161272893875226001', N'1164733399668962201', N'1123598816738675201'), (N'1161272893875226002', N'1164733399668962202', N'1123598816738675201'), (N'1161272893875226003', N'1164733399668962203', N'1123598816738675201'), (N'1161272893875226004', N'1164733399668962204', N'1123598816738675201'), (N'1161272893875226005', N'1164733399668962205', N'1123598816738675201'), (N'1161272893875226006', N'1164733399668962206', N'1123598816738675201'), (N'1161272893875226007', N'1164733399668962207', N'1123598816738675201'), (N'1161272893875227001', N'1164733399669962201', N'1123598816738675201'), (N'1161272893875227002', N'1164733399669962202', N'1123598816738675201'), (N'1161272893875227003', N'1164733399669962203', N'1123598816738675201'), (N'1161272893875227004', N'1164733399669962204', N'1123598816738675201'), (N'1161272893875228001', N'1164733399669962301', N'1123598816738675201'), (N'1161272893875228002', N'1164733399669962302', N'1123598816738675201'), (N'1161272893875228003', N'1164733399669962303', N'1123598816738675201'), (N'1161272893875228004', N'1164733399669962304', N'1123598816738675201')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_role_scope
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_role_scope]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_role_scope]
GO

CREATE TABLE [dbo].[blade_role_scope] (
  [id] bigint  NOT NULL,
  [scope_category] int  NULL,
  [scope_id] bigint  NULL,
  [role_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[blade_role_scope] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_scope',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限类型(1:数据权限、2:接口权限)',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_scope',
'COLUMN', N'scope_category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限id',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_scope',
'COLUMN', N'scope_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_scope',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色数据权限关联表',
'SCHEMA', N'dbo',
'TABLE', N'blade_role_scope'
GO


-- ----------------------------
-- Table structure for blade_scope_api
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_scope_api]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_scope_api]
GO

CREATE TABLE [dbo].[blade_scope_api] (
  [id] bigint  NOT NULL,
  [menu_id] bigint  NULL,
  [resource_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_path] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_type] int  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_scope_api] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'resource_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口权限名',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'scope_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口权限地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'scope_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口权限类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'scope_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口权限备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口权限表',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_api'
GO


-- ----------------------------
-- Table structure for blade_scope_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_scope_data]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_scope_data]
GO

CREATE TABLE [dbo].[blade_scope_data] (
  [id] bigint  NOT NULL,
  [menu_id] bigint  NULL,
  [resource_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_field] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_class] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_column] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope_type] int  NULL,
  [scope_value] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_scope_data] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'resource_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'scope_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限字段',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'scope_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限类名',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'scope_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限字段',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'scope_column'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限类型',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'scope_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限值域',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'scope_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限表',
'SCHEMA', N'dbo',
'TABLE', N'blade_scope_data'
GO


-- ----------------------------
-- Table structure for blade_sms
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_sms]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_sms]
GO

CREATE TABLE [dbo].[blade_sms] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [category] int  NULL,
  [sms_code] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [template_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [access_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [secret_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [region_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sign_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_sms] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'sms_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'template_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'accessKey',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'access_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'secretKey',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'secret_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'regionId',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'region_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信签名',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'sign_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信配置表',
'SCHEMA', N'dbo',
'TABLE', N'blade_sms'
GO


-- ----------------------------
-- Table structure for blade_tenant
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_tenant]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_tenant]
GO

CREATE TABLE [dbo].[blade_tenant] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [domain] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [background_url] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [linkman] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [contact_number] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [account_number] int  NULL,
  [expire_time] datetime2(0)  NULL,
  [datasource_id] bigint  NULL,
  [license_key] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_tenant] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户名称',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'tenant_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'域名地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'domain'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统背景',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'background_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'linkman'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系电话',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'contact_number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账号额度',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'account_number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'过期时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'expire_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'datasource_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'授权码',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'license_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户表',
'SCHEMA', N'dbo',
'TABLE', N'blade_tenant'
GO


-- ----------------------------
-- Records of blade_tenant
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_tenant] VALUES (N'1123598820738675201', N'000000', N'管理组', NULL, NULL, N'admin', N'666666', N'管理组', N'-1', NULL, NULL, NULL, N'1123598821738675201', N'1123598813738675201', N'2019-01-01 00:00:39', N'1123598821738675201', N'2019-01-01 00:00:39', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_top_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_top_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_top_menu]
GO

CREATE TABLE [dbo].[blade_top_menu] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [source] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_top_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户id',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顶部菜单编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顶部菜单名',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顶部菜单资源',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顶部菜单排序',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顶部菜单表',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu'
GO


-- ----------------------------
-- Table structure for blade_top_menu_setting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_top_menu_setting]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_top_menu_setting]
GO

CREATE TABLE [dbo].[blade_top_menu_setting] (
  [id] bigint  NOT NULL,
  [top_menu_id] bigint  NULL,
  [menu_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[blade_top_menu_setting] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu_setting',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顶部菜单主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu_setting',
'COLUMN', N'top_menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu_setting',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顶部菜单配置表',
'SCHEMA', N'dbo',
'TABLE', N'blade_top_menu_setting'
GO


-- ----------------------------
-- Table structure for blade_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_user]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_user]
GO

CREATE TABLE [dbo].[blade_user] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [account] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [real_name] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [avatar] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [birthday] datetime2(0)  NULL,
  [sex] int  NULL,
  [role_id] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [dept_id] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [post_id] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_dept] bigint  NULL,
  [create_time] datetime2(0)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(0)  NULL,
  [status] int  NULL,
  [is_deleted] int  NULL
)
GO

ALTER TABLE [dbo].[blade_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户编号',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账号',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'account'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'昵称',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'真名',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'real_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门id',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位id',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'post_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建部门',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'create_dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'blade_user',
'COLUMN', N'is_deleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户表',
'SCHEMA', N'dbo',
'TABLE', N'blade_user'
GO


-- ----------------------------
-- Records of blade_user
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_user] VALUES (N'1123598821738675201', N'000000', NULL, N'admin', N'90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', N'管理员', N'管理员', N'https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png', N'admin@bladex.vip', N'123333333333', N'2018-08-08 00:00:00', N'1', N'1123598816738675201', N'1123598813738675201', N'1123598817738675201', N'1123598821738675201', N'1123598813738675201', N'2018-08-08 00:00:00', N'1123598821738675201', N'2018-08-08 00:00:00', N'1', N'0'), (N'1123598821738675202', N'000000', NULL, N'hr', N'5e79b90f7bba52d54115f086e48f539016a27ec6', N'人事', N'人事', N'', N'hr@bladex.vip', N'123333333333', N'2018-08-08 00:00:00', N'1', N'1123598816738675203', N'1123598813738675202', N'1123598817738675207', N'1123598821738675201', N'1123598813738675201', N'2019-04-27 17:03:10', N'1123598821738675201', N'2019-04-27 17:03:10', N'1', N'0'), (N'1123598821738675203', N'000000', NULL, N'manager', N'dfbaa3b61caa3a319f463cc165085aa8c822d2ce', N'经理', N'经理', N'', N'manager@bladex.vip', N'123333333333', N'2018-08-08 00:00:00', N'1', N'1123598816738675204', N'1123598813738675202', N'1123598817738675206', N'1123598821738675201', N'1123598813738675201', N'2019-04-27 17:03:38', N'1123598821738675201', N'2019-04-27 17:03:38', N'1', N'0'), (N'1123598821738675204', N'000000', NULL, N'boss', N'abe57d23e18f7ad8ea99c86e430c90a05119a9d3', N'老板', N'老板', N'', N'boss@bladex.vip', N'123333333333', N'2018-08-08 00:00:00', N'1', N'1123598816738675205', N'1123598813738675202', N'1123598817738675201', N'1123598821738675201', N'1123598813738675201', N'2019-04-27 17:03:55', N'1123598821738675201', N'2019-04-27 17:03:55', N'1', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_user_dept
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_user_dept]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_user_dept]
GO

CREATE TABLE [dbo].[blade_user_dept] (
  [id] bigint  NOT NULL,
  [user_id] bigint  NULL,
  [dept_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[blade_user_dept] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_dept',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_dept',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_dept',
'COLUMN', N'dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户部门表',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_dept'
GO


-- ----------------------------
-- Records of blade_user_dept
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[blade_user_dept] VALUES (N'1203503640757788674', N'1123598821738675201', N'1123598813738675201'), (N'1203503653323923458', N'1123598821738675202', N'1123598813738675202'), (N'1203503663402835969', N'1123598821738675203', N'1123598813738675202'), (N'1203503672911323137', N'1123598821738675204', N'1123598813738675202')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for blade_user_oauth
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[blade_user_oauth]') AND type IN ('U'))
	DROP TABLE [dbo].[blade_user_oauth]
GO

CREATE TABLE [dbo].[blade_user_oauth] (
  [id] bigint  NOT NULL,
  [tenant_id] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [uuid] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_id] bigint  NULL,
  [username] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [nickname] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [avatar] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [blog] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [company] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [location] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [gender] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [source] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[blade_user_oauth] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第三方系统用户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'uuid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账号',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'nickname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用主页',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'blog'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公司名',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'company'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮件',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'gender'
GO

EXEC sp_addextendedproperty
'MS_Description', N'来源',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth',
'COLUMN', N'source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户第三方认证表',
'SCHEMA', N'dbo',
'TABLE', N'blade_user_oauth'
GO


-- ----------------------------
-- Primary Key structure for table blade_attach
-- ----------------------------
ALTER TABLE [dbo].[blade_attach] ADD CONSTRAINT [PK__blade_at__3213E83F38EE7070] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_client
-- ----------------------------
ALTER TABLE [dbo].[blade_client] ADD CONSTRAINT [PK__blade_cl__3213E83F3BCADD1B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_code
-- ----------------------------
ALTER TABLE [dbo].[blade_code] ADD CONSTRAINT [PK__blade_co__3213E83F3EA749C6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_datasource
-- ----------------------------
ALTER TABLE [dbo].[blade_datasource] ADD CONSTRAINT [PK__blade_da__3213E83F4183B671] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_dept
-- ----------------------------
ALTER TABLE [dbo].[blade_dept] ADD CONSTRAINT [PK__blade_de__3213E83F4460231C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_dict
-- ----------------------------
ALTER TABLE [dbo].[blade_dict] ADD CONSTRAINT [PK__blade_di__3213E83F473C8FC7] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_dict_biz
-- ----------------------------
ALTER TABLE [dbo].[blade_dict_biz] ADD CONSTRAINT [PK__blade_di__3213E83F4A18FC72] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_log_api
-- ----------------------------
ALTER TABLE [dbo].[blade_log_api] ADD CONSTRAINT [PK__blade_lo__3213E83F4CF5691D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_log_error
-- ----------------------------
ALTER TABLE [dbo].[blade_log_error] ADD CONSTRAINT [PK__blade_lo__3213E83F4FD1D5C8] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_log_usual
-- ----------------------------
ALTER TABLE [dbo].[blade_log_usual] ADD CONSTRAINT [PK__blade_lo__3213E83F52AE4273] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_menu
-- ----------------------------
ALTER TABLE [dbo].[blade_menu] ADD CONSTRAINT [PK__blade_me__3213E83F558AAF1E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_notice
-- ----------------------------
ALTER TABLE [dbo].[blade_notice] ADD CONSTRAINT [PK__blade_no__3213E83F58671BC9] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_oss
-- ----------------------------
ALTER TABLE [dbo].[blade_oss] ADD CONSTRAINT [PK__blade_os__3213E83F5B438874] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_param
-- ----------------------------
ALTER TABLE [dbo].[blade_param] ADD CONSTRAINT [PK__blade_pa__3213E83F5E1FF51F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_post
-- ----------------------------
ALTER TABLE [dbo].[blade_post] ADD CONSTRAINT [PK__blade_po__3213E83F60FC61CA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_process_leave
-- ----------------------------
ALTER TABLE [dbo].[blade_process_leave] ADD CONSTRAINT [PK__blade_pr__3213E83F63D8CE75] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_region
-- ----------------------------
ALTER TABLE [dbo].[blade_region] ADD CONSTRAINT [PK__blade_re__357D4CF866B53B20] PRIMARY KEY CLUSTERED ([code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_report_file
-- ----------------------------
ALTER TABLE [dbo].[blade_report_file] ADD CONSTRAINT [PK__blade_re__3213E83F1C722D53] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_role
-- ----------------------------
ALTER TABLE [dbo].[blade_role] ADD CONSTRAINT [PK__blade_ro__3213E83F6991A7CB] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_role_menu
-- ----------------------------
ALTER TABLE [dbo].[blade_role_menu] ADD CONSTRAINT [PK__blade_ro__3213E83F6C6E1476] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_role_scope
-- ----------------------------
ALTER TABLE [dbo].[blade_role_scope] ADD CONSTRAINT [PK__blade_ro__3213E83F6F4A8121] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_scope_api
-- ----------------------------
ALTER TABLE [dbo].[blade_scope_api] ADD CONSTRAINT [PK__blade_sc__3213E83F7226EDCC] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_scope_data
-- ----------------------------
ALTER TABLE [dbo].[blade_scope_data] ADD CONSTRAINT [PK__blade_sc__3213E83F75035A77] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_sms
-- ----------------------------
ALTER TABLE [dbo].[blade_sms] ADD CONSTRAINT [PK__blade_sm__3213E83F77DFC722] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_tenant
-- ----------------------------
ALTER TABLE [dbo].[blade_tenant] ADD CONSTRAINT [PK__blade_te__3213E83F7ABC33CD] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_top_menu
-- ----------------------------
ALTER TABLE [dbo].[blade_top_menu] ADD CONSTRAINT [PK__blade_to__3213E83F7D98A078] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_top_menu_setting
-- ----------------------------
ALTER TABLE [dbo].[blade_top_menu_setting] ADD CONSTRAINT [PK__blade_to__3213E83F00750D23] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_user
-- ----------------------------
ALTER TABLE [dbo].[blade_user] ADD CONSTRAINT [PK__blade_us__3213E83F035179CE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_user_dept
-- ----------------------------
ALTER TABLE [dbo].[blade_user_dept] ADD CONSTRAINT [PK__blade_us__3213E83F062DE679] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table blade_user_oauth
-- ----------------------------
ALTER TABLE [dbo].[blade_user_oauth] ADD CONSTRAINT [PK__blade_us__3213E83F090A5324] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

