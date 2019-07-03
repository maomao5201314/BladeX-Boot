ALTER TABLE `blade_data_scope`
    ADD COLUMN `scope_field` varchar(255) NULL COMMENT '数据权限字段' AFTER `scope_name`;
