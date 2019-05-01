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
package org.springblade.flow.business.service;

import org.springblade.flow.core.entity.BladeFlow;

import java.util.Map;

/**
 * 工作流调用接口.
 *
 * @author Chill
 */
public interface IFlowService {

	/**
	 * 开启流程
	 *
	 * @param processDefinitionId 流程id
	 * @param businessKey         业务key
	 * @param variables           参数
	 * @return BladeFlow
	 */
	BladeFlow startProcessInstanceById(String processDefinitionId, String businessKey, Map<String, Object> variables);

	/**
	 * 开启流程
	 *
	 * @param processDefinitionKey 流程标识
	 * @param businessKey          业务key
	 * @param variables            参数
	 * @return BladeFlow
	 */
	BladeFlow startProcessInstanceByKey(String processDefinitionKey, String businessKey, Map<String, Object> variables);

	/**
	 * 完成任务
	 *
	 * @param taskId            任务id
	 * @param processInstanceId 流程实例id
	 * @param comment           评论
	 * @param variables         参数
	 * @return R
	 */
	boolean completeTask(String taskId, String processInstanceId, String comment, Map<String, Object> variables);

	/**
	 * 获取流程变量
	 *
	 * @param taskId       任务id
	 * @param variableName 变量名
	 * @return R
	 */
	Object taskVariable(String taskId, String variableName);

	/**
	 * 获取流程变量集合
	 *
	 * @param taskId 任务id
	 * @return R
	 */
	Map<String, Object> taskVariables(String taskId);
}
