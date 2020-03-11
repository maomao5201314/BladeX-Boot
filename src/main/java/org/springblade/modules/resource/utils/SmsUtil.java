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
package org.springblade.modules.resource.utils;

import org.springblade.core.sms.model.SmsCode;
import org.springblade.core.sms.model.SmsData;
import org.springblade.core.sms.model.SmsResponse;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.RandomType;
import org.springblade.core.tool.utils.SpringUtil;
import org.springblade.core.tool.utils.StringUtil;
import org.springblade.modules.resource.builder.sms.SmsBuilder;

import java.util.HashMap;
import java.util.Map;

/**
 * 短信服务工具类
 *
 * @author Chill
 */
public class SmsUtil {

	public static final String PARAM_KEY = "code";
	public static final String SEND_SUCCESS = "短信发送成功";
	public static final String SEND_FAIL = "短信发送失败";
	public static final String VALIDATE_SUCCESS = "短信校验成功";
	public static final String VALIDATE_FAIL = "短信校验失败";


	private static SmsBuilder smsBuilder;

	/**
	 * 获取短信服务构建类
	 *
	 * @return SmsBuilder
	 */
	public static SmsBuilder getBuilder() {
		if (smsBuilder == null) {
			smsBuilder = SpringUtil.getBean(SmsBuilder.class);
		}
		return smsBuilder;
	}

	/**
	 * 获取短信验证码参数
	 *
	 * @return 验证码参数
	 */
	public static Map<String, String> getValidateParams() {
		Map<String, String> params = new HashMap<>(1);
		params.put(PARAM_KEY, StringUtil.random(6, RandomType.INT));
		return params;
	}

	/**
	 * 发送短信
	 *
	 * @param code   资源编号
	 * @param params 模板参数
	 * @param phones 手机号集合
	 * @return 发送结果
	 */
	public static SmsResponse sendMessage(String code, Map<String, String> params, String phones) {
		SmsData smsData = new SmsData(params);
		return getBuilder().template(code).sendMessage(smsData, Func.toStrList(phones));
	}

	/**
	 * 发送验证码
	 *
	 * @param code  资源编号
	 * @param phone 手机号
	 * @return 发送结果
	 */
	public static SmsCode sendValidate(String code, String phone) {
		Map<String, String> params = SmsUtil.getValidateParams();
		return getBuilder().template(code).sendValidate(new SmsData(params).setKey(PARAM_KEY), phone);
	}

	/**
	 * 校验短信
	 *
	 * @param code  资源编号
	 * @param id    校验id
	 * @param value 校验值
	 * @return 发送结果
	 */
	public static boolean validateMessage(String code, String id, String value) {
		SmsCode smsCode = new SmsCode().setId(id).setValue(value);
		return getBuilder().template(code).validateMessage(smsCode);
	}

}
