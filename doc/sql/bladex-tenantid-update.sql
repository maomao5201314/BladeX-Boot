ALTER TABLE `blade_dept`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_log_api`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_log_error`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_log_usual`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_notice`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_oss`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_role`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_tenant`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;

ALTER TABLE `blade_user`
    CHANGE COLUMN `tenant_code` `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID' AFTER `id`;
