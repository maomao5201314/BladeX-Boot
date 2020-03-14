
-- ----------------------------
-- 增加多租户参数配置
-- ----------------------------
INSERT INTO "blade_param"("id", "param_name", "param_key", "param_value", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1238706101399142402, '租户默认密码', 'tenant.default.password', '123456', NULL, 1123598821738675201, 1123598813738675201, '2020-03-14 13:58:43', 1123598821738675201, '2020-03-14 13:58:43', 1, 0);
INSERT INTO "blade_param"("id", "param_name", "param_key", "param_value", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1238706160295559170, '租户默认账号额度', 'tenant.default.accountNumber', '100', NULL, 1123598821738675201, 1123598813738675201, '2020-03-14 13:58:57', 1123598821738675201, '2020-03-14 13:58:57', 1, 0);
INSERT INTO "blade_param"("id", "param_name", "param_key", "param_value", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1238706330076790786, '租户默认菜单集合', 'tenant.default.menuCode', 'desk,flow,work,monitor,resource,role,user,dept,dictbiz,topmenu', NULL, 1123598821738675201, 1123598813738675201, '2020-03-14 13:59:38', 1123598821738675201, '2020-03-14 13:59:38', 1, 0);
