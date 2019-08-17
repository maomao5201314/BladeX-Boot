-- ----------------------------
-- 用户表增加头像字段
-- ----------------------------
ALTER TABLE "public"."blade_user"
    ADD COLUMN "avatar" varchar(500);

COMMENT ON COLUMN "public"."blade_user"."avatar" IS '头像';

-- ----------------------------
-- 创建数据源配置表
-- ----------------------------
DROP TABLE IF EXISTS "blade_datasource";
CREATE TABLE "blade_datasource" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "driver_class" varchar(100) COLLATE "pg_catalog"."default",
  "url" varchar(500) COLLATE "pg_catalog"."default",
  "username" varchar(45) COLLATE "pg_catalog"."default",
  "password" varchar(45) COLLATE "pg_catalog"."default",
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_dept" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6),
  "status" int4,
  "is_deleted" int4
)
;
COMMENT ON COLUMN "blade_datasource"."id" IS '主键';
COMMENT ON COLUMN "blade_datasource"."name" IS '名称';
COMMENT ON COLUMN "blade_datasource"."driver_class" IS '驱动类';
COMMENT ON COLUMN "blade_datasource"."url" IS '链接地址';
COMMENT ON COLUMN "blade_datasource"."username" IS '用户名';
COMMENT ON COLUMN "blade_datasource"."password" IS '密码';
COMMENT ON COLUMN "blade_datasource"."remark" IS '备注';
COMMENT ON COLUMN "blade_datasource"."create_user" IS '创建人';
COMMENT ON COLUMN "blade_datasource"."create_dept" IS '创建部门';
COMMENT ON COLUMN "blade_datasource"."create_time" IS '创建时间';
COMMENT ON COLUMN "blade_datasource"."update_user" IS '修改人';
COMMENT ON COLUMN "blade_datasource"."update_time" IS '修改时间';
COMMENT ON COLUMN "blade_datasource"."status" IS '状态';
COMMENT ON COLUMN "blade_datasource"."is_deleted" IS '是否已删除';
COMMENT ON TABLE "blade_datasource" IS '数据源配置表';

-- ----------------------------
-- 插入数据源默认数据
-- ----------------------------
INSERT INTO "blade_datasource"("id", "name", "driver_class", "url", "username", "password", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted") VALUES (1161483357481541634, 'mysql', 'com.mysql.cj.jdbc.Driver', 'jdbc:mysql://localhost:3306/bladex?useSSL=false&useUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull&transformedBitIsBoolean=true&serverTimezone=GMT%2B8&nullCatalogMeansCurrent=true&allowPublicKeyRetrieval=true', 'root', 'root', 'mysql', 1123598821738675201, 1123598813738675201, '2019-08-14 11:43:06', 1123598821738675201, '2019-08-14 11:43:06', 1, 0);
INSERT INTO "blade_datasource"("id", "name", "driver_class", "url", "username", "password", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted") VALUES (1161483504353484802, 'postgresql', 'org.postgresql.Driver', 'jdbc:postgresql://127.0.0.1:5432/bladex', 'postgres', '123456', 'postgresql', 1123598821738675201, 1123598813738675201, '2019-08-14 11:43:41', 1123598821738675201, '2019-08-14 11:43:41', 1, 0);
INSERT INTO "blade_datasource"("id", "name", "driver_class", "url", "username", "password", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted") VALUES (1161483594023510018, 'oracle', 'oracle.jdbc.OracleDriver', 'jdbc:oracle:thin:@127.0.0.1:49161:orcl', 'BLADEX', 'bladex', 'oracle', 1123598821738675201, 1123598813738675201, '2019-08-14 11:44:03', 1123598821738675201, '2019-08-14 11:44:03', 1, 0);

-- ----------------------------
-- 设置主键
-- ----------------------------
ALTER TABLE "blade_datasource" ADD CONSTRAINT "blade_datasource_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- 插入数据源菜单数据
-- ----------------------------
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1161272593873321991', '1123598815738675217', 'datasource', '数据源管理', 'menu', '/tool/datasource', 'iconfont icon-caidanguanli', 2, 1, 0, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1161272593873321992', '1161272593873321991', 'datasource_add', '新增', 'add', '/tool/datasource/add', 'plus', 1, 2, 1, 1, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1161272593873321993', '1161272593873321991', 'datasource_edit', '修改', 'edit', '/tool/datasource/edit', 'form', 2, 2, 2, 2, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1161272593873321994', '1161272593873321991', 'datasource_delete', '删除', 'delete', '/api/blade-develop/datasource/remove', 'delete', 3, 2, 3, 3, NULL, 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1161272593873321995', '1161272593873321991', 'datasource_view', '查看', 'view', '/tool/datasource/view', 'file-text', 4, 2, 2, 2, NULL, 0);

-- ----------------------------
-- 插入数据源角色权限数据
-- ----------------------------
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272593873322991', '1161272593873321991', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272593873322992', '1161272593873321992', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272593873322993', '1161272593873321993', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272593873322994', '1161272593873321994', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272593873322995', '1161272593873321995', '1123598816738675201');


-- ----------------------------
-- 代码生成表增加数据源字段
-- ----------------------------
ALTER TABLE "public"."blade_code"
    ADD COLUMN "datasource_id" int8,
    ADD COLUMN "base_mode" int2,
    ADD COLUMN "wrap_mode" int2;

COMMENT ON COLUMN "public"."blade_code"."datasource_id" IS '数据源主键';
COMMENT ON COLUMN "public"."blade_code"."base_mode" IS '基础业务模式';
COMMENT ON COLUMN "public"."blade_code"."wrap_mode" IS '包装器模式';


-- ----------------------------
-- 代码生成记录增加数据源字段
-- ----------------------------
UPDATE "blade_code" SET "datasource_id" = 1161483357481541634, "base_mode" = 1, "wrap_mode" = 1 WHERE "id" = 1123598812738675201;
