-- -----------------------------------
-- 给代码生成添加字段
-- -----------------------------------
ALTER TABLE "BLADEX"."BLADE_CODE"
    ADD ("FEIGN_MODE" NUMBER(11) )
    ADD ("CODE_STYLE" VARCHAR2(32) );

COMMENT ON COLUMN "BLADEX"."BLADE_CODE"."FEIGN_MODE" IS '远程调用模式';

COMMENT ON COLUMN "BLADEX"."BLADE_CODE"."CODE_STYLE" IS '代码风格';

-- -----------------------------------
-- 修改应用表saber的访问地址
-- -----------------------------------
UPDATE "BLADEX"."BLADE_CLIENT" SET WEB_SERVER_REDIRECT_URI = 'http://localhost:1888' WHERE CLIENT_ID = 'saber';
