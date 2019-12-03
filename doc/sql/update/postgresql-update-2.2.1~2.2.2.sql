ALTER TABLE "blade_dict"
    ALTER COLUMN "dict_key" TYPE varchar(255) USING "dict_key"::varchar(255);


-- ----------------------------
-- 插入菜单数据
-- ----------------------------
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733379658963251', '1123598815738675203', 'dictbiz', '业务字典', 'menu', '/system/dictbiz', 'iconfont iconicon_study', 3, 1, 0, 1, '', 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733379658963252', '1164733379658963251', 'dictbiz_add', '新增', 'add', '/system/dictbiz/add', 'plus', 1, 2, 2, 1, '', 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733379658963253', '1164733379658963251', 'dictbiz_edit', '修改', 'edit', '/system/dictbiz/edit', 'form', 2, 2, 1, 1, '', 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733379658963254', '1164733379658963251', 'dictbiz_delete', '删除', 'delete', '/api/blade-system/dict-biz/remove', 'delete', 3, 2, 0, 1, '', 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733379658963255', '1164733379658963251', 'dictbiz_view', '查看', 'view', '/system/dictbiz/view', 'file-text', 4, 2, 3, 1, '', 0);

-- ----------------------------
-- 插入数据源角色权限数据
-- ----------------------------
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272793873322991', '1164733379658963251', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272793873322992', '116473337658963252', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272793873322993', '1164733379658963253', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272793873322994', '1164733379658963254', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272793873322995', '1164733379658963255', '1123598816738675201');

-- ----------------------------
-- 创建业务字典表
-- ----------------------------
CREATE TABLE "blade_dict_biz" (
    "id" int8 NOT NULL,
    "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
    "parent_id" int8,
    "code" varchar(255) COLLATE "pg_catalog"."default",
    "dict_key" varchar(255) COLLATE "pg_catalog"."default",
    "dict_value" varchar(255) COLLATE "pg_catalog"."default",
    "sort" int4,
    "remark" varchar(255) COLLATE "pg_catalog"."default",
    "is_sealed" int4,
    "is_deleted" int4,
    PRIMARY KEY ("id")
);
COMMENT ON COLUMN "blade_dict_biz"."id" IS '主键';
COMMENT ON COLUMN "blade_dict_biz"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_dict_biz"."parent_id" IS '父主键';
COMMENT ON COLUMN "blade_dict_biz"."code" IS '字典码';
COMMENT ON COLUMN "blade_dict_biz"."dict_key" IS '字典值';
COMMENT ON COLUMN "blade_dict_biz"."dict_value" IS '字典名称';
COMMENT ON COLUMN "blade_dict_biz"."sort" IS '排序';
COMMENT ON COLUMN "blade_dict_biz"."remark" IS '字典备注';
COMMENT ON COLUMN "blade_dict_biz"."is_sealed" IS '是否已封存';
COMMENT ON COLUMN "blade_dict_biz"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_dict_biz" IS '业务字典表';
