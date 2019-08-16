-- ----------------------------
-- 用户表增加头像字段
-- ----------------------------
ALTER TABLE `blade_user`
    ADD COLUMN `avatar` varchar(500) NULL COMMENT '头像' AFTER `real_name`;

-- ----------------------------
-- 创建数据源配置表
-- ----------------------------
CREATE TABLE `blade_datasource` (
  `id` bigint(64) NOT NULL COMMENT '主键',
  `name` varchar(100) NULL COMMENT '名称',
  `driver_class` varchar(100) NULL COMMENT '驱动类',
  `url` varchar(500) NULL COMMENT '连接地址',
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

-- ----------------------------
-- 插入数据源默认数据
-- ----------------------------
INSERT INTO `blade_datasource`(`id`, `name`, `driver_class`, `url`, `username`, `password`, `remark`, `create_user`, `create_dept`, `create_time`, `update_user`, `update_time`, `status`, `is_deleted`) VALUES (1161483357481541634, 'mysql', 'com.mysql.cj.jdbc.Driver', 'jdbc:mysql://localhost:3306/bladex?useSSL=false&amp;useUnicode=true&amp;characterEncoding=utf-8&amp;zeroDateTimeBehavior=convertToNull&amp;transformedBitIsBoolean=true&amp;serverTimezone=GMT%2B8&amp;nullCatalogMeansCurrent=true&amp;allowPublicKeyRetrieval=true', 'root', 'root', 'mysql', 1123598821738675201, 1123598813738675201, '2019-08-14 11:43:06', 1123598821738675201, '2019-08-14 11:43:06', 1, 0);
INSERT INTO `blade_datasource`(`id`, `name`, `driver_class`, `url`, `username`, `password`, `remark`, `create_user`, `create_dept`, `create_time`, `update_user`, `update_time`, `status`, `is_deleted`) VALUES (1161483504353484802, 'postgresql', 'org.postgresql.Driver', 'jdbc:postgresql://127.0.0.1:5432/bladex', 'postgres', '123456', 'postgresql', 1123598821738675201, 1123598813738675201, '2019-08-14 11:43:41', 1123598821738675201, '2019-08-14 11:43:41', 1, 0);
INSERT INTO `blade_datasource`(`id`, `name`, `driver_class`, `url`, `username`, `password`, `remark`, `create_user`, `create_dept`, `create_time`, `update_user`, `update_time`, `status`, `is_deleted`) VALUES (1161483594023510018, 'oracle', 'oracle.jdbc.OracleDriver', 'jdbc:oracle:thin:@127.0.0.1:49161:orcl', 'BLADEX', 'bladex', 'oracle', 1123598821738675201, 1123598813738675201, '2019-08-14 11:44:03', 1123598821738675201, '2019-08-14 11:44:03', 1, 0);

-- ----------------------------
-- 插入数据源菜单数据
-- ----------------------------
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

-- ----------------------------
-- 插入数据源角色权限数据
-- ----------------------------
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

-- ----------------------------
-- 代码生成表增加数据源字段
-- ----------------------------
ALTER TABLE `blade_code`
    ADD COLUMN `datasource_id` bigint(64) NULL COMMENT '数据源主键' AFTER `id`,
    ADD COLUMN `base_mode` int(2) NULL COMMENT '基础业务模式' AFTER `package_name`,
    ADD COLUMN `wrap_mode` int(2) NULL COMMENT '包装器模式' AFTER `base_mode`;


-- ----------------------------
-- 代码生成记录增加数据源字段
-- ----------------------------
UPDATE `blade_code` SET `datasource_id` = 1161483357481541634, `base_mode` = 1, `wrap_mode` = 1 WHERE `id` = 1123598812738675201;
