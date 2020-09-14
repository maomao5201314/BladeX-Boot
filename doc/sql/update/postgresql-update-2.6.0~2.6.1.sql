-- ----------------------------
-- 层级字段重命名
-- ----------------------------
ALTER TABLE "blade_region" RENAME COLUMN "level" TO "region_level";

-- ----------------------------
-- 增加用户平台字段
-- ----------------------------
ALTER TABLE "blade_user"
    ADD COLUMN "user_type" int2;
COMMENT ON COLUMN "public"."blade_user"."user_type" IS '用户平台';
