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

-- ----------------------------
-- 修改用户平台默认值
-- ----------------------------
UPDATE `blade_user` set user_type = 1 WHERE is_deleted = 0;

-- ----------------------------
-- 创建用户拓展表
-- ----------------------------
CREATE TABLE `blade_user_web`  (
`id` bigint(64) NOT NULL COMMENT '主键',
`user_id` bigint(64) NULL DEFAULT 0 COMMENT '用户ID',
`user_ext` varchar(255) NULL COMMENT '用户拓展信息',
PRIMARY KEY (`id`)
) COMMENT = '用户平台拓展表';

CREATE TABLE `blade_user_app`  (
`id` bigint(64) NOT NULL COMMENT '主键',
`user_id` bigint(64) NULL DEFAULT 0 COMMENT '用户ID',
`user_ext` varchar(255) NULL COMMENT '用户拓展信息',
PRIMARY KEY (`id`)
) COMMENT = '用户平台拓展表';

CREATE TABLE `blade_user_other`  (
`id` bigint(64) NOT NULL COMMENT '主键',
`user_id` bigint(64) NULL DEFAULT 0 COMMENT '用户ID',
`user_ext` varchar(255) NULL COMMENT '用户拓展信息',
PRIMARY KEY (`id`)
) COMMENT = '用户平台拓展表';

-- ----------------------------
-- 增加用户平台字典数据
-- ----------------------------
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738778200, 0, 'user_type', '-1', '用户平台', 14, NULL, 0, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738778201, 1123598814738778200, 'user_type', '1', 'WEB', 1, NULL, 0, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738778202, 1123598814738778200, 'user_type', '2', 'APP', 2, NULL, 0, 0);
INSERT INTO `blade_dict`(`id`, `parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_sealed`, `is_deleted`)
VALUES (1123598814738778203, 1123598814738778200, 'user_type', '3', 'OTHER', 3, NULL, 0, 0);
