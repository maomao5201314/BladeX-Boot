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
package org.springblade.modules.resource.builder;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.oss.OssTemplate;
import org.springblade.core.oss.rule.OssRule;
import org.springblade.core.secure.utils.SecureUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.resource.entity.Oss;
import org.springblade.modules.resource.enums.OssEnum;
import org.springblade.modules.resource.enums.OssStatusEnum;
import org.springblade.modules.resource.mapper.OssMapper;
import org.springblade.modules.resource.props.OssProperties;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static org.springblade.core.cache.constant.CacheConstant.SYS_CACHE;

/**
 * Oss存储
 *
 * @author Chill
 */
public class OssBuilder {

	public static final String OSS_CODE = "oss:code:";

	private final OssProperties ossProperties;
	private final OssMapper ossMapper;
	private final OssRule ossRule;

	public OssBuilder(OssProperties ossProperties, OssMapper ossMapper, OssRule ossRule) {
		this.ossProperties = ossProperties;
		this.ossMapper = ossMapper;
		this.ossRule = ossRule;
	}

	/**
	 * OssTemplate配置缓存池
	 */
	private Map<String, OssTemplate> templatePool = new ConcurrentHashMap<>();

	/**
	 * oss配置缓存池
	 */
	private Map<String, Oss> ossPool = new ConcurrentHashMap<>();

	/**
	 * 获取template
	 *
	 * @return OssTemplate
	 */
	public OssTemplate template() {
		String tenantCode = SecureUtil.getTenantCode();
		Oss oss = getOss(tenantCode);
		Oss ossCached = ossPool.get(tenantCode);
		OssTemplate template = templatePool.get(tenantCode);
		// 若为空或者不一致，则重新加载
		if (Func.hasEmpty(template, ossCached) || oss.getEndpoint().equals(ossCached.getEndpoint()) || !oss.getAccessKey().equals(ossCached.getAccessKey())) {
			synchronized (OssBuilder.class) {
				template = templatePool.get(tenantCode);
				if (Func.hasEmpty(template, ossCached) || oss.getEndpoint().equals(ossCached.getEndpoint()) || !oss.getAccessKey().equals(ossCached.getAccessKey())) {
					if (oss.getCategory() == OssEnum.MINIO.getCategory()) {
						template = MinioBuilder.template(oss, ossRule);
					} else if (oss.getCategory() == OssEnum.QINIU.getCategory()) {
						template = QiniuBuilder.template(oss, ossRule);
					}
					templatePool.put(tenantCode, template);
					ossPool.put(tenantCode, oss);
				}
			}
		}
		return template;
	}

	/**
	 * 获取对象存储实体
	 *
	 * @param tenantCode 租户编号
	 * @return Role
	 */
	public Oss getOss(String tenantCode) {
		return CacheUtil.get(SYS_CACHE, OSS_CODE, tenantCode, () -> {
			Oss o = ossMapper.selectOne(Wrappers.<Oss>query().lambda().eq(Oss::getStatus, OssStatusEnum.ENABLE.getNum()));
			// 若为空则调用默认配置
			if ((Func.isEmpty(o))) {
				Oss defaultOss = new Oss();
				defaultOss.setCategory(OssEnum.QINIU.getCategory());
				defaultOss.setEndpoint(ossProperties.getEndpoint());
				defaultOss.setBucketName(ossProperties.getBucketName());
				defaultOss.setAccessKey(ossProperties.getAccessKey());
				defaultOss.setSecretKey(ossProperties.getSecretKey());
				return defaultOss;
			} else {
				return o;
			}
		});
	}


}
