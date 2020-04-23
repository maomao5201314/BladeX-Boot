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
import org.springblade.modules.system.entity.Param;
import org.springblade.modules.system.service.IParamService;

import static org.springblade.core.cache.constant.CacheConstant.PARAM_CACHE;

/**
 * 参数缓存工具类
 *
 * @author Chill
 */
public class ParamCache {

	private static final String PARAM_ID = "param:id:";
	private static final String PARAM_VALUE = "param:value:";

	private static final IParamService paramService;

	static {
		paramService = SpringUtil.getBean(IParamService.class);
	}

	/**
	 * 获取参数实体
	 *
	 * @param id 主键
	 * @return Param
	 */
	public static Param getById(Long id) {
		return CacheUtil.get(PARAM_CACHE, PARAM_ID, id, () -> paramService.getById(id));
	}

	/**
	 * 获取参数配置
	 *
	 * @param paramKey 参数值
	 * @return String
	 */
	public static String getValue(String paramKey) {
		return CacheUtil.get(PARAM_CACHE, PARAM_VALUE, paramKey, () -> paramService.getValue(paramKey));
	}

}
