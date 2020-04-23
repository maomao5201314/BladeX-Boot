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
package org.springblade.flow.business.service.impl;

import lombok.AllArgsConstructor;
import org.flowable.engine.IdentityService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.runtime.ProcessInstance;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.support.Kv;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.StringUtil;
import org.springblade.flow.business.service.IFlowService;
import org.springblade.flow.core.entity.BladeFlow;
import org.springblade.flow.core.utils.TaskUtil;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * 流程实现类
 *
 * @author Chill
 */
@RestController
@AllArgsConstructor
public class FlowServiceImpl implements IFlowService {

	private final RuntimeService runtimeService;
	private final IdentityService identityService;
	private final TaskService taskService;

	@Override
	public BladeFlow startProcessInstanceById(String processDefinitionId, String businessKey, Map<String, Object> variables) {
		// 设置流程启动用户
		identityService.setAuthenticatedUserId(TaskUtil.getTaskUser());
		// 开启流程
		ProcessInstance processInstance = runtimeService.startProcessInstanceById(processDefinitionId, businessKey, variables);
		// 组装流程通用类
		BladeFlow flow = new BladeFlow();
		flow.setProcessInstanceId(processInstance.getId());
		return flow;
	}

	@Override
	public BladeFlow startProcessInstanceByKey(String processDefinitionKey, String businessKey, Map<String, Object> variables) {
		// 设置流程启动用户
		identityService.setAuthenticatedUserId(TaskUtil.getTaskUser());
		// 开启流程
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processDefinitionKey, businessKey, variables);
		// 组装流程通用类
		BladeFlow flow = new BladeFlow();
		flow.setProcessInstanceId(processInstance.getId());
		return flow;
	}

	@Override
	public boolean completeTask(String taskId, String processInstanceId, String comment, Map<String, Object> variables) {
		// 增加评论
		if (StringUtil.isNoneBlank(processInstanceId, comment)) {
			taskService.addComment(taskId, processInstanceId, comment);
		}
		// 非空判断
		if (Func.isEmpty(variables)) {
			variables = Kv.create();
		}
		// 完成任务
		taskService.complete(taskId, variables);
		return true;
	}

	@Override
	public Object taskVariable(String taskId, String variableName) {
		return R.data(taskService.getVariable(taskId, variableName));
	}

	@Override
	public Map<String, Object> taskVariables(String taskId) {
		return taskService.getVariables(taskId);
	}

}
