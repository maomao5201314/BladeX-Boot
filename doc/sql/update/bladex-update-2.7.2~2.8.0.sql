-- -----------------------------------
-- 修改swagger独立服务接口文档最新地址
-- -----------------------------------
update blade_menu set path = 'http://localhost:18000/doc.html' where path = 'http://localhost/doc.html';
