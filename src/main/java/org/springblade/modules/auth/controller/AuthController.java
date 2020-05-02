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
package org.springblade.modules.auth.controller;

import com.wf.captcha.SpecCaptcha;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.springblade.common.cache.CacheNames;
import org.springblade.core.cache.constant.CacheConstant;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.redis.cache.BladeRedis;
import org.springblade.core.tool.support.Kv;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import java.time.Duration;
import java.util.UUID;

/**
 * 认证模块
 *
 * @author Chill
 */
@ApiIgnore
@RestController
@AllArgsConstructor
@RequestMapping(AppConstant.APPLICATION_AUTH_NAME)
public class AuthController {

	private final BladeRedis bladeRedis;

	@GetMapping("/oauth/captcha")
	@ApiOperation(value = "获取验证码")
	public Kv captcha() {
		SpecCaptcha specCaptcha = new SpecCaptcha(130, 48, 5);
		String verCode = specCaptcha.text().toLowerCase();
		String key = UUID.randomUUID().toString();
		// 存入redis并设置过期时间为30分钟
		bladeRedis.setEx(CacheNames.CAPTCHA_KEY + key, verCode, Duration.ofMinutes(30));
		// 将key和base64返回给前端
		return Kv.create().set("key", key).set("image", specCaptcha.toBase64());
	}

	@GetMapping("/oauth/clear-cache")
	@ApiOperation(value = "清除缓存")
	public Kv clearCache() {
		CacheUtil.clear(CacheConstant.BIZ_CACHE);
		CacheUtil.clear(CacheConstant.MENU_CACHE);
		CacheUtil.clear(CacheConstant.USER_CACHE);
		CacheUtil.clear(CacheConstant.DICT_CACHE);
		CacheUtil.clear(CacheConstant.FLOW_CACHE);
		CacheUtil.clear(CacheConstant.SYS_CACHE);
		CacheUtil.clear(CacheConstant.RESOURCE_CACHE);
		CacheUtil.clear(CacheConstant.PARAM_CACHE);
		return Kv.create().set("success", "true").set("msg", "success");
	}
}
