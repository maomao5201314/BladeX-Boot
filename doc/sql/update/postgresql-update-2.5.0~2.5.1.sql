-- ----------------------------
-- 增加第三方认证配置
-- ----------------------------
UPDATE blade_client set authorized_grant_types = 'refresh_token,password,authorization_code,captcha,social';

-- ----------------------------
-- 创建用户第三方认证表
-- ----------------------------
CREATE TABLE "public"."blade_user_oauth" (
    "id" int8 NOT NULL,
    "tenant_id" varchar(12) COLLATE "pg_catalog"."default",
    "user_id" int8,
    "username" varchar(32),
    "nickname" varchar(64),
    "avatar" varchar(1000) COLLATE "pg_catalog"."default",
    "blog" varchar(50) COLLATE "pg_catalog"."default",
    "company" varchar(255) COLLATE "pg_catalog"."default",
    "location" varchar(255) COLLATE "pg_catalog"."default",
    "email" varchar(255) COLLATE "pg_catalog"."default",
    "remark" varchar(255) COLLATE "pg_catalog"."default",
    "gender" varchar(16) COLLATE "pg_catalog"."default",
    "source" varchar(16) COLLATE "pg_catalog"."default",
    PRIMARY KEY ("id")
);
COMMENT ON COLUMN "public"."blade_user_oauth"."id" IS '主键';
COMMENT ON COLUMN "public"."blade_user_oauth"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."blade_user_oauth"."user_id" IS '用户主键';
COMMENT ON COLUMN "public"."blade_user_oauth"."username" IS '账号';
COMMENT ON COLUMN "public"."blade_user_oauth"."nickname" IS '用户名';
COMMENT ON COLUMN "public"."blade_user_oauth"."avatar" IS '头像';
COMMENT ON COLUMN "public"."blade_user_oauth"."blog" IS '应用主页';
COMMENT ON COLUMN "public"."blade_user_oauth"."company" IS '公司名';
COMMENT ON COLUMN "public"."blade_user_oauth"."location" IS '地址';
COMMENT ON COLUMN "public"."blade_user_oauth"."email" IS '邮件';
COMMENT ON COLUMN "public"."blade_user_oauth"."remark" IS '备注';
COMMENT ON COLUMN "public"."blade_user_oauth"."gender" IS '性别';
COMMENT ON COLUMN "public"."blade_user_oauth"."source" IS '来源';
COMMENT ON TABLE "public"."blade_user_oauth" IS '用户第三方认证表';
