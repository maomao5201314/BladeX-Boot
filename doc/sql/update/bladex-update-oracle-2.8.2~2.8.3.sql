-- -----------------------------------
-- 新增lemon平台所需的组件地址字段
-- -----------------------------------
ALTER TABLE "BLADEX"."BLADE_MENU"
    ADD ("COMPONENT" VARCHAR2(255) );

COMMENT ON COLUMN "BLADEX"."BLADE_MENU"."COMPONENT" IS '组件地址';

-- -----------------------------------
-- 参数管理新增账号错误锁定次数配置
-- -----------------------------------
INSERT INTO "BLADEX"."BLADE_PARAM"("ID", "PARAM_NAME", "PARAM_KEY", "PARAM_VALUE", "REMARK", "CREATE_USER", "CREATE_DEPT", "CREATE_TIME", "UPDATE_USER", "UPDATE_TIME", "STATUS", "IS_DELETED") VALUES ('1123598819738675203', '账号错误锁定次数', 'account.failCount', '5', '锁定次数', '1123598821738675201', '1123598813738675201', TO_DATE('2021-12-01 12:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1123598821738675201', TO_DATE('2021-12-01 12:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0');
