-- ----------------------------
-- 租户字段增加
-- ----------------------------
ALTER TABLE `bladex`.`blade_notice`
    ADD COLUMN `tenant_code` varchar(12) NULL DEFAULT '000000' COMMENT '租户编号' AFTER `id`;
ALTER TABLE `bladex`.`blade_dept`
    ADD COLUMN `tenant_code` varchar(12) NULL DEFAULT '000000' COMMENT '租户编号' AFTER `id`;
ALTER TABLE `bladex`.`blade_role`
    ADD COLUMN `tenant_code` varchar(12) NULL DEFAULT '000000' COMMENT '租户编号' AFTER `id`;
ALTER TABLE `bladex`.`blade_user`
    ADD COLUMN `tenant_code` varchar(12) NULL DEFAULT '000000' COMMENT '租户编号' AFTER `id`;
ALTER TABLE `bladex`.`blade_log_api`
    ADD COLUMN `tenant_code` varchar(12) NULL DEFAULT '000000' COMMENT '租户编号' AFTER `id`;
ALTER TABLE `bladex`.`blade_log_error`
    ADD COLUMN `tenant_code` varchar(12) NULL DEFAULT '000000' COMMENT '租户编号' AFTER `id`;
ALTER TABLE `bladex`.`blade_log_usual`
    ADD COLUMN `tenant_code` varchar(12) NULL DEFAULT '000000' COMMENT '租户编号' AFTER `id`;


-- ----------------------------
-- 租户菜单增加
-- ----------------------------
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (3, 'tenant', '租户管理', 'menu', '/system/tenant', NULL, 1, 1, 0, 1, NULL, 0);
set @parentid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'tenant_add', '新增', 'add', '/system/tenant/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'tenant_edit', '修改', 'edit', '/system/tenant/edit', 'form', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'tenant_delete', '删除', 'delete', '/api/blade-system/tenant/delete', 'delete', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@parentid, 'tenant_view', '查看', 'view', '/system/tenant/view', 'file-text', 1, 2, 1, 1, NULL, 0);

-- ----------------------------
-- 租户表创建
-- ----------------------------
DROP TABLE IF EXISTS `blade_tenant`;
CREATE TABLE `blade_tenant`  (
 `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
 `tenant_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '租户编号',
 `tenant_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '租户名称',
 `linkman` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人',
 `contact_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
 `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系地址',
 `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
 `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
 `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
 `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
 `status` int(2) NULL DEFAULT NULL COMMENT '状态',
 `is_deleted` int(2) NULL DEFAULT 0 COMMENT '是否已删除',
 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- 租户表数据插入
-- ----------------------------
BEGIN;
INSERT INTO `blade_tenant` VALUES (1, '000000', '管理组', 'admin', '666666', '管理组', 1, '2019-01-01 00:00:39', 1, '2019-01-01 00:00:39', 1, 0);
COMMIT;
