-- ----------------------------
-- 第三方系统用户ID
-- ----------------------------
ALTER TABLE `blade_user_oauth`
    ADD COLUMN `uuid` varchar(64) NULL COMMENT '第三方系统用户ID' AFTER `tenant_id`;
