ALTER TABLE `blade_dict`
    ADD COLUMN `is_sealed` int(2) NULL DEFAULT 0 COMMENT '是否已封存' AFTER `remark`;
