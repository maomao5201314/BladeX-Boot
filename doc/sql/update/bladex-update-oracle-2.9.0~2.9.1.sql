-- -----------------------------------
-- 变更字段以适配达梦数据库
-- -----------------------------------
ALTER TABLE "BLADEX"."BLADE_ATTACH" RENAME COLUMN "DOMAIN" TO "DOMAIN_URL";

ALTER TABLE "BLADEX"."BLADE_TENANT" RENAME COLUMN "DOMAIN" TO "DOMAIN_URL";

ALTER TABLE "BLADEX"."ACT_DE_MODEL" ADD ("MODEL_EDITOR_XML" CLOB);
