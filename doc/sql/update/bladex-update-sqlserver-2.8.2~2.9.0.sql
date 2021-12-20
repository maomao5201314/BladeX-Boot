-- -----------------------------------
-- 新增lemon平台所需的组件地址字段
-- -----------------------------------
ALTER TABLE [dbo].[blade_menu] ADD [component] varchar(255)
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'组件地址',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_menu',
    'COLUMN', N'component';

-- -----------------------------------
-- 参数管理新增账号错误锁定次数配置
-- -----------------------------------
INSERT INTO [blade_param]([id], [param_name], [param_key], [param_value], [remark], [create_user], [create_dept], [create_time], [update_user], [update_time], [status], [is_deleted]) VALUES (1123598819738675203, N'账号错误锁定次数', N'account.failCount', N'5', N'锁定次数', 1123598821738675201, 1123598813738675201, N'2021-12-01 12:00:00', 1123598821738675201, N'2021-12-01 12:00:00', 1, 0);

-- -----------------------------------
-- 创建租户产品表
-- -----------------------------------
CREATE TABLE [dbo].[blade_tenant_package] (
    [id] bigint NOT NULL,
    [package_name] nvarchar(50),
    [menu_id] nvarchar(3000),
    [remark] nvarchar(255),
    [create_user] bigint NULL,
    [create_dept] bigint NULL,
    [create_time] datetime2(0) NULL,
    [update_user] bigint NULL,
    [update_time] datetime2(0) NULL,
    [status] int NULL,
    [is_deleted] int NULL,
    PRIMARY KEY CLUSTERED ([id])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    )
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'主键',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'产品包名',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'package_name'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'菜单ID',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'menu_id'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'remark'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'创建人',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'create_user'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'创建部门',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'create_dept'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'create_time'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'修改人',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'update_user'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'修改时间',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'update_time'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'状态',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'status'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'是否已删除',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package',
    'COLUMN', N'is_deleted'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'租户产品表',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant_package';

-- -----------------------------------
-- 租户表增加产品包ID字段
-- -----------------------------------
ALTER TABLE [dbo].[blade_tenant] ADD [package_id] int
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'租户产品ID',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_tenant',
    'COLUMN', N'package_id';
