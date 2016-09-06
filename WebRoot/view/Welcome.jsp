<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
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
		function add(title,url){
			$('#tabs').tabs('add',{
				title:title,
				selected:true,
				closable:true,
				content:"<iframe width='100%' height=100% frameborder='0' scrolling='auto' src='"+url+"'></iframe>"
			});
		}
	</script>
  </head>
 <body class="easyui-layout">
     <div data-options="region:'north',title:'hello wellcon',split:true" style="height:100px;">
     	<img alt="" src="view/images/134.jpg">
     </div>   
     	<div data-options="region:'west',title:'West',split:true" style="width:200px;">
        			 <ul id="tt" class="easyui-tree">
        			 	<c:forEach items="${menuList}" var="m2">
					<c:if test="${m2.level==2}">
						<li >
							<span>${m2.name}</span>
							<ul>
								<c:forEach items="${menuList}" var="m3">
									<c:if test="${m3.parentid==m2.mid}">
										<li><a href="javascript:void(0);" onclick="add('${m3.name}','${basePath}${m3.url}');">${m3.name}</a></li>
										
									</c:if>
								</c:forEach>
							</ul>
						</li>
					</c:if>		
				</c:forEach>
        			</ul> 
	    	</div>  
	</div>    
	<div data-options="region:'center'" style="padding:5px;background:#eee;">
		<div id="tabs" class="easyui-tabs" style="width:auto;data-options:fit:true;" >   
			<div title="欢迎你" style="padding:20px;display:none;"></div>   
		 </div>        
	</div>   
</body>
</html>