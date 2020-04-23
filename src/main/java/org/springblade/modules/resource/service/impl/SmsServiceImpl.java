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
package org.springblade.modules.resource.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.springblade.core.log.exception.ServiceException;
import org.springblade.core.mp.base.BaseServiceImpl;
import org.springblade.core.secure.utils.AuthUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.resource.entity.Sms;
import org.springblade.modules.resource.mapper.SmsMapper;
import org.springblade.modules.resource.service.ISmsService;
import org.springblade.modules.resource.vo.SmsVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 短信配置表 服务实现类
 *
 * @author BladeX
 */
@Service
public class SmsServiceImpl extends BaseServiceImpl<SmsMapper, Sms> implements ISmsService {

	@Override
	public IPage<SmsVO> selectSmsPage(IPage<SmsVO> page, SmsVO sms) {
		return page.setRecords(baseMapper.selectSmsPage(page, sms));
	}

	@Override
	public boolean submit(Sms sms) {
		LambdaQueryWrapper<Sms> lqw = Wrappers.<Sms>query().lambda()
			.eq(Sms::getSmsCode, sms.getSmsCode()).eq(Sms::getTenantId, AuthUtil.getTenantId());
		Integer cnt = baseMapper.selectCount(Func.isEmpty(sms.getId()) ? lqw : lqw.notIn(Sms::getId, sms.getId()));
		if (cnt > 0) {
			throw new ServiceException("当前资源编号已存在!");
		}
		return this.saveOrUpdate(sms);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean enable(Long id) {
		// 先禁用
		boolean temp1 = this.update(Wrappers.<Sms>update().lambda().set(Sms::getStatus, 1));
		// 在启用
		boolean temp2 = this.update(Wrappers.<Sms>update().lambda().set(Sms::getStatus, 2).eq(Sms::getId, id));
		return temp1 && temp2;
	}

}
