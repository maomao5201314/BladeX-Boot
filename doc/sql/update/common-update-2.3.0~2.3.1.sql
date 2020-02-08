-- ----------------------------
-- 增加验证码授权类型
-- ----------------------------
update blade_client set authorized_grant_types = 'refresh_token,password,authorization_code,captcha';
