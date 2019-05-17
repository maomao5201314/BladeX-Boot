package org.springblade.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springblade.core.test.BladeBootTest;
import org.springblade.core.test.BladeSpringRunner;

/**
 * Blade单元测试
 *
 * @author Chill
 */
@RunWith(BladeSpringRunner.class)
@BladeBootTest(appName = "blade-runner", profile = "test")
public class BladeTest {

	@Test
	public void contextLoads() {
		System.out.println("测试～～～～～～");
	}

}
