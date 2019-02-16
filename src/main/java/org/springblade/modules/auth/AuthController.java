/*
 *      Copyright (c) 2018-2028, Chill Zhuang All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *
 *  Redistributions of source code must retain the above copyright notice,
 *  this list of conditions and the following disclaimer.
 *  Redistributions in binary form must reproduce the above copyright
 *  notice, this list of conditions and the following disclaimer in the
 *  documentation and/or other materials provided with the distribution.
 *  Neither the name of the dreamlu.net developer nor the names of its
 *  contributors may be used to endorse or promote products derived from
 *  this software without specific prior written permission.
 *  Author: Chill 庄骞 (smallchill@163.com)
 */
package org.springblade.modules.auth;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiSort;
import lombok.AllArgsConstructor;
import org.springblade.core.log.annotation.ApiLog;
import org.springblade.core.secure.AuthInfo;
import org.springblade.core.secure.utils.SecureUtil;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.utils.DigestUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.User;
import org.springblade.modules.system.entity.UserInfo;
import org.springblade.modules.system.service.IUserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * 认证模块
 *
 * @author Chill
 */
@RestController
@AllArgsConstructor
@RequestMapping("blade-auth")
@ApiSort(1)
@Api(value = "用户授权认证", tags = "授权接口")
public class AuthController {

	IUserService service;

	@ApiLog("登录用户验证")
	@PostMapping("token")
	@ApiOperation(value = "获取认证token", notes = "传入账号:account,密码:password")
	public R<AuthInfo> token(@ApiParam(value = "账号", required = true) @RequestParam String account,
							 @ApiParam(value = "密码", required = true) @RequestParam String password) {

		if (Func.hasEmpty(account, password)) {
			return R.fail("接口调用不合法");
		}

		UserInfo userInfo = service.userInfo(account, DigestUtil.encrypt(password));

		User user = userInfo.getUser();

		//验证用户
		if (user == null) {
			return R.fail("用户名或密码不正确");
		}

		//设置jwt参数
		Map<String, String> param = new HashMap<>(16);
		param.put(SecureUtil.USER_ID, Func.toStr(user.getId()));
		param.put(SecureUtil.ROLE_ID, user.getRoleId());
		param.put(SecureUtil.ACCOUNT, user.getAccount());
		param.put(SecureUtil.USER_NAME, user.getRealName());
		param.put(SecureUtil.ROLE_NAME, Func.join(userInfo.getRoles()));

		//拼装accessToken
		String accessToken = SecureUtil.createJWT(param, "audience", "issuser", true);

		//返回accessToken
		AuthInfo authInfo = new AuthInfo();
		authInfo.setAccount(user.getAccount());
		authInfo.setUserName(user.getRealName());
		authInfo.setAuthority(Func.join(userInfo.getRoles()));
		authInfo.setAccessToken(accessToken);
		authInfo.setTokenType(SecureUtil.BEARER);
		//设置token过期时间
		authInfo.setExpiresIn(SecureUtil.getExpire());
		return R.data(authInfo);

	}

}
