<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link href="css/index.css" rel="stylesheet"/>
<style>
	body{min-width:1000px;}
	.about_content ul {
		width: 900px;
		height: 270px;
		margin: auto auto;
	}
	.about_content ul li{
		margin-left:60px;
			width: 215px;
		height: 210px;
		float: left;
		/*background: url(img/ruanjian.png) no-repeat;*/
	}
</style>
</head>
<body>
	<div id="myweb">
	<div class="banner">      
        <div class="nav_content">
            <video autoplay loop mute="">
                <source src="img/Satellite.mp4" type="video/mp4">
            </video>
            <div class="nav_bg"></div>
            <div class="nav">
                <img src="img/logo.png"/>
                <!-- javascript:history.go(0) -->
                <form action="address/zixunpage.do" >
                  <a href="address/zixunpage.do"><button class="zhaopin" >公司资讯</button>
                  </a>
                </form>
                <!-- address/zhaopin.do -->
                <form action="address/zhaopin.do" >
                  <a href="address/zhaopin.do"><button class="zhaopin" >招聘职位</button>
                  </a>
                </form>
               <!-- address/zixunpage.do -->
                <!-- <form action="javascript:history.go(0)"> 
                  <a href="javascript:history.go(0)"><button class="zhaopin" >首页</button>
                  </a>
                </form> -->
            </div>
            
            <div class="nav_title">
            	<img src="img/only.png"/>
            </div>       
        </div> 
    </div>
    <div class="about_bg">
        <div class="about">
            <div class="title">
                <h3>公司介绍</h3>
                <h6>(about)</h6>
                <hr/>
            </div>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上海蔚星数据科技有限公司是一家坐落于张江高科技园区的专业从事卫星智能测试平台开发、卫星PPP项目运作、数据商业化应用开发与运营的高科技企业。公司着重开展卫星整星功能与硬件测试、遥感影像数据处理与应用产品化、测试辅助工具与数据服务平台开发三大业务，同时培育卫星测控服务，拥有一支专业、精尖、年轻、活力、具有快速作战能力的创业型人才队伍，正充分发挥体制机制优势，积极投身微纳卫星的商业化、民用化进程，立志成为中国卫星商业化应用行业的领军企业。
            </p>
            <div class="about_content" style="margin-top: 70px;">
            	<ul>
            		<li style="background: url(img/b.png) no-repeat;display:none;"></li>
            		<li style="background: url(img/a.png) no-repeat; display: none;"></li>
            		<li style="background: url(img/c.png) no-repeat; display:none;"></li>
            	</ul>
            </div>
        </div>
    </div>
	<div class="contact_bg">
        <div class="title">
             <h3>联系我们</h3>
             <h6>(contact)</h6>
             <hr/>
        </div>
    	<div class="contact">
             <div class="contact_content">
             	<ul class="clearfix">
                	<li style="margin-top: 110px;opacity:0.9;">
                    	<img src="img/phone.png"/>
                        <div class="three">电话</div>
                        <h3>021-20350972</h3>
                    </li>
                    <li style="margin-top: 110pxl;opacity:0.9;">
                    	<img src="img/e_mile.png"/>
                        <div class="three">邮箱</div>
                        <h3>info@vstardata.com</h3>
                    </li>
                    <li style="margin-top: 110px;opacity:0.9;">
                    	<img src="img/address.png"/>
                        <div class="three">地址</div>
                        <h3>上海市闵行区庙泾路</h3>
                    </li>
                </ul>
             </div>
        </div>
    </</div>
    <!-- <div class="recruit_bg">
    	<div class="recruit">
            <div class="title">
                <h3>招聘职位</h3>
                <h6>(recruit)</h6>
                <hr/>
            </div>
            <div class="recruit_content">
            	<ul id="information_content">
                 	content
                </ul>
            <a href="address/zhaopin.do"><p class="more">查看更多>></p></a>
            </div>
        </</div>
    </div>  -->   
    <!-- <div class="information_bg">
    	<div class="information">
        	<div class="title">
                 <h3>公司资讯</h3>
                 <h6>(information)</h6>
                 <hr/>
            </div>
            <div class="information_content">
            	<ul id="information_zixun">
                    content
                </ul>	
            </div>
        </</div>
	</div> -->
    <div class="foot_bg">
    	<div class="foot">
        	<p>Copyright © 2016上海蔚星数据科技</p>
            <p>All rights reserved</p>
        </</div>
    </div>
    <div style="width: 100%;height: 15px;background-color: #131b2c;position: fixed; bottom: 0;"></div>
</div>
<!--
	作者：1171459431@qq.com
	时间：2017-08-30
	描述：滚动特效
-->
<script src="js/jquery-3.0.0.js"></script>
<script>
	$(function(){
		$(window).scroll(function () {
	        var height = $(window).scrollTop();//这个方法是当前滚动条滚动的距离
	        if(height > 400 ){
	        	$(".about_content ul li").fadeIn(2000);
	        }
	    });
	    
      /**
       * 招聘职位
       */
	   /* $.ajax({
   			type: "GET",
   			url: "http://localhost:8080/Java/information.do",
   			data: "number=3",
   			success: function(msg){
   				var content = "";
   				for(var i=0;i<msg.length;i++){
   					var categoryName = msg[i].categoryName;
   					var position = msg[i].position;
   					var categoryId = msg[i].categoryId;
   					var Actiontime = msg[i].Actiontime;
   					var url = "address/xiangqinPage.do?id="+categoryId;
   						var information = '<a href="'+url+'">'
   										  +	'<li>'
   										  + '<a href="'+url+'"><h2>'+categoryName+'</h2></a>'
   										  + '<a href="'+url+'"><h4>岗位职责：</h4></a>'
   										  +	'<a href="'+url+'"><p>'
   										  + position.substring(0,90) + "..."
   										  + '</p>'
   										  + '</a>'
   										  + '<p class="time">'+Actiontime+'</p>'
   										  + '</li>'
   										  + '</a>'; 
   					content = content + information;
   				}
   				$("#information_content").append(content);
   			}
		});*/
	    
	   /*
	   	公司咨询
	   */
	   /* $.ajax({
  			type: "GET",
  			url: "http://localhost:8080/Java/zixun.do",
  			data: "number=2",
  			success: function(msg){
  				var content2 = "";
  				for(var i=0;i<msg.length;i++){
  					var informationId = msg[i].informationId;
  					var headline = msg[i].headline;
  					var body = msg[i].body;
  					var uptime = msg[i].uptime;
  					
  					var information = '<a href="new.html">'
						  +	'<li>'
						  + '<a href="new?id='+informationId+'"><h3>'+headline+'</h3></a>'
						  + '<a href="new?id='+informationId+'"><p>'+body+''
						  +	'</p></a>'
						  + '<p class="time">'+uptime+'</p>';
						  + '</li>';
  					content2 = content2 + information;
  				}
  				$("#information_zixun").append(content2);
  			}
		}); */
	    
	});
</script>
</body>
</html>