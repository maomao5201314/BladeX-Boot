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
package org.springblade.modules.system.service;


import org.springblade.core.mp.base.BaseService;
import org.springblade.modules.system.entity.User;

import java.util.List;

/**
 * 用户查询服务类
 *
 * @author Chill
 */
public interface IUserSearchService extends BaseService<User> {

	/**
	 * 根据用户ID查询用户列表
	 *
	 * @param userId 用户ID
	 * @return 用户列表
	 */
	List<User> listByUser(List<Long> userId);

	/**
	 * 根据部门ID查询用户列表
	 *
	 * @param deptId 部门ID
	 * @return 用户列表
	 */
	List<User> listByDept(List<Long> deptId);

	/**
	 * 根据岗位ID查询用户列表
	 *
	 * @param postId 岗位ID
	 * @return 用户列表
	 */
	List<User> listByPost(List<Long> postId);

	/**
	 * 根据角色ID查询用户列表
	 *
	 * @param roleId 角色ID
	 * @return 用户列表
	 */
	List<User> listByRole(List<Long> roleId);

}
