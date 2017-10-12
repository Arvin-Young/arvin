<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>招聘</title>
<link rel="stylesheet" type="text/css" href="../css/zhaopin.css">
</head>
<body>
	<div class="banner">
        <div class="nav_bg"></div>
        <div class="nav">
              <img src="../img/logo.png"/>    
              <!-- <form action="dizhi/zixunpage2.do" >
                  <a href="dizhi/zixunpage2.do"><button class="zhaopin" >公司资讯</button>
                  </a>
              </form>
              address/zhaopin.do
              <form action="javascript:history.go(0)" >
                 <a href="javascript:history.go(0)"><button class="zhaopin" >招聘职位</button>
                 </a>
              </form> -->
              <a href="javascript:history.go(-1)">
              	<button class="shouye" style="border:0px;" >&nbsp;首页&nbsp;</button>
              </a>
        </div>      
    </div> 
    <div class="recruit_bg">
    	<div class="recruit">
            <div class="title">
                <h3>招聘职位</h3>
                <h6>(recruit)</h6>
                <hr/>
            </div>
            <div class="recruit_content">
            	<ul>
                    <!-- content -->
                </ul>
            </div>
        </div>
    </div>    
    <div class="foot_bg" style="margin-top:0%;">
    	<div class="foot" style="border: 0px;">
        	<p style="">Copyright © 2016上海蔚星数据科技</p>
            <p>All rights reserved</p>
        </div>
    </div>
    <div style="width: 100%;height: 15px;background-color: #131b2c;position: fixed; bottom: 0;"></div>
    <script type="text/javascript" src="../js/jquery-3.0.0.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$(".shouye").mouseout(function(){
    			$(".shouye").css({'border-top':'0px solid white','border-bottom':'0px solid white','color':'white'});
    		});
    		$(".shouye").mouseover(function(){
    			$(".shouye").css({'border-top':'1px solid white','border-bottom':'1px solid white','color':'white'});
    		});
   		  /**
   	       * 招聘职位
   	       */
   		   $.ajax({
   	   			type: "GET",
   	   			url: "http://localhost:8080/Java/information.do",
   	   			data: "number=-1",//-1表示显示全部数据
   	   			success: function(msg){
   	   				var content = "";
   	   				for(var i=0;i<msg.length;i++){
   	   					if(typeof(msg[i].categoryName)!='undefined'){
	   	   					var categoryName = msg[i].categoryName;
	   	   					var position = msg[i].position;
	   	   					var categoryId = msg[i].categoryId;
	   	   					var Actiontime = msg[i].Actiontime;
	   	   						var url = "xiangqinPage.do?id="+categoryId;
	   	   						var information = '<a href='+url+'>'
	   	   										  +	'<li title='+categoryId+'>'
	   	   										  + '<a href='+url+'><h2>'+categoryName+'</h2></a>'
	   	   										  + '<a href='+url+'><h4>岗位职责：</h4></a>'
	   	   										  +	'<a href='+url+'><p>'
	   	   										  + position.substring(0,90) + "..."
	   	   										  + '</p>'
	   	   										  + '</a>'
	   	   										  + '<p class="time">'+Actiontime+'</p>'
	   	   										  + '</li>'
	   	   										  + '</a>';
	   	   						content = content + information;
   	   					}
   	   				}
   	   				content = content.replace(/<br>/g,"");
   	   				$(".recruit_content ul").append(content);
   	   			}
   			});
    	});
    </script>
    
</body>
</html>