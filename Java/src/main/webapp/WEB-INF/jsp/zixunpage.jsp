<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯</title>
<link rel="stylesheet" type="text/css" href="../css/zhaopin.css">
<style type="text/css">
	h3 {
	margin-bottom: 30px;
}
</style>
</head>
<body>
	<div class="banner" style="background:url(../img/banner_information.png) no-repeat;">
        <div class="nav_bg" ></div>
        <div class="nav">
              <img src="../img/logo.png"/>    
              <a href="javascript:history.go(-1)">
              	<button class="shouye" style="border:0px;" >&nbsp;首页&nbsp;</button>
              </a>
        </div>      
    </div> 
    <div class="recruit_bg">
    	<div class="recruit">
        	<div class="title">
                 <h3>公司资讯</h3>
                 <h6>(information)</h6>
                 <hr/>
            </div>
            <div class="recruit_content">
            	<ul id=information_zixun >
                    <!-- content -->
                </ul>	
            </div>
        </div>
    </div>    
    <div class="foot_bg" style="margin-top:0%;" >
    	<div class="foot" style="border: 0px;">
        	<p>Copyright © 2016上海蔚星数据科技</p>
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
    		//招聘职位
    		$.ajax({
      			type: "GET",
      			url: "http://localhost:8080/Java/zixun.do",
      			data: "number=2",
      			success: function(msg){
      				var content2 = "";
      				for(var i=0;i<msg.length;i++){
      					var informationId = msg[i].informationId;
      					var headline = msg[i].headline;
      					var body = msg[i].body.substring(0,200) + "...";
      					var uptime = msg[i].uptime;
      					
      					var information = '<a href="new.html">'
    						  +	'<li>'
    						  + '<a id="new1" onclick="setID(this)" name='+informationId+' title='+informationId+'><h3>'+headline+'</h3></a>' 
    						  + '<a id="new2" onclick="setID(this)" name='+informationId+' title='+informationId+'><p>'+body+''
    						  +	'</p></button></a></form>'
    						  + '<p class="time">'+uptime+'</p>';
    						  + '</li>';
      					content2 = content2 + information;
      				}
      				$("#information_zixun").append(content2);
      			}
    		});
    	});	
    	
    	function setID(data){
    		var form = document.createElement("form");
			
			form.action = "new.do";
			form.style.display = "none";
			
			var input = document.createElement("input");
			var title = data.title;
			    input.name = "id";
				input.value = title;
				form.appendChild(input);
				
			document.body.appendChild(form);	
			form.submit(); 
			return false;
		}
    </script>
    
</body>
</html>