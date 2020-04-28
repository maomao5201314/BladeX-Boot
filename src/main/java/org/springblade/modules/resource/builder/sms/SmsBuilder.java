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
package org.springblade.modules.resource.builder.sms;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.log.exception.ServiceException;
import org.springblade.core.redis.cache.BladeRedis;
import org.springblade.core.secure.utils.AuthUtil;
import org.springblade.core.sms.SmsTemplate;
import org.springblade.core.sms.enums.SmsEnum;
import org.springblade.core.sms.enums.SmsStatusEnum;
import org.springblade.core.sms.props.SmsProperties;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.StringPool;
import org.springblade.core.tool.utils.StringUtil;
import org.springblade.core.tool.utils.WebUtil;
import org.springblade.modules.resource.entity.Sms;
import org.springblade.modules.resource.service.ISmsService;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static org.springblade.core.cache.constant.CacheConstant.RESOURCE_CACHE;

/**
 * Sms短信服务统一构建类
 *
 * @author Chill
 */
public class SmsBuilder {

	public static final String SMS_CODE = "sms:code:";
	public static final String SMS_PARAM_KEY = "code";

	private final SmsProperties smsProperties;
	private final ISmsService smsService;
	private final BladeRedis bladeRedis;


	public SmsBuilder(SmsProperties smsProperties, ISmsService smsService, BladeRedis bladeRedis) {
		this.smsProperties = smsProperties;
		this.smsService = smsService;
		this.bladeRedis = bladeRedis;
	}

	/**
	 * SmsTemplate配置缓存池
	 */
	private final Map<String, SmsTemplate> templatePool = new ConcurrentHashMap<>();

	/**
	 * Sms配置缓存池
	 */
	private final Map<String, Sms> smsPool = new ConcurrentHashMap<>();


	/**
	 * 获取template
	 *
	 * @return SmsTemplate
	 */
	public SmsTemplate template() {
		return template(StringPool.EMPTY);
	}

	/**
	 * 获取template
	 *
	 * @param code 资源编号
	 * @return SmsTemplate
	 */
	public SmsTemplate template(String code) {
		String tenantId = AuthUtil.getTenantId();
		Sms sms = getSms(tenantId, code);
		Sms smsCached = smsPool.get(tenantId);
		SmsTemplate template = templatePool.get(tenantId);
		// 若为空或者不一致，则重新加载
		if (Func.hasEmpty(template, smsCached) || !sms.getTemplateId().equals(smsCached.getTemplateId()) || !sms.getAccessKey().equals(smsCached.getAccessKey())) {
			synchronized (SmsBuilder.class) {
				template = templatePool.get(tenantId);
				if (Func.hasEmpty(template, smsCached) || !sms.getTemplateId().equals(smsCached.getTemplateId()) || !sms.getAccessKey().equals(smsCached.getAccessKey())) {
					if (sms.getCategory() == SmsEnum.YUNPIAN.getCategory()) {
						template = YunpianSmsBuilder.template(sms, bladeRedis);
					} else if (sms.getCategory() == SmsEnum.QINIU.getCategory()) {
						template = QiniuSmsBuilder.template(sms, bladeRedis);
					} else if (sms.getCategory() == SmsEnum.ALI.getCategory()) {
						template = AliSmsBuilder.template(sms, bladeRedis);
					} else if (sms.getCategory() == SmsEnum.TENCENT.getCategory()) {
						template = TencentSmsBuilder.template(sms, bladeRedis);
					}
					templatePool.put(tenantId, template);
					smsPool.put(tenantId, sms);
				}
			}
		}
		return template;
	}


	/**
	 * 获取短信实体
	 *
	 * @param tenantId 租户ID
	 * @return Sms
	 */
	public Sms getSms(String tenantId, String code) {
		String key = tenantId;
		LambdaQueryWrapper<Sms> lqw = Wrappers.<Sms>query().lambda().eq(Sms::getTenantId, tenantId);
		// 获取传参的资源编号并查询，若有则返回，若没有则调启用的配置
		String smsCode = StringUtil.isBlank(code) ? WebUtil.getParameter(SMS_PARAM_KEY) : code;
		if (StringUtil.isNotBlank(smsCode)) {
			key = key.concat(StringPool.DASH).concat(smsCode);
			lqw.eq(Sms::getSmsCode, smsCode);
		} else {
			lqw.eq(Sms::getStatus, SmsStatusEnum.ENABLE.getNum());
		}
		Sms sms = CacheUtil.get(RESOURCE_CACHE, SMS_CODE, key, () -> {
			Sms s = smsService.getOne(lqw);
			// 若为空则调用默认配置
			if ((Func.isEmpty(s))) {
				Sms defaultSms = new Sms();
				defaultSms.setId(0L);
				defaultSms.setCategory(SmsEnum.of(smsProperties.getName()).getCategory());
				defaultSms.setAccessKey(smsProperties.getAccessKey());
				defaultSms.setSecretKey(smsProperties.getSecretKey());
				defaultSms.setSignName(smsProperties.getSignName());
				return defaultSms;
			} else {
				return s;
			}
		});
		if (sms == null || sms.getId() == null) {
			throw new ServiceException("未获取到对应的短信配置");
		} else {
			return sms;
		}
	}

}
