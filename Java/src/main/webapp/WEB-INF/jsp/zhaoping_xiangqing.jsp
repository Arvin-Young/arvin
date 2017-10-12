<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/index.css" type="text/css" rel="stylesheet"/>
<style>
	body{min-width:1000px;min-height: 900px;}
</style>
</head>
<body style="min-width: 1268px;background-color: #f4f4f4;">
		<div id="myweb">
			<div class="banner">      
		        <div class="nav_content"  style="height: 90px;">
		            <div class="nav_bg" style="opacity:1.0"></div>
		            <div class="nav">
		                <img src="../img/logo.png"/>
	                    <p style="color: white;margin-left: 80%;line-height: 45px;">网站正在开发中...</p>
		            </div>
		        </div> 
		    </div>
		</div>
		
		<div style="width: 70%; height: 400px; margin: auto auto;background: url(../img/banner_recruit_last.png) no-repeat;background-size:100% 100%;">
				
		</div>
		
		<center>
			<h3 style="margin-top: 30px;" id="categoryName"></h3>
			<p style="margin-top: 20px; font-size: 12px; color: #9E9E9E;" id="Actiontime"></p>
		</center>
		
		<div style="text-align: center;margin-top: 20px;">
			<div style="overflow: hidden;display: inline-block;">
				<div style="width: 600px;float: left;">
					<p style="text-align: left">岗位职责:</p>
					<ul style="margin-top: 10px;">
						<li>
							<p style="font-size: 14px;color: #4E5052; text-align: left;" id="position"></p>
						</li>
					</ul>
				</div>
				<div style="width: 600px;margin-left:50px; float: left;">
					<p  style="text-align: left">职位要求:</p>
					<ul style="margin-top: 10px;">
						<li>
							<p style="font-size: 14px;color: #4E5052; text-align: left;" id="equirements"></p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- <div style="width: 60%; margin: auto auto;margin-bottom: 100px;">
			<p>岗位职责:</p>
			<ul style="margin-top: 10px;">
				<li>
					<p style="font-size: 14px;color: #4E5052;" id="position"></p>
				</li>
			</ul>
			<p style="margin-top: 10px;">职位要求:</p>
			<ul style="margin-top: 10px;">
				<li>
					<p style="font-size: 14px;color: #4E5052;" id="equirements"></p>
				</li>
			</ul>
		</div> -->
		<center style="margin-top: 150px;margin-bottom: 50px;"><p>如果符合要求，欢迎投简历至hr@vstardatacom，谢谢配合！</p></center>
		
		<div class="foot_bg" style="margin-top:0px ;float: left;text-align: center;">
			<div style="overflow: hidden;display: inline-block;">
		    	<div class="foot" style="float: left;">
		        	<p>Copyright © 2016上海蔚星数据科技</p>
		            <p>All rights reserved</p>
		        </div>
	        </div>
	    </div>
	    <div style="width: 100%;height: 15px;background-color: #131b2c;position: fixed; bottom: 0;"></div>
		<script type="text/javascript" src="../js/jquery-3.0.0.js"></script>
		<script type="text/javascript">
		var id = "${requestScope.id}";
		$(function(){
			 $.ajax({
   	   			type: "GET",
   	   			url: "Onemessage.do",
   	   			data: "id="+id,//-1表示显示全部数据
   	   			success: function(msg){
   	   				var categoryName = msg.categoryName;
   	   				var position = msg.position;//
   	   				var equirements = msg.equirements;
   	   				var Actiontime = msg.Actiontime;
   	   				
   	   				$("#categoryName").append(categoryName);
   	   				$("#position").html(position);
   	   				$("#equirements").html(equirements);
   	   				$("#Actiontime").append(Actiontime);
   	   			}
   			});
		});
	</script>
</body>
</html>