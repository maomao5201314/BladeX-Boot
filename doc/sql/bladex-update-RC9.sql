-- ----------------------------
-- 流程菜单增加
-- ----------------------------
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (0, 'flow', '流程管理', 'menu', '/flow', 'stock', 5, 1, 0, 1, NULL, 0);

set @flowid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@flowid, 'flow_model', '模型管理', 'menu', '/flow/model', NULL, 1, 1, 0, 1, NULL, 0);
set @modelid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@modelid, 'flow_model_create', '创建', 'create', '', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@modelid, 'flow_model_update', '编辑', 'update', '', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@modelid, 'flow_model_deploy', '部署', 'deploy', '', 'cloud-upload', 3, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@modelid, 'flow_model_download', '下载', 'download', '', 'download', 4, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@modelid, 'flow_model_delete', '删除', 'delete', '/api/blade-flow/model/remove', 'delete', 5, 2, 3, 1, NULL, 0);

INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@flowid, 'flow_deploy', '流程部署', 'menu', '/flow/deploy', NULL, 2, 1, 0, 1, NULL, 0);

INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@flowid, 'flow_manager', '流程管理', 'menu', '/flow/manager', NULL, 3, 1, 0, 1, NULL, 0);
set @managerid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@managerid, 'flow_manager_state', '变更状态', 'state', '', 'plus', 1, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@managerid, 'flow_manager_image', '流程图', 'image', '', 'image', 2, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@managerid, 'flow_manager_remove', '删除', 'remove', '', 'delete', 3, 2, 3, 1, NULL, 0);

INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@flowid, 'flow_follow', '流程跟踪', 'menu', '/flow/follow', NULL, 4, 1, 0, 1, NULL, 0);
set @statueid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@statueid, 'flow_follow_delete', '删除', 'remove', '', 'remove', 1, 2, 2, 1, NULL, 0);

INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (0, 'work', '我的事务', 'work', '/work', 'bell', 2, 1, 0, 1, NULL, 0);
set @workid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@workid, 'work_start', '发起事务', 'menu', '/work/start', NULL, 1, 1, 0, 1, NULL, 0);
set @startid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@startid, 'work_start_flow', '发起', 'flow', '', 'flow', 1, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@startid, 'work_start_image', '流程图', 'image', '', 'image', 2, 2, 2, 1, NULL, 0);

INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@workid, 'work_claim', '待签事务', 'menu', '/work/claim', NULL, 2, 1, 0, 1, NULL, 0);
set @claimid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@claimid, 'work_claim_sign', '签收', 'sign', '', 'sign', 1, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@claimid, 'work_claim_detail', '详情', 'detail', '', 'detail', 2, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@claimid, 'work_claim_follow', '跟踪', 'follow', '', 'follow', 3, 2, 2, 1, NULL, 0);

INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@workid, 'work_todo', '待办事务', 'menu', '/work/todo', NULL, 2, 1, 0, 1, NULL, 0);
set @todoid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@todoid, 'work_todo_handle', '办理', 'handle', '', 'handle', 1, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@todoid, 'work_todo_detail', '详情', 'detail', '', 'detail', 2, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@todoid, 'work_todo_follow', '跟踪', 'follow', '', 'follow', 3, 2, 2, 1, NULL, 0);


INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@workid, 'work_send', '已发事务', 'menu', '/work/send', NULL, 3, 1, 0, 1, NULL, 0);
set @sendid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@sendid, 'work_send_detail', '详情', 'detail', '', 'detail', 1, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@sendid, 'work_send_follow', '跟踪', 'follow', '', 'follow', 2, 2, 2, 1, NULL, 0);


INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@workid, 'work_done', '办结事务', 'menu', '/work/done', NULL, 4, 1, 0, 1, NULL, 0);
set @doneid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@doneid, 'work_done_detail', '详情', 'detail', '', 'detail', 1, 2, 2, 1, NULL, 0);
INSERT INTO `blade_menu`(`parent_id`, `code`, `name`, `alias`, `path`, `source`, `sort`, `category`, `action`, `is_open`, `remark`, `is_deleted`)
VALUES (@doneid, 'work_done_follow', '跟踪', 'follow', '', 'follow', 2, 2, 2, 1, NULL, 0);

