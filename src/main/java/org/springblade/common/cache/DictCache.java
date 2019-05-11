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
import org.springblade.modules.system.entity.Dict;
import org.springblade.modules.system.service.IDictService;

import java.util.List;

import static org.springblade.core.cache.constant.CacheConstant.DICT_CACHE;

/**
 * 字典缓存工具类
 *
 * @author Chill
 */
public class DictCache {

	private static final String DICT_ID = "dict:id:";
	private static final String DICT_VALUE = "dict:value:";
	private static final String DICT_LIST = "dict:list:";

	private static IDictService dictService;

	static {
		dictService = SpringUtil.getBean(IDictService.class);
	}

	/**
	 * 获取字典实体
	 *
	 * @param id 主键
	 * @return
	 */
	public static Dict getById(Long id) {
		return CacheUtil.get(DICT_CACHE, DICT_ID + id, () -> dictService.getById(id));
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号
	 * @param dictKey 字典键
	 * @return
	 */
	public static String getValue(String code, Integer dictKey) {
		return CacheUtil.get(DICT_CACHE, DICT_VALUE + code + StringPool.COLON + dictKey, () -> dictService.getValue(code, dictKey));
	}

	/**
	 * 获取字典集合
	 *
	 * @param code 字典编号
	 * @return
	 */
	public static List<Dict> getList(String code) {
		return CacheUtil.get(DICT_CACHE, DICT_LIST + code, () -> dictService.getList(code));
	}

}
