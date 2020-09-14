-- ----------------------------
-- 层级字段重命名
-- ----------------------------
ALTER TABLE `blade_region`
    CHANGE COLUMN `level` `region_level` int(2) NULL DEFAULT NULL COMMENT '层级' AFTER `village_name`;

-- ----------------------------
-- 增加用户平台字段
-- ----------------------------
ALTER TABLE `blade_user`
    ADD COLUMN `user_type` int(2) NULL COMMENT '用户平台' AFTER `code`;
