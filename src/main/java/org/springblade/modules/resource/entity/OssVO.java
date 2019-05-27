package org.springblade.modules.resource.entity;

import lombok.Data;

/**
 * OssVO
 *
 * @author Chill
 */
@Data
public class OssVO extends Oss {

	/**
	 * 分类名
	 */
	private String categoryName;

	/**
	 * 是否启用
	 */
	private String statusName;

}
