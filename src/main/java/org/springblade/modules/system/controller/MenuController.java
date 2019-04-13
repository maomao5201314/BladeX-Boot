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

import io.swagger.annotations.*;
import lombok.AllArgsConstructor;
import org.springblade.core.boot.ctrl.BladeController;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.secure.BladeUser;
import org.springblade.core.secure.annotation.PreAuth;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.constant.RoleConstant;
import org.springblade.core.tool.support.Kv;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.Menu;
import org.springblade.modules.system.service.IDictService;
import org.springblade.modules.system.service.IMenuService;
import org.springblade.modules.system.vo.MenuVO;
import org.springblade.modules.system.wrapper.MenuWrapper;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

import static org.springblade.common.cache.CacheNames.AUTH_ROUTES;

/**
 * 控制器
 *
 * @author Chill
 */
@ApiIgnore
@RestController
@AllArgsConstructor
@RequestMapping("/blade-system/menu")
@Api(value = "菜单", tags = "菜单")
@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
public class MenuController extends BladeController {

	private IMenuService menuService;

	private IDictService dictService;

	/**
	 * 详情
	 */
	@GetMapping("/detail")
	@ApiOperation(value = "详情", notes = "传入menu", position = 1)
	public R<MenuVO> detail(Menu menu) {
		Menu detail = menuService.getOne(Condition.getQueryWrapper(menu));
		MenuWrapper menuWrapper = new MenuWrapper(menuService, dictService);
		return R.data(menuWrapper.entityVO(detail));
	}

	/**
	 * 列表
	 */
	@GetMapping("/list")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "code", value = "菜单编号", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "name", value = "菜单名称", paramType = "query", dataType = "string")
	})
	@ApiOperation(value = "列表", notes = "传入menu", position = 2)
	public R<List<MenuVO>> list(@ApiIgnore @RequestParam Map<String, Object> menu) {
		@SuppressWarnings("unchecked")
		List<Menu> list = menuService.list(Condition.getQueryWrapper(menu, Menu.class).lambda().orderByAsc(Menu::getSort));
		MenuWrapper menuWrapper = new MenuWrapper(menuService, dictService);
		return R.data(menuWrapper.listNodeVO(list));
	}

	/**
	 * 前端菜单数据
	 */
	@GetMapping("/routes")
	@ApiOperation(value = "前端菜单数据", notes = "前端菜单数据", position = 3)
	public R<List<MenuVO>> routes(BladeUser user) {
		List<MenuVO> list = menuService.routes(user.getRoleId());
		return R.data(list);
	}

	/**
	 * 前端按钮数据
	 */
	@GetMapping("/buttons")
	@ApiOperation(value = "前端按钮数据", notes = "前端按钮数据", position = 4)
	public R<List<MenuVO>> buttons(BladeUser user) {
		List<MenuVO> list = menuService.buttons(user.getRoleId());
		return R.data(list);
	}

	/**
	 * 获取菜单树形结构
	 */
	@GetMapping("/tree")
	@ApiOperation(value = "树形结构", notes = "树形结构", position = 5)
	public R<List<MenuVO>> tree() {
		List<MenuVO> tree = menuService.tree();
		return R.data(tree);
	}

	/**
	 * 获取权限分配树形结构
	 */
	@GetMapping("/grant-tree")
	@ApiOperation(value = "权限分配树形结构", notes = "权限分配树形结构", position = 6)
	public R<List<MenuVO>> grantTree(BladeUser user) {
		return R.data(menuService.grantTree(user));
	}

	/**
	 * 获取权限分配树形结构
	 */
	@GetMapping("/role-tree-keys")
	@ApiOperation(value = "角色所分配的树", notes = "角色所分配的树", position = 7)
	public R<List<String>> roleTreeKeys(String roleIds) {
		return R.data(menuService.roleTreeKeys(roleIds));
	}

	/**
	 * 新增或修改
	 */
	@PostMapping("/submit")
	@CacheEvict(cacheNames = {AUTH_ROUTES})
	@ApiOperation(value = "新增或修改", notes = "传入menu", position = 8)
	public R submit(@Valid @RequestBody Menu menu) {
		return R.status(menuService.saveOrUpdate(menu));
	}


	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@CacheEvict(cacheNames = {AUTH_ROUTES})
	@ApiOperation(value = "删除", notes = "传入ids", position = 9)
	public R remove(@ApiParam(value = "主键集合", required = true) @RequestParam String ids) {
		return R.status(menuService.removeByIds(Func.toIntList(ids)));
	}

	/**
	 * 获取配置的角色权限
	 */
	@GetMapping("auth-routes")
	@ApiOperation(value = "菜单的角色权限", position = 8)
	public R<List<Kv>> authRoutes(BladeUser user) {
		if (Func.isEmpty(user)) {
			return null;
		}
		return R.data(menuService.authRoutes(user));
	}

}
