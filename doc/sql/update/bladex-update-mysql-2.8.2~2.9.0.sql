-- -----------------------------------
-- 新增lemon平台所需的组件地址字段
-- -----------------------------------
ALTER TABLE `blade_menu`
    ADD COLUMN `component` varchar(255) NULL COMMENT '组件地址' AFTER `is_open`;

-- -----------------------------------
-- 参数管理新增账号错误锁定次数配置
-- -----------------------------------
INSERT INTO `blade_param`(`id`, `param_name`, `param_key`, `param_value`, `remark`, `create_user`, `create_dept`, `create_time`, `update_user`, `update_time`, `status`, `is_deleted`) VALUES (1123598819738675203, '账号错误锁定次数', 'account.failCount', '5', '锁定次数', 1123598821738675201, 1123598813738675201, '2021-12-01 12:00:00', 1123598821738675201, '2021-12-01 12:00:00', 1, 0);

-- -----------------------------------
-- 创建租户产品表
-- -----------------------------------
CREATE TABLE `blade_tenant_package`  (
     `id` bigint(20) NOT NULL COMMENT '主键',
     `package_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品包名',
     `menu_id` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单ID',
     `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
     `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
     `create_dept` bigint(20) NULL DEFAULT NULL COMMENT '创建部门',
     `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
     `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
     `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
     `status` int(2) NULL DEFAULT NULL COMMENT '状态',
     `is_deleted` int(2) NULL DEFAULT 0 COMMENT '是否已删除',
     PRIMARY KEY (`id`)
) COMMENT = '租户产品表';

-- -----------------------------------
-- 租户表增加产品包ID字段
-- -----------------------------------
ALTER TABLE `blade_tenant`
    ADD COLUMN `package_id` bigint(20) NULL COMMENT '产品包ID' AFTER `expire_time`;
