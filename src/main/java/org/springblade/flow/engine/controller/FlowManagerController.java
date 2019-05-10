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

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.AllArgsConstructor;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.mp.support.Query;
import org.springblade.core.secure.annotation.PreAuth;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.constant.RoleConstant;
import org.springblade.core.tool.support.Kv;
import org.springblade.flow.engine.constant.FlowEngineConstant;
import org.springblade.flow.engine.entity.FlowProcess;
import org.springblade.flow.engine.service.FlowEngineService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import springfox.documentation.annotations.ApiIgnore;

import java.util.List;
import java.util.Objects;

/**
 * 流程管理接口
 *
 * @author Chill
 */
@RestController
@RequestMapping(AppConstant.APPLICATION_FLOW_NAME + "/manager")
@AllArgsConstructor
@Api(value = "流程管理接口", tags = "流程管理接口")
@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
@ApiIgnore
public class FlowManagerController {

	private FlowEngineService flowEngineService;

	/**
	 * 分页
	 */
	@GetMapping("list")
	@ApiOperation(value = "分页", notes = "传入流程类型", position = 1)
	public R<IPage<FlowProcess>> list(@ApiParam("流程类型") String category, Query query) {
		IPage<FlowProcess> pages = flowEngineService.selectProcessPage(Condition.getPage(query), category);
		return R.data(pages);
	}

	/**
	 * 变更流程状态
	 *
	 * @param state     状态
	 * @param processId 流程id
	 */
	@PostMapping("change-state")
	@ApiOperation(value = "变更流程状态", notes = "传入state,processId", position = 2)
	public R changeState(@RequestParam String state, @RequestParam String processId) {
		String msg = flowEngineService.changeState(state, processId);
		return R.success(msg);
	}

	/**
	 * 删除部署流程
	 *
	 * @param deploymentIds 部署流程id集合
	 */
	@PostMapping("delete-deployment")
	@ApiOperation(value = "删除部署流程", notes = "部署流程id集合", position = 3)
	public R deleteDeployment(String deploymentIds) {
		return R.status(flowEngineService.deleteDeployment(deploymentIds));
	}

	/**
	 * 检查流程文件格式
	 *
	 * @param file    流程文件
	 */
	@PostMapping("check-upload")
	@ApiOperation(value = "上传部署流程文件", notes = "传入文件", position = 4)
	public R checkUpload(@RequestParam MultipartFile file) {
		boolean temp = Objects.requireNonNull(file.getOriginalFilename()).endsWith(FlowEngineConstant.SUFFIX);
		return R.data(Kv.create().set("name", file.getOriginalFilename()).set("success", temp));
	}

	/**
	 * 上传部署流程文件
	 *
	 * @param files    流程文件
	 * @param category 类型
	 */
	@PostMapping("deploy-upload")
	@ApiOperation(value = "上传部署流程文件", notes = "传入文件", position = 5)
	public R deployUpload(@RequestParam List<MultipartFile> files, @RequestParam String category) {
		return R.status(flowEngineService.deployUpload(files, category));
	}

}
