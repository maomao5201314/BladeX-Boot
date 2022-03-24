-- -----------------------------------
-- 变更字段以适配达梦数据库
-- -----------------------------------
ALTER TABLE `blade_attach`
    CHANGE COLUMN `domain` `domain_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附件域名' AFTER `link`;

ALTER TABLE `blade_tenant`
    CHANGE COLUMN `domain` `domain_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '域名地址' AFTER `tenant_name`;

ALTER TABLE `ACT_DE_MODEL` ADD COLUMN `model_editor_xml` longtext NULL AFTER `model_editor_json`;
