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
package org.springblade.flow.core.utils;

import org.springblade.core.secure.utils.AuthUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.StringUtil;

import static org.springblade.core.launch.constant.FlowConstant.TASK_USR_PREFIX;

/**
 * 工作流任务工具类
 *
 * @author Chill
 */
public class TaskUtil {

	/**
	 * 获取任务用户格式
	 *
	 * @return taskUser
	 */
	public static String getTaskUser() {
		return StringUtil.format("{}{}", TASK_USR_PREFIX, AuthUtil.getUserId());
	}

	/**
	 * 获取任务用户格式
	 *
	 * @param userId 用户id
	 * @return taskUser
	 */
	public static String getTaskUser(String userId) {
		return StringUtil.format("{}{}", TASK_USR_PREFIX, userId);
	}


	/**
	 * 获取用户主键
	 *
	 * @param taskUser 任务用户
	 * @return userId
	 */
	public static Long getUserId(String taskUser) {
		return Func.toLong(StringUtil.removePrefix(taskUser, TASK_USR_PREFIX));
	}

	/**
	 * 获取用户组格式
	 *
	 * @return candidateGroup
	 */
	public static String getCandidateGroup() {
		return AuthUtil.getUserRole();
	}

}
