-- ----------------------------
-- 增加资源编号字段
-- ----------------------------
ALTER TABLE "BLADEX"."BLADE_OSS"
    ADD ("OSS_CODE" VARCHAR2(32) );

COMMENT ON COLUMN "BLADEX"."BLADE_OSS"."OSS_CODE" IS '资源编号'
