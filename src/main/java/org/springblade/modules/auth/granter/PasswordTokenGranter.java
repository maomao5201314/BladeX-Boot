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
package org.springblade.modules.auth.granter;

import org.springblade.core.tool.utils.DigestUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.WebUtil;
import org.springblade.modules.auth.enums.BladeUserEnum;
import org.springblade.modules.auth.utils.TokenUtil;
import org.springblade.modules.system.entity.UserInfo;
import org.springblade.modules.system.service.IUserService;

/**
 * PasswordTokenGranter
 *
 * @author Chill
 */
public class PasswordTokenGranter implements ITokenGranter {

	public static final String GRANT_TYPE = "password";

	@Override
	public UserInfo grant(IUserService service, TokenParameter tokenParameter) {
		String tenantId = tokenParameter.getArgs().getStr("tenantId");
		String username = tokenParameter.getArgs().getStr("username");
		String password = tokenParameter.getArgs().getStr("password");
		if (Func.isNoneBlank(username, password)) {
			// 获取用户类型
			String userType = Func.toStr(WebUtil.getRequest().getHeader(TokenUtil.USER_TYPE_HEADER_KEY), TokenUtil.DEFAULT_USER_TYPE);
			UserInfo userInfo;
			// 根据不同用户类型调用对应的接口返回数据，用户可自行拓展
			if (userType.equals(BladeUserEnum.WEB.getName())) {
				userInfo = service.userInfo(tenantId, username, DigestUtil.encrypt(password));
			} else if (userType.equals(BladeUserEnum.APP.getName())) {
				userInfo = service.userInfo(tenantId, username, DigestUtil.encrypt(password));
			} else {
				userInfo = service.userInfo(tenantId, username, DigestUtil.encrypt(password));
			}
			return userInfo;
		} else {
			return null;
		}
	}

}
