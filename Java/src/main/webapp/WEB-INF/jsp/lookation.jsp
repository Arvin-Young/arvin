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
    
    <title>发布资讯</title>
    	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
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

	<table  class="table table-striped">
		<c:forEach items="${userList}" var="look">
			<tr>
				<td>
					
					<h3>${look.headline}</h3>
					<div>${look.uptime}</div>
					<p>${look.body}</p> 
					<img src="${look.images}">
				</td>
				<td>
					<button type="button" id="${look.informationId}" class="btn btn-danger">删除</button>
				</td>
			</tr>
		</c:forEach>
	</table>


 

  <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
   <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </body>
 <script type="text/javascript">
 $(function(){
	 $("button").each(function(i){
		 $("#"+this.id+"").click(function(){
			$.ajax({
				   type: "POST",
				   url: "IssuemessageDelete.do",
				   data: "informationId="+this.id+"",
				   success: function(data){
				     if(data="ok"){
				    	 window.location.reload();
				     }else{
				    	 alert("删除失败");
				     }
				   }
				});
			});
		 });
	 });
 
 </script>
</html>
