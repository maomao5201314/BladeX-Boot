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

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springblade.common.cache.SysCache;
import org.springblade.core.log.exception.ServiceException;
import org.springblade.core.secure.utils.AuthUtil;
import org.springblade.core.tool.constant.BladeConstant;
import org.springblade.core.tool.node.ForestNodeMerger;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.StringPool;
import org.springblade.modules.system.entity.Dept;
import org.springblade.modules.system.mapper.DeptMapper;
import org.springblade.modules.system.service.IDeptService;
import org.springblade.modules.system.vo.DeptVO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 服务实现类
 *
 * @author Chill
 */
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept> implements IDeptService {
	private static final String TENANT_ID = "tenantId";
	private static final String PARENT_ID = "parentId";

	@Override
	public List<DeptVO> lazyList(String tenantId, Long parentId, Map<String, Object> param) {
		// 设置租户ID
		if (AuthUtil.isAdministrator()) {
			tenantId = StringPool.EMPTY;
		}
		String paramTenantId = Func.toStr(param.get(TENANT_ID));
		if (Func.isNotEmpty(paramTenantId) && AuthUtil.isAdministrator()) {
			tenantId = paramTenantId;
		}
		// 判断点击搜索但是没有查询条件的情况
		if (Func.isEmpty(param.get(PARENT_ID)) && param.size() == 1) {
			parentId = 0L;
		}
		// 判断数据权限控制,非超管角色只可看到本级及以下数据
		if (Func.toLong(parentId) == 0L && !AuthUtil.isAdministrator()) {
			Long deptId = Func.firstLong(AuthUtil.getDeptId());
			Dept dept = SysCache.getDept(deptId);
			if (dept.getParentId() != 0) {
				parentId = dept.getParentId();
			}
		}
		// 判断点击搜索带有查询条件的情况
		if (Func.isEmpty(param.get(PARENT_ID)) && param.size() > 1 && Func.toLong(parentId) == 0L) {
			parentId = null;
		}
		return baseMapper.lazyList(tenantId, parentId, param);
	}

	@Override
	public List<DeptVO> tree(String tenantId) {
		return ForestNodeMerger.merge(baseMapper.tree(tenantId));
	}

	@Override
	public List<DeptVO> lazyTree(String tenantId, Long parentId) {
		if (AuthUtil.isAdministrator()) {
			tenantId = StringPool.EMPTY;
		}
		return ForestNodeMerger.merge(baseMapper.lazyTree(tenantId, parentId));
	}

	@Override
	public String getDeptIds(String tenantId, String deptNames) {
		List<Dept> deptList = baseMapper.selectList(Wrappers.<Dept>query().lambda().eq(Dept::getTenantId, tenantId).in(Dept::getDeptName, Func.toStrList(deptNames)));
		if (deptList != null && deptList.size() > 0) {
			return deptList.stream().map(dept -> Func.toStr(dept.getId())).distinct().collect(Collectors.joining(","));
		}
		return null;
	}

	@Override
	public List<String> getDeptNames(String deptIds) {
		return baseMapper.getDeptNames(Func.toLongArray(deptIds));
	}

	@Override
	public List<Dept> getDeptChild(Long deptId) {
		return baseMapper.selectList(Wrappers.<Dept>query().lambda().like(Dept::getAncestors, deptId));
	}

	@Override
	public boolean removeDept(String ids) {
		Integer cnt = baseMapper.selectCount(Wrappers.<Dept>query().lambda().in(Dept::getParentId, Func.toLongList(ids)));
		if (cnt > 0) {
			throw new ServiceException("请先删除子节点!");
		}
		return removeByIds(Func.toLongList(ids));
	}

	@Override
	public boolean submit(Dept dept) {
		if (Func.isEmpty(dept.getParentId())) {
			dept.setTenantId(AuthUtil.getTenantId());
			dept.setParentId(BladeConstant.TOP_PARENT_ID);
			dept.setAncestors(String.valueOf(BladeConstant.TOP_PARENT_ID));
		}
		if (dept.getParentId() > 0) {
			Dept parent = getById(dept.getParentId());
			if (Func.toLong(dept.getParentId()) == Func.toLong(dept.getId())) {
				throw new ServiceException("父节点不可选择自身!");
			}
			dept.setTenantId(parent.getTenantId());
			String ancestors = parent.getAncestors() + StringPool.COMMA + dept.getParentId();
			dept.setAncestors(ancestors);
		}
		dept.setIsDeleted(BladeConstant.DB_NOT_DELETED);
		return saveOrUpdate(dept);
	}

}
