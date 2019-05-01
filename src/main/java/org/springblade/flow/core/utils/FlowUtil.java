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

import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.StringUtil;
import org.springblade.flow.core.constant.ProcessConstant;

import java.util.HashMap;
import java.util.Map;

/**
 * 工作流工具类
 *
 * @author Chill
 */
public class FlowUtil {

	/**
	 * 定义流程key对应的表名
	 */
	private final static Map<String, String> BUSINESS_TABLE = new HashMap<>();

	static {
		BUSINESS_TABLE.put(ProcessConstant.LEAVE_KEY, "blade_process_leave");
	}

	/**
	 * 通过流程key获取业务表名
	 *
	 * @param key 流程key
	 */
	public static String getBusinessTable(String key) {
		String businessTable = BUSINESS_TABLE.get(key);
		if (Func.isEmpty(businessTable)) {
			throw new RuntimeException("流程启动失败,未找到相关业务表");
		}
		return businessTable;
	}

	/**
	 * 获取业务标识
	 *
	 * @param businessTable 业务表
	 * @param businessId    业务表主键
	 * @return businessKey
	 */
	public static String getBusinessKey(String businessTable, String businessId) {
		return StringUtil.format("{}:{}", businessTable, businessId);
	}

}
