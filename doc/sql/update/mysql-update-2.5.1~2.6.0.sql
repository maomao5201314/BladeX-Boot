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

-- ----------------------------
-- 报表文件表
-- ----------------------------
CREATE TABLE `blade_report_file`  (
    `id` bigint(64) NOT NULL COMMENT '主键',
    `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名',
    `content` mediumblob NULL COMMENT '文件内容',
    `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted` int(2) NULL DEFAULT 0 COMMENT '是否已删除',
    PRIMARY KEY (`id`)
) COMMENT = '报表文件表';

-- ----------------------------
-- 插入报表文件表菜单数据
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962301', '0', 'report', '报表管理', 'menu', '/report', 'iconfont icon-shujuzhanshi2', 5, 1, 0, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962302', '1164733399669962301', 'report_setting', '报表配置', 'menu', 'http://localhost:8108/ureport/designer', 'iconfont icon-rizhi', 1, 1, 0, 2, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962303', '1164733399669962301', 'report_list', '报表列表', 'menu', '/report/reportlist', 'iconfont icon-biaodan', 2, 1, 0, 1, NULL, 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733399669962304', '1164733399669962301', 'report_notice', '公告报表', 'menu', 'http://localhost:8108/ureport/preview?_u=blade-notice.ureport.xml', 'iconfont iconicon_sms', 3, 1, 0, 2, NULL, 0);

-- ----------------------------
-- 增加报表文件表菜单权限数据
-- ----------------------------
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875228001', '1164733399669962301', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875228002', '1164733399669962302', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875228003', '1164733399669962303', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893875228004', '1164733399669962304', '1123598816738675201');
