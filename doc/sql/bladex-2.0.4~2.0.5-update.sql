-- ----------------------------
-- 删除旧版本数据权限表并新增
-- ----------------------------
DROP TABLE IF EXISTS `blade_data_scope`;

-- ----------------------------
-- 重构数据权限表
-- ----------------------------
DROP TABLE IF EXISTS `blade_scope_data`;
CREATE TABLE `blade_scope_data`  (
 `id` bigint(64) NOT NULL COMMENT '主键',
 `menu_id` bigint(64) NULL DEFAULT NULL COMMENT '菜单主键',
 `resource_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编号',
 `scope_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限名称',
 `scope_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限字段',
 `scope_class` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限类名',
 `scope_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限字段',
 `scope_type` int(2) NULL DEFAULT NULL COMMENT '数据权限类型',
 `scope_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限值域',
 `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限备注',
 `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人',
 `create_dept` bigint(64) NULL DEFAULT NULL COMMENT '创建部门',
 `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
 `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人',
 `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
 `status` int(2) NULL DEFAULT NULL COMMENT '状态',
 `is_deleted` int(2) NULL DEFAULT NULL COMMENT '是否已删除',
 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据权限表';

-- ----------------------------
-- 重构接口权限表
-- ----------------------------
DROP TABLE IF EXISTS `blade_scope_api`;
CREATE TABLE `blade_scope_api`  (
`id` bigint(64) NOT NULL COMMENT '主键',
`menu_id` bigint(64) NULL DEFAULT NULL COMMENT '菜单主键',
`resource_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编号',
`scope_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口权限名',
`scope_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口权限地址',
`scope_type` int(2) NULL DEFAULT NULL COMMENT '接口权限类型',
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口权限备注',
`create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人',
`create_dept` bigint(64) NULL DEFAULT NULL COMMENT '创建部门',
`create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
`update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人',
`update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
`status` int(2) NULL DEFAULT NULL COMMENT '状态',
`is_deleted` int(2) NULL DEFAULT NULL COMMENT '是否已删除',
PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '接口权限表';

-- ----------------------------
-- 角色数据权限增加字段
-- ----------------------------
ALTER TABLE `blade_role_scope`
    MODIFY COLUMN `scope_id` bigint(64) NULL DEFAULT NULL COMMENT '权限id' AFTER `id`,
    ADD COLUMN `scope_category` int(2) NULL COMMENT '权限类型(1:数据权限、2:接口权限)' AFTER `id`;

-- ----------------------------
-- 权限类型字典
-- ----------------------------

UPDATE `blade_dict` SET `parent_id` = 0, `code` = 'data_scope_type', `dict_key` = -1, `dict_value` = '数据权限', `sort` = 8, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598814738675231;
UPDATE `blade_dict` SET `parent_id` = 1123598814738675231, `code` = 'data_scope_type', `dict_key` = 1, `dict_value` = '全部可见', `sort` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598814738675232;
UPDATE `blade_dict` SET `parent_id` = 1123598814738675231, `code` = 'data_scope_type', `dict_key` = 2, `dict_value` = '本人可见', `sort` = 2, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598814738675233;
UPDATE `blade_dict` SET `parent_id` = 1123598814738675231, `code` = 'data_scope_type', `dict_key` = 3, `dict_value` = '所在机构可见', `sort` = 3, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598814738675234;
UPDATE `blade_dict` SET `parent_id` = 1123598814738675231, `code` = 'data_scope_type', `dict_key` = 4, `dict_value` = '所在机构及子级可见', `sort` = 4, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598814738675235;
UPDATE `blade_dict` SET `parent_id` = 1123598814738675231, `code` = 'data_scope_type', `dict_key` = 5, `dict_value` = '自定义', `sort` = 5, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598814738675236;


INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675237, 0, 'api_scope_type', -1, '接口权限', 10, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675238, 1123598814738675237, 'api_scope_type', 1, '系统接口', 1, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675239, 1123598814738675237, 'api_scope_type', 2, '业务接口', 2, NULL, 0);

INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675240, 0, 'scope_category', -1, '权限类型', 10, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675241, 1123598814738675240, 'scope_category', 1, '数据权限', 1, NULL, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`) VALUES (1123598814738675242, 1123598814738675240, 'scope_category', 2, '接口权限', 2, NULL, 0);

-- ----------------------------
-- 系统管理增加顶部菜单
-- ----------------------------
UPDATE `blade_menu` SET `parent_id` = 1123598815738675203, `code` = 'topmenu', `name` = '顶部菜单', `alias` = 'menu', `path` = '/system/topmenu', `source` = 'iconfont iconicon_boss', `sort` = 5, `category` = 1, `action` = 0, `is_open` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598815738675208;
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675313, 1123598815738675208, 'topmenu_add', '新增', 'add', '/system/topmenu/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675314, 1123598815738675208, 'topmenu_edit', '修改', 'edit', '/system/topmenu/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675315, 1123598815738675208, 'topmenu_delete', '删除', 'delete', '/api/blade-system/topmenu/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675316, 1123598815738675208, 'topmenu_view', '查看', 'view', '/system/topmenu/view', 'file-text', 4, 2, 2, 1, NULL, 0);

-- ----------------------------
-- 增加权限管理模块
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675307, 0, 'authority', '权限管理', 'menu', '/authority', 'iconfont icon-bofangqi-suoping', 98, 1, 0, 1, '', 0);

