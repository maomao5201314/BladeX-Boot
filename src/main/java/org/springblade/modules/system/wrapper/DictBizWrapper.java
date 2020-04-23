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

import org.springblade.common.cache.DictBizCache;
import org.springblade.core.mp.support.BaseEntityWrapper;
import org.springblade.core.tool.constant.BladeConstant;
import org.springblade.core.tool.node.ForestNodeMerger;
import org.springblade.core.tool.utils.BeanUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.system.entity.DictBiz;
import org.springblade.modules.system.vo.DictBizVO;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;


/**
 * 包装类,返回视图层所需的字段
 *
 * @author Chill
 */
public class DictBizWrapper extends BaseEntityWrapper<DictBiz, DictBizVO> {

	public static DictBizWrapper build() {
		return new DictBizWrapper();
	}

	@Override
	public DictBizVO entityVO(DictBiz dict) {
		DictBizVO dictVO = Objects.requireNonNull(BeanUtil.copy(dict, DictBizVO.class));
		if (Func.equals(dict.getParentId(), BladeConstant.TOP_PARENT_ID)) {
			dictVO.setParentName(BladeConstant.TOP_PARENT_NAME);
		} else {
			DictBiz parent = DictBizCache.getById(dict.getParentId());
			dictVO.setParentName(parent.getDictValue());
		}
		return dictVO;
	}

	public List<DictBizVO> listNodeVO(List<DictBiz> list) {
		List<DictBizVO> collect = list.stream().map(dict -> BeanUtil.copy(dict, DictBizVO.class)).collect(Collectors.toList());
		return ForestNodeMerger.merge(collect);
	}

}
