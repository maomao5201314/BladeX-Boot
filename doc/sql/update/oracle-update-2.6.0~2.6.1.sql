-- ----------------------------
-- 层级字段重命名
-- ----------------------------
ALTER TABLE "BLADE_REGION" RENAME COLUMN "LEVEL" TO "REGION_LEVEL";

-- ----------------------------
-- 增加用户平台字段
-- ----------------------------
ALTER TABLE "BLADE_USER"
    ADD ("USER_TYPE" NUMBER(6) );

COMMENT ON COLUMN "BLADE_USER"."USER_TYPE" IS '用户平台';
