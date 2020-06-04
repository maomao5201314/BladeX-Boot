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
package org.springblade.modules.system.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springblade.core.log.exception.ServiceException;
import org.springblade.core.secure.utils.AuthUtil;
import org.springblade.core.tool.constant.BladeConstant;
import org.springblade.core.tool.constant.RoleConstant;
import org.springblade.core.tool.node.ForestNodeMerger;
import org.springblade.core.tool.utils.CollectionUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.Role;
import org.springblade.modules.system.entity.RoleMenu;
import org.springblade.modules.system.entity.RoleScope;
import org.springblade.modules.system.mapper.RoleMapper;
import org.springblade.modules.system.service.IRoleMenuService;
import org.springblade.modules.system.service.IRoleScopeService;
import org.springblade.modules.system.service.IRoleService;
import org.springblade.modules.system.vo.RoleVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import static org.springblade.common.constant.CommonConstant.API_SCOPE_CATEGORY;
import static org.springblade.common.constant.CommonConstant.DATA_SCOPE_CATEGORY;

/**
 * 服务实现类
 *
 * @author Chill
 */
@Service
@Validated
@AllArgsConstructor
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

	private final IRoleMenuService roleMenuService;
	private final IRoleScopeService roleScopeService;

	@Override
	public IPage<RoleVO> selectRolePage(IPage<RoleVO> page, RoleVO role) {
		return page.setRecords(baseMapper.selectRolePage(page, role));
	}

	@Override
	public List<RoleVO> tree(String tenantId) {
		String userRole = AuthUtil.getUserRole();
		String excludeRole = null;
		if (!CollectionUtil.contains(Func.toStrArray(userRole), RoleConstant.ADMIN) && !CollectionUtil.contains(Func.toStrArray(userRole), RoleConstant.ADMINISTRATOR)) {
			excludeRole = RoleConstant.ADMIN;
		}
		return ForestNodeMerger.merge(baseMapper.tree(tenantId, excludeRole));
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean grant(@NotEmpty List<Long> roleIds, List<Long> menuIds, List<Long> dataScopeIds, List<Long> apiScopeIds) {
		return grantRoleMenu(roleIds, menuIds) && grantDataScope(roleIds, dataScopeIds) && grantApiScope(roleIds, apiScopeIds);
	}

	private boolean grantRoleMenu(List<Long> roleIds, List<Long> menuIds) {
		// 删除角色配置的菜单集合
		roleMenuService.remove(Wrappers.<RoleMenu>update().lambda().in(RoleMenu::getRoleId, roleIds));
		// 组装配置
		List<RoleMenu> roleMenus = new ArrayList<>();
		roleIds.forEach(roleId -> menuIds.forEach(menuId -> {
			RoleMenu roleMenu = new RoleMenu();
			roleMenu.setRoleId(roleId);
			roleMenu.setMenuId(menuId);
			roleMenus.add(roleMenu);
		}));
		// 新增配置
		roleMenuService.saveBatch(roleMenus);
		// 递归设置下属角色菜单集合
		recursionRoleMenu(roleIds, menuIds);
		return true;
	}

	private void recursionRoleMenu(List<Long> roleIds, List<Long> menuIds) {
		roleIds.forEach(roleId -> baseMapper.selectList(Wrappers.<Role>query().lambda().eq(Role::getParentId, roleId)).forEach(role -> {
			List<RoleMenu> roleMenuList = roleMenuService.list(Wrappers.<RoleMenu>query().lambda().eq(RoleMenu::getRoleId, role.getId()));
			// 子节点过滤出父节点删除的菜单集合
			List<Long> collectRoleMenuIds = roleMenuList.stream().map(RoleMenu::getMenuId).filter(menuId -> !menuIds.contains(menuId)).collect(Collectors.toList());
			if (collectRoleMenuIds.size() > 0) {
				// 删除子节点权限外的菜单集合
				roleMenuService.remove(Wrappers.<RoleMenu>update().lambda().eq(RoleMenu::getRoleId, role.getId()).in(RoleMenu::getMenuId, collectRoleMenuIds));
				// 递归设置下属角色菜单集合
				recursionRoleMenu(Collections.singletonList(role.getId()), menuIds);
			}
		}));
	}

	private boolean grantDataScope(List<Long> roleIds, List<Long> dataScopeIds) {
		// 删除角色配置的数据权限集合
		roleScopeService.remove(Wrappers.<RoleScope>update().lambda().eq(RoleScope::getScopeCategory, DATA_SCOPE_CATEGORY).in(RoleScope::getRoleId, roleIds));
		// 组装配置
		List<RoleScope> roleDataScopes = new ArrayList<>();
		roleIds.forEach(roleId -> dataScopeIds.forEach(scopeId -> {
			RoleScope roleScope = new RoleScope();
			roleScope.setScopeCategory(DATA_SCOPE_CATEGORY);
			roleScope.setRoleId(roleId);
			roleScope.setScopeId(scopeId);
			roleDataScopes.add(roleScope);
		}));
		// 新增配置
		roleScopeService.saveBatch(roleDataScopes);
		return true;
	}

	private boolean grantApiScope(List<Long> roleIds, List<Long> apiScopeIds) {
		// 删除角色配置的接口权限集合
		roleScopeService.remove(Wrappers.<RoleScope>update().lambda().eq(RoleScope::getScopeCategory, API_SCOPE_CATEGORY).in(RoleScope::getRoleId, roleIds));
		// 组装配置
		List<RoleScope> roleApiScopes = new ArrayList<>();
		roleIds.forEach(roleId -> apiScopeIds.forEach(scopeId -> {
			RoleScope roleScope = new RoleScope();
			roleScope.setScopeCategory(API_SCOPE_CATEGORY);
			roleScope.setScopeId(scopeId);
			roleScope.setRoleId(roleId);
			roleApiScopes.add(roleScope);
		}));
		// 新增配置
		roleScopeService.saveBatch(roleApiScopes);
		return true;
	}

	@Override
	public String getRoleIds(String tenantId, String roleNames) {
		List<Role> roleList = baseMapper.selectList(Wrappers.<Role>query().lambda().eq(Role::getTenantId, tenantId).in(Role::getRoleName, Func.toStrList(roleNames)));
		if (roleList != null && roleList.size() > 0) {
			return roleList.stream().map(role -> Func.toStr(role.getId())).distinct().collect(Collectors.joining(","));
		}
		return null;
	}

	@Override
	public List<String> getRoleNames(String roleIds) {
		return baseMapper.getRoleNames(Func.toLongArray(roleIds));
	}

	@Override
	public List<String> getRoleAliases(String roleIds) {
		return baseMapper.getRoleAliases(Func.toLongArray(roleIds));
	}

	@Override
	public boolean submit(Role role) {
		if (!AuthUtil.isAdministrator()) {
			if (Func.toStr(role.getRoleAlias()).equals(RoleConstant.ADMINISTRATOR)) {
				throw new ServiceException("无权限创建超管角色！");
			}
		}
		if (Func.isEmpty(role.getId())) {
			role.setTenantId(AuthUtil.getTenantId());
		}
		if (Func.isEmpty(role.getParentId())) {
			role.setParentId(BladeConstant.TOP_PARENT_ID);
		}
		role.setIsDeleted(BladeConstant.DB_NOT_DELETED);
		return saveOrUpdate(role);
	}

}
