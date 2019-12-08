-- ----------------------------
-- 修改字典表字段类型
-- ----------------------------
ALTER TABLE `blade_dict`
    MODIFY COLUMN `dict_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典值' AFTER `code`;

-- ----------------------------
-- 插入菜单数据
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733379658963251', '1123598815738675203', 'dictbiz', '业务字典', 'menu', '/system/dictbiz', 'iconfont iconicon_study', 3, 1, 0, 1, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733379658963252', '1164733379658963251', 'dictbiz_add', '新增', 'add', '/system/dictbiz/add', 'plus', 1, 2, 2, 1, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733379658963253', '1164733379658963251', 'dictbiz_edit', '修改', 'edit', '/system/dictbiz/edit', 'form', 2, 2, 1, 1, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733379658963254', '1164733379658963251', 'dictbiz_delete', '删除', 'delete', '/api/blade-system/dict-biz/remove', 'delete', 3, 2, 0, 1, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733379658963255', '1164733379658963251', 'dictbiz_view', '查看', 'view', '/system/dictbiz/view', 'file-text', 4, 2, 3, 1, '', 0);

-- ----------------------------
-- 插入数据源角色权限数据
-- ----------------------------
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272793873322991', '1164733379658963251', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272793873322992', '116473337658963252', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272793873322993', '1164733379658963253', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272793873322994', '1164733379658963254', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272793873322995', '1164733379658963255', '1123598816738675201');


-- ----------------------------
-- 创建业务字典表
-- ----------------------------
CREATE TABLE `blade_dict_biz`  (
   `id` bigint(64) NOT NULL COMMENT '主键',
   `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户ID',
   `parent_id` bigint(64) NULL DEFAULT 0 COMMENT '父主键',
   `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典码',
   `dict_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典值',
   `dict_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典名称',
   `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
   `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典备注',
   `is_sealed` int(2) NULL DEFAULT 0 COMMENT '是否已封存',
   `is_deleted` int(2) NULL DEFAULT 0 COMMENT '是否已删除',
   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '业务字典表';

-- ----------------------------
-- 创建用户部门表
-- ----------------------------
CREATE TABLE `blade_user_dept`  (
   `id` bigint(64) NOT NULL COMMENT '主键',
   `user_id` bigint(64) NULL DEFAULT 0 COMMENT '用户ID',
   `dept_id` bigint(64) NULL DEFAULT 0 COMMENT '部门ID',
   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户部门表';

-- ----------------------------
-- 新增用户部门表数据
-- ----------------------------
INSERT INTO `blade_user_dept`(`id`, `user_id`, `dept_id`) VALUES (1203503640757788674, 1123598821738675201, 1123598813738675201);
INSERT INTO `blade_user_dept`(`id`, `user_id`, `dept_id`) VALUES (1203503653323923458, 1123598821738675202, 1123598813738675202);
INSERT INTO `blade_user_dept`(`id`, `user_id`, `dept_id`) VALUES (1203503663402835969, 1123598821738675203, 1123598813738675202);
INSERT INTO `blade_user_dept`(`id`, `user_id`, `dept_id`) VALUES (1203503672911323137, 1123598821738675204, 1123598813738675202);
