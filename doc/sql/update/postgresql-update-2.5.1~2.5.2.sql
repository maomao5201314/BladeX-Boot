-- ----------------------------
-- 第三方系统用户ID
-- ----------------------------
ALTER TABLE "blade_user_oauth"
    ADD COLUMN "uuid" varchar(64) COLLATE "pg_catalog"."default";
COMMENT ON COLUMN "blade_user_oauth"."uuid" IS '第三方系统用户ID';

-- ----------------------------
-- 附件表
-- ----------------------------
CREATE TABLE "blade_attach" (
    "id" int8 NOT NULL,
    "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
    "link" varchar(1000),
    "domain" varchar(500),
    "name" varchar(500),
    "original_name" varchar(500),
    "extension" varchar(12),
    "attach_size" int8,
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
COMMENT ON COLUMN "blade_attach"."id" IS '主键';
COMMENT ON COLUMN "blade_attach"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "blade_attach"."link" IS '附件地址';
COMMENT ON COLUMN "blade_attach"."domain" IS '附件域名';
COMMENT ON COLUMN "blade_attach"."name" IS '附件名称';
COMMENT ON COLUMN "blade_attach"."original_name" IS '附件原名';
COMMENT ON COLUMN "blade_attach"."extension" IS '附件拓展名';
COMMENT ON COLUMN "blade_attach"."attach_size" IS '附件大小';
COMMENT ON COLUMN "blade_attach"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_attach"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_attach"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_attach"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_attach"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_attach"."status" IS '状态';
COMMENT ON COLUMN "blade_attach"."is_deleted" IS '是否已删除';


-- ----------------------------
-- 插入附件表菜单数据
-- ----------------------------
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733399669962201', '1123598815738675298', 'attach', '附件管理', 'menu', '/resource/attach', 'iconfont iconicon_ding', 1, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733399669962202', '1164733399669962201', 'attach_upload', '上传', 'add', '/resource/attach/upload', '', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733399669962203', '1164733399669962201', 'attach_download', '下载', 'download', '/resource/attach/download', '', 2, 2, 2, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733399669962204', '1164733399669962201', 'attach_delete', '删除', 'delete', '/api/blade-resource/attach/remove', '', 3, 2, 3, 1, NULL, 0);

-- ----------------------------
-- 增加附件表菜单权限数据
-- ----------------------------
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875227001', '1164733399669962201', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875227002', '1164733399669962202', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875227003', '1164733399669962203', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272893875227004', '1164733399669962204', '1123598816738675201');
