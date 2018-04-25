<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<title>基于 Struts2 的综合性娱乐网站</title>
	
	<meta charset="utf-8" />
	<!-- <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" /> -->
	
	<!-- Stylesheets -->
	<link rel="stylesheet" type="text/css" href="static/showanews/elastislide/css/elastislide.css" />
	<link rel="stylesheet" type="text/css" href="static/showanews/elastislide/css/custom.css" />
	<link rel="stylesheet" type="text/css" href="static/showanews/javascripts/fancybox/jquery.fancybox-1.3.4.css" />
	<link rel="stylesheet" type="text/css" href="static/showanews/stylesheets/tipsy.css" />
	<link rel="stylesheet" type="text/css" href="static/showanews/stylesheets/base.css" />
	<link rel="stylesheet" type="text/css" href="static/showanews/stylesheets/media.queries.css" />
	
	<!-- Javascripts -->
	<script type="text/javascript" src="static/showanews/javascripts/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="static/showanews/elastislide/js/modernizr.custom.17475.js"></script>
	<script type="text/javascript" src="static/showanews/elastislide/js/jquerypp.custom.js"></script>
	<script type="text/javascript" src="static/showanews/elastislide/js/jquery.elastislide.js"></script>
	<script type="text/javascript" src="static/showanews/javascripts/html5shiv.js"></script>
	<script type="text/javascript" src="static/showanews/javascripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<script type="text/javascript" src="static/showanews/javascripts/jquery.tipsy.js"></script>
	<script type="text/javascript" src="static/showanews/javascripts/jquery.infieldlabel.js"></script>
	<script type="text/javascript" src="static/showanews/javascripts/jquery.nav.min.js"></script>
	<script type="text/javascript" src="static/showanews/javascripts/base.js"></script>
	
</head>
	<body>

