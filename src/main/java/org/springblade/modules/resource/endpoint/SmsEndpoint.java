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
package org.springblade.modules.resource.endpoint;

import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.sms.model.SmsCode;
import org.springblade.core.sms.model.SmsData;
import org.springblade.core.sms.model.SmsResponse;
import org.springblade.core.tenant.annotation.NonDS;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.jackson.JsonUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.resource.builder.sms.SmsBuilder;
import org.springblade.modules.resource.utils.SmsUtil;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

import static org.springblade.modules.resource.utils.SmsUtil.*;

/**
 * 短信服务端点
 *
 * @author Chill
 */
@NonDS
@RestController
@AllArgsConstructor
@RequestMapping(AppConstant.APPLICATION_RESOURCE_NAME + "/sms/endpoint")
@Api(value = "短信服务端点", tags = "短信服务端点")
public class SmsEndpoint {

	/**
	 * 短信服务构建类
	 */
	private final SmsBuilder smsBuilder;

	//================================= 短信服务校验 =================================

	/**
	 * 短信验证码发送
	 *
	 * @param phone 手机号
	 */
	@SneakyThrows
	@PostMapping("/send-validate")
	public R sendValidate(@RequestParam String phone) {
		Map<String, String> params = SmsUtil.getValidateParams();
		SmsCode smsCode = smsBuilder.template().sendValidate(new SmsData(params).setKey(PARAM_KEY), phone);
		return smsCode.isSuccess() ? R.data(smsCode, SEND_SUCCESS) : R.fail(SEND_FAIL);
	}

	/**
	 * 校验短信
	 *
	 * @param smsCode 短信校验信息
	 */
	@SneakyThrows
	@PostMapping("/validate-message")
	public R validateMessage(SmsCode smsCode) {
		boolean validate = smsBuilder.template().validateMessage(smsCode);
		return validate ? R.success(VALIDATE_SUCCESS) : R.fail(VALIDATE_FAIL);
	}

	//========== 通用短信自定义发送(支持自定义params参数传递, 推荐用于测试, 不推荐用于生产环境) ==========

	/**
	 * 发送信息
	 *
	 * @param params 自定义短信参数
	 * @param phones 手机号集合
	 */
	@SneakyThrows
	@PostMapping("/send-message")
	public R sendMessage(@RequestParam String params, @RequestParam String phones) {
		SmsData smsData = new SmsData(JsonUtil.readMap(params, String.class, String.class));
		return send(smsData, phones);
	}

	//========== 指定短信服务发送(可根据各种场景自定拓展定制, 损失灵活性增加安全性, 推荐用于生产环境) ==========

	/**
	 * 短信通知
	 *
	 * @param phones 手机号集合
	 */
	@SneakyThrows
	@PostMapping("/send-notice")
	public R sendNotice(@RequestParam String phones) {
		Map<String, String> params = new HashMap<>(3);
		params.put("title", "通知标题");
		params.put("content", "通知内容");
		params.put("date", "通知时间");
		SmsData smsData = new SmsData(params);
		return send(smsData, phones);
	}

	/**
	 * 订单通知
	 *
	 * @param phones 手机号集合
	 */
	@SneakyThrows
	@PostMapping("/send-order")
	public R sendOrder(@RequestParam String phones) {
		Map<String, String> params = new HashMap<>(3);
		params.put("orderNo", "订单编号");
		params.put("packageNo", "快递单号");
		params.put("user", "收件人");
		SmsData smsData = new SmsData(params);
		return send(smsData, phones);
	}

	/**
	 * 会议通知
	 *
	 * @param phones 手机号集合
	 */
	@SneakyThrows
	@PostMapping("/send-meeting")
	public R sendMeeting(@RequestParam String phones) {
		Map<String, String> params = new HashMap<>(2);
		params.put("roomId", "会议室");
		params.put("topic", "会议主题");
		params.put("date", "会议时间");
		SmsData smsData = new SmsData(params);
		return send(smsData, phones);
	}

	//================================= 通用短信发送接口 =================================

	/**
	 * 通用短信发送接口
	 *
	 * @param smsData 短信内容
	 * @param phones  手机号列表
	 * @return 是否发送成功
	 */
	private R send(SmsData smsData, String phones) {
		SmsResponse response = smsBuilder.template().sendMessage(smsData, Func.toStrList(phones));
		return response.isSuccess() ? R.success(SEND_SUCCESS) : R.fail(SEND_FAIL);
	}

}
