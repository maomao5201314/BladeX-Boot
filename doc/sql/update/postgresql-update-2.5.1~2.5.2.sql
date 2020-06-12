-- ----------------------------
-- 第三方系统用户ID
-- ----------------------------
ALTER TABLE "blade_user_oauth"
    ADD COLUMN "uuid" varchar(64) COLLATE "pg_catalog"."default";
COMMENT ON COLUMN "blade_user_oauth"."uuid" IS '第三方系统用户ID';
