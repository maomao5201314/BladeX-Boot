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
package org.springblade.modules.resource.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import org.springblade.core.tool.utils.StringPool;

/**
 * Sms资源编码枚举类
 *
 * @author Chill
 * @apiNote 该枚举类对应短信配置模块的资源编码，可根据业务需求自行拓展
 */
@Getter
@AllArgsConstructor
public enum SmsCodeEnum {

	/**
	 * 默认编号
	 */
	DEFAULT(StringPool.EMPTY, 1),

	/**
	 * 验证码编号
	 */
	VALIDATE("qiniu-validate", 2),

	/**
	 * 通知公告编号
	 */
	NOTICE("notice", 3),

	/**
	 * 下单通知编号
	 */
	ORDER("order", 4),

	/**
	 * 会议通知编号
	 */
	MEETING("meeting", 5),
	;

	final String name;
	final int category;

}
