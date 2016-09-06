<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show_student.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	  <h2>学生列表</h2>
      <table border="1" width="100%" bordercolor="chartreuse" cellpadding="0" cellspacing="0" height="50px">
          <tr height="40px">
              <td>编号</td>
              <td>学号</td>
              <td>姓名</td>
              <td>性别</td>
              <td>班级</td>
              <td>年龄</td>
              <td>邮箱</td>
              <td>简介</td>
              <td>更新时间</td>
              <td width="72px">操作</td>
          </tr>
          <c:forEach items="${studentList}" var="c">
	          <tr>
	          	<td>${c[0]}</td>
	          	<td>${c[1]}</td>
	          	<td>${c[2]}</td>
	          	<td>${c[3]}</td>
	          	<td>${c[4]}</td>
	          	<td>${c[5]}</td>
	          	<td>${c[6]}</td>
	          	<td>${c[7]}</td>
	          	<td>${c[8]}</td>
	          </tr>
          </c:forEach>
         
          
      </table>
  </body>
</html>