-- ----------------------------
-- 更新系统管理排序
-- ----------------------------
UPDATE `blade_menu` set `sort` = 99 WHERE `code` = 'system';

-- ----------------------------
-- 字典数据增加
-- ----------------------------
INSERT INTO `blade_dict`(`parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`)
VALUES (0, 'flow', -1, '流程类型', 5, NULL, 0);
set @dictid = (SELECT LAST_INSERT_ID());
INSERT INTO `blade_dict`(`parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`)
VALUES (@dictid, 'flow', 1, '请假流程', 1, NULL, 0);
INSERT INTO `blade_dict`(`parent_id`, `code`, `dict_key`, `dict_value`, `sort`, `remark`, `is_deleted`)
VALUES (@dictid, 'flow', 2, '报销流程', 2, NULL, 0);

-- ----------------------------
-- 用户数据增加
-- ----------------------------
INSERT INTO `blade_user`(`tenant_code`, `account`, `password`, `name`, `real_name`, `email`, `phone`, `birthday`, `sex`, `role_id`, `dept_id`, `create_user`, `create_time`, `update_user`, `update_time`, `status`, `is_deleted`) VALUES ('000000', 'hr', '5e79b90f7bba52d54115f086e48f539016a27ec6', '人事', '人事', 'hr@bladex.vip', '123333333333', '2018-08-08 00:00:00', 1, '3', '1', 1, '2019-04-27 17:03:10', 1, '2019-04-27 17:03:10', 1, 0);
INSERT INTO `blade_user`(`tenant_code`, `account`, `password`, `name`, `real_name`, `email`, `phone`, `birthday`, `sex`, `role_id`, `dept_id`, `create_user`, `create_time`, `update_user`, `update_time`, `status`, `is_deleted`) VALUES ('000000', 'manager', 'dfbaa3b61caa3a319f463cc165085aa8c822d2ce', '经理', '经理', 'manager@bladex.vip', '123333333333', '2018-08-08 00:00:00', 1, '4', '1', 1, '2019-04-27 17:03:38', 1, '2019-04-27 17:03:38', 1, 0);
INSERT INTO `blade_user`(`tenant_code`, `account`, `password`, `name`, `real_name`, `email`, `phone`, `birthday`, `sex`, `role_id`, `dept_id`, `create_user`, `create_time`, `update_user`, `update_time`, `status`, `is_deleted`) VALUES ('000000', 'boss', 'abe57d23e18f7ad8ea99c86e430c90a05119a9d3', '老板', '老板', 'boss@bladex.vip', '123333333333', '2018-08-08 00:00:00', 1, '5', '1', 1, '2019-04-27 17:03:55', 1, '2019-04-27 17:03:55', 1, 0);

-- ----------------------------
-- 角色数据增加
-- ----------------------------
INSERT INTO `blade_role`(`tenant_code`, `parent_id`, `role_name`, `sort`, `role_alias`, `is_deleted`) VALUES ('000000', 2, '人事', 1, 'hr', 0);
INSERT INTO `blade_role`(`tenant_code`, `parent_id`, `role_name`, `sort`, `role_alias`, `is_deleted`) VALUES ('000000', 2, '经理', 2, 'manager', 0);
INSERT INTO `blade_role`(`tenant_code`, `parent_id`, `role_name`, `sort`, `role_alias`, `is_deleted`) VALUES ('000000', 2, '老板', 3, 'boss', 0);

