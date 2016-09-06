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
    
    <title>My JSP 'showRole.jsp' starting page</title>
    
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
      <h3>用户列表</h3>
      <table border="1" width="100%" bordercolor="chartreuse" cellpadding="0" cellspacing="0" height="50px">
          <tr >
              <td>编号</td>
              <td>角色名字</td>
              <td >操作</td>
          </tr>
          <c:forEach items="${roleList}" var="ro">
	          <tr>
	          	<td>${ro.rid}</td>
	          	<td>${ro.name}</td>
	          	<td>
	        		<a href="<%=basePath%>showRole.do?rid=${ro.rid}&methodName=showRole">修改角色</a>	
	        		<a href="<%=basePath%>showPermission.do?rid=${ro.rid}&methodName=showPermission">修改权限</a>
	          	</td>
	          </tr>
          </c:forEach>
         
          
      </table>
  </body>
</html>
