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
import com.github.xiaoymin.knife4j.annotations.ApiOperationSupport;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.AllArgsConstructor;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.mp.support.Query;
import org.springblade.core.secure.annotation.PreAuth;
import org.springblade.core.tenant.annotation.NonDS;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.constant.RoleConstant;
import org.springblade.core.tool.utils.Func;
import org.springblade.flow.engine.entity.FlowModel;
import org.springblade.flow.engine.service.FlowEngineService;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import java.util.Map;

/**
 * 流程模型控制器
 *
 * @author Chill
 */
@NonDS
@RestController
@RequestMapping(AppConstant.APPLICATION_FLOW_NAME + "/model")
@AllArgsConstructor
@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
@ApiIgnore
public class FlowModelController {

	private final FlowEngineService flowEngineService;

	/**
	 * 分页
	 */
	@GetMapping("/list")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "modelKey", value = "模型标识", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "name", value = "模型名称", paramType = "query", dataType = "string")
	})
	@ApiOperationSupport(order = 1)
	@ApiOperation(value = "分页", notes = "传入notice")
	public R<IPage<FlowModel>> list(@ApiIgnore @RequestParam Map<String, Object> flow, Query query) {
		IPage<FlowModel> pages = flowEngineService.page(Condition.getPage(query), Condition.getQueryWrapper(flow, FlowModel.class)
			.select("id,model_key modelKey,name,description,version,created,last_updated lastUpdated")
			.orderByDesc("last_updated"));
		return R.data(pages);
	}

	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@ApiOperationSupport(order = 2)
	@ApiOperation(value = "删除", notes = "传入主键集合")
	public R remove(@ApiParam(value = "主键集合") @RequestParam String ids) {
		boolean temp = flowEngineService.removeByIds(Func.toStrList(ids));
		return R.status(temp);
	}

	/**
	 * 部署
	 */
	@PostMapping("/deploy")
	@ApiOperationSupport(order = 3)
	@ApiOperation(value = "部署", notes = "传入模型id和分类")
	public R deploy(@ApiParam(value = "模型id") @RequestParam String modelId,
					@ApiParam(value = "工作流分类") @RequestParam String category,
					@ApiParam(value = "租户ID") @RequestParam(required = false, defaultValue = "") String tenantIds) {
		boolean temp = flowEngineService.deployModel(modelId, category, Func.toStrList(tenantIds));
		return R.status(temp);
	}

	@PostMapping("submit")
	@ApiOperationSupport(order = 4)
	@ApiOperation(value = "保存/编辑")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "id", value = "模型id"),
		@ApiImplicitParam(name = "name", value = "模型名称", required = true),
		@ApiImplicitParam(name = "modelKey", value = "模型key", required = true),
		@ApiImplicitParam(name = "description", value = "模型描述"),
		@ApiImplicitParam(name = "xml", value = "模型xml", required = true),
	})
	public R<FlowModel> submit(@RequestBody @ApiIgnore FlowModel model) {
		return R.data(flowEngineService.submitModel(model));
	}

	@GetMapping("detail")
	@ApiOperation(value = "详情")
	@ApiOperationSupport(order = 5)
	@ApiImplicitParams({
		@ApiImplicitParam(name = "id", value = "模型id", required = true),
	})
	public R<FlowModel> detail(String id) {
		return R.data(flowEngineService.getById(id));
	}

}
