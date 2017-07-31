<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/tag.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<body>
	<br />
	<br />
	<br />
	<center>
		<FORM id="loginform" name="loginform" action="${baseurl}login.action"
			method="post">
			<input type="password" style="display: none;" />
			<TABLE class="tab" border="0" cellSpacing="6" cellPadding="8">
				<TBODY>
					<TR>
						<TD>用户名：</TD>
						<TD colSpan="2"><input type="text" id="usercode"
							name="username" style="WIDTH: 130px" /></TD>
					</TR>
					<TR>
						<TD>密 码：</TD>
						<TD><input type="password" id="pwd" name="password"
							style="WIDTH: 130px" /></TD>
					</TR>
					<TR>
						<TD>验证码：</TD>
						<TD><input id="randomcode" name="randomcode" size="8" /> <img
							id="randomcode_img" src="${baseurl}validatecode.jsp" alt=""
							width="56" height="20" align='absMiddle' /> <a
							href=javascript:randomcode_refresh()>刷新</a></TD>
					</TR>

					<tr>
						<td></td>
						<td><input type="checkbox" name="rememberMe" />自动登陆</td>
					</tr>
					<TR>
						<TD colSpan="2" align="center"><input type="submit"
							class="btnalink" value="登&nbsp;&nbsp;录" /> <input type="reset"
							class="btnalink" value="重&nbsp;&nbsp;置" /></TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>
	</center>
</body>
</html>