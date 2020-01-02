-- ----------------------------
-- 增加租户表字段
-- ----------------------------
ALTER TABLE `blade_tenant`
    ADD COLUMN `domain` varchar(255) NULL COMMENT '域名地址' AFTER `tenant_name`,
    ADD COLUMN `background_url` varchar(1000) NULL COMMENT '系统背景' AFTER `domain`,
    ADD COLUMN `account_number` int(0) NULL DEFAULT -1 COMMENT '账号额度' AFTER `address`,
    ADD COLUMN `expire_time` datetime(0) NULL COMMENT '过期时间' AFTER `account_number`;

-- ----------------------------
-- 插入菜单数据
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733389658963251', '1123598815738675298', 'xxljob', '任务调度', 'menu', 'http://localhost:7009/xxl-job-admin', 'iconfont iconicon_cspace', 2, 1, 0, 2, '', 0);

-- ----------------------------
-- 插入角色权限数据
-- ----------------------------
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272893873322991', '1164733389658963251', '1123598816738675201');
