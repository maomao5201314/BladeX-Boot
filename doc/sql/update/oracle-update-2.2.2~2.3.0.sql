
-- ----------------------------
-- 增加租户表字段
-- ----------------------------
ALTER TABLE "BLADEX"."BLADE_TENANT"
    ADD ("DOMAIN" VARCHAR2(255) )
    ADD ("BACKGROUND_URL" VARCHAR2(1000) )
    ADD ("ACCOUNT_NUMBER" NUMBER DEFAULT -1 )
    ADD ("EXPIRE_TIME" DATE );
COMMENT ON COLUMN "BLADEX"."BLADE_TENANT"."DOMAIN" IS '域名地址';
COMMENT ON COLUMN "BLADEX"."BLADE_TENANT"."BACKGROUND_URL" IS '系统背景';
COMMENT ON COLUMN "BLADEX"."BLADE_TENANT"."ACCOUNT_NUMBER" IS '账号额度';
COMMENT ON COLUMN "BLADEX"."BLADE_TENANT"."EXPIRE_TIME" IS '过期时间';


-- ----------------------------
-- 插入菜单数据
-- ----------------------------
INSERT INTO "BLADEX"."BLADE_MENU"("ID", "PARENT_ID", "CODE", "NAME", "ALIAS", "PATH", "SOURCE", "SORT", "CATEGORY", "ACTION", "IS_OPEN", "REMARK", "IS_DELETED")
VALUES ('1164733389658963251', '1123598815738675298', 'xxljob', '任务调度', 'menu', 'http://localhost:7009/xxl-job-admin', 'iconfont iconicon_cspace', 2, 1, 0, 2, '', 0);

-- ----------------------------
-- 插入角色权限数据
-- ----------------------------
INSERT INTO "BLADEX"."BLADE_ROLE_MENU"(ID,MENU_ID,ROLE_ID)
VALUES ('1161272893873322991', '1164733389658963251', '1123598816738675201');
