-- -----------------------------------
-- 变更字段以适配达梦数据库
-- -----------------------------------
EXEC sp_rename '[dbo].[blade_attach].[domain]', 'domain_url', 'COLUMN';

EXEC sp_rename '[dbo].[blade_tenant].[domain]', 'domain_url', 'COLUMN';

ALTER TABLE [dbo].[ACT_DE_MODEL] ADD [model_editor_xml] varchar(max);
