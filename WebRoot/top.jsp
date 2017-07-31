<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tag.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<script type="text/javascript">
//退出系统方法
//退出系统方法
	function logout() {
		var sure = confirm('您确定要退出本系统吗?');
		if(sure ==true){
			window.location.href="${baseurl}logout.action";
		}
	}
	

</script>
<body>
	<center>
		<br />
		<p>欢迎来到xxxxxxx首页</p>
		<c:if test="${activeUser != null }">
			<font style="margin-left: 400px">欢迎您:<font style="color: red;">${activeUser.username}</font></font>
			&nbsp;&nbsp;&nbsp;
			<a id="loginOut" href=javascript:logout()>退出系统</a>
			</font>
		</c:if>
		<c:if test="${activeUser == null }">
			<font size="3"><a href="${BASEURL }page/sys/login.jsp"
				style="margin-left: 600px; text-decoration: none;" target="_blank">登录</a></font>
		</c:if>
	</center>
	<p></p>
</body>
</html>