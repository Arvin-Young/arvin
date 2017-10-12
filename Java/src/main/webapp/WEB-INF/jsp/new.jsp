<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>new</title>
<link href="../css/index.css" rel="stylesheet"/>
<style>
	body{min-width:1000px;min-height: 900px;}
</style>
</head>
	<body style="background-color: #f4f4f4;">
		<div id="myweb">
			<div class="banner">      
		        <div class="nav_content"  style="height: 90px;">
		            <div class="nav_bg" style="opacity:1.0"></div>
		            <div class="nav">
		                <img src="../img/logo.png"/>
	                    <p style="color: white;margin-left: 80%;">网站正在开发中...</p>
		            </div>
		        </div> 
		    </div>
		</div>
		<h3>&nbsp;</h3>
		<center>
			<h3 style="margin-top: 20px;" id="headline"></h3>
			<p style="margin-top: 20px; font-size: 12px; color: #9E9E9E;" id="uptime"></p>
			<div style="width: 50%; margin-top: 25px;">
				<p id="body" style="text-align: left;">
					
				</p>
			</div>
		</center>
		<div id="imgs" style="width: 35%; height: 500px; margin: auto auto;/* background: url(../img/zixun_detail.png) no-repeat; */background-size: 100%;margin-top: 40px;margin-bottom: 40px;">
				
		</div>
		
		<div class="foot_bg" style="margin-top:0px ;">
    	<div class="foot">
        	<p>Copyright © 2016上海蔚星数据科技</p>
            <p>All rights reserved</p>
        </div>
	    </div>
	    <div style="width: 100%;height: 15px;background-color: #131b2c;position: fixed; bottom: 0;"></div>
		<script type="text/javascript" src="../js/jquery-3.0.0.js"></script>
		<script type="text/javascript">
			var id = "${requestScope.id}";
			$(function(){
				 $.ajax({
	   	   			type: "GET",
	   	   			url: "http://localhost:8080/Java/address/Oneissuemessage.do",
	   	   			data: "id="+id,//-1表示显示全部数据
	   	   			success: function(msg){
	   	   				var headline = msg.headline;
	   	   				var uptime = msg.uptime;
	   	   				var body = msg.body;
	   	   				var images = msg.images;
	   	   				$("#headline").append(headline);
	   	   				$("#uptime").append(uptime);
	   	   				console.log(images);
	   	   				$("#imgs").css("background",images + ' no-repeat');
	   	   				$("#imgs").css("background-size",'100% 100%');
	   	   				$("#body").append(body);	
	   	   				
	   	   			}
	   			});
			});
		</script>
	</body>
</html>