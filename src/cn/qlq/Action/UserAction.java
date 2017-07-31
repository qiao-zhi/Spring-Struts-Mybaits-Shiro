package cn.qlq.Action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	public String addUser(){
		return "add";
	}
	public String findUser(){
		return "find";
	}
	public String deleteUser(){
		return "delete";
	}
	public String updateUser(){
		return "update";
	}
	public String queryAllUser() throws Exception {
		return SUCCESS;
	}

}
