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
package org.springblade.flow.demo.leave.service.impl;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springblade.core.log.exception.ServiceException;
import org.springblade.core.mp.base.BaseServiceImpl;
import org.springblade.core.secure.utils.AuthUtil;
import org.springblade.core.tool.support.Kv;
import org.springblade.core.tool.utils.DateUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.flow.business.service.IFlowService;
import org.springblade.flow.core.constant.ProcessConstant;
import org.springblade.flow.core.entity.BladeFlow;
import org.springblade.flow.core.utils.FlowUtil;
import org.springblade.flow.core.utils.TaskUtil;
import org.springblade.flow.demo.leave.entity.ProcessLeave;
import org.springblade.flow.demo.leave.mapper.LeaveMapper;
import org.springblade.flow.demo.leave.service.ILeaveService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 服务实现类
 *
 * @author Chill
 */
@Slf4j
@Service
@AllArgsConstructor
public class LeaveServiceImpl extends BaseServiceImpl<LeaveMapper, ProcessLeave> implements ILeaveService {

	private final IFlowService flowService;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean startProcess(ProcessLeave leave) {
		String businessTable = FlowUtil.getBusinessTable(ProcessConstant.LEAVE_KEY);
		if (Func.isEmpty(leave.getId())) {
			// 保存leave
			leave.setApplyTime(DateUtil.now());
			save(leave);
			// 启动流程
			Kv variables = Kv.create()
				.set(ProcessConstant.TASK_VARIABLE_CREATE_USER, AuthUtil.getUserName())
				.set("taskUser", TaskUtil.getTaskUser(leave.getTaskUser()))
				.set("days", DateUtil.between(leave.getStartTime(), leave.getEndTime()).toDays());
			BladeFlow flow = flowService.startProcessInstanceById(leave.getProcessDefinitionId(), FlowUtil.getBusinessKey(businessTable, String.valueOf(leave.getId())), variables);
			if (Func.isNotEmpty(flow)) {
				log.debug("流程已启动,流程ID:" + flow.getProcessInstanceId());
				// 返回流程id写入leave
				leave.setProcessInstanceId(flow.getProcessInstanceId());
				updateById(leave);
			} else {
				throw new ServiceException("开启流程失败");
			}
		} else {

			updateById(leave);
		}
		return true;
	}

}
