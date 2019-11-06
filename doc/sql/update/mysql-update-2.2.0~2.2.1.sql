-- ----------------------------
-- 增加错误日志表字段
-- ----------------------------
ALTER TABLE `blade_log_error`
    ADD COLUMN `remote_ip` varchar(255) NULL COMMENT '操作IP地址' AFTER `line_number`;

-- ----------------------------
-- 增加通用日志表字段
-- ----------------------------
ALTER TABLE `blade_log_usual`
    ADD COLUMN `remote_ip` varchar(255) NULL COMMENT '操作IP地址' AFTER `request_uri`,
    ADD COLUMN `method_class` varchar(255) NULL COMMENT '方法类' AFTER `remote_ip`,
    ADD COLUMN `method_name` varchar(255) NULL COMMENT '方法名' AFTER `method_class`;


-- ----------------------------
-- 插入菜单数据
-- ----------------------------
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733369658963251', '1123598815738675210', 'elk', 'ELK监控', 'menu', 'http://localhost:5601/', 'iconfont iconicon_cspace', 4, 1, 0, 2, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733369658963252', '1123598815738675210', 'zipkin', 'Zipkin监控', 'menu', 'http://localhost:9411/', 'iconfont iconicon_task', 5, 1, 0, 2, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733369658963253', '1123598815738675210', 'turbine', 'Turbine监控', 'menu', 'http://localhost:7003/hystrix', 'iconfont iconicon_subordinate', 6, 1, 0, 2, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733369658963254', '1123598815738675210', 'sentinel', 'Sentinel管理', 'menu', 'http://localhost:8858', 'iconfont iconicon_safety', 7, 1, 0, 2, '', 0);
INSERT INTO `blade_menu`(`id`, `parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES ('1164733369658963255', '1123598815738675210', 'es', 'Elasticsearch管理', 'menu', 'http://localhost:9100/', 'iconfont iconfont iconicon_search', 8, 1, 0, 2, '', 0);

-- ----------------------------
-- 插入数据源角色权限数据
-- ----------------------------
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272693873322991', '1164733369658963251', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272693873322992', '1164733369658963252', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272693873322993', '1164733369658963253', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272693873322994', '1164733369658963254', '1123598816738675201');
INSERT INTO `blade_role_menu`(`id`,`menu_id`,`role_id`)
VALUES ('1161272693873322995', '1164733369658963255', '1123598816738675201');
