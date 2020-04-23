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
package org.springblade.modules.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springblade.common.cache.DictBizCache;
import org.springblade.common.constant.CommonConstant;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.log.exception.ServiceException;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.mp.support.Query;
import org.springblade.core.tool.constant.BladeConstant;
import org.springblade.core.tool.node.ForestNodeMerger;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.StringPool;
import org.springblade.modules.system.entity.DictBiz;
import org.springblade.modules.system.mapper.DictBizMapper;
import org.springblade.modules.system.service.IDictBizService;
import org.springblade.modules.system.vo.DictBizVO;
import org.springblade.modules.system.wrapper.DictBizWrapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.springblade.core.cache.constant.CacheConstant.DICT_CACHE;

/**
 * 服务实现类
 *
 * @author Chill
 */
@Service
public class DictBizServiceImpl extends ServiceImpl<DictBizMapper, DictBiz> implements IDictBizService {

	@Override
	public List<DictBizVO> tree() {
		return ForestNodeMerger.merge(baseMapper.tree());
	}

	@Override
	public List<DictBizVO> parentTree() {
		return ForestNodeMerger.merge(baseMapper.parentTree());
	}

	@Override
	public String getValue(String code, String dictKey) {
		return Func.toStr(baseMapper.getValue(code, dictKey), StringPool.EMPTY);
	}

	@Override
	public List<DictBiz> getList(String code) {
		return baseMapper.getList(code);
	}

	@Override
	public boolean submit(DictBiz dict) {
		LambdaQueryWrapper<DictBiz> lqw = Wrappers.<DictBiz>query().lambda().eq(DictBiz::getCode, dict.getCode()).eq(DictBiz::getDictKey, dict.getDictKey());
		Integer cnt = baseMapper.selectCount((Func.isEmpty(dict.getId())) ? lqw : lqw.notIn(DictBiz::getId, dict.getId()));
		if (cnt > 0) {
			throw new ServiceException("当前字典键值已存在!");
		}
		if (Func.isEmpty(dict.getParentId())) {
			dict.setParentId(BladeConstant.TOP_PARENT_ID);
		}
		dict.setIsDeleted(BladeConstant.DB_NOT_DELETED);
		CacheUtil.clear(DICT_CACHE);
		return saveOrUpdate(dict);
	}

	@Override
	public boolean removeDict(String ids) {
		Integer cnt = baseMapper.selectCount(Wrappers.<DictBiz>query().lambda().in(DictBiz::getParentId, Func.toLongList(ids)));
		if (cnt > 0) {
			throw new ServiceException("请先删除子节点!");
		}
		return removeByIds(Func.toLongList(ids));
	}

	@Override
	public IPage<DictBizVO> parentList(Map<String, Object> dict, Query query) {
		IPage<DictBiz> page = this.page(Condition.getPage(query), Condition.getQueryWrapper(dict, DictBiz.class).lambda().eq(DictBiz::getParentId, CommonConstant.TOP_PARENT_ID).orderByAsc(DictBiz::getSort));
		return DictBizWrapper.build().pageVO(page);
	}

	@Override
	public List<DictBizVO> childList(Map<String, Object> dict, Long parentId) {
		if (parentId < 0) {
			return new ArrayList<>();
		}
		dict.remove("parentId");
		DictBiz parentDict = DictBizCache.getById(parentId);
		List<DictBiz> list = this.list(Condition.getQueryWrapper(dict, DictBiz.class).lambda().ne(DictBiz::getId, parentId).eq(DictBiz::getCode, parentDict.getCode()).orderByAsc(DictBiz::getSort));
		return DictBizWrapper.build().listNodeVO(list);
	}
}
