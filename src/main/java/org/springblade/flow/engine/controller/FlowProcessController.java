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
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.common.engine.impl.util.IoUtil;
import org.flowable.engine.*;
import org.flowable.engine.history.HistoricActivityInstance;
import org.flowable.engine.history.HistoricProcessInstance;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.image.ProcessDiagramGenerator;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.tenant.annotation.NonDS;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.utils.StringUtil;
import org.springblade.flow.core.entity.BladeFlow;
import org.springblade.flow.engine.service.FlowEngineService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
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
	private static final String XML_NAME = "xml";
	private static final Integer INT_1024 = 1024;

	private final RepositoryService repositoryService;
	private final RuntimeService runtimeService;
	private final HistoryService historyService;
	private final ProcessEngine processEngine;
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
	 * 流程图展示
	 *
	 * @param processDefinitionId 流程id
	 * @param processInstanceId   实例id
	 * @param resourceType        资源类型
	 * @param response            响应
	 */
	@GetMapping("resource-view")
	public void resourceView(@RequestParam String processDefinitionId, String processInstanceId, @RequestParam(defaultValue = IMAGE_NAME) String resourceType, HttpServletResponse response) throws Exception {
		if (StringUtil.isAllBlank(processDefinitionId, processInstanceId)) {
			return;
		}
		if (StringUtil.isBlank(processDefinitionId)) {
			ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
			processDefinitionId = processInstance.getProcessDefinitionId();
		}
		ProcessDefinition processDefinition = repositoryService.createProcessDefinitionQuery().processDefinitionId(processDefinitionId).singleResult();
		String resourceName = "";
		if (resourceType.equals(IMAGE_NAME)) {
			resourceName = processDefinition.getDiagramResourceName();
		} else if (resourceType.equals(XML_NAME)) {
			resourceName = processDefinition.getResourceName();
		}
		InputStream resourceAsStream = repositoryService.getResourceAsStream(processDefinition.getDeploymentId(), resourceName);
		byte[] b = new byte[1024];
		int len;
		while ((len = resourceAsStream.read(b, 0, INT_1024)) != -1) {
			response.getOutputStream().write(b, 0, len);
		}
	}

	/**
	 * 获取流程节点进程图
	 *
	 * @param processInstanceId   流程实例id
	 * @param httpServletResponse http响应
	 */
	@GetMapping(value = "diagram-view")
	public void diagramView(String processInstanceId, HttpServletResponse httpServletResponse) {
		diagram(processInstanceId, httpServletResponse);
	}

	/**
	 * 根据流程节点绘图
	 *
	 * @param processInstanceId   流程实例id
	 * @param httpServletResponse http响应
	 */
	private void diagram(String processInstanceId, HttpServletResponse httpServletResponse) {
		// 获得当前活动的节点
		String processDefinitionId;
		// 如果流程已经结束，则得到结束节点
		if (this.isFinished(processInstanceId)) {
			HistoricProcessInstance pi = historyService.createHistoricProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
			processDefinitionId = pi.getProcessDefinitionId();
		} else {
			// 如果流程没有结束，则取当前活动节点
			// 根据流程实例ID获得当前处于活动状态的ActivityId合集
			ProcessInstance pi = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
			processDefinitionId = pi.getProcessDefinitionId();
		}
		List<String> highLightedActivities = new ArrayList<>();

		// 获得活动的节点
		List<HistoricActivityInstance> highLightedActivityList = historyService.createHistoricActivityInstanceQuery().processInstanceId(processInstanceId).orderByHistoricActivityInstanceStartTime().asc().list();

		for (HistoricActivityInstance tempActivity : highLightedActivityList) {
			String activityId = tempActivity.getActivityId();
			highLightedActivities.add(activityId);
		}

		List<String> flows = new ArrayList<>();
		// 获取流程图
		BpmnModel bpmnModel = repositoryService.getBpmnModel(processDefinitionId);
		ProcessEngineConfiguration engConf = processEngine.getProcessEngineConfiguration();

		ProcessDiagramGenerator diagramGenerator = engConf.getProcessDiagramGenerator();
		InputStream in = diagramGenerator.generateDiagram(bpmnModel, "bmp", highLightedActivities, flows, engConf.getActivityFontName(),
			engConf.getLabelFontName(), engConf.getAnnotationFontName(), engConf.getClassLoader(), 1.0, true);
		OutputStream out = null;
		byte[] buf = new byte[1024];
		int length;
		try {
			out = httpServletResponse.getOutputStream();
			while ((length = in.read(buf)) != -1) {
				out.write(buf, 0, length);
			}
		} catch (IOException e) {
			log.error("操作异常", e);
		} finally {
			IoUtil.closeSilently(out);
			IoUtil.closeSilently(in);
		}
	}

	/**
	 * 是否已完结
	 *
	 * @param processInstanceId 流程实例id
	 * @return bool
	 */
	private boolean isFinished(String processInstanceId) {
		return historyService.createHistoricProcessInstanceQuery().finished()
			.processInstanceId(processInstanceId).count() > 0;
	}


}