-- ----------------------------
-- 增加业务流程表
-- ----------------------------
DROP TABLE IF EXISTS `blade_process_leave`;
CREATE TABLE `blade_process_leave`  (
`id` bigint(64) NOT NULL COMMENT '编号',
`process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程定义主键',
`process_instance_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程实例主键',
`start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
`end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
`reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请假理由',
`task_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第一级审批人',
`apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
`create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
`create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
`update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
`update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
`status` int(2) NULL DEFAULT NULL COMMENT '状态',
`is_deleted` int(2) NULL DEFAULT NULL COMMENT '是否已删除',
PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- 修改表主键为long类型
-- ----------------------------
ALTER TABLE `blade_notice`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人' AFTER `content`,
    MODIFY COLUMN `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人' AFTER `create_time`;
ALTER TABLE `blade_client`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人' AFTER `autoapprove`,
    MODIFY COLUMN `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人' AFTER `create_time`;
ALTER TABLE `blade_code`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST;
ALTER TABLE `blade_dept`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `parent_id` bigint(64) NULL DEFAULT 0 COMMENT '父主键' AFTER `tenant_code`;
ALTER TABLE `blade_dict`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `parent_id` bigint(64) NULL DEFAULT 0 COMMENT '父主键' AFTER `id`;
ALTER TABLE `blade_menu`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `parent_id` bigint(64) NULL DEFAULT 0 COMMENT '父级菜单' AFTER `id`;
ALTER TABLE `blade_param`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人' AFTER `remark`,
    MODIFY COLUMN `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人' AFTER `create_time`;
ALTER TABLE `blade_process_leave`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '编号' FIRST;
ALTER TABLE `blade_role`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `parent_id` bigint(64) NULL DEFAULT 0 COMMENT '父主键' AFTER `tenant_code`;
ALTER TABLE `blade_role_menu`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `menu_id` bigint(64) NULL DEFAULT NULL COMMENT '菜单id' AFTER `id`,
    MODIFY COLUMN `role_id` bigint(64) NULL DEFAULT NULL COMMENT '角色id' AFTER `menu_id`;
ALTER TABLE `blade_tenant`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人' AFTER `address`,
    MODIFY COLUMN `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人' AFTER `create_time`;
ALTER TABLE `blade_user`
    MODIFY COLUMN `id` bigint(64) NOT NULL COMMENT '主键' FIRST,
    MODIFY COLUMN `role_id` bigint(64) NULL DEFAULT NULL COMMENT '角色id' AFTER `sex`,
    MODIFY COLUMN `dept_id` bigint(64) NULL DEFAULT NULL COMMENT '部门id' AFTER `role_id`,
    MODIFY COLUMN `create_user` bigint(64) NULL DEFAULT NULL COMMENT '创建人' AFTER `dept_id`,
    MODIFY COLUMN `update_user` bigint(64) NULL DEFAULT NULL COMMENT '修改人' AFTER `create_time`;

-- ----------------------------
-- 修改表字段为雪花id
-- ----------------------------
update `blade_client` set id = id + 1123598815738675200;
update `blade_code` set id = id + 1123598815738675200;
update `blade_dept` set id = id + 1123598815738675200;
update `blade_dept` set parent_id = parent_id + 1123598815738675200 where parent_id > 0;
update `blade_dict` set id = id + 1123598815738675200;
update `blade_dict` set parent_id = parent_id + 1123598815738675200 where parent_id > 0;
update `blade_menu` set id = id + 1123598815738675200;
update `blade_menu` set parent_id = parent_id + 1123598815738675200 where parent_id > 0;
update `blade_role` set id = id + 1123598815738675200;
update `blade_role` set parent_id = parent_id + 1123598815738675200 where parent_id > 0;
update `blade_role_menu` set id = id + 1123598815738675200;
update `blade_role_menu` set menu_id = menu_id + 1123598815738675200;
update `blade_role_menu` set role_id = role_id + 1123598815738675200;
update `blade_notice` set id = id + 1123598815738675200, create_user = create_user + 1123598815738675200, update_user = update_user + 1123598815738675200;
update `blade_param` set id = id + 1123598815738675200, create_user = create_user + 1123598815738675200, update_user = update_user + 1123598815738675200;
update `blade_tenant` set id = id + 1123598815738675200, create_user = create_user + 1123598815738675200, update_user = update_user + 1123598815738675200;
update `blade_user` set id = id + 1123598815738675200, role_id = role_id + 1123598815738675200, dept_id = dept_id + 1123598815738675200, create_user = create_user + 1123598815738675200, update_user = update_user + 1123598815738675200;
