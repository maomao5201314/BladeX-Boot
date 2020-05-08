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
import org.springblade.modules.system.entity.Region;
import org.springblade.modules.system.service.IRegionService;

import static org.springblade.core.cache.constant.CacheConstant.SYS_CACHE;

/**
 * 行政区划缓存工具类
 *
 * @author Chill
 */
public class RegionCache {
	public static final int PROVINCE_LEVEL = 1;
	public static final int CITY_LEVEL = 2;
	public static final int DISTRICT_LEVEL = 3;
	public static final int TOWN_LEVEL = 4;
	public static final int VILLAGE_LEVEL = 5;

	private static final String REGION_CODE = "region:code:";

	private static final IRegionService regionService;

	static {
		regionService = SpringUtil.getBean(IRegionService.class);
	}

	/**
	 * 获取行政区划实体
	 *
	 * @param code 区划编号
	 * @return Param
	 */
	public static Region getByCode(String code) {
		return CacheUtil.get(SYS_CACHE, REGION_CODE, code, () -> regionService.getById(code));
	}

}
