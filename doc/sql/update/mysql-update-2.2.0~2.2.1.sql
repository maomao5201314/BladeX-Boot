ALTER TABLE `blade_log_error`
    ADD COLUMN `remote_ip` varchar(255) NULL COMMENT '操作IP地址' AFTER `line_number`;

ALTER TABLE `blade_log_usual`
    ADD COLUMN `remote_ip` varchar(255) NULL COMMENT '操作IP地址' AFTER `request_uri`,
    ADD COLUMN `method_class` varchar(255) NULL COMMENT '方法类' AFTER `remote_ip`,
    ADD COLUMN `method_name` varchar(255) NULL COMMENT '方法名' AFTER `method_class`;
