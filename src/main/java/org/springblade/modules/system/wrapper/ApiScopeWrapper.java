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
import org.springblade.core.tool.utils.BeanUtil;
import org.springblade.modules.system.entity.ApiScope;
import org.springblade.modules.system.vo.ApiScopeVO;


/**
 * 包装类,返回视图层所需的字段
 *
 * @author Chill
 */
public class ApiScopeWrapper extends BaseEntityWrapper<ApiScope, ApiScopeVO> {

	public static ApiScopeWrapper build() {
		return new ApiScopeWrapper();
	}

	@Override
	public ApiScopeVO entityVO(ApiScope dataScope) {
		ApiScopeVO apiScopeVO = BeanUtil.copy(dataScope, ApiScopeVO.class);
		assert apiScopeVO != null;
		String scopeTypeName = DictCache.getValue("api_scope_type", dataScope.getScopeType());
		apiScopeVO.setScopeTypeName(scopeTypeName);
		return apiScopeVO;
	}

}
