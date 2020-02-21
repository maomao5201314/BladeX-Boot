-- ----------------------------
-- 增加资源编号字段
-- ----------------------------
ALTER TABLE "public"."blade_oss"
    ADD COLUMN "oss_code" varchar(32);

COMMENT ON COLUMN "public"."blade_oss"."oss_code" IS '资源编号';

-- ----------------------------
-- 增加短信配置表
-- ----------------------------
CREATE TABLE "public"."blade_sms" (
"id" int8 NOT NULL,
"tenant_id" varchar(12) COLLATE "pg_catalog"."default",
"category" int4,
"sms_code" varchar(12),
"template_id" varchar(64),
"access_key" varchar(255) COLLATE "pg_catalog"."default",
"secret_key" varchar(255) COLLATE "pg_catalog"."default",
"region_id" varchar(255),
"sign_name" varchar(64),
"remark" varchar(255) COLLATE "pg_catalog"."default",
"create_user" int8,
"create_dept" int8,
"create_time" timestamp(6),
"update_user" int8,
"update_time" timestamp(6),
"status" int4,
"is_deleted" int4,
PRIMARY KEY ("id")
)
;

COMMENT ON COLUMN "public"."blade_sms"."id" IS '主键';
COMMENT ON COLUMN "public"."blade_sms"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."blade_sms"."category" IS '分类';
COMMENT ON COLUMN "public"."blade_sms"."sms_code" IS '资源编号';
COMMENT ON COLUMN "public"."blade_sms"."template_id" IS '模板ID';
COMMENT ON COLUMN "public"."blade_sms"."access_key" IS 'accessKey';
COMMENT ON COLUMN "public"."blade_sms"."secret_key" IS 'secretKey';
COMMENT ON COLUMN "public"."blade_sms"."region_id" IS 'regionId';
COMMENT ON COLUMN "public"."blade_sms"."sign_name" IS '短信签名';
COMMENT ON COLUMN "public"."blade_sms"."remark" IS '备注';
COMMENT ON COLUMN "public"."blade_sms"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."blade_sms"."create_dept" IS '创建部门';
COMMENT ON COLUMN "public"."blade_sms"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."blade_sms"."update_user" IS '修改人';
COMMENT ON COLUMN "public"."blade_sms"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."blade_sms"."status" IS '状态';
COMMENT ON COLUMN "public"."blade_sms"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "public"."blade_sms" IS '短信配置表';

-- ----------------------------
-- 增加短信配置菜单数据
-- ----------------------------
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389658962251', '1123598815738675298', 'sms', '短信配置', 'menu', '/resource/sms', 'iconfont iconicon_message', 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389658962252', '1164733389658962251', 'sms_add', '新增', 'add', '/resource/sms/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389658962253', '1164733389658962251', 'sms_edit', '修改', 'edit', '/resource/sms/edit', 'form', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389658962254', '1164733389658962251', 'sms_delete', '删除', 'delete', '/api/blade-resource/sms/remove', 'delete', 3, 2, 3, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389658962255', '1164733389658962251', 'sms_view', '查看', 'view', '/resource/sms/view', 'file-text', 4, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733389658962256', '1164733389658962251', 'sms_enable', '启用', 'enable', '/api/blade-resource/sms/enable', 'key', 5, 2, 2, 2, NULL, 0);

-- ----------------------------
-- 增加短信配置菜单权限数据
-- ----------------------------
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES (1161272893873222991, 1164733389658962251, 1123598816738675201);
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES (1161272893873222992, 1164733389658962252, 1123598816738675201);
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES (1161272893873222993, 1164733389658962253, 1123598816738675201);
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES (1161272893873222994, 1164733389658962254, 1123598816738675201);
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES (1161272893873222995, 1164733389658962255, 1123598816738675201);
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES (1161272893873222996, 1164733389658962256, 1123598816738675201);

-- ----------------------------
-- 增加短信配置字典数据
-- ----------------------------
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738677220, 0, 'sms', '-1', '短信服务类型', 11, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738677221, 1123598814738677220, 'sms', '1', 'yunpian', 1, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738677222, 1123598814738677220, 'sms', '2', 'qiniu', 2, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738677223, 1123598814738677220, 'sms', '3', 'ali', 3, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738677224, 1123598814738677220, 'sms', '4', 'tencent', 4, NULL, 0, 0);
