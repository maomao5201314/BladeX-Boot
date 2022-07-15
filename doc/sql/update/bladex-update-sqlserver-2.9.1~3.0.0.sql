-- -----------------------------------
-- 给代码生成添加字段
-- -----------------------------------
ALTER TABLE [dbo].[blade_code] ADD [feign_mode] int
    GO

ALTER TABLE [dbo].[blade_code] ADD [code_style] varchar(32)
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'远程调用模式',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_code',
    'COLUMN', N'feign_mode'
    GO

    EXEC sp_addextendedproperty
    'MS_Description', N'代码风格',
    'SCHEMA', N'dbo',
    'TABLE', N'blade_code',
    'COLUMN', N'code_style';

-- -----------------------------------
-- 修改应用表saber的访问地址
-- -----------------------------------
UPDATE blade_client SET web_server_redirect_uri = 'http://localhost:1888' WHERE client_id = 'saber';
