<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml">
	
	<HEAD>
		<META content="IE=11.0000" http-equiv="X-UA-Compatible">
		<META http-equiv="Content-Type" content="text/html; charset=utf-8">
		<META name="GENERATOR" content="MSHTML 11.00.9600.17496">
		<!-- -->
		<TITLE>登录页面</TITLE>
		<!-- js脚本--地址-->
		<SCRIPT src="<%= basePath %>view/js/jquery-1.9.1.min.js" type="text/javascript"></SCRIPT>
		<!--css样式--地址-->
		<link href="<%= basePath %>view/css/login.css" rel="stylesheet" type="text/css"> 
	</HEAD>
	<!--正文-->
	<BODY>
		<DIV class="top_div"></DIV>
		<DIV class="form_div" >
			<DIV class="form_top_div" >
				<DIV class="tou"></DIV>
				<DIV class="initial_left_hand" id="left_hand"></DIV>
				<DIV class="initial_right_hand" id="right_hand"></DIV>
			</DIV>
			<form action="login.do?methodName=login" method="post" class="form">
				<P class="userName_p" >
					<SPAN class="u_logo"></SPAN>
					<INPUT class="ipt" type="text" placeholder="请输入用户名或邮箱" name="yname">
				</P>
				<P class="userPass_p" >
					<SPAN class="p_logo"></SPAN>
					<INPUT class="ipt" id="password" type="password" placeholder="请输入密码" name="ypass">
				</P>
				<p class="error">${error}</p>
				<DIV class="form_top_bottom" >
					<P class="alter_userPass_p" >
						<SPAN class="form_bottom_left" >
							<A  href="#">忘记密码?</A>
						</SPAN>
						<SPAN class="form_bottom_right" >
							<A  href="<%= basePath %>view/enroll.jsp">注册</A>  
							<input type="submit" value="登录" />
           				</SPAN> 
					</P>
				</DIV>
			</form>
		</DIV>
	</BODY>

</HTML>