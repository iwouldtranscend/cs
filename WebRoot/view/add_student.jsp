<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_student.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.name{
		      display: block;
		      height:30px;
		      width: 200px;
		      border: 1px solid blue;
		      box-shadow: 5px 5px 5px gray;
		      border-radius: 5px;
			  padding-top: 5px;
			  padding-bottom: 7px;
		  }
		  .name:hover{
		      width: 220px;
		      border: 3px solid blueviolet;
		  }
		  table {
			  margin: auto;
			  padding-top: 150px;
		  }
		  .tishi{
		  	  padding-left: 675px;
			  padding-top: 5px;
			  color: red;
		      
		  }
	
	</style>

  </head>
  
  <body>
      <form action="<%=basePath%>add_stedent.do?methodName=addStudent" method="post" name="form">
      	<table border="0" bgcolor="" cellpadding="0" cellspacing="0" class="table_top">
      	  	  <h3 class="tishi">${student}</h3>
      	  	  <tr>
  	              <td>学号：</td>
  	              <td><input type="text" name="snumber" class="name" placeholder="必需填写"/></td>
  		      </tr>
		  	  <tr>
  	              <td>姓名：</td>
  	              <td>
  	              	  <input type="text" name="sname" class="name" placeholder="必需填写"/>
  	              </td>
  		      </tr>
  		      <tr>
  	              <td>性别：</td>
  	              <td>
  	              	<input type="radio" name="sex" value="1"  id=""/>男
					<input type="radio" name="sex" value="2" id="" />女
				  </td>
  		      </tr>
  		      <tr>
  	              <td>班级：</td>
  	              <td>
  	              	  <select name="cid" id="" >
					      <option value="1">一班</option>
					      <option value="2">二班</option>
					      <option value="3">三班</option>
					      <option value="4">四班</option>
					      <option value="5">五班</option>
					  </select>
  	              </td>
  		      </tr>
  		      <tr>
  	              <td>年龄：</td>
  	              <td><input type="text" name="age" class="name"/></td>
  		      </tr>
  		      <tr>
  	              <td>邮箱：</td>
  	              <td><input type="text" name="Email" class="name"/></td>
  		      </tr>
  		      <tr>
  	              <td>个人简介：</td>
  	              <td><textarea name="description" rows="" cols="35" id="des"></textarea></td>
  		      </tr>
		  	  <td>
			  	  <input type="submit" value="提交" class="enroll"/>
		  	  </td>
      	  
      	  </table>
      </form>
  </body>
</html>
