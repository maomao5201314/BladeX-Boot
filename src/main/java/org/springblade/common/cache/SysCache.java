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
package org.springblade.common.cache;

import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.tool.utils.SpringUtil;
import org.springblade.core.tool.utils.StringPool;
import org.springblade.modules.system.entity.*;
import org.springblade.modules.system.service.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static org.springblade.core.cache.constant.CacheConstant.SYS_CACHE;

/**
 * 系统缓存
 *
 * @author Chill
 */
public class SysCache {
	private static final String MENU_ID = "menu:id:";
	private static final String DEPT_ID = "dept:id:";
	private static final String DEPT_NAME = "dept:name:";
	private static final String DEPT_NAME_ID = "deptName:id:";
	private static final String DEPT_NAMES_ID = "deptNames:id:";
	private static final String DEPT_CHILD_ID = "deptChild:id:";
	private static final String DEPT_CHILDIDS_ID = "deptChildIds:id:";
	private static final String POST_ID = "post:id:";
	private static final String POST_NAME = "post:name:";
	private static final String POST_NAME_ID = "postName:id:";
	private static final String POST_NAMES_ID = "postNames:id:";
	private static final String ROLE_ID = "role:id:";
	private static final String ROLE_NAME = "role:name:";
	private static final String ROLE_NAME_ID = "roleName:id:";
	private static final String ROLE_NAMES_ID = "roleNames:id:";
	private static final String ROLE_ALIAS_ID = "roleAlias:id:";
	private static final String ROLE_ALIASES_ID = "roleAliases:id:";
	private static final String TENANT_ID = "tenant:id:";
	private static final String TENANT_TENANT_ID = "tenant:tenantId:";

	private static final IMenuService menuService;
	private static final IDeptService deptService;
	private static final IPostService postService;
	private static final IRoleService roleService;
	private static final ITenantService tenantService;

	static {
		menuService = SpringUtil.getBean(IMenuService.class);
		deptService = SpringUtil.getBean(IDeptService.class);
		postService = SpringUtil.getBean(IPostService.class);
		roleService = SpringUtil.getBean(IRoleService.class);
		tenantService = SpringUtil.getBean(ITenantService.class);
	}

	/**
	 * 获取菜单
	 *
	 * @param id 主键
	 * @return
	 */
	public static Menu getMenu(Long id) {
		return CacheUtil.get(SYS_CACHE, MENU_ID, id, () -> menuService.getById(id));
	}

	/**
	 * 获取部门
	 *
	 * @param id 主键
	 * @return
	 */
	public static Dept getDept(Long id) {
		return CacheUtil.get(SYS_CACHE, DEPT_ID, id, () -> deptService.getById(id));
	}

	/**
	 * 获取部门id
	 *
	 * @param tenantId  租户id
	 * @param deptNames 部门名
	 * @return
	 */
	public static String getDeptIds(String tenantId, String deptNames) {
		return CacheUtil.get(SYS_CACHE, DEPT_NAME, tenantId + StringPool.DASH + deptNames, () -> deptService.getDeptIds(tenantId, deptNames));
	}

	/**
	 * 获取部门名
	 *
	 * @param id 主键
	 * @return 部门名
	 */
	public static String getDeptName(Long id) {
		return CacheUtil.get(SYS_CACHE, DEPT_NAME_ID, id, () -> deptService.getById(id).getDeptName());
	}


	/**
	 * 获取部门名集合
	 *
	 * @param deptIds 主键集合
	 * @return 部门名
	 */
	public static List<String> getDeptNames(String deptIds) {
		return CacheUtil.get(SYS_CACHE, DEPT_NAMES_ID, deptIds, () -> deptService.getDeptNames(deptIds));
	}

	/**
	 * 获取子部门集合
	 *
	 * @param deptId 主键
	 * @return 子部门
	 */
	public static List<Dept> getDeptChild(Long deptId) {
		return CacheUtil.get(SYS_CACHE, DEPT_CHILD_ID, deptId, () -> deptService.getDeptChild(deptId));
	}

