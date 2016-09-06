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
    
    <title>My JSP 'showMenus.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/icon.css">
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#dg').datagrid({
				url:'showMenus.do?methodName=showMenus&pageNo=1&pageSize=10',
				frozenColumus:[[{field:'hhhh',checkbox:true}]],
				rownumbers:true,
				stripend:true,
				pagination:true,
				columns:[[
					{field:'mid',hidden:true},
					{field:'name',title:'菜单名称',width:100,align:'center'},
					{field:'url',title:'菜单url',width:100,align:'center'},
					{field:'isshow',title:'首页展示',width:100,align:'center'},
					{field:'level',title:'菜单级别',width:100,align:'center'},
					{field:'parentName',title:'父级菜单',width:100,align:'center'},
				]]
					toolbar: [{
						text   :'添加',
						iconCls: 'icon-add2',
						handler: function(){
							$('#win').window('open');
						}
					},'-',{
						text   :'修改',
						iconCls: 'icon-help',
						handler: function()
							alert('修改按钮')；
						}
						
						
					}]
				
				
				
			});
			var pager = $('#dg').datagrid("getPager");
			pager.pagination({
				onSelectPage:function(pageNumber,pageSize){
					$('#dg').datagrid('loading');
					$.post('showMenus.do',{
						methodName:'showMenus',
						pageNo:pageNumber,
						pageSize:pageSize
					}.function(data){
						$('#dg').datagrid("loadData",{
							rows:data.rows,
							total:data,total		
						});
					},"json");
					$('#dg').datagrid('loaded');
				}
			})
		});
	</script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	   <!--<h3>用户列表</h3>
  	   <p class="hint">${hint}</p>
      <table border="1" width="100%" bordercolor="chartreuse" cellpadding="0" cellspacing="0" height="50px">
          <tr height="40px">
              <td>编号</td>
              <td>菜单名字</td>
              <td>URL</td>
              <td>是否展示</td>
              <td>菜单级别</td>
              <td>父级菜单</td>
          </tr>
          
          
          <c:forEach items="${menusList}" var="o">
	          <tr>
	          	<td>${o.mid}</td>
	          	<td>${o.name}</td>
	          	<td>${o.url}</td>
	          	<td>
	          		<c:if test="${o.isshow==1}">展示</c:if>
	          		<c:if test="${o.isshow==0}">不展示</c:if>
	          	</td>
	          	<td>${o.level}</td>
	          	<td>${o.parentName}</td>
	          </tr>
          </c:forEach>
         
          
      -->
      
      <table >
      
      
      
      
      
      
      
      
      
      
      
      </table>
  </body>
</html>
