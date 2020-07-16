-- ----------------------------
-- 第三方系统用户ID
-- ----------------------------
ALTER TABLE "BLADE_USER_OAUTH"
    ADD ("UUID" VARCHAR2(64) );
COMMENT ON COLUMN "BLADE_USER_OAUTH"."UUID" IS '第三方系统用户ID';

-- ----------------------------
-- 附件表
-- ----------------------------
CREATE TABLE "BLADEX"."BLADE_ATTACH" (
    "ID" NUMBER(20) NOT NULL ,
    "TENANT_ID" NVARCHAR2(12) ,
    "LINK" VARCHAR2(1000) ,
    "DOMAIN" VARCHAR2(500) ,
    "NAME" VARCHAR2(500) ,
    "ORIGINAL_NAME" VARCHAR2(500) ,
    "EXTENSION" VARCHAR2(12) ,
    "ATTACH_SIZE" NUMBER(20) ,
    "CREATE_USER" NUMBER(20) ,
    "CREATE_DEPT" NUMBER(20) ,
    "CREATE_TIME" DATE ,
    "UPDATE_USER" NUMBER(20) ,
    "UPDATE_TIME" DATE ,
    "STATUS" NUMBER(11) ,
    "IS_DELETED" NUMBER(11) ,
    PRIMARY KEY ("ID")
)
;
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."ID" IS '主键';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."TENANT_ID" IS '租户ID';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."LINK" IS '附件地址';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."DOMAIN" IS '附件域名';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."NAME" IS '附件名称';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."ORIGINAL_NAME" IS '附件原名';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."EXTENSION" IS '附件拓展名';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."ATTACH_SIZE" IS '附件大小';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."CREATE_DEPT" IS '创建部门';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."UPDATE_USER" IS '修改人';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."STATUS" IS '状态';
COMMENT ON COLUMN "BLADEX"."BLADE_ATTACH"."IS_DELETED" IS '是否已删除';
COMMENT ON TABLE "BLADEX"."BLADE_ATTACH" IS '附件表';

-- ----------------------------
-- 插入附件表菜单数据
-- ----------------------------
INSERT INTO "BLADEX"."BLADE_MENU"("ID", "PARENT_ID", "CODE", "NAME", "ALIAS", "PATH", "SOURCE", "SORT", "CATEGORY", "ACTION", "IS_OPEN", "REMARK", "IS_DELETED")
VALUES ('1164733399669962201', '1123598815738675298', 'attach', '附件管理', 'menu', '/resource/attach', 'iconfont iconicon_ding', 1, 1, 0, 1, NULL, 0);
INSERT INTO "BLADEX"."BLADE_MENU"("ID", "PARENT_ID", "CODE", "NAME", "ALIAS", "PATH", "SOURCE", "SORT", "CATEGORY", "ACTION", "IS_OPEN", "REMARK", "IS_DELETED")
VALUES ('1164733399669962202', '1164733399669962201', 'attach_upload', '上传', 'add', '/resource/attach/upload', '', 1, 2, 1, 1, NULL, 0);
INSERT INTO "BLADEX"."BLADE_MENU"("ID", "PARENT_ID", "CODE", "NAME", "ALIAS", "PATH", "SOURCE", "SORT", "CATEGORY", "ACTION", "IS_OPEN", "REMARK", "IS_DELETED")
VALUES ('1164733399669962203', '1164733399669962201', 'attach_download', '下载', 'download', '/resource/attach/download', '', 2, 2, 2, 1, NULL, 0);
INSERT INTO "BLADEX"."BLADE_MENU"("ID", "PARENT_ID", "CODE", "NAME", "ALIAS", "PATH", "SOURCE", "SORT", "CATEGORY", "ACTION", "IS_OPEN", "REMARK", "IS_DELETED")
VALUES ('1164733399669962204', '1164733399669962201', 'attach_delete', '删除', 'delete', '/api/blade-resource/attach/remove', '', 3, 2, 3, 1, NULL, 0);

-- ----------------------------
-- 增加附件表菜单权限数据
-- ----------------------------
INSERT INTO "BLADEX"."BLADE_ROLE_MENU"("ID","MENU_ID","ROLE_ID")
VALUES ('1161272893875227001', '1164733399669962201', '1123598816738675201');
INSERT INTO "BLADEX"."BLADE_ROLE_MENU"("ID","MENU_ID","ROLE_ID")
VALUES ('1161272893875227002', '1164733399669962202', '1123598816738675201');
INSERT INTO "BLADEX"."BLADE_ROLE_MENU"("ID","MENU_ID","ROLE_ID")
VALUES ('1161272893875227003', '1164733399669962203', '1123598816738675201');
INSERT INTO "BLADEX"."BLADE_ROLE_MENU"("ID","MENU_ID","ROLE_ID")
VALUES ('1161272893875227004', '1164733399669962204', '1123598816738675201');