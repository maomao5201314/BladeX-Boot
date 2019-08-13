ALTER TABLE `blade_user`
    ADD COLUMN `avatar` varchar(500) NULL COMMENT '头像' AFTER `real_name`;

CREATE TABLE `blade_datasource` (
  `id` bigint(64) NOT NULL COMMENT '主键',
  `driver_class` varchar(100) NULL COMMENT '驱动类',
  `jdbc_url` varchar(500) NULL COMMENT '连接地址',
  `username` varchar(50) NULL COMMENT '用户名',
  `password` varchar(50) NULL COMMENT '密码',
  `remark` varchar(255) NULL COMMENT '备注',
  `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人',
  `create_dept` bigint(64) NULL DEFAULT NULL COMMENT '创建部门',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(2) NULL DEFAULT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`)
) COMMENT = '数据源配置表' ;

INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1161272593873321991', '1123598815738675217', 'datasource', '数据源管理', 'menu', '/tool/datasource', 'iconfont icon-caidanguanli', 2, 1, 0, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1161272593873321992', '1161272593873321991', 'datasource_add', '新增', 'add', '/tool/datasource/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1161272593873321993', '1161272593873321991', 'datasource_edit', '修改', 'edit', '/tool/datasource/edit', 'form', 2, 2, 2, 2, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1161272593873321994', '1161272593873321991', 'datasource_delete', '删除', 'delete', '/api/blade-develop/datasource/remove', 'delete', 3, 2, 3, 3, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1161272593873321995', '1161272593873321991', 'datasource_view', '查看', 'view', '/tool/datasource/view', 'file-text', 4, 2, 2, 2, NULL, 0);

INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272593873322991', '1161272593873321991', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272593873322992', '1161272593873321992', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272593873322993', '1161272593873321993', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272593873322994', '1161272593873321994', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272593873322995', '1161272593873321995', '1123598816738675201');
