-- ----------------------------
-- 增加资源编号字段
-- ----------------------------
ALTER TABLE "public"."blade_oss"
    ADD COLUMN "oss_code" varchar(32);

COMMENT ON COLUMN "public"."blade_oss"."oss_code" IS '资源编号';
