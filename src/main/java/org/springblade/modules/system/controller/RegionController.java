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
package org.springblade.modules.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.github.xiaoymin.knife4j.annotations.ApiOperationSupport;
import io.swagger.annotations.*;
import lombok.AllArgsConstructor;
import org.springblade.core.boot.ctrl.BladeController;
import org.springblade.core.excel.util.ExcelUtil;
import org.springblade.core.launch.constant.AppConstant;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.mp.support.Query;
import org.springblade.core.tenant.annotation.NonDS;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.utils.DateUtil;
import org.springblade.modules.system.entity.Region;
import org.springblade.modules.system.excel.RegionExcel;
import org.springblade.modules.system.excel.RegionImporter;
import org.springblade.modules.system.service.IRegionService;
import org.springblade.modules.system.vo.RegionVO;
import org.springblade.modules.system.wrapper.RegionWrapper;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 行政区划表 控制器
 *
 * @author Chill
 */
@NonDS
@RestController
@AllArgsConstructor
@RequestMapping(AppConstant.APPLICATION_SYSTEM_NAME + "/region")
@Api(value = "行政区划表", tags = "行政区划表接口")
public class RegionController extends BladeController {

	private final IRegionService regionService;

	/**
	 * 详情
	 */
	@GetMapping("/detail")
	@ApiOperationSupport(order = 1)
	@ApiOperation(value = "详情", notes = "传入region")
	public R<RegionVO> detail(Region region) {
		Region detail = regionService.getOne(Condition.getQueryWrapper(region));
		return R.data(RegionWrapper.build().entityVO(detail));
	}

	/**
	 * 分页 行政区划表
	 */
	@GetMapping("/list")
	@ApiOperationSupport(order = 2)
	@ApiOperation(value = "分页", notes = "传入region")
	public R<IPage<Region>> list(Region region, Query query) {
		IPage<Region> pages = regionService.page(Condition.getPage(query), Condition.getQueryWrapper(region));
		return R.data(pages);
	}

	/**
	 * 懒加载列表
	 */
	@GetMapping("/lazy-list")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "code", value = "区划编号", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "name", value = "区划名称", paramType = "query", dataType = "string")
	})
	@ApiOperationSupport(order = 3)
	@ApiOperation(value = "懒加载列表", notes = "传入menu")
	public R<List<RegionVO>> lazyList(String parentCode, @ApiIgnore @RequestParam Map<String, Object> menu) {
		List<RegionVO> list = regionService.lazyList(parentCode, menu);
		return R.data(RegionWrapper.build().listNodeLazyVO(list));
	}

	/**
	 * 懒加载列表
	 */
	@GetMapping("/lazy-tree")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "code", value = "区划编号", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "name", value = "区划名称", paramType = "query", dataType = "string")
	})
	@ApiOperationSupport(order = 4)
	@ApiOperation(value = "懒加载列表", notes = "传入menu")
	public R<List<RegionVO>> lazyTree(String parentCode, @ApiIgnore @RequestParam Map<String, Object> menu) {
		List<RegionVO> list = regionService.lazyTree(parentCode, menu);
		return R.data(RegionWrapper.build().listNodeLazyVO(list));
	}

	/**
	 * 新增 行政区划表
	 */
	@PostMapping("/save")
	@ApiOperationSupport(order = 5)
	@ApiOperation(value = "新增", notes = "传入region")
	public R save(@Valid @RequestBody Region region) {
		return R.status(regionService.save(region));
	}

	/**
	 * 修改 行政区划表
	 */
	@PostMapping("/update")
	@ApiOperationSupport(order = 6)
	@ApiOperation(value = "修改", notes = "传入region")
	public R update(@Valid @RequestBody Region region) {
		return R.status(regionService.updateById(region));
	}

	/**
	 * 新增或修改 行政区划表
	 */
	@PostMapping("/submit")
	@ApiOperationSupport(order = 7)
	@ApiOperation(value = "新增或修改", notes = "传入region")
	public R submit(@Valid @RequestBody Region region) {
		return R.status(regionService.submit(region));
	}


	/**
	 * 删除 行政区划表
	 */
	@PostMapping("/remove")
	@ApiOperationSupport(order = 8)
	@ApiOperation(value = "删除", notes = "传入主键")
	public R remove(@ApiParam(value = "主键", required = true) @RequestParam String id) {
		return R.status(regionService.removeRegion(id));
	}

	/**
	 * 行政区划下拉数据源
	 */
	@GetMapping("/select")
	@ApiOperationSupport(order = 9)
	@ApiOperation(value = "下拉数据源", notes = "传入tenant")
	public R<List<Region>> select(@RequestParam(required = false, defaultValue = "00") String code) {
		List<Region> list = regionService.list(Wrappers.<Region>query().lambda().eq(Region::getParentCode, code));
		return R.data(list);
	}

	/**
	 * 导入行政区划数据
	 */
	@PostMapping("import-region")
	@ApiOperationSupport(order = 10)
	@ApiOperation(value = "导入行政区划", notes = "传入excel")
	public R importRegion(MultipartFile file, Integer isCovered) {
		RegionImporter regionImporter = new RegionImporter(regionService, isCovered == 1);
		ExcelUtil.save(file, regionImporter, RegionExcel.class);
		return R.success("操作成功");
	}

	/**
	 * 导出行政区划数据
	 */
	@GetMapping("export-region")
	@ApiOperationSupport(order = 11)
	@ApiOperation(value = "导出行政区划", notes = "传入user")
	public void exportRegion(@ApiIgnore @RequestParam Map<String, Object> region, HttpServletResponse response) {
		QueryWrapper<Region> queryWrapper = Condition.getQueryWrapper(region, Region.class);
		List<RegionExcel> list = regionService.exportRegion(queryWrapper);
		ExcelUtil.export(response, "行政区划数据" + DateUtil.time(), "行政区划数据表", list, RegionExcel.class);
	}

	/**
	 * 导出模板
	 */
	@GetMapping("export-template")
	@ApiOperationSupport(order = 12)
	@ApiOperation(value = "导出模板")
	public void exportUser(HttpServletResponse response) {
		List<RegionExcel> list = new ArrayList<>();
		ExcelUtil.export(response, "行政区划模板", "行政区划表", list, RegionExcel.class);
	}


}
