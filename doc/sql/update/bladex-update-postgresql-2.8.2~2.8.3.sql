-- -----------------------------------
-- 新增lemon平台所需的组件地址字段
-- -----------------------------------
ALTER TABLE "public"."blade_menu"
    ADD COLUMN "component" varchar(255);

COMMENT ON COLUMN "public"."blade_menu"."component" IS '组件地址';

-- -----------------------------------
-- 参数管理新增账号错误锁定次数配置
-- -----------------------------------
INSERT INTO "public"."blade_param"("id", "param_name", "param_key", "param_value", "remark", "create_user", "create_dept", "create_time", "update_user", "update_time", "status", "is_deleted") VALUES (1123598819738675203, '账号错误锁定次数', 'account.failCount', '5', '锁定次数', 1123598821738675201, 1123598813738675201, '2021-12-01 12:00:00', 1123598821738675201, '2021-12-01 12:00:00', 1, 0);


-- -----------------------------------
-- 创建租户产品表
-- -----------------------------------
CREATE TABLE "public"."blade_tenant_package" (
    "id" int8 NOT NULL,
    "package_name" varchar(50),
    "menu_id" varchar(3000),
    "remark" varchar(255),
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

COMMENT ON COLUMN "public"."blade_tenant_package"."id" IS '主键';

COMMENT ON COLUMN "public"."blade_tenant_package"."package_name" IS '产品包名';

COMMENT ON COLUMN "public"."blade_tenant_package"."menu_id" IS '菜单ID';

COMMENT ON COLUMN "public"."blade_tenant_package"."remark" IS '备注';

COMMENT ON COLUMN "public"."blade_tenant_package"."create_user" IS '创建人';

COMMENT ON COLUMN "public"."blade_tenant_package"."create_dept" IS '创建部门';

COMMENT ON COLUMN "public"."blade_tenant_package"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."blade_tenant_package"."update_user" IS '修改人';

COMMENT ON COLUMN "public"."blade_tenant_package"."update_time" IS '修改时间';

COMMENT ON COLUMN "public"."blade_tenant_package"."status" IS '状态';

COMMENT ON COLUMN "public"."blade_tenant_package"."is_deleted" IS '是否已删除';

COMMENT ON TABLE "public"."blade_tenant_package" IS '租户产品表';

-- -----------------------------------
-- 租户表增加产品包ID字段
-- -----------------------------------
ALTER TABLE "public"."blade_tenant"
    ADD COLUMN "package_id" int8;

COMMENT ON COLUMN "public"."blade_tenant"."package_id" IS '产品包ID';
