<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'Add_class.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
			form {
				height: 900px;
			}
			
			.name {
				display: block;
				height: 35px;
				width: 200px;
				border: 1px solid blue;
				box-shadow: 5px 5px 5px gray;
				border-radius: 30px;
			}
			
			.name:hover {
				width: 180px;
				border: 3px solid blueviolet;
			}
			
			table {
				margin: auto;
				padding-top: 240px;
			}
			
			input {
				text-align: center;
			}
			.tishi{
				color: red;
				text-align: center;
			}
		</style>

	</head>

	<body>


		<form action="<%=basePath%>add_class.do?methodName=addClass" method="post" name="form">
			<table bgcolor="" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<h3 class="tishi">${use}</h3>
						<input type="text" name="className" class="name" placeholder="班级名字" />
						<input type="submit" value="提交" class="name" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