	/**
	 * 获取子部门ID集合
	 *
	 * @param deptId 主键
	 * @return 子部门ID
	 */
	public static List<Long> getDeptChildIds(Long deptId) {
		if (deptId == null) {
			return null;
		}
		List<Long> deptIdList = CacheUtil.get(SYS_CACHE, DEPT_CHILDIDS_ID, deptId, List.class);
		if (deptIdList == null) {
			deptIdList = new ArrayList<>();
			List<Dept> deptChild = getDeptChild(deptId);
			if (deptChild != null) {
				List<Long> collect = deptChild.stream().map(Dept::getId).collect(Collectors.toList());
				deptIdList.addAll(collect);
			}
			deptIdList.add(deptId);
			CacheUtil.put(SYS_CACHE, DEPT_CHILDIDS_ID, deptId, deptIdList);
		}
		return deptIdList;
	}

	/**
	 * 获取岗位
	 *
	 * @param id 主键
	 * @return
	 */
	public static Post getPost(Long id) {
		return CacheUtil.get(SYS_CACHE, POST_ID, id, () -> postService.getById(id));
	}

	/**
	 * 获取岗位id
	 *
	 * @param tenantId  租户id
	 * @param postNames 岗位名
	 * @return
	 */
	public static String getPostIds(String tenantId, String postNames) {
		return CacheUtil.get(SYS_CACHE, POST_NAME, tenantId + StringPool.DASH + postNames, () -> postService.getPostIds(tenantId, postNames));
	}

	/**
	 * 获取岗位名
	 *
	 * @param id 主键
	 * @return 岗位名
	 */
	public static String getPostName(Long id) {
		return CacheUtil.get(SYS_CACHE, POST_NAME_ID, id, () -> postService.getById(id).getPostName());
	}

	/**
	 * 获取岗位名集合
	 *
	 * @param postIds 主键集合
	 * @return 岗位名
	 */
	public static List<String> getPostNames(String postIds) {
		return CacheUtil.get(SYS_CACHE, POST_NAMES_ID, postIds, () -> postService.getPostNames(postIds));
	}

	/**
	 * 获取角色
	 *
	 * @param id 主键
	 * @return Role
	 */
	public static Role getRole(Long id) {
		return CacheUtil.get(SYS_CACHE, ROLE_ID, id, () -> roleService.getById(id));
	}

	/**
	 * 获取角色id
	 *
	 * @param tenantId  租户id
	 * @param roleNames 角色名
	 * @return
	 */
	public static String getRoleIds(String tenantId, String roleNames) {
		return CacheUtil.get(SYS_CACHE, ROLE_NAME, tenantId + StringPool.DASH + roleNames, () -> roleService.getRoleIds(tenantId, roleNames));
	}

	/**
	 * 获取角色名
	 *
	 * @param id 主键
	 * @return 角色名
	 */
	public static String getRoleName(Long id) {
		return CacheUtil.get(SYS_CACHE, ROLE_NAME_ID, id, () -> roleService.getById(id).getRoleName());
	}

	/**
	 * 获取角色名集合
	 *
	 * @param roleIds 主键集合
	 * @return 角色名
	 */
	public static List<String> getRoleNames(String roleIds) {
		return CacheUtil.get(SYS_CACHE, ROLE_NAMES_ID, roleIds, () -> roleService.getRoleNames(roleIds));
	}

	/**
	 * 获取角色别名
	 *
	 * @param id 主键
	 * @return 角色别名
	 */
	public static String getRoleAlias(Long id) {
		return CacheUtil.get(SYS_CACHE, ROLE_ALIAS_ID, id, () -> roleService.getById(id).getRoleAlias());
	}

	/**
	 * 获取角色别名集合
	 *
	 * @param roleIds 主键集合
	 * @return 角色别名
	 */
	public static List<String> getRoleAliases(String roleIds) {
		return CacheUtil.get(SYS_CACHE, ROLE_ALIASES_ID, roleIds, () -> roleService.getRoleAliases(roleIds));
	}

	/**
	 * 获取租户
	 *
	 * @param id 主键
	 * @return Tenant
	 */
	public static Tenant getTenant(Long id) {
		return CacheUtil.get(SYS_CACHE, TENANT_ID, id, () -> tenantService.getById(id));
	}

	/**
	 * 获取租户
	 *
	 * @param tenantId 租户id
	 * @return Tenant
	 */
	public static Tenant getTenant(String tenantId) {
		return CacheUtil.get(SYS_CACHE, TENANT_TENANT_ID, tenantId, () -> tenantService.getByTenantId(tenantId));
	}

}
