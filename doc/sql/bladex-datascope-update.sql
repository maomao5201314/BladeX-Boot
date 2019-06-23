/*
 Navicat Premium Data Transfer

 Source Server         : mysql_localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : bladex_boot

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 20/06/2019 00:31:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blade_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `blade_data_scope`;
CREATE TABLE `blade_data_scope`  (
  `id` bigint(64) NOT NULL COMMENT '主键',
  `menu_id` bigint(64) NULL DEFAULT NULL COMMENT '菜单主键',
  `resource_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编号',
  `scope_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限名称',
  `scope_class` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限类名',
  `scope_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限字段',
  `scope_type` int(2) NULL DEFAULT NULL COMMENT '数据权限类型',
  `scope_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限值域',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限备注',
  `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(2) NULL DEFAULT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- Table structure for blade_role_scope
-- ----------------------------
DROP TABLE IF EXISTS `blade_role_scope`;
CREATE TABLE `blade_role_scope`  (
  `id` bigint(64) NOT NULL COMMENT '主键',
  `scope_id` bigint(64) NULL DEFAULT NULL COMMENT '数据权限id',
  `role_id` bigint(64) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- 部门表增加字段
-- ----------------------------
ALTER TABLE `blade_dept`
    ADD COLUMN `ancestors` varchar(2000) NULL COMMENT '祖级列表' AFTER `parent_id`,
    ADD COLUMN `dept_category` int(2) NULL COMMENT '部门类型' AFTER `ancestors`;

UPDATE `blade_dept` SET `tenant_id` = '000000', `parent_id` = 0, `ancestors` = '0', `dept_category` = 1, `dept_name` = '刀锋科技', `full_name` = '江苏刀锋科技有限公司', `sort` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598813738675201;
UPDATE `blade_dept` SET `tenant_id` = '000000', `parent_id` = 1123598813738675201, `ancestors` = '0,1123598813738675201', `dept_category` = 1, `dept_name` = '常州刀锋', `full_name` = '常州刀锋科技有限公司', `sort` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598813738675202;
UPDATE `blade_dept` SET `tenant_id` = '000000', `parent_id` = 1123598813738675201, `ancestors` = '0,1123598813738675201', `dept_category` = 1, `dept_name` = '苏州刀锋', `full_name` = '苏州刀锋科技有限公司', `sort` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598813738675203;

-- ----------------------------
-- 增加字典项
-- ----------------------------
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675227, 0, 'org_category', -1, '机构类型', 7, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675228, 1123598814738675227, 'org_category', 1, '公司', 1, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675229, 1123598814738675227, 'org_category', 2, '部门', 2, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675230, 1123598814738675227, 'org_category', 3, '小组', 3, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675231, 0, 'scope_type', -1, '数据权限', 8, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675232, 1123598814738675231, 'scope_type', 1, '全部可见', 1, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675233, 1123598814738675231, 'scope_type', 2, '本人可见', 2, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675234, 1123598814738675231, 'scope_type', 3, '所在机构可见', 3, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675235, 1123598814738675231, 'scope_type', 4, '所在机构及子级可见', 4, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675236, 1123598814738675231, 'scope_type', 5, '自定义', 5, NULL, 0);

-- ----------------------------
-- 增加数据权限菜单及权限
-- ----------------------------
UPDATE `blade_menu` SET `name` = '机构管理' WHERE `id` = 1123598815738675205;
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675306, 1123598815738675207, 'menu_data_scope', '数据权限', 'datascope', NULL, 'setting', 5, 2, 2, 1, NULL, 0);
INSERT INTO `blade_role_menu`(`id`, `menu_id`, `role_id`) VALUES (1132812106487730179, 1123598815738675306, 1123598816738675201);
