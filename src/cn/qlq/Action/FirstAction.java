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

public class FirstAction extends ActionSupport {
	//系统首页
		public String execute()throws Exception{
			
			HttpSession session  =ServletActionContext.getRequest().getSession();
			//从shiro的session中取activeUser
			Subject subject = SecurityUtils.getSubject();
			//取身份信息
			ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
			//通过model传到页面
			session.setAttribute("activeUser", activeUser);
			return SUCCESS;
		}
}	
