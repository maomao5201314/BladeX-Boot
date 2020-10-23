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

-- ----------------------------
-- 修改用户平台默认值
-- ----------------------------
UPDATE [dbo].[blade_user] set user_type = 1 WHERE is_deleted = 0;

-- ----------------------------
-- 创建用户拓展表
-- ----------------------------
CREATE TABLE [dbo].[blade_user_web] (
    [id] bigint NOT NULL,
    [user_id] bigint NULL,
    [user_ext] varchar(255),
    PRIMARY KEY CLUSTERED ([id])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    )
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'主键',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_web',
    'COLUMN', N'id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户ID',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_web',
    'COLUMN', N'user_id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户拓展信息',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_web',
    'COLUMN', N'user_ext'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户平台拓展表',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_web';

CREATE TABLE [dbo].[blade_user_app] (
    [id] bigint NOT NULL,
    [user_id] bigint NULL,
    [user_ext] varchar(255),
    PRIMARY KEY CLUSTERED ([id])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    )
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'主键',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_app',
    'COLUMN', N'id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户ID',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_app',
    'COLUMN', N'user_id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户拓展信息',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_app',
    'COLUMN', N'user_ext'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户平台拓展表',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_app';

CREATE TABLE [dbo].[blade_user_other] (
    [id] bigint NOT NULL,
    [user_id] bigint NULL,
    [user_ext] varchar(255),
    PRIMARY KEY CLUSTERED ([id])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    )
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'主键',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_other',
    'COLUMN', N'id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户ID',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_other',
    'COLUMN', N'user_id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户拓展信息',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_other',
    'COLUMN', N'user_ext'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'用户平台拓展表',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_user_other';

-- ----------------------------
-- 增加用户平台字典数据
-- ----------------------------
INSERT INTO [dbo].[blade_dict]([id], [parent_id], [code], [dict_key], [dict_value], [sort], [remark], [is_sealed], [is_deleted])
VALUES (N'1123598814738778200', N'0', N'user_type', N'-1', N'用户平台', N'14', NULL, N'0', N'0');
INSERT INTO [dbo].[blade_dict]([id], [parent_id], [code], [dict_key], [dict_value], [sort], [remark], [is_sealed], [is_deleted])
VALUES (N'1123598814738778201', N'1123598814738778200', N'user_type', N'1', N'WEB', N'1', NULL, N'0', N'0');
INSERT INTO [dbo].[blade_dict]([id], [parent_id], [code], [dict_key], [dict_value], [sort], [remark], [is_sealed], [is_deleted])
VALUES (N'1123598814738778202', N'1123598814738778200', N'user_type', N'2', N'APP', N'2', NULL, N'0', N'0');
INSERT INTO [dbo].[blade_dict]([id], [parent_id], [code], [dict_key], [dict_value], [sort], [remark], [is_sealed], [is_deleted])
VALUES (N'1123598814738778203', N'1123598814738778200', N'user_type', N'3', N'OTHER', N'3', NULL, N'0', N'0');
