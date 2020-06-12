-- ----------------------------
-- 第三方系统用户ID
-- ----------------------------
ALTER TABLE "BLADE_USER_OAUTH"
    ADD ("UUID" VARCHAR2(64) );
COMMENT ON COLUMN "BLADE_USER_OAUTH"."UUID" IS '第三方系统用户ID';
