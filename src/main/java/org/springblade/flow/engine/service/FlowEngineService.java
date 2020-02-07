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
package org.springblade.flow.engine.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springblade.flow.core.entity.BladeFlow;
import org.springblade.flow.engine.entity.FlowExecution;
import org.springblade.flow.engine.entity.FlowModel;
import org.springblade.flow.engine.entity.FlowProcess;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * FlowEngineService
 *
 * @author Chill
 */
public interface FlowEngineService extends IService<FlowModel> {

	/**
	 * 自定义分页
	 *
	 * @param page      分页工具
	 * @param flowModel 流程模型
	 * @return
	 */
	IPage<FlowModel> selectFlowPage(IPage<FlowModel> page, FlowModel flowModel);

	/**
	 * 流程管理列表
	 *
	 * @param page     分页工具
	 * @param category 分类
	 * @param mode     形态
	 * @return
	 */
	IPage<FlowProcess> selectProcessPage(IPage<FlowProcess> page, String category, Integer mode);

	/**
	 * 流程管理列表
	 *
	 * @param page                 分页工具
	 * @param processInstanceId    流程实例id
	 * @param processDefinitionKey 流程key
	 * @return
	 */
	IPage<FlowExecution> selectFollowPage(IPage<FlowExecution> page, String processInstanceId, String processDefinitionKey);

	/**
	 * 获取流转历史列表
	 *
	 * @param processInstanceId 流程实例id
	 * @param startActivityId   开始节点id
	 * @param endActivityId     结束节点id
	 * @return
	 */
	List<BladeFlow> historyFlowList(String processInstanceId, String startActivityId, String endActivityId);

	/**
	 * 变更流程状态
	 *
	 * @param state     状态
	 * @param processId 流程ID
	 * @return
	 */
	String changeState(String state, String processId);

	/**
	 * 删除部署流程
	 *
	 * @param deploymentIds 部署流程id集合
	 * @return
	 */
	boolean deleteDeployment(String deploymentIds);

	/**
	 * 上传部署流程
	 *
	 * @param files        流程配置文件
	 * @param category     流程分类
	 * @param tenantIdList 租户id集合
	 * @return
	 */
	boolean deployUpload(List<MultipartFile> files, String category, List<String> tenantIdList);

	/**
	 * 部署流程
	 *
	 * @param modelId      模型id
	 * @param category     分类
	 * @param tenantIdList 租户id集合
	 * @return
	 */
	boolean deployModel(String modelId, String category, List<String> tenantIdList);

	/**
	 * 删除流程实例
	 *
	 * @param processInstanceId 流程实例id
	 * @param deleteReason      删除原因
	 * @return
	 */
	boolean deleteProcessInstance(String processInstanceId, String deleteReason);
}