-- ----------------------------
-- 角色管理迁移至权限管理
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675308, 1123598815738675307, 'role', '角色管理', 'menu', '/system/role', 'iconfont iconicon_boss', 1, 1, 0, 1, NULL, 0);
UPDATE `blade_menu` SET `parent_id` = 1123598815738675308, `code` = 'role_add', `name` = '新增', `alias` = 'add', `path` = '/system/role/add', `source` = 'plus', `sort` = 1, `category` = 2, `action` = 1, `is_open` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598815738675241;
UPDATE `blade_menu` SET `parent_id` = 1123598815738675308, `code` = 'role_edit', `name` = '修改', `alias` = 'edit', `path` = '/system/role/edit', `source` = 'form', `sort` = 2, `category` = 2, `action` = 2, `is_open` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598815738675242;
UPDATE `blade_menu` SET `parent_id` = 1123598815738675308, `code` = 'role_delete', `name` = '删除', `alias` = 'delete', `path` = '/api/blade-system/role/remove', `source` = 'delete', `sort` = 3, `category` = 2, `action` = 3, `is_open` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598815738675243;
UPDATE `blade_menu` SET `parent_id` = 1123598815738675308, `code` = 'role_view', `name` = '查看', `alias` = 'view', `path` = '/system/role/view', `source` = 'file-text', `sort` = 4, `category` = 2, `action` = 2, `is_open` = 1, `remark` = NULL, `is_deleted` = 0 WHERE `id` = 1123598815738675244;

-- ----------------------------
-- 增加数据权限及接口权限独立菜单
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675309, 1123598815738675307, 'data_scope', '数据权限', 'menu', '/system/datascope', 'iconfont icon-shujuzhanshi2', 2, 1, 0, 1, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675310, 1123598815738675309, 'data_scope_setting', '权限配置', 'setting', NULL, 'setting', 1, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675311, 1123598815738675307, 'api_scope', '接口权限', 'menu', '/system/apiscope', 'iconfont icon-iconset0216', 3, 1, 0, 1, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`) VALUES (1123598815738675312, 1123598815738675311, 'api_scope_setting', '权限配置', 'setting', NULL, 'setting', 1, 2, 2, 1, NULL, 0);

-- ----------------------------
-- 更新我的事务菜单别名
-- ----------------------------
UPDATE `blade_menu` SET `parent_id` = 0, `code` = 'work', `name` = '我的事务', `alias` = 'menu', `path` = '/work', `source` = 'iconfont iconicon_notice', `sort` = 2, `category` = 1, `action` = 0, `is_open` = 1, `remark` = '', `is_deleted` = 0 WHERE `id` = 1123598815738675280;


