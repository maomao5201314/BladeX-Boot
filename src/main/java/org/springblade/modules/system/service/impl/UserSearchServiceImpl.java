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


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.AllArgsConstructor;
import org.springblade.core.mp.base.BaseServiceImpl;
import org.springblade.modules.system.entity.User;
import org.springblade.modules.system.mapper.UserMapper;
import org.springblade.modules.system.service.IUserSearchService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户查询服务实现类
 *
 * @author Chill
 */
@Service
@AllArgsConstructor
public class UserSearchServiceImpl extends BaseServiceImpl<UserMapper, User> implements IUserSearchService {

	@Override
	public List<User> listByUser(List<Long> userId) {
		return this.list(Wrappers.<User>lambdaQuery().in(User::getId, userId));
	}

	@Override
	public List<User> listByDept(List<Long> deptId) {
		LambdaQueryWrapper<User> queryWrapper = Wrappers.lambdaQuery();
		deptId.forEach(id -> queryWrapper.like(User::getDeptId, id).or());
		return this.list(queryWrapper);
	}

	@Override
	public List<User> listByPost(List<Long> postId) {
		LambdaQueryWrapper<User> queryWrapper = Wrappers.lambdaQuery();
		postId.forEach(id -> queryWrapper.like(User::getPostId, id).or());
		return this.list(queryWrapper);
	}

	@Override
	public List<User> listByRole(List<Long> roleId) {
		LambdaQueryWrapper<User> queryWrapper = Wrappers.lambdaQuery();
		roleId.forEach(id -> queryWrapper.like(User::getRoleId, id).or());
		return this.list(queryWrapper);
	}
}
