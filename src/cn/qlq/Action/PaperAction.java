package cn.qlq.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionSupport;

import cn.qlq.pojo.ActiveUser;

public class PaperAction extends ActionSupport {
	// 系统首页
	public String findSt() throws Exception {

		return "find";

	}

	public String addSt() throws Exception {

		return "add";

	}

	public String updateSt() throws Exception {

		return "update";

	}

	public String deleteSt() throws Exception {

		return "delete";

	}

	public String findAllSt() throws Exception {

		return SUCCESS;

	}

}
