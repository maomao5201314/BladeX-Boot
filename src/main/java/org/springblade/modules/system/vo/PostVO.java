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
package org.springblade.modules.system.vo;

import org.springblade.modules.system.entity.Post;
import lombok.Data;
import lombok.EqualsAndHashCode;
import io.swagger.annotations.ApiModel;

/**
 * 岗位表视图实体类
 *
 * @author Chill
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "PostVO对象", description = "岗位表")
public class PostVO extends Post {
	private static final long serialVersionUID = 1L;

	/**
	 * 岗位分类名
	 */
	private String categoryName;

}
