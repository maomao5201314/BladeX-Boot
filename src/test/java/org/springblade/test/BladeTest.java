package org.springblade.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springblade.core.test.BladeBootTest;
import org.springblade.core.test.BladeSpringRunner;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * Blade单元测试
 *
 * @author Chill
 */
@SpringBootTest
@BladeBootTest(appName = "blade-runner", profile = "test")
@RunWith(BladeSpringRunner.class)
public class BladeTest {

	@Test
	public void contextLoads() {
		System.out.println("测试～～～～～～");
	}

}
