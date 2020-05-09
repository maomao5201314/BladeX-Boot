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


import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.springblade.core.mp.base.BaseService;
import org.springblade.modules.system.entity.User;
import org.springblade.modules.system.entity.UserInfo;
import org.springblade.modules.system.entity.UserOauth;
import org.springblade.modules.system.excel.UserExcel;

import java.util.List;

/**
 * 服务类
 *
 * @author Chill
 */
public interface IUserService extends BaseService<User> {

	/**
	 * 新增用户
	 *
	 * @param user
	 * @return
	 */
	boolean submit(User user);

	/**
	 * 修改用户
	 *
	 * @param user
	 * @return
	 */
	boolean updateUser(User user);

	/**
	 * 修改用户基本信息
	 *
	 * @param user
	 * @return
	 */
	boolean updateUserInfo(User user);

	/**
	 * 自定义分页
	 *
	 * @param page
	 * @param user
	 * @param deptId
	 * @param tenantId
	 * @return
	 */
	IPage<User> selectUserPage(IPage<User> page, User user, Long deptId, String tenantId);

	/**
	 * 根据账号获取用户
	 *
	 * @param tenantId
	 * @param account
	 * @return
	 */
	User userByAccount(String tenantId, String account);

	/**
	 * 用户信息
	 *
	 * @param userId
	 * @return
	 */
	UserInfo userInfo(Long userId);

	/**
	 * 用户信息
	 *
	 * @param tenantId
	 * @param account
	 * @param password
	 * @return
	 */
	UserInfo userInfo(String tenantId, String account, String password);

	/**
	 * 用户信息
	 *
	 * @param userOauth
	 * @return
	 */
	UserInfo userInfo(UserOauth userOauth);

	/**
	 * 给用户设置角色
	 *
	 * @param userIds
	 * @param roleIds
	 * @return
	 */
	boolean grant(String userIds, String roleIds);

	/**
	 * 初始化密码
	 *
	 * @param userIds
	 * @return
	 */
	boolean resetPassword(String userIds);

	/**
	 * 修改密码
	 *
	 * @param userId
	 * @param oldPassword
	 * @param newPassword
	 * @param newPassword1
	 * @return
	 */
	boolean updatePassword(Long userId, String oldPassword, String newPassword, String newPassword1);

	/**
	 * 删除用户
	 *
	 * @param userIds
	 * @return
	 */
	boolean removeUser(String userIds);

	/**
	 * 导入用户数据
	 *
	 * @param data
	 * @param isCovered
	 * @return
	 */
	void importUser(List<UserExcel> data, Boolean isCovered);

	/**
	 * 导出用户数据
	 *
	 * @param queryWrapper
	 * @return
	 */
	List<UserExcel> exportUser(Wrapper<User> queryWrapper);

	/**
	 * 注册用户
	 *
	 * @param user
	 * @param oauthId
	 * @return
	 */
	boolean registerGuest(User user, Long oauthId);
}
