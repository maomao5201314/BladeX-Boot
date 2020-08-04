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
package org.springblade.modules.auth.endpoint;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhyd.oauth.model.AuthCallback;
import me.zhyd.oauth.model.AuthToken;
import me.zhyd.oauth.request.AuthRequest;
import me.zhyd.oauth.utils.AuthStateUtils;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.social.props.SocialProperties;
import org.springblade.core.social.utils.SocialUtil;
import org.springblade.core.tenant.annotation.NonDS;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 第三方登陆端点
 *
 * @author Chill
 */
@NonDS
@Slf4j
@RestController
@AllArgsConstructor
@RequestMapping(AppConstant.APPLICATION_AUTH_NAME)
@ConditionalOnProperty(value = "social.enabled", havingValue = "true")
@Api(value = "第三方登陆", tags = "第三方登陆端点")
public class BladeSocialEndpoint {

	private final SocialProperties socialProperties;

	/**
	 * 授权完毕跳转
	 */
	@ApiOperation(value = "授权完毕跳转")
	@RequestMapping("/oauth/render/{source}")
	public void renderAuth(@PathVariable("source") String source, HttpServletResponse response) throws IOException {
		AuthRequest authRequest = SocialUtil.getAuthRequest(source, socialProperties);
		String authorizeUrl = authRequest.authorize(AuthStateUtils.createState());
		response.sendRedirect(authorizeUrl);
	}

	/**
	 * 获取认证信息
	 */
	@ApiOperation(value = "获取认证信息")
	@RequestMapping("/oauth/callback/{source}")
	public Object login(@PathVariable("source") String source, AuthCallback callback) {
		AuthRequest authRequest = SocialUtil.getAuthRequest(source, socialProperties);
		return authRequest.login(callback);
	}

	/**
	 * 撤销授权
	 */
	@ApiOperation(value = "撤销授权")
	@RequestMapping("/oauth/revoke/{source}/{token}")
	public Object revokeAuth(@PathVariable("source") String source, @PathVariable("token") String token) {
		AuthRequest authRequest = SocialUtil.getAuthRequest(source, socialProperties);
		return authRequest.revoke(AuthToken.builder().accessToken(token).build());
	}

	/**
	 * 续期accessToken
	 */
	@ApiOperation(value = "续期令牌")
	@RequestMapping("/oauth/refresh/{source}")
	public Object refreshAuth(@PathVariable("source") String source, String token) {
		AuthRequest authRequest = SocialUtil.getAuthRequest(source, socialProperties);
		return authRequest.refresh(AuthToken.builder().refreshToken(token).build());
	}


}
