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
    
    <title>招聘信息</title>
    
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/user.css">
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
  <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
  发布招聘
</button>


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">发布招聘</h4>
      </div>
      <div class="modal-body">
        <form action="IssueMessage.do" method="post">
       		部门：
        	<select id="positio" name="positioId">
        		<option>请选择...</option>
        	<c:forEach items="${looksection}" var="section">
        		<option value="${section.sectionId}">${section.sectionName}</option>
        	</c:forEach>
        	</select>
        	<br>
        	职位：
        	<select id="categoryName"  name="categoryName">
        		<option>请选择...</option>
        	<c:forEach items="${lookposition}" var="position">
        		<option>${position.categoryName}</option>
        	</c:forEach>
        	</select>
        	<br>
        	岗位职责：<textarea name="position" class="form-control" rows="3"></textarea>
        	任职要求：<textarea name="equirements" class="form-control" rows="3"></textarea>
        	招聘人数：<input type="text" name="Re_num" value=""><br>
        	 <button type="submit" id="issue" class="btn btn-primary">发布</button>
        </form>
      </div>
    </div>
  </div>
</div>
   	<table class="table table-striped">
	   	<tr>
	   		<th>职位名称</th>
	   		<th>招聘人数</th>
	   		<th>职位部门</th>
	   		<th>工作地点</th>
	   		<th>发布时间</th>
	   		<th colspan="2">操作</th>
	   	</tr>
   <c:forEach items="${userList}" var="as"> 
   		<tr>
   			<td>${as.categoryName}</td>
   			<td>${as.Re_num}</td>
   			<td>${as.sectionName}</td>
   			<td>${as.workplace}</td>
   			<td>${as.Actiontime}</td>
   			<td>
   			<button id="${as.categoryId}" type="button" class="btn btn-primary">展开</button>
   			<button id="${as.Re_serial}" type="button" value="${as.categoryId}"  class="btn btn-danger">删除</button>
   			</td>
   		</tr>
   		<tr> 
   			<td colspan="6" style="padding: 0px;">
	   			<div id="category" class="${as.categoryId}">
	   				<div>岗位职责：<br>${as.position}</div>
				   	<div>任职要求：<br>${as.equirements}</div>
	   			</div>
   			</td>
   		</tr>
			   			
   </c:forEach>
	</table>


   
   
  </body>

   <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
   <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/jquerylook.js"></script>
</html>
   	