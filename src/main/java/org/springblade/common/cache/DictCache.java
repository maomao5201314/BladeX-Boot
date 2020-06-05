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

import org.springblade.common.enums.DictEnum;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.tool.utils.SpringUtil;
import org.springblade.core.tool.utils.StringPool;
import org.springblade.modules.system.entity.Dict;
import org.springblade.modules.system.service.IDictService;

import java.util.List;
import java.util.Optional;

import static org.springblade.core.cache.constant.CacheConstant.DICT_CACHE;

/**
 * 字典缓存工具类
 *
 * @author Chill
 */
public class DictCache {

	private static final String DICT_ID = "dict:id:";
	private static final String DICT_KEY = "dict:key:";
	private static final String DICT_VALUE = "dict:value:";
	private static final String DICT_LIST = "dict:list:";

	private static final Boolean TENANT_MODE = Boolean.FALSE;

	private static final IDictService dictService;

	static {
		dictService = SpringUtil.getBean(IDictService.class);
	}

	/**
	 * 获取字典实体
	 *
	 * @param id 主键
	 * @return Dict
	 */
	public static Dict getById(Long id) {
		return CacheUtil.get(DICT_CACHE, DICT_ID, id, () -> dictService.getById(id), TENANT_MODE);
	}

	/**
	 * 获取字典键
	 *
	 * @param code      字典编号
	 * @param dictValue 字典值
	 * @return String
	 */
	public static String getKey(String code, String dictValue) {
		return CacheUtil.get(DICT_CACHE, DICT_KEY + code + StringPool.COLON, dictValue, () -> {
			List<Dict> list = getList(code);
			Optional<String> key = list.stream().filter(
				dict -> dict.getDictValue().equalsIgnoreCase(dictValue)
			).map(Dict::getDictKey).findFirst();
			return key.orElse(StringPool.EMPTY);
		}, TENANT_MODE);
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号枚举
	 * @param dictKey Integer型字典键
	 * @return String
	 */
	public static String getValue(DictEnum code, Integer dictKey) {
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
		return CacheUtil.get(DICT_CACHE, DICT_VALUE + code + StringPool.COLON, String.valueOf(dictKey), () -> dictService.getValue(code, String.valueOf(dictKey)), TENANT_MODE);
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号枚举
	 * @param dictKey String型字典键
	 * @return String
	 */
	public static String getValue(DictEnum code, String dictKey) {
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
		return CacheUtil.get(DICT_CACHE, DICT_VALUE + code + StringPool.COLON, dictKey, () -> dictService.getValue(code, dictKey), TENANT_MODE);
	}

	/**
	 * 获取字典集合
	 *
	 * @param code 字典编号
	 * @return List<Dict>
	 */
	public static List<Dict> getList(String code) {
		return CacheUtil.get(DICT_CACHE, DICT_LIST, code, () -> dictService.getList(code), TENANT_MODE);
	}

}
