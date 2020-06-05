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
package org.springblade.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 系统字典枚举类
 *
 * @author Chill
 */
@Getter
@AllArgsConstructor
public enum DictEnum {

	/**
	 * 性别
	 */
	SEX("sex"),
	/**
	 * 通知类型
	 */
	NOTICE("notice"),
	/**
	 * 菜单类型
	 */
	MENU_CATEGORY("menu_category"),
	/**
	 * 按钮功能
	 */
	BUTTON_FUNC("button_func"),
	/**
	 * 是否
	 */
	YES_NO("yes_no"),
	/**
	 * 流程类型
	 */
	FLOW("flow"),
	/**
	 * 机构类型
	 */
	ORG_CATEGORY("org_category"),
	/**
	 * 数据权限
	 */
	DATA_SCOPE_TYPE("data_scope_type"),
	/**
	 * 接口权限
	 */
	API_SCOPE_TYPE("api_scope_type"),
	/**
	 * 权限类型
	 */
	SCOPE_CATEGORY("scope_category"),
	/**
	 * 对象存储类型
	 */
	OSS("oss"),
	/**
	 * 短信服务类型
	 */
	SMS("sms"),
	/**
	 * 岗位类型
	 */
	POST_CATEGORY("post_category"),
	/**
	 * 行政区划
	 */
	REGION("region"),
	;

	final String name;

}
