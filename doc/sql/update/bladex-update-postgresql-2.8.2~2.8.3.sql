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
