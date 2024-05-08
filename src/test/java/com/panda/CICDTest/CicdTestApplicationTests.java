package com.panda.CICDTest;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CicdTestApplicationTests {

	@Test
	void contextLoads() {

		var a=5;
		var b = 5;

		Assertions.assertEquals(10, a+b);
	}

}
