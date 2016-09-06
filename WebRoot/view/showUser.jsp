<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="aa" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>角色列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>

	
	<script type="text/javascript">
		$(function(){
			$('#dg').datagrid({    
	    		url:'showUser.do?methodName=showUser',  
	    		fitColumns:true,
	    		singleSelect:true,  
	    	
	    		columns:[[  
	    		
	        	{field:'uid',title:'编号',width:100,checkbox:true  },    
	        	{field:'yname',title:'名字',width:100},    
	       		{field:'about',title:'职位',width:100,align:'right'},
	       		  
	    		]]    
			});
			$('#btn').linkbutton({    
    			iconCls: 'icon-search'   
				});  
			$('#b').linkbutton({    
    			iconCls: 'icon-no'   
				});
			$('#n').linkbutton({    
    			iconCls: 'icon-ok'   
				});
		});
		
	</script>

  </head>
  
  <body>
      <h3>角色列表</h3>
      <table id="dg" style="width:400px;height:250px" ></table>
  	  <a id="btn" href="#">搜索</a> 
  	  <a id="b" href="#">删除</a> 
  	  <a id="n" href="#">添加</a> 
	</body>
</html>
