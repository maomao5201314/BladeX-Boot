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
package org.springblade.modules.develop.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.*;
import lombok.AllArgsConstructor;
import org.springblade.core.boot.ctrl.BladeController;
import org.springblade.core.mp.support.Condition;
import org.springblade.core.mp.support.Query;
import org.springblade.core.secure.annotation.PreAuth;
import org.springblade.core.tool.api.R;
import org.springblade.core.tool.constant.RoleConstant;
import org.springblade.core.tool.utils.Func;
import org.springblade.develop.support.BladeCodeGenerator;
import org.springblade.modules.develop.entity.Code;
import org.springblade.modules.develop.service.ICodeService;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.Valid;
import java.util.Collection;
import java.util.Map;

/**
 * 控制器
 *
 * @author Chill
 */
@ApiIgnore
@RestController
@AllArgsConstructor
@RequestMapping("/blade-develop/code")
@Api(value = "代码生成", tags = "代码生成")
@PreAuth(RoleConstant.HAS_ROLE_ADMINISTRATOR)
public class CodeController extends BladeController {

	private ICodeService codeService;

	/**
	 * 详情
	 */
	@GetMapping("/detail")
	@ApiOperation(value = "详情", notes = "传入code", position = 1)
	public R<Code> detail(Code code) {
		Code detail = codeService.getOne(Condition.getQueryWrapper(code));
		return R.data(detail);
	}

	/**
	 * 分页
	 */
	@GetMapping("/list")
	@ApiImplicitParams({
		@ApiImplicitParam(name = "codeName", value = "模块名", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "tableName", value = "表名", paramType = "query", dataType = "string"),
		@ApiImplicitParam(name = "modelName", value = "实体名", paramType = "query", dataType = "string")
	})
	@ApiOperation(value = "分页", notes = "传入code", position = 2)
	public R<IPage<Code>> list(@ApiIgnore @RequestParam Map<String, Object> code, Query query) {
		IPage<Code> pages = codeService.page(Condition.getPage(query), Condition.getQueryWrapper(code, Code.class));
		return R.data(pages);
	}

	/**
	 * 新增或修改
	 */
	@PostMapping("/submit")
	@ApiOperation(value = "新增或修改", notes = "传入code", position = 6)
	public R submit(@Valid @RequestBody Code code) {
		return R.status(codeService.saveOrUpdate(code));
	}


	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@ApiOperation(value = "删除", notes = "传入ids", position = 7)
	public R remove(@ApiParam(value = "主键集合", required = true) @RequestParam String ids) {
		return R.status(codeService.removeByIds(Func.toIntList(ids)));
	}

	/**
	 * 代码生成
	 */
	@PostMapping("/gen-code")
	@ApiOperation(value = "代码生成", notes = "传入ids", position = 8)
	public R genCode(@ApiParam(value = "主键集合", required = true) @RequestParam String ids, @RequestParam(defaultValue = "sword") String system) {
		Collection<Code> codes = codeService.listByIds(Func.toIntList(ids));
		codes.forEach(code -> {
			BladeCodeGenerator generator = new BladeCodeGenerator();
			generator.setSystemName(system);
			generator.setServiceName(code.getServiceName());
			generator.setPackageName(code.getPackageName());
			generator.setPackageDir(code.getApiPath());
			generator.setPackageWebDir(code.getWebPath());
			generator.setTablePrefix(Func.toStrArray(code.getTablePrefix()));
			generator.setIncludeTables(Func.toStrArray(code.getTableName()));
			// 设置是否继承基础业务字段
			generator.setHasSuperEntity(false);
			generator.run();
		});
		return R.success("代码生成成功");
	}

}
