
-- ----------------------------
-- 插入菜单数据
-- ----------------------------
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733121140551682', '1123598815738675217', 'form', '表单设计', 'form', 'https://form.avuejs.com/', 'iconfont iconicon_compile', 3, 1, 0, 2, '', 0);
INSERT INTO "blade_menu"("id", "parent_id", "code", "name", "alias", "path", "source", "sort", "category", "action", "is_open", "remark", "is_deleted")
VALUES ('1164733349637844993', '1123598815738675217', 'crud', '表格设计', 'crud', 'https://crud.avuejs.com/', 'iconfont iconicon_work', 4, 1, 0, 2, '', 0);

-- ----------------------------
-- 插入数据源角色权限数据
-- ----------------------------
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272593873322996', '1164733121140551682', '1123598816738675201');
INSERT INTO "blade_role_menu"("id","menu_id","role_id")
VALUES ('1161272593873322997', '1164733349637844993', '1123598816738675201');
