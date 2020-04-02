
-- ----------------------------
-- 增加多租户参数配置
-- ----------------------------
INSERT INTO "blade_param"("id", "param_name", "param_key", "param_value", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1238706101399142402, '租户默认管理密码', 'tenant.default.password', 'admin', NULL, 1123598821738675201, 1123598813738675201, '2020-03-14 13:58:43', 1123598821738675201, '2020-03-14 13:58:43', 1, 0);
INSERT INTO "blade_param"("id", "param_name", "param_key", "param_value", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1238706160295559170, '租户默认账号额度', 'tenant.default.accountNumber', '100', NULL, 1123598821738675201, 1123598813738675201, '2020-03-14 13:58:57', 1123598821738675201, '2020-03-14 13:58:57', 1, 0);
INSERT INTO "blade_param"("id", "param_name", "param_key", "param_value", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1238706330076790786, '租户默认菜单集合', 'tenant.default.menuCode', 'desk,flow,work,monitor,resource,role,user,dept,post,dictbiz,topmenu', NULL, 1123598821738675201, 1123598813738675201, '2020-03-14 13:59:38', 1123598821738675201, '2020-03-14 13:59:38', 1, 0);

-- ----------------------------
-- 增加用户表字段
-- ----------------------------
ALTER TABLE "blade_user"
    ADD COLUMN "code" varchar(12) COLLATE "pg_catalog"."default",
    ADD COLUMN "post_id" varchar(1000) COLLATE "pg_catalog"."default";
COMMENT ON COLUMN "public"."blade_user"."code" IS '用户编号';
COMMENT ON COLUMN "public"."blade_user"."post_id" IS '岗位id';

-- ----------------------------
-- 增加岗位管理表
-- ----------------------------
CREATE TABLE "public"."blade_post" (
    "id" int8 NOT NULL,
    "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
    "category" int4,
    "post_code" varchar(12),
    "post_name" varchar(64),
    "sort" int4,
    "remark" varchar(255) COLLATE "pg_catalog"."default",
    "create_user" int8,
    "create_dept" int8,
    "create_time" timestamp(6),
    "update_user" int8,
    "update_time" timestamp(6),
    "status" int4,
    "is_deleted" int4,
    PRIMARY KEY ("id")
);
COMMENT ON COLUMN "public"."blade_post"."id" IS '主键';
COMMENT ON COLUMN "public"."blade_post"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."blade_post"."category" IS '岗位类型';
COMMENT ON COLUMN "public"."blade_post"."post_code" IS '岗位编号';
COMMENT ON COLUMN "public"."blade_post"."post_name" IS '岗位名称';
COMMENT ON COLUMN "public"."blade_post"."sort" IS '岗位排序';
COMMENT ON COLUMN "public"."blade_post"."remark" IS '岗位排序';
COMMENT ON COLUMN "public"."blade_post"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."blade_post"."create_dept" IS '创建部门';
COMMENT ON COLUMN "public"."blade_post"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."blade_post"."update_user" IS '修改人';
COMMENT ON COLUMN "public"."blade_post"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."blade_post"."status" IS '状态';
COMMENT ON COLUMN "public"."blade_post"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "public"."blade_post" IS '岗位表';

-- ----------------------------
-- 增加岗位管理表数据
-- ----------------------------
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675201, '000000', 1, 'ceo', '首席执行官', 1, '总经理', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675202, '000000', 1, 'coo', '首席运营官', 2, '常务总经理', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675203, '000000', 1, 'cfo', '首席财务官', 3, '财务总经理', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675204, '000000', 1, 'cto', '首席技术官', 4, '技术总监', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675205, '000000', 1, 'cio', '首席信息官', 5, '信息总监', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675206, '000000', 2, 'pm', '技术经理', 6, '研发和产品是永远的朋友', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675207, '000000', 2, 'hrm', '人力经理', 7, '人力资源部门工作管理者', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);
INSERT INTO "blade_post"("id", "tenant_id", "category", "post_code", "post_name", "sort", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted")
VALUES (1123598817738675208, '000000', 3, 'staff', '普通员工', 8, '普通员工', 1123598821738675201, 1123598813738675201, '2020-04-01 00:00:00', 1123598821738675201, '2020-04-01 00:00:00', 1, 0);

-- ----------------------------
-- 增加岗位管理菜单数据
-- ----------------------------
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389668962251', '1123598815738675203', 'post', '岗位管理', 'menu', '/system/post', 'iconfont iconicon_message', 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389668962252', '1164733389668962251', 'post_add', '新增', 'add', '/system/post/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389668962253', '1164733389668962251', 'post_edit', '修改', 'edit', '/system/post/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389668962254', '1164733389668962251', 'post_delete', '删除', 'delete', '/api/blade-system/post/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389668962255', '1164733389668962251', 'post_view', '查看', 'view', '/system/post/view', 'file-text', 4, 2, 2, 1, NULL, 0);

-- ----------------------------
-- 增加岗位管理菜单权限数据
-- ----------------------------
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875225001', '1164733389668962251', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875225002', '1164733389668962252', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875225003', '1164733389668962253', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875225004', '1164733389668962254', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875225005', '1164733389668962255', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875225006', '1164733389668962256', '1123598816738675201');

-- ----------------------------
-- 增加岗位类型字典数据
-- ----------------------------
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738777220, 0, 'post', '-1', '岗位类型', 12, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738777221, 1123598814738777220, 'post', '1', '高层', 1, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738777222, 1123598814738777220, 'post', '2', '中层', 2, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738777223, 1123598814738777220, 'post', '3', '基层', 3, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738777224, 1123598814738777220, 'post', '4', '其他', 4, NULL, 0, 0);
