-- -----------------------------------
-- 给代码生成添加字段
-- -----------------------------------
ALTER TABLE `blade_code`
    ADD COLUMN `feign_mode` int(2) NULL COMMENT '远程调用模式' AFTER `wrap_mode`,
    ADD COLUMN `code_style` varchar(32) NULL COMMENT '代码风格' AFTER `feign_mode`;

-- -----------------------------------
-- 修改应用表saber的访问地址
-- -----------------------------------
UPDATE blade_client SET web_server_redirect_uri = 'http://localhost:1888' WHERE client_id = 'saber';
