-- ----------------------------
-- 第三方系统用户ID
-- ----------------------------
ALTER TABLE `blade_user_oauth`
    ADD COLUMN `uuid` varchar(64) NULL COMMENT '第三方系统用户ID' AFTER `tenant_id`;

-- ----------------------------
-- 租户数据源ID
-- ----------------------------
ALTER TABLE `blade_tenant`
    ADD COLUMN `datasource_id` bigint(64) NULL COMMENT '数据源' AFTER `expire_time`;

-- ----------------------------
-- 附件表
-- ----------------------------
CREATE TABLE `blade_attach`  (
  `id` bigint(64) NOT NULL COMMENT '主键',
  `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '000000' COMMENT '租户ID',
  `link` varchar(1000) NULL COMMENT '附件地址',
  `domain` varchar(500) NULL COMMENT '附件域名',
  `name` varchar(500) NULL COMMENT '附件名称',
  `original_name` varchar(500) NULL COMMENT '附件原名',
  `extension` varchar(12) NULL COMMENT '附件拓展名',
  `attach_size` bigint(64) NULL DEFAULT NULL COMMENT '附件大小',
  `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人',
  `create_dept` bigint(64) NULL DEFAULT NULL COMMENT '创建部门',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(2) NULL DEFAULT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`)
) COMMENT = '附件表' ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- 插入附件表菜单数据
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962201', '1123598815738675298', 'attach', '附件管理', 'menu', '/resource/attach', 'iconfont iconicon_ding', 1, 1, 0, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962202', '1164733399669962201', 'attach_upload', '上传', 'upload', '/resource/attach/upload', '', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962203', '1164733399669962201', 'attach_download', '下载', 'download', '/resource/attach/download', '', 2, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962204', '1164733399669962201', 'attach_delete', '删除', 'delete', '/api/blade-resource/attach/remove', '', 3, 2, 3, 1, NULL, 0);

-- ----------------------------
-- 增加附件表菜单权限数据
-- ----------------------------
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875227001', '1164733399669962201', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875227002', '1164733399669962202', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875227003', '1164733399669962203', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875227004', '1164733399669962204', '1123598816738675201');
