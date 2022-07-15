-- -----------------------------------
-- 给代码生成添加字段
-- -----------------------------------
ALTER TABLE "blade_code"
    ADD COLUMN "feign_mode" int2,
    ADD COLUMN "code_style" varchar(32);

COMMENT ON COLUMN "blade_code"."feign_mode" IS '远程调用模式';

COMMENT ON COLUMN "blade_code"."code_style" IS '代码风格';

-- -----------------------------------
-- 修改应用表saber的访问地址
-- -----------------------------------
UPDATE blade_client SET web_server_redirect_uri = 'http://localhost:1888' WHERE client_id = 'saber';
