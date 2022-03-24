-- -----------------------------------
-- 变更字段以适配达梦数据库
-- -----------------------------------
ALTER TABLE "blade_attach" RENAME COLUMN "domain" TO "domain_url";

ALTER TABLE "blade_tenant" RENAME COLUMN "domain" TO "domain_url";

ALTER TABLE "act_de_model" ADD COLUMN "model_editor_xml" text;
