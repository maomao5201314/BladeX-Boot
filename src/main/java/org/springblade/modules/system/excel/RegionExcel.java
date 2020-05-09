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
package org.springblade.modules.system.excel;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import lombok.Data;

import java.io.Serializable;

/**
 * RegionExcel
 *
 * @author Chill
 */
@Data
@ColumnWidth(16)
@HeadRowHeight(20)
@ContentRowHeight(18)
public class RegionExcel implements Serializable {
	private static final long serialVersionUID = 1L;

	@ExcelProperty("区划编号")
	private String code;

	@ExcelProperty("父区划编号")
	private String parentCode;

	@ExcelProperty("祖区划编号")
	private String ancestors;

	@ExcelProperty("区划名称")
	private String name;

	@ExcelProperty("省级区划编号")
	private String provinceCode;

	@ExcelProperty("省级名称")
	private String provinceName;

	@ExcelProperty("市级区划编号")
	private String cityCode;

	@ExcelProperty("市级名称")
	private String cityName;

	@ExcelProperty("区级区划编号")
	private String districtCode;

	@ExcelProperty("区级名称")
	private String districtName;

	@ExcelProperty("镇级区划编号")
	private String townCode;

	@ExcelProperty("镇级名称")
	private String townName;

	@ExcelProperty("村级区划编号")
	private String villageCode;

	@ExcelProperty("村级名称")
	private String villageName;

	@ExcelProperty("层级")
	private Integer level;

	@ExcelProperty("排序")
	private Integer sort;

	@ExcelProperty("备注")
	private String remark;

}
