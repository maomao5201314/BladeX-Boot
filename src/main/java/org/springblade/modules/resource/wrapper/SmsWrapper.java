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
package org.springblade.modules.resource.wrapper;

import org.springblade.common.cache.DictCache;
import org.springblade.common.enums.DictEnum;
import org.springblade.core.mp.support.BaseEntityWrapper;
import org.springblade.core.tool.utils.BeanUtil;
import org.springblade.modules.resource.entity.Sms;
import org.springblade.modules.resource.vo.SmsVO;

import java.util.Objects;

/**
 * 短信配置表包装类,返回视图层所需的字段
 *
 * @author BladeX
 */
public class SmsWrapper extends BaseEntityWrapper<Sms, SmsVO> {

	public static SmsWrapper build() {
		return new SmsWrapper();
	}

	@Override
	public SmsVO entityVO(Sms sms) {
		SmsVO smsVO = Objects.requireNonNull(BeanUtil.copy(sms, SmsVO.class));
		String categoryName = DictCache.getValue(DictEnum.SMS, sms.getCategory());
		String statusName = DictCache.getValue(DictEnum.YES_NO, sms.getStatus());
		smsVO.setCategoryName(categoryName);
		smsVO.setStatusName(statusName);
		return smsVO;
	}

}
