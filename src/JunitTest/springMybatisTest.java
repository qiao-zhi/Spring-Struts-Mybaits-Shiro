package JunitTest;
import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.qlq.Shiro.CustomRealm;
import cn.qlq.pojo.SysUser;
import cn.qlq.service.SysService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class springMybatisTest {
	@Autowired
	private SysService sysService;
	@Autowired
	private CustomRealm customRealm;
	@Test
	public void fun1(){
		try {
			SysUser findSysUserByUserCode = sysService.findSysUserByUserCode("zhangsan");
			System.out.println(findSysUserByUserCode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 测试是否能注入realm
	 */
	@Test public void test2(){
		customRealm.test1();
	}
	
	
}
