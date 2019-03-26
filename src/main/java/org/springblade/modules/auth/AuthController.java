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
import org.springblade.core.launch.constant.TokenConstant;
import org.springblade.core.log.annotation.ApiLog;
import org.springblade.core.secure.utils.SecureUtil;
import org.springblade.core.tool.support.Kv;
import org.springblade.core.tool.utils.DigestUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.User;
import org.springblade.modules.system.entity.UserInfo;
import org.springblade.modules.system.service.IUserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
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
	@PostMapping("/oauth/token")
	@ApiOperation(value = "获取认证token", notes = "传入租户编号:tenantCode,账号:account,密码:password")
	public Kv token(@ApiParam(value = "租户编号", required = true) @RequestParam(defaultValue = "000000", required = false) String tenantCode,
					@ApiParam(value = "账号", required = true) @RequestParam String username,
					@ApiParam(value = "密码", required = true) @RequestParam String password) {

		Kv authInfo = Kv.create();

		if (Func.hasEmpty(username, password)) {
			return authInfo.set("error_code", HttpServletResponse.SC_BAD_REQUEST).set("error_msg", "接口调用不合法");
		}

		UserInfo userInfo = service.userInfo(tenantCode, username, DigestUtil.encrypt(password));

		User user = userInfo.getUser();

		//验证用户
		if (user == null) {
			return authInfo.set("error_code", HttpServletResponse.SC_BAD_REQUEST).set("error_msg", "用户名或密码不正确");
		}

		//设置jwt参数
		Map<String, String> param = new HashMap<>(16);
		param.put(TokenConstant.USER_ID, Func.toStr(user.getId()));
		param.put(TokenConstant.ROLE_ID, user.getRoleId());
		param.put(TokenConstant.TENANT_CODE, user.getTenantCode());
		param.put(TokenConstant.ACCOUNT, user.getAccount());
		param.put(TokenConstant.USER_NAME, user.getRealName());
		param.put(TokenConstant.ROLE_NAME, Func.join(userInfo.getRoles()));

		//拼装accessToken
		String accessToken = SecureUtil.createJWT(param, "audience", "issuser", true);

		//返回accessToken
		authInfo.set(TokenConstant.ACCOUNT, user.getAccount())
			.set(TokenConstant.USER_NAME, user.getRealName())
			.set(TokenConstant.ROLE_NAME, Func.join(userInfo.getRoles()))
			.set(TokenConstant.AVATAR, TokenConstant.DEFAULT_AVATAR)
			.set(TokenConstant.ACCESS_TOKEN, accessToken)
			.set(TokenConstant.REFRESH_TOKEN, accessToken)
			.set(TokenConstant.TOKEN_TYPE, TokenConstant.BEARER)
			.set(TokenConstant.EXPIRES_IN, SecureUtil.getExpireSeconds())
			.set(TokenConstant.LICENSE, TokenConstant.LICENSE_NAME);
		return authInfo;
	}

}
