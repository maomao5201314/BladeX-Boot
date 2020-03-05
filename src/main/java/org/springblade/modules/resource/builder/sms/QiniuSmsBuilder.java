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

import com.qiniu.sms.SmsManager;
import com.qiniu.util.Auth;
import lombok.SneakyThrows;
import org.springblade.core.redis.cache.BladeRedis;
import org.springblade.core.sms.SmsTemplate;
import org.springblade.core.sms.props.SmsProperties;
import org.springblade.core.sms.qiniu.QiniuSmsTemplate;
import org.springblade.modules.resource.entity.Sms;

/**
 * 七牛云短信构建类
 *
 * @author Chill
 */
public class QiniuSmsBuilder {

	@SneakyThrows
	public static SmsTemplate template(Sms sms, BladeRedis bladeRedis) {
		SmsProperties smsProperties = new SmsProperties();
		smsProperties.setTemplateId(sms.getTemplateId());
		smsProperties.setAccessKey(sms.getAccessKey());
		smsProperties.setSecretKey(sms.getSecretKey());
		smsProperties.setSignName(sms.getSignName());
		Auth auth = Auth.create(smsProperties.getAccessKey(), smsProperties.getSecretKey());
		SmsManager smsManager = new SmsManager(auth);
		return new QiniuSmsTemplate(smsProperties, smsManager, bladeRedis);
	}

}
