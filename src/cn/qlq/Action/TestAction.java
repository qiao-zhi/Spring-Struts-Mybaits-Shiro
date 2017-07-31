package cn.qlq.Action;
import com.opensymphony.xwork2.ActionSupport;

import cn.qlq.Exception.MyException;

public class TestAction extends ActionSupport  {

	@Override
	public String execute() throws Exception {
		if(1==1){
			throw new MyException("自定义异常！");
		}
		return SUCCESS;
	}
}
