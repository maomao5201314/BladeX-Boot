-- ----------------------------
-- 层级字段重命名
-- ----------------------------
EXEC sp_rename '[dbo].[blade_region].[level]', 'region_level', 'COLUMN';

-- ----------------------------
-- 增加用户平台字段
-- ----------------------------
ALTER TABLE [dbo].[blade_user] ADD [user_type] int
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户平台',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user',
    'COLUMN', N'user_type'
