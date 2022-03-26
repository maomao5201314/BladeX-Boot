package org.springblade.test;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springblade.core.test.BladeBootTest;
import org.springblade.core.test.BladeSpringRunner;
import org.springblade.core.tool.utils.StringUtil;
import org.springblade.flow.engine.entity.FlowModel;
import org.springblade.flow.engine.service.FlowEngineService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Blade单元测试
 *
 * @author Chill
 */
@RunWith(BladeSpringRunner.class)
@BladeBootTest(appName = "blade-runner", enableLoader = true)
public class BladeTest {

	@Autowired
	private FlowEngineService service;

	@Test
	public void contextLoads() {
		System.out.println("=====数据迁移启动=====");

		// 获取 ACT_DE_MODEL 表需要转换的数据
		List<FlowModel> list = service.list();
		// 循环转换
		list.forEach(flowModel -> {
			if (StringUtil.isBlank(flowModel.getModelEditorXml())) {
				service.update(Wrappers.<FlowModel>lambdaUpdate()
					.set(FlowModel::getModelEditorXml, new String(service.getModelEditorXML(flowModel)))
					.ge(FlowModel::getId, flowModel.getId())
				);
			}
		});

		System.out.println("=====数据迁移完毕=====");
	}

}
