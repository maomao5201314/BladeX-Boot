-- ----------------------------
-- 层级字段重命名
-- ----------------------------
ALTER TABLE "blade_region" RENAME COLUMN "level" TO "region_level";

-- ----------------------------
-- 增加用户平台字段
-- ----------------------------
ALTER TABLE "blade_user"
    ADD COLUMN "user_type" int2;
COMMENT ON COLUMN "public"."blade_user"."user_type" IS '用户平台';

-- ----------------------------
-- 修改用户平台默认值
-- ----------------------------
UPDATE "blade_user" set user_type = 1 WHERE is_deleted = 0;

-- ----------------------------
-- 创建用户拓展表
-- ----------------------------
CREATE TABLE "blade_user_web" (
"id" int8 NOT NULL,
"user_id" int8,
"user_ext" varchar(255),
PRIMARY KEY ("id")
)
;
COMMENT ON COLUMN "blade_user_web"."id" IS '主键';
COMMENT ON COLUMN "blade_user_web"."user_id" IS '用户ID';
COMMENT ON COLUMN "blade_user_web"."user_ext" IS '用户拓展信息';
COMMENT ON TABLE "blade_user_web" IS '用户平台拓展表';

CREATE TABLE "blade_user_app" (
"id" int8 NOT NULL,
"user_id" int8,
"user_ext" varchar(255),
PRIMARY KEY ("id")
)
;
COMMENT ON COLUMN "blade_user_app"."id" IS '主键';
COMMENT ON COLUMN "blade_user_app"."user_id" IS '用户ID';
COMMENT ON COLUMN "blade_user_app"."user_ext" IS '用户拓展信息';
COMMENT ON TABLE "blade_user_app" IS '用户平台拓展表';

CREATE TABLE "blade_user_other" (
"id" int8 NOT NULL,
"user_id" int8,
"user_ext" varchar(255),
PRIMARY KEY ("id")
)
;
COMMENT ON COLUMN "blade_user_other"."id" IS '主键';
COMMENT ON COLUMN "blade_user_other"."user_id" IS '用户ID';
COMMENT ON COLUMN "blade_user_other"."user_ext" IS '用户拓展信息';
COMMENT ON TABLE "blade_user_other" IS '用户平台拓展表';

-- ----------------------------
-- 增加用户平台字典数据
-- ----------------------------
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738778200, 0, 'user_type', '-1', '用户平台', 14, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738778201, 1123598814738778200, 'user_type', '1', 'WEB', 1, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738778202, 1123598814738778200, 'user_type', '2', 'APP', 2, NULL, 0, 0);
INSERT INTO "blade_dict"("id", "parent_id", "code", "dict_key", "dict_value", "sort", "remark", "is_sealed", "is_deleted")
VALUES (1123598814738778203, 1123598814738778200, 'user_type', '3', 'OTHER', 3, NULL, 0, 0);
