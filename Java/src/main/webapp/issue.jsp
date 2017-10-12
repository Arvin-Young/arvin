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
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/issue.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <script type="text/javascript" src="js/prefixfree.min.js"></script>
<style type="text/css"  class="cp-pen-styles">
@import url(http://weloveiconfonts.com/api/?family=fontawesome);

</style>
  </head>
  
  <body>
 
 
 
 <form action="getuser.do" method="post" enctype="multipart/form-data">  
   图片上传：<input type="file" name="images"/><br>
   资讯标题：<input type="text" name="headline"/>
    
	<!--    文本框 -->
   	   <div class="main"> 
  <div class="content">
    <div class="textEditing">

      <input type="checkbox" id="bold"><label for="bold"><span class="fontawesome-bold"></span></label>
      <input type="checkbox" id="italic"><label for="italic"><span class="fontawesome-italic"></span></label>
      <input type="checkbox" id="underline"><label for="underline"><span class="fontawesome-underline"></span></label>
      <input type="radio" name="textStyle" id="left" checked><label for="left"><span class="fontawesome-align-left"></span></label>
	    <input type="radio" name="textStyle" id="center"><label for="center"><span class="fontawesome-align-center"></span></label>
      <input type="radio" name="textStyle" id="right"><label for="right"><span class="fontawesome-align-right"></span></label>
      <input type="radio" name="textStyle" id="justify"><label for="justify"><span class="fontawesome-align-justify"></span></label>
    </div>
  <input id="contentText" value="" name="body">
 
  </div>
</div>
    <input type="submit" value="submit"/>  
    </form>  
    
    
    

    
  <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  <script type="text/javascript" src="js/issue.js"></script>
 
  </body>
 <script type="text/javascript">

 </script>
</html>
