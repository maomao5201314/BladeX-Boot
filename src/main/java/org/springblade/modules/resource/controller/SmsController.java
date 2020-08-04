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
package org.springblade.modules.resource.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.github.xiaoymin.knife4j.annotations.ApiOperationSupport;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.AllArgsConstructor;
import org.springblade.core.boot.ctrl.BladeController;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.mp.support.Query;
import org.springblade.core.secure.annotation.PreAuth;
import org.springblade.core.tenant.annotation.NonDS;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.constant.RoleConstant;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.resource.entity.Sms;
import org.springblade.modules.resource.service.ISmsService;
import org.springblade.modules.resource.vo.SmsVO;
import org.springblade.modules.resource.wrapper.SmsWrapper;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.Valid;

import static org.springblade.core.cache.constant.CacheConstant.RESOURCE_CACHE;

/**
 * 短信配置表 控制器
 *
 * @author BladeX
 */
@NonDS
@ApiIgnore
@RestController
@AllArgsConstructor
@RequestMapping(AppConstant.APPLICATION_RESOURCE_NAME + "/sms")
@PreAuth(RoleConstant.HAS_ROLE_ADMIN)
@Api(value = "短信配置表", tags = "短信配置表接口")
public class SmsController extends BladeController {

	private final ISmsService smsService;

	/**
	 * 详情
	 */
	@GetMapping("/detail")
	@ApiOperationSupport(order = 1)
	@ApiOperation(value = "详情", notes = "传入sms")
	public R<SmsVO> detail(Sms sms) {
		Sms detail = smsService.getOne(Condition.getQueryWrapper(sms));
		return R.data(SmsWrapper.build().entityVO(detail));
	}

	/**
	 * 分页 短信配置表
	 */
	@GetMapping("/list")
	@ApiOperationSupport(order = 2)
	@ApiOperation(value = "分页", notes = "传入sms")
	public R<IPage<SmsVO>> list(Sms sms, Query query) {
		IPage<Sms> pages = smsService.page(Condition.getPage(query), Condition.getQueryWrapper(sms));
		return R.data(SmsWrapper.build().pageVO(pages));
	}


	/**
	 * 自定义分页 短信配置表
	 */
	@GetMapping("/page")
	@ApiOperationSupport(order = 3)
	@ApiOperation(value = "分页", notes = "传入sms")
	public R<IPage<SmsVO>> page(SmsVO sms, Query query) {
		IPage<SmsVO> pages = smsService.selectSmsPage(Condition.getPage(query), sms);
		return R.data(pages);
	}

	/**
	 * 新增 短信配置表
	 */
	@PostMapping("/save")
	@ApiOperationSupport(order = 4)
	@ApiOperation(value = "新增", notes = "传入sms")
	public R save(@Valid @RequestBody Sms sms) {
		CacheUtil.clear(RESOURCE_CACHE);
		return R.status(smsService.save(sms));
	}

	/**
	 * 修改 短信配置表
	 */
	@PostMapping("/update")
	@ApiOperationSupport(order = 5)
	@ApiOperation(value = "修改", notes = "传入sms")
	public R update(@Valid @RequestBody Sms sms) {
		CacheUtil.clear(RESOURCE_CACHE);
		return R.status(smsService.updateById(sms));
	}

	/**
	 * 新增或修改 短信配置表
	 */
	@PostMapping("/submit")
	@ApiOperationSupport(order = 6)
	@ApiOperation(value = "新增或修改", notes = "传入sms")
	public R submit(@Valid @RequestBody Sms sms) {
		CacheUtil.clear(RESOURCE_CACHE);
		return R.status(smsService.submit(sms));
	}


	/**
	 * 删除 短信配置表
	 */
	@PostMapping("/remove")
	@ApiOperationSupport(order = 7)
	@ApiOperation(value = "逻辑删除", notes = "传入ids")
	public R remove(@ApiParam(value = "主键集合", required = true) @RequestParam String ids) {
		CacheUtil.clear(RESOURCE_CACHE);
		return R.status(smsService.deleteLogic(Func.toLongList(ids)));
	}

	/**
	 * 启用
	 */
	@PostMapping("/enable")
	@ApiOperationSupport(order = 8)
	@ApiOperation(value = "配置启用", notes = "传入id")
	public R enable(@ApiParam(value = "主键", required = true) @RequestParam Long id) {
		CacheUtil.clear(RESOURCE_CACHE);
		return R.status(smsService.enable(id));
	}


}
