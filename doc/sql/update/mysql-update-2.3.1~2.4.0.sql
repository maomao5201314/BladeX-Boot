-- ----------------------------
-- 增加资源编号字段
-- ----------------------------
ALTER TABLE `bladex`.`blade_oss`
    ADD COLUMN `oss_code` varchar(32) NULL COMMENT '资源编号' AFTER `category`;
