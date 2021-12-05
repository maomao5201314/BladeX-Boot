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
package org.springblade.modules.desk.wrapper;

import org.springblade.common.cache.DictCache;
import org.springblade.common.enums.DictEnum;
import org.springblade.core.mp.support.BaseEntityWrapper;
import org.springblade.core.tool.utils.BeanUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.modules.desk.entity.Notice;
import org.springblade.modules.desk.vo.NoticeVO;

import java.util.Map;
import java.util.Objects;

/**
 * Notice包装类,返回视图层所需的字段
 *
 * @author Chill
 */
public class NoticeWrapper extends BaseEntityWrapper<Notice, NoticeVO> {

	public static NoticeWrapper build() {
		return new NoticeWrapper();
	}

	@Override
	public NoticeVO entityVO(Notice notice) {
		NoticeVO noticeVO = Objects.requireNonNull(BeanUtil.copy(notice, NoticeVO.class));
		String dictValue = DictCache.getValue(DictEnum.NOTICE, noticeVO.getCategory());
		noticeVO.setCategoryName(dictValue);
		return noticeVO;
	}

	/**
	 * 查询条件处理
	 */
	public void noticeQuery(Map<String, Object> notice) {
		// 此场景仅在 pg数据库 map类型传参的情况下需要处理，entity传参已经包含数据类型，则无需关心
		// 针对 pg数据库 int类型字段查询需要强转的处理示例
		String searchKey = "category";
		if (Func.isNotEmpty(notice.get(searchKey))) {
			// 数据库字段为int类型，设置"="查询，具体查询参数请见 @org.springblade.core.mp.support.SqlKeyword
			notice.put(searchKey.concat("_equal"), Func.toInt(notice.get(searchKey)));
			// 默认"like"查询，pg数据库 场景会报错，所以将其删除
			notice.remove(searchKey);
		}
	}

}
