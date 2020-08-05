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
package org.springblade.modules.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.github.xiaoymin.knife4j.annotations.ApiOperationSupport;
import io.swagger.annotations.*;
import lombok.AllArgsConstructor;
import org.springblade.core.boot.ctrl.BladeController;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.mp.support.Query;
import org.springblade.core.secure.BladeUser;
import org.springblade.core.secure.annotation.PreAuth;
import org.springblade.core.tenant.annotation.NonDS;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.constant.BladeConstant;
import org.springblade.core.tool.constant.RoleConstant;
import org.springblade.core.tool.support.Kv;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.Tenant;
import org.springblade.modules.system.service.ITenantService;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.Map;

import static org.springblade.core.tenant.constant.TenantBaseConstant.TENANT_DATASOURCE_CACHE;
import static org.springblade.core.tenant.constant.TenantBaseConstant.TENANT_DATASOURCE_EXIST_KEY;

/**
 * 控制器
 *
 * @author Chill
 */
@NonDS
@RestController
@AllArgsConstructor
@RequestMapping(AppConstant.APPLICATION_SYSTEM_NAME + "/tenant")
@Api(value = "租户管理", tags = "租户管理")
public class TenantController extends BladeController {

	private final ITenantService tenantService;

	/**
	 * 详情
	 */
	@GetMapping("/detail")
	@ApiOperationSupport(order = 1)
	@ApiOperation(value = "详情", notes = "传入tenant")
	@PreAuth(RoleConstant.HAS_ROLE_ADMIN)
	public R<Tenant> detail(Tenant tenant) {
		Tenant detail = tenantService.getOne(Condition.getQueryWrapper(tenant));
		return R.data(detail);
	}

	/**
	 * 分页
	 */
	@GetMapping("/list")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "tenantId", value = "参数名称", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "tenantName", value = "角色别名", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "contactNumber", value = "联系电话", paramType = "query", dataType = "string")
	})
	@ApiOperationSupport(order = 2)
	@ApiOperation(value = "分页", notes = "传入tenant")
	@PreAuth(RoleConstant.HAS_ROLE_ADMIN)
	public R<IPage<Tenant>> list(@ApiIgnore @RequestParam Map<String, Object> tenant, Query query, BladeUser bladeUser) {
		QueryWrapper<Tenant> queryWrapper = Condition.getQueryWrapper(tenant, Tenant.class);
		IPage<Tenant> pages = tenantService.page(Condition.getPage(query), (!bladeUser.getTenantId().equals(BladeConstant.ADMIN_TENANT_ID)) ? queryWrapper.lambda().eq(Tenant::getTenantId, bladeUser.getTenantId()) : queryWrapper);
		return R.data(pages);
	}

	/**
	 * 下拉数据源
	 */
	@GetMapping("/select")
	@ApiOperationSupport(order = 3)
	@ApiOperation(value = "下拉数据源", notes = "传入tenant")
	@PreAuth(RoleConstant.HAS_ROLE_ADMIN)
	public R<List<Tenant>> select(Tenant tenant, BladeUser bladeUser) {
		QueryWrapper<Tenant> queryWrapper = Condition.getQueryWrapper(tenant);
		List<Tenant> list = tenantService.list((!bladeUser.getTenantId().equals(BladeConstant.ADMIN_TENANT_ID)) ? queryWrapper.lambda().eq(Tenant::getTenantId, bladeUser.getTenantId()) : queryWrapper);
		return R.data(list);
	}

	/**
	 * 自定义分页
	 */
	@GetMapping("/page")
	@ApiOperationSupport(order = 4)
	@ApiOperation(value = "分页", notes = "传入tenant")
	@PreAuth(RoleConstant.HAS_ROLE_ADMIN)
	public R<IPage<Tenant>> page(Tenant tenant, Query query) {
		IPage<Tenant> pages = tenantService.selectTenantPage(Condition.getPage(query), tenant);
		return R.data(pages);
	}

	/**
	 * 新增或修改
	 */
	@PostMapping("/submit")
	@ApiOperationSupport(order = 5)
	@ApiOperation(value = "新增或修改", notes = "传入tenant")
	@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
	public R submit(@Valid @RequestBody Tenant tenant) {
		return R.status(tenantService.submitTenant(tenant));
	}


	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@ApiOperationSupport(order = 6)
	@ApiOperation(value = "逻辑删除", notes = "传入ids")
	@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
	public R remove(@ApiParam(value = "主键集合", required = true) @RequestParam String ids) {
		return R.status(tenantService.removeTenant(Func.toLongList(ids)));
	}

	/**
	 * 授权配置
	 */
	@PostMapping("/setting")
	@ApiOperationSupport(order = 7)
	@ApiOperation(value = "授权配置", notes = "传入ids,accountNumber,expireTime")
	@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
	public R setting(@ApiParam(value = "主键集合", required = true) @RequestParam String ids, @ApiParam(value = "账号额度") Integer accountNumber, @ApiParam(value = "过期时间") Date expireTime) {
		return R.status(tenantService.setting(accountNumber, expireTime, ids));
	}

	/**
	 * 数据源配置
	 */
	@PostMapping("datasource")
	@ApiOperationSupport(order = 8)
	@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
	@ApiOperation(value = "数据源配置", notes = "传入datasource_id")
	public R datasource(@ApiParam(value = "租户ID", required = true) @RequestParam String tenantId, @ApiParam(value = "数据源ID", required = true) @RequestParam Long datasourceId){
		CacheUtil.evict(TENANT_DATASOURCE_CACHE, TENANT_DATASOURCE_EXIST_KEY, tenantId, Boolean.FALSE);
		return R.status(tenantService.update(Wrappers.<Tenant>update().lambda().set(Tenant::getDatasourceId, datasourceId).eq(Tenant::getTenantId, tenantId)));
	}

	/**
	 * 根据名称查询列表
	 *
	 * @param name 租户名称
	 */
	@GetMapping("/find-by-name")
	@ApiOperationSupport(order = 9)
	@ApiOperation(value = "详情", notes = "传入tenant")
	@PreAuth(RoleConstant.HAS_ROLE_ADMIN)
	public R<List<Tenant>> findByName(String name) {
		List<Tenant> list = tenantService.list(Wrappers.<Tenant>query().lambda().like(Tenant::getTenantName, name));
		return R.data(list);
	}

	/**
	 * 根据域名查询信息
	 *
	 * @param domain 域名
	 */
	@GetMapping("/info")
	@ApiOperationSupport(order = 10)
	@ApiOperation(value = "配置信息", notes = "传入domain")
	public R<Kv> info(String domain) {
		Tenant tenant = tenantService.getOne(Wrappers.<Tenant>query().lambda().eq(Tenant::getDomain, domain));
		Kv kv = Kv.create();
		if (tenant != null) {
			kv.set("tenantId", tenant.getTenantId())
				.set("domain", tenant.getDomain())
				.set("backgroundUrl", tenant.getBackgroundUrl());
		}
		return R.data(kv);
	}


}
