-- ----------------------------
-- 增加资源编号字段
-- ----------------------------
ALTER TABLE `blade_oss`
    ADD COLUMN `oss_code` varchar(32) NULL COMMENT '资源编号' AFTER `category`;

-- ----------------------------
-- 增加短信配置表
-- ----------------------------
CREATE TABLE `blade_sms`  (
  `id` bigint(64) NOT NULL COMMENT '主键',
  `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID',
  `category` int(2) NULL DEFAULT NULL COMMENT '分类',
  `sms_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编号',
  `template_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板ID',
  `access_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'accessKey',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'secretKey',
  `region_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'regionId',
  `sign_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信签名',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人',
  `create_dept` bigint(64) NULL DEFAULT NULL COMMENT '创建部门',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(2) NULL DEFAULT 0 COMMENT '是否已删除',
 PRIMARY KEY (`id`)
) COMMENT = '短信配置表';


-- ----------------------------
-- 增加短信配置菜单数据
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733389658962251', '1123598815738675298', 'sms', '短信配置', 'menu', '/resource/sms', 'iconfont iconicon_message', 2, 1, 0, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733389658962252', '1164733389658962251', 'sms_add', '新增', 'add', '/resource/sms/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733389658962253', '1164733389658962251', 'sms_edit', '修改', 'edit', '/resource/sms/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733389658962254', '1164733389658962251', 'sms_delete', '删除', 'delete', '/api/blade-resource/sms/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733389658962255', '1164733389658962251', 'sms_view', '查看', 'view', '/resource/sms/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733389658962256', '1164733389658962251', 'sms_enable', '启用', 'enable', '/api/blade-resource/sms/enable', 'key', 5, 2, 2, 2, NULL, 0);

-- ----------------------------
-- 增加短信配置菜单权限数据
-- ----------------------------
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893873222991', '1164733389658962251', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893873222992', '1164733389658962252', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893873222993', '1164733389658962253', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893873222994', '1164733389658962254', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893873222995', '1164733389658962255', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893873222996', '1164733389658962256', '1123598816738675201');

-- ----------------------------
-- 增加短信配置字典数据
-- ----------------------------
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738677220, 0, 'sms', '-1', '短信服务类型', 11, NULL, 0, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738677221, 1123598814738677220, 'sms', '1', 'yunpian', 1, NULL, 0, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738677222, 1123598814738677220, 'sms', '2', 'qiniu', 2, NULL, 0, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738677223, 1123598814738677220, 'sms', '3', 'ali', 3, NULL, 0, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738677224, 1123598814738677220, 'sms', '4', 'tencent', 4, NULL, 0, 0);
