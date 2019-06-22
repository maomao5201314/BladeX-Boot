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
package org.springblade.modules.auth.utils;

import org.springblade.core.launch.constant.TokenConstant;
import org.springblade.core.secure.utils.SecureUtil;
import org.springblade.core.tool.support.Kv;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.User;
import org.springblade.modules.system.entity.UserInfo;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * 认证工具类
 *
 * @author Chill
 */
public class TokenUtil {

	public final static String AVATAR = TokenConstant.AVATAR;
	public final static String ACCOUNT = TokenConstant.ACCOUNT;
	public final static String USER_NAME = TokenConstant.USER_NAME;
	public final static String NICK_NAME = TokenConstant.NICK_NAME;
	public final static String USER_ID = TokenConstant.USER_ID;
	public final static String DEPT_ID = TokenConstant.DEPT_ID;
	public final static String ROLE_ID = TokenConstant.ROLE_ID;
	public final static String ROLE_NAME = TokenConstant.ROLE_NAME;
	public final static String TENANT_ID = TokenConstant.TENANT_ID;
	public final static String CLIENT_ID = TokenConstant.CLIENT_ID;
	public final static String LICENSE = TokenConstant.LICENSE;
	public final static String LICENSE_NAME = TokenConstant.LICENSE_NAME;


	public final static String TENANT_HEADER_KEY = "Tenant-Id";
	public final static String DEFAULT_TENANT_ID = "000000";
	public final static String USER_TYPE_HEADER_KEY = "User-Type";
	public final static String DEFAULT_USER_TYPE = "web";
	public final static String USER_NOT_FOUND = "用户名或密码错误";
	public final static String HEADER_KEY = "Authorization";
	public final static String HEADER_PREFIX = "Basic ";
	public final static String DEFAULT_AVATAR = "https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png";

	/**
	 * 创建认证token
	 *
	 * @param userInfo 用户信息
	 * @return token
	 */
	public static Kv createAuthInfo(UserInfo userInfo) {
		Kv authInfo = Kv.create();
		User user = userInfo.getUser();
		//设置jwt参数
		Map<String, String> param = new HashMap<>(16);
		param.put(TokenConstant.TOKEN_TYPE, TokenConstant.ACCESS_TOKEN);
		param.put(TokenConstant.TENANT_ID, user.getTenantId());
		param.put(TokenConstant.USER_ID, Func.toStr(user.getId()));
		param.put(TokenConstant.DEPT_ID, user.getDeptId());
		param.put(TokenConstant.ROLE_ID, user.getRoleId());
		param.put(TokenConstant.ACCOUNT, user.getAccount());
		param.put(TokenConstant.USER_NAME, user.getAccount());
		param.put(TokenConstant.NICK_NAME, user.getRealName());
		param.put(TokenConstant.ROLE_NAME, Func.join(userInfo.getRoles()));

		//拼装accessToken
		try {
			String accessToken = SecureUtil.createJWT(param, "audience", "issuser", TokenConstant.ACCESS_TOKEN);
			//返回accessToken
			return authInfo.set(TokenConstant.ACCOUNT, user.getAccount())
				.set(TokenConstant.USER_NAME, user.getAccount())
				.set(TokenConstant.NICK_NAME, user.getRealName())
				.set(TokenConstant.ROLE_NAME, Func.join(userInfo.getRoles()))
				.set(TokenConstant.AVATAR, TokenConstant.DEFAULT_AVATAR)
				.set(TokenConstant.ACCESS_TOKEN, accessToken)
				.set(TokenConstant.REFRESH_TOKEN, createRefreshToken(userInfo))
				.set(TokenConstant.TOKEN_TYPE, TokenConstant.BEARER)
				.set(TokenConstant.EXPIRES_IN, SecureUtil.getExpireSeconds())
				.set(TokenConstant.LICENSE, TokenConstant.LICENSE_NAME);
		} catch (Exception ex) {
			return authInfo.set("error_code", HttpServletResponse.SC_UNAUTHORIZED).set("error_description", ex.getMessage());
		}
	}

	/**
	 * 创建refreshToken
	 *
	 * @param userInfo 用户信息
	 * @return refreshToken
	 */
	private static String createRefreshToken(UserInfo userInfo) {
		User user = userInfo.getUser();
		Map<String, String> param = new HashMap<>(16);
		param.put(TokenConstant.TOKEN_TYPE, TokenConstant.REFRESH_TOKEN);
		param.put(TokenConstant.USER_ID, Func.toStr(user.getId()));
		return SecureUtil.createJWT(param, "audience", "issuser", TokenConstant.REFRESH_TOKEN);
	}

}
