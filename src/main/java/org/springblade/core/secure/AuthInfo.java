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
package org.springblade.core.secure;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * AuthInfo
 *
 * @author Chill
 */
@Data
@ApiModel(description = "认证信息")
public class AuthInfo {
	@ApiModelProperty(value = "令牌")
	private String accessToken;
	@ApiModelProperty(value = "令牌类型")
	private String tokenType;
	@ApiModelProperty(value = "头像")
	private String avatar = "https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png";
	@ApiModelProperty(value = "角色名")
	private String authority;
	@ApiModelProperty(value = "用户名")
	private String userName;
	@ApiModelProperty(value = "账号名")
	private String account;
	@ApiModelProperty(value = "过期时间")
	private long expiresIn;
	@ApiModelProperty(value = "许可证")
	private String license = "made by blade";
}
