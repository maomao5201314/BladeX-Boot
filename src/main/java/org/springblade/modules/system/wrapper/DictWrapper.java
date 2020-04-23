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
package org.springblade.modules.system.wrapper;

import org.springblade.common.cache.DictCache;
import org.springblade.core.mp.support.BaseEntityWrapper;
import org.springblade.core.tool.constant.BladeConstant;
import org.springblade.core.tool.node.ForestNodeMerger;
import org.springblade.core.tool.utils.BeanUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.Dict;
import org.springblade.modules.system.vo.DictVO;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;


/**
 * 包装类,返回视图层所需的字段
 *
 * @author Chill
 */
public class DictWrapper extends BaseEntityWrapper<Dict, DictVO> {

	public static DictWrapper build() {
		return new DictWrapper();
	}

	@Override
	public DictVO entityVO(Dict dict) {
		DictVO dictVO = Objects.requireNonNull(BeanUtil.copy(dict, DictVO.class));
		if (Func.equals(dict.getParentId(), BladeConstant.TOP_PARENT_ID)) {
			dictVO.setParentName(BladeConstant.TOP_PARENT_NAME);
		} else {
			Dict parent = DictCache.getById(dict.getParentId());
			dictVO.setParentName(parent.getDictValue());
		}
		return dictVO;
	}

	public List<DictVO> listNodeVO(List<Dict> list) {
		List<DictVO> collect = list.stream().map(dict -> BeanUtil.copy(dict, DictVO.class)).collect(Collectors.toList());
		return ForestNodeMerger.merge(collect);
	}

}
