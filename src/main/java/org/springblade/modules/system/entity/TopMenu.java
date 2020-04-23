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
import org.springblade.core.tenant.mp.TenantEntity;

/**
 * 顶部菜单表实体类
 *
 * @author BladeX
 */
@Data
@TableName("blade_top_menu")
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "TopMenu对象", description = "顶部菜单表")
public class TopMenu extends TenantEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 顶部菜单编号
	 */
	@ApiModelProperty(value = "顶部菜单编号")
	private String code;
	/**
	 * 顶部菜单名
	 */
	@ApiModelProperty(value = "顶部菜单名")
	private String name;
	/**
	 * 顶部菜单资源
	 */
	@ApiModelProperty(value = "顶部菜单资源")
	private String source;
	/**
	 * 顶部菜单排序
	 */
	@ApiModelProperty(value = "顶部菜单排序")
	private Integer sort;


}
