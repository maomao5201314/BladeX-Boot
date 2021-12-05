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
