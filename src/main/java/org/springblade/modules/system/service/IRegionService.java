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
import com.baomidou.mybatisplus.extension.service.IService;
import org.springblade.modules.system.entity.Region;
import org.springblade.modules.system.excel.RegionExcel;
import org.springblade.modules.system.vo.RegionVO;

import java.util.List;
import java.util.Map;

/**
 * 行政区划表 服务类
 *
 * @author Chill
 */
public interface IRegionService extends IService<Region> {

	/**
	 * 提交
	 *
	 * @param region
	 * @return
	 */
	boolean submit(Region region);

	/**
	 * 删除
	 *
	 * @param id
	 * @return
	 */
	boolean removeRegion(String id);

	/**
	 * 懒加载列表
	 *
	 * @param parentCode
	 * @param param
	 * @return
	 */
	List<RegionVO> lazyList(String parentCode, Map<String, Object> param);

	/**
	 * 懒加载列表
	 *
	 * @param parentCode
	 * @param param
	 * @return
	 */
	List<RegionVO> lazyTree(String parentCode, Map<String, Object> param);

	/**
	 * 导入区划数据
	 *
	 * @param data
	 * @param isCovered
	 * @return
	 */
	void importRegion(List<RegionExcel> data, Boolean isCovered);

	/**
	 * 导出区划数据
	 *
	 * @param queryWrapper
	 * @return
	 */
	List<RegionExcel> exportRegion(Wrapper<Region> queryWrapper);

}