<div id="page_wrapper">	
	<!-- Start Header -->
	<header>
		<nav class="navbar navbar-default navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="/sshsite">返回首页</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>
		<!-- <nav class="container">
			<ul>
				<li class="current"><a href="#intro">Home</a></li>
				<li><a href="#the_story">Our Story</a></li>
				<li><a href="#gallery">Pictures</a></li>
				<li><a href="#party">Wedding Party</a></li>
				<li><a href="#venue">Venue</a></li>
				<li><a href="#travel">Travel</a></li>
				<li><a href="#registry">Registry</a></li>
				<li><a href="#rsvp">RSVP</a></li>
				<li><a href="#contact">Contact</a></li>
				<li><a href="###">Styles</a></li>
			</ul>
		</nav> -->
	</header>  
	<!-- End Header -->
	
	<!-- Start Intro -->
	<section id="intro" class="container">
		
		<!-- Start Logo Text Version -->
		<div id="logo_wrap">		
			<h1>
			<span>娱乐</span>
				<span>有趣</span>
				<span class="circle_1">
					<span class="circle_2">
						&amp;
					</span>
				</span>			
				<span>新闻</span>
				<span>&nbsp;&nbsp;&nbsp;&nbsp;CJC</span>
			</h1>	
		</div>
		<!-- End Logo Text Version -->
		
		<!-- Start Logo Image Version -->
		<img class="logo" src="static/showanews/images/logo.png" alt="Lilian &mp; Bryan's Wedding" />
		<!-- Start Logo Image Version -->
		
		<span class="double_line"></span>
		<p id="title" style="text-align: center;font-size: 20px;">我</p>
		<span class="double_line"></span>
		
		<div class="date">
			<em id="date">June 1st, 2013</em>
			<span>in</span>
			<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Struts2 website, CJC</em>
		</div>
		
		<img id="img" src="" alt="" />
		
	</section>
	<!-- End Intro -->
	
	<!-- Start Pages Container -->
	<section id="pages" class="container">
		
		<!-- Start The Story -->
		<div id="the_story" class="page">
		
			<div class="heading">
				<h3>content</h3>
				<div class="section_icon">
					<span class="icon">&hearts;</span>
				</div>
			</div>
			
			<div class="content">
				
				<div class="bride">
					<span class="subtitle">简介</span>
					<h2>intro</h2>
					<p id="intro1">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras mattis consectetur purus sit amet fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascettvur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida Donec id elit.</p>
				</div>
				
				<div class="groom">
					<span class="subtitle">简介</span>
					<h2>intro</h2>
					<p id="intro2">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras mattis consectetur purus sit amet fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida Donec id elit.</p>
				</div>
				
				<div class="story">
					<p id="content">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras mattis consectetur purus sit amet fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla cras justo odio, dapibus.</p>
				</div>
				
				<div class="story">
					<span class="subtitle">相关链接</span><br>
					<a id="link" href="#">&nbsp;&nbsp;娱乐新闻外链</a><br>
					<a id="videourl" href="#">&nbsp;&nbsp;娱乐视频外链</a>
				</div>
			</div>
		
		</div>
		<!-- End The Story -->
		
		<!-- Start Gallery -->
		<div id="gallery" class="page">
			
			<div class="heading">
				<h3>Gallery</h3>
				<div class="section_icon">
					<span class="icon">&#128247;</span>
				</div>
			</div>
			
			<div class="content">
								
				<!-- Start Elastislide  Gallery Carousel -->
				<ul id="gallery_slider" class="elastislide-list">
					<li><a href="static/showanews/images/gallery/gallery-1.jpg" class="fancybox"><img src="static/showanews/images/gallery/gallery-1.jpg" alt="" /></a></li>
					<li><a href="static/showanews/images/gallery/gallery-2.jpg" class="fancybox"><img src="static/showanews/images/gallery/gallery-2.jpg" alt="" /></a></li>
					<li><a href="static/showanews/images/gallery/gallery-3.jpg" class="fancybox"><img src="static/showanews/images/gallery/gallery-3.jpg" alt="" /></a></li>
					<li><a href="static/showanews/images/gallery/gallery-4.jpg" class="fancybox"><img src="static/showanews/images/gallery/gallery-4.jpg" alt="" /></a></li>
					<li><a href="static/showanews/images/gallery/gallery-5.jpg" class="fancybox"><img src="static/showanews/images/gallery/gallery-5.jpg" alt="" /></a></li>
				</ul>
				<!-- End Elastislide Gallery Carousel -->

			</div>
			
		</div>
		<!-- End Gallery -->
		
	</section>
	<!-- End Pages Container -->

	<!-- Start Footer -->
	<footer class="container">
		<p>基于 Struts2 的综合性娱乐网站</p>
	</footer>
	<!-- End Footer -->
</div>

<script>
	$(function() {
		getANews();
	});
	
	
	function getANews() {
		$.ajax({
			type: "GET",
			url: "editYuLeNewsAction.action",
			data: "id=" + <%= request.getAttribute("id") %>,
			dataType: "json",
			success: function(data) {
				$("#img").attr("src", data.imgurl);
				$("#title").text(data.title);
				$("#intro1").text(data.intro);
				$("#intro2").text(data.intro);
				$("#content").text(data.content);
				
				var datestr = new Date(data.date.time - (data.date.timezoneOffset
						* 60000)).toLocaleDateString();
				$("#date").text(parseDateNormal(datestr));
				$("#link").attr("href",data.link);
				$("#videourl").attr("href", data.videourl);
			}
		});
	}
	
	// 解析时间戳函数 解析后格式为 xxxx-x(小于10，这个为0)x-xx
	function parseDateNormal(dateStr) {
		var now = new Date(dateStr);  
		//格式化日，如果小于9，前面补0  
		var day = ("0" + now.getDate()).slice(-2);  
		//格式化月，如果小于9，前面补0  
		var month = ("0" + (now.getMonth() + 1)).slice(-2);  
		//拼装完整日期格式  
		var date = now.getFullYear()+"-"+(month)+"-"+(day) ;
		return date; 
	}
</script>


</body>
</html>