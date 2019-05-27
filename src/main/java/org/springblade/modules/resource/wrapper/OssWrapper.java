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
package org.springblade.modules.resource.wrapper;

import org.springblade.common.cache.DictCache;
import org.springblade.core.mp.support.BaseEntityWrapper;
import org.springblade.core.tool.utils.BeanUtil;
import org.springblade.modules.resource.entity.Oss;
import org.springblade.modules.resource.entity.OssVO;

/**
 * 包装类,返回视图层所需的字段
 *
 * @author BladeX
 * @since 2019-05-26
 */
public class OssWrapper extends BaseEntityWrapper<Oss, OssVO> {

	public static OssWrapper build() {
		return new OssWrapper();
	}

	@Override
	public OssVO entityVO(Oss oss) {
		OssVO ossVO = BeanUtil.copy(oss, OssVO.class);
		assert ossVO != null;
		String categoryName = DictCache.getValue("oss", oss.getCategory());
		String statusName = DictCache.getValue("yes_no", oss.getStatus());
		ossVO.setCategoryName(categoryName);
		ossVO.setStatusName(statusName);
		return ossVO;
	}

}
