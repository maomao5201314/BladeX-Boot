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
package org.springblade.modules.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springblade.core.mp.base.BaseEntity;

/**
 * 实体类
 *
 * @author BladeX
 */
@Data
@TableName("blade_scope_api")
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "ApiScope对象", description = "ApiScope对象")
public class ApiScope extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 菜单主键
	 */
	@ApiModelProperty(value = "菜单主键")
	private Long menuId;
	/**
	 * 资源编号
	 */
	@ApiModelProperty(value = "资源编号")
	private String resourceCode;
	/**
	 * 接口权限名称
	 */
	@ApiModelProperty(value = "接口权限名称")
	private String scopeName;
	/**
	 * 接口权限字段
	 */
	@ApiModelProperty(value = "接口权限字段")
	private String scopePath;
	/**
	 * 接口权限类型
	 */
	@ApiModelProperty(value = "接口权限类型")
	private Integer scopeType;
	/**
	 * 接口权限备注
	 */
	@ApiModelProperty(value = "接口权限备注")
	private String remark;


}
