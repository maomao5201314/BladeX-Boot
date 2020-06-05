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

import org.springblade.common.enums.DictBizEnum;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.secure.utils.AuthUtil;
import org.springblade.core.tool.utils.SpringUtil;
import org.springblade.core.tool.utils.StringPool;
import org.springblade.modules.system.entity.DictBiz;
import org.springblade.modules.system.service.IDictBizService;

import java.util.List;

import static org.springblade.core.cache.constant.CacheConstant.DICT_CACHE;

/**
 * 业务字典缓存工具类
 *
 * @author Chill
 */
public class DictBizCache {

	private static final String DICT_ID = "dictBiz:id";
	private static final String DICT_VALUE = "dictBiz:value";
	private static final String DICT_LIST = "dictBiz:list";

	private static final IDictBizService dictService;

	static {
		dictService = SpringUtil.getBean(IDictBizService.class);
	}

	/**
	 * 获取字典实体
	 *
	 * @param id 主键
	 * @return DictBiz
	 */
	public static DictBiz getById(Long id) {
		String keyPrefix = DICT_ID.concat(StringPool.DASH).concat(AuthUtil.getTenantId()).concat(StringPool.COLON);
		return CacheUtil.get(DICT_CACHE, keyPrefix, id, () -> dictService.getById(id));
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号枚举
	 * @param dictKey Integer型字典键
	 * @return String
	 */
	public static String getValue(DictBizEnum code, Integer dictKey) {
		return getValue(code.getName(), dictKey);
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号
	 * @param dictKey Integer型字典键
	 * @return String
	 */
	public static String getValue(String code, Integer dictKey) {
		String keyPrefix = DICT_VALUE.concat(StringPool.DASH).concat(AuthUtil.getTenantId()).concat(StringPool.COLON);
		return CacheUtil.get(DICT_CACHE, keyPrefix + code + StringPool.COLON, String.valueOf(dictKey), () -> dictService.getValue(code, String.valueOf(dictKey)));
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号枚举
	 * @param dictKey String型字典键
	 * @return String
	 */
	public static String getValue(DictBizEnum code, String dictKey) {
		return getValue(code.getName(), dictKey);
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号
	 * @param dictKey String型字典键
	 * @return String
	 */
	public static String getValue(String code, String dictKey) {
		String keyPrefix = DICT_VALUE.concat(StringPool.DASH).concat(AuthUtil.getTenantId()).concat(StringPool.COLON);
		return CacheUtil.get(DICT_CACHE, keyPrefix + code + StringPool.COLON, dictKey, () -> dictService.getValue(code, dictKey));
	}

	/**
	 * 获取字典集合
	 *
	 * @param code 字典编号
	 * @return List<DictBiz>
	 */
	public static List<DictBiz> getList(String code) {
		String keyPrefix = DICT_LIST.concat(StringPool.DASH).concat(AuthUtil.getTenantId()).concat(StringPool.COLON);
		return CacheUtil.get(DICT_CACHE, keyPrefix, code, () -> dictService.getList(code));
	}

}
