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
package org.springblade.flow.engine.controller;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.tenant.annotation.NonDS;
import org.springblade.core.tool.api.R;
import org.springblade.flow.core.entity.BladeFlow;
import org.springblade.flow.engine.service.FlowEngineService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 流程通用控制器
 *
 * @author Chill
 */
@NonDS
@Slf4j
@RestController
@AllArgsConstructor
@RequestMapping(AppConstant.APPLICATION_FLOW_NAME + "/process")
@ApiIgnore
public class FlowProcessController {

	private static final String IMAGE_NAME = "image";
	private final FlowEngineService flowEngineService;

	/**
	 * 获取流转历史列表
	 *
	 * @param processInstanceId 流程实例id
	 * @param startActivityId   开始节点id
	 * @param endActivityId     结束节点id
	 */
	@GetMapping(value = "history-flow-list")
	public R<List<BladeFlow>> historyFlowList(@RequestParam String processInstanceId, String startActivityId, String endActivityId) {
		return R.data(flowEngineService.historyFlowList(processInstanceId, startActivityId, endActivityId));
	}

	/**
	 * 流程节点进程图
	 *
	 * @param processDefinitionId 流程id
	 * @param processInstanceId 流程实例id
	 */
	@GetMapping(value = "model-view")
	public R modelView(String processDefinitionId, String processInstanceId) {
		return R.data(flowEngineService.modelView(processDefinitionId, processInstanceId));
	}

	/**
	 * 流程节点进程图
	 *
	 * @param processInstanceId   流程实例id
	 * @param httpServletResponse http响应
	 */
	@GetMapping(value = "diagram-view")
	public void diagramView(String processInstanceId, HttpServletResponse httpServletResponse) {
		flowEngineService.diagramView(processInstanceId, httpServletResponse);
	}

	/**
	 * 流程图展示
	 *
	 * @param processDefinitionId 流程id
	 * @param processInstanceId   实例id
	 * @param resourceType        资源类型
	 * @param response            响应
	 */
	@GetMapping("resource-view")
	public void resourceView(@RequestParam String processDefinitionId, String processInstanceId, @RequestParam(defaultValue = IMAGE_NAME) String resourceType, HttpServletResponse response) {
		flowEngineService.resourceView(processDefinitionId, processInstanceId, resourceType, response);
	}

}
