-- ----------------------------
-- 层级字段重命名
-- ----------------------------
ALTER TABLE "BLADE_REGION" RENAME COLUMN "LEVEL" TO "REGION_LEVEL";

-- ----------------------------
-- 增加用户平台字段
-- ----------------------------
ALTER TABLE "BLADE_USER"
    ADD ("USER_TYPE" NUMBER(6) );

COMMENT ON COLUMN "BLADE_USER"."USER_TYPE" IS '用户平台';

-- ----------------------------
-- 修改用户平台默认值
-- ----------------------------
UPDATE "BLADE_USER" set USER_TYPE = 1 WHERE IS_DELETED = 0;

-- ----------------------------
-- 增加用户平台字典数据
-- ----------------------------
INSERT INTO "BLADE_DICT"("ID", "PARENT_ID", "CODE", "DICT_KEY", "DICT_VALUE", "SORT", "REMARK", "IS_SEALED", "IS_DELETED")
VALUES (1123598814738778200, 0, 'user_type', '-1', '用户平台', 14, NULL, 0, 0);
INSERT INTO "BLADE_DICT"("ID", "PARENT_ID", "CODE", "DICT_KEY", "DICT_VALUE", "SORT", "REMARK", "IS_SEALED", "IS_DELETED")
VALUES (1123598814738778201, 1123598814738778200, 'user_type', '1', 'WEB', 1, NULL, 0, 0);
INSERT INTO "BLADE_DICT"("ID", "PARENT_ID", "CODE", "DICT_KEY", "DICT_VALUE", "SORT", "REMARK", "IS_SEALED", "IS_DELETED")
VALUES (1123598814738778202, 1123598814738778200, 'user_type', '2', 'APP', 2, NULL, 0, 0);
INSERT INTO "BLADE_DICT"("ID", "PARENT_ID", "CODE", "DICT_KEY", "DICT_VALUE", "SORT", "REMARK", "IS_SEALED", "IS_DELETED")
VALUES (1123598814738778203, 1123598814738778200, 'user_type', '3', 'OTHER', 3, NULL, 0, 0);
