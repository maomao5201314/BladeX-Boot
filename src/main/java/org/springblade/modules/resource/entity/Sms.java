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
package org.springblade.modules.resource.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springblade.core.tenant.mp.TenantEntity;

/**
 * 短信配置表实体类
 *
 * @author BladeX
 */
@Data
@TableName("blade_sms")
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "Sms对象", description = "短信配置表")
public class Sms extends TenantEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 资源编号
	 */
	@ApiModelProperty(value = "资源编号")
	private String smsCode;

	/**
	 * 模板ID
	 */
	@ApiModelProperty(value = "模板ID")
	private String templateId;
	/**
	 * 分类
	 */
	@ApiModelProperty(value = "分类")
	private Integer category;
	/**
	 * accessKey
	 */
	@ApiModelProperty(value = "accessKey")
	private String accessKey;
	/**
	 * secretKey
	 */
	@ApiModelProperty(value = "secretKey")
	private String secretKey;
	/**
	 * regionId
	 */
	@ApiModelProperty(value = "regionId")
	private String regionId;
	/**
	 * 短信签名
	 */
	@ApiModelProperty(value = "短信签名")
	private String signName;
	/**
	 * 备注
	 */
	@ApiModelProperty(value = "备注")
	private String remark;


}
