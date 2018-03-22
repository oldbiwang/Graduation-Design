<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html lang="zh">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>基于 Struts2 的综合性娱乐网站</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="static/css/bootstrap.min.css">
   <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"> 
  <script src="static/js/jquery.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <style>
   body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(10%);
      filter: grayscale(10%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #03A9F4;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
 
  </style>

<script>
var _hmt = _hmt || [];
(function() {
var hm = document.createElement("script");
hm.src = "//hm.baidu.com/hm.js?73c27e26f610eb3c9f3feb0c75b03925";
var s = document.getElementsByTagName("script")[0];
s.parentNode.insertBefore(hm, s);
})();
</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

	<nav class="navbar navbar-default navbar-fixed-top">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#myPage">Logo</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#myPage">首页</a></li>
	        <li><a href="#yulenews">娱乐新闻</a></li>
	        <li><a href="#yulekandian">娱乐看点</a></li>
	        <li><a href="#song">在线听歌</a></li>
	       <!--  <li class="dropdown">
	          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
	          <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">Merchandise</a></li>
	            <li><a href="#">Extras</a></li>
	            <li><a href="#">Media</a></li> 
	          </ul>
	        </li>
	        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li> -->
	      </ul>
	    </div>
	  </div>
	</nav>

	<!-- 图片首页滑动栏 -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
	      <div class="item active">
	        <img src="static/img/3.jpg" alt="New York" width="1200" height="700">
	        <div class="carousel-caption">
	          <h3>友谊</h3>
	          <p>一路同行</p>
	        </div>      
	      </div>
	
	      <div class="item">
	        <img src="static/img/5.jpg" alt="Chicago" width="1200" height="700">
	        <div class="carousel-caption">
	          <h3>梦想</h3>
	          <p>年轻就是希望，希望成就梦想</p>
	        </div>      
	      </div>
	    
	      <div class="item">
	        <img src="static/img/8.jpg" alt="Los Angeles" width="1200" height="700">
	        <div class="carousel-caption">
	          <h3>定格</h3>
	          <p>一切终将逝去，愿定格在此时</p>
	        </div>      
	      </div>
	    </div>

	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	</div>

	<!-- Container 娱乐新闻部分 -->
	<div id="yulenews" class="container text-center">
	  <h3>娱乐新闻</h3>
	  
	<div class="bs-example" data-example-id="thumbnails-with-custom-content">
		 <div class="row"> 
		 	<div class="col-sm-6 col-md-4"> 
		 		<div class="thumbnail"> 
		 			<img id="yulenewsimg1" alt="100%x200" data-src="holder.js/100%x200" src="" data-holder-rendered="true" style="height: 200px; 				width: 100%; display: block;"> 
		 			<div class="caption"> 
		 				<h3 id="yulenewstitle1">Thumbnail label</h3> 
		 				<p id="yulenewsintro1">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> 
		 				<p>
		 					<a id="yulenewsbtn1" href="#" class="btn btn-primary" role="button">More</a> 
		 				</p> 
		 			</div> 
		 	   </div> 
		   </div> 
		   <div class="col-sm-6 col-md-4"> 
		   		<div class="thumbnail"> 
		   			<img id="yulenewsimg2" alt="100%x200" data-src="holder.js/100%x200" src="" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;"> 
		   			<div class="caption"> 
		   				<h3 id="yulenewstitle2">Thumbnail label</h3> 
		   				<p id="yulenewsintro2">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> 
		   				<p>
		   					<a id="yulenewsbtn2" href="#" class="btn btn-primary" role="button">More</a> 
		   				</p> 
		   			</div> 
		   		</div>
		  </div> 
		  <div class="col-sm-6 col-md-4"> 
		  	<div class="thumbnail"> 
		  		<img id="yulenewsimg3" alt="100%x200" data-src="holder.js/100%x200" src="" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
		  		 <div class="caption"> 
		  		 	<h3 id="yulenewstitle3">Thumbnail label</h3> 
		  		 	<p id="yulenewsintro3">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> 
		  		 	<p>
		  		 		<a id="yulenewsbtn3" href="#" class="btn btn-primary" role="button">More</a> 
		  		 	</p>
		  		 </div> 
		  	</div> 
		  </div> 
	   </div> 
	</div>
	  
	</div>

	<!-- Container 娱乐看点部分 -->
	<div id="yulekandian" class="bg-1 yulekandian">
	  <div class="container">
	    <h3 class="text-center">娱乐看点</h3>
		<div class="bs-example" data-example-id="media-alignment"> 
			<div class="media"> 
				<div class="media-left"> 
					<a href="#"> 
						<img id="yulekandianimg1" alt="64x64" class="media-object" data-src="holder.js/64x64" src="" data-holder-rendered="true" style="width: 64px; height: 64px;"> 
					</a> 
				</div> 
				<div class="media-body"> 
					<h4 id="yulekandiantitle1" class="media-heading">Top aligned media</h4> 
					<p id="yulekandianintro1">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p> 
					<!-- <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p> --> 
				</div> 
			</div> 
			<div class="media"> 
				<div class="media-left media-middle"> 
					<a href="#"> 
						<img id="yulekandianimg2" alt="64x64" class="media-object" data-src="holder.js/64x64" src="" data-holder-rendered="true" style="width: 64px; height: 64px;"> 
					</a> 
				</div> 
				<div class="media-body"> 
					<h4 id="yulekandiantitle2" class="media-heading">Middle aligned media</h4> 
					<p id="yulekandianintro2">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p> 
					<!-- <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>  -->
				</div> 
			</div> 
			<div class="media"> 
				<div class="media-left media-bottom"> 
					<a href="#"> 
						<img id="yulekandianimg3" alt="64x64" class="media-object" data-src="holder.js/64x64" src="" data-holder-rendered="true" style="width: 64px; height: 64px;"> 
					</a> 
				</div> 
				<div class="media-body"> 
					<h4 id="yulekandiantitle3" class="media-heading">Bottom aligned media</h4> 
					<p id="yulekandianintro3">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p> 
					<!-- <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>  -->
				</div> 
			</div> 
		</div>
	 </div>
  </div>

	<!-- Container 在线听歌部分 -->
	<div id="song" class="container">
	  <h3 class="text-center">Song</h3>
	  <p class="text-center"><em>We love our fans!</em></p>
	  <ul class="list-group">
		  <li class="list-group-item">First item</li>
		  <li class="list-group-item">Second item</li>
		  <li class="list-group-item">Third item</li>
	 </ul>

	  <br>


	<!-- Footer -->
	<footer class="text-center">
	  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
	    <span class="glyphicon glyphicon-chevron-up"></span>
	  </a><br><br>
	  <p>Bootstrap Theme Made By <a href="../default.html" data-toggle="tooltip" title="Visit w3schools">www.w3schools.com</a></p> 
	</footer>

	<script>
		$(function() {
			getYuLeNews();
			getYuLeKandian();
		});
		
		// 填充首页三个娱乐新闻
		function getYuLeNews() {
			$.ajax({
				type: "GET",
				url: "yuLeNewsBackAction.action",
				dataType: "json",
				success: function(data) {
					var jsonArray = data;
					for(var i = 0; i <= 3; i++) {
						var item = jsonArray[i];
						if(i == 0) {
							$("#yulenewsimg1").attr("src", item.imgurl);
							$("#yulenewstitle1").text(item.title);
							$("#yulenewsintro1").text(item.intro);
						}
						
						if(i == 1) {
							$("#yulenewsimg2").attr("src", item.imgurl);
							$("#yulenewstitle2").html(item.title);
							$("#yulenewsintro2").html(item.intro);
						}
						
						if(i == 2) {
							$("#yulenewsimg3").attr("src", item.imgurl);
							$("#yulenewstitle3").text(item.title);
							$("#yulenewsintro3").text(item.intro);
						}
					}
				}
			});
		}
		
		// 填充首页三个娱乐看点
		function getYuLeKandian() {
			$.ajax({
				type: "GET",
				url: "yuLeKanDianJsonListAction.action",
				dataType: "json",
				success: function(data) {
					var jsonArray = data;
					for(var i = 0; i < 3; i++) {
						if(i == 0) {
							$("#yulekandianimg1").attr("src", jsonArray[i].imgurl);
							$("#yulekandiantitle1").text(jsonArray[i].title);
							$("#yulekandianintro1").text(jsonArray[i].intro);
						}
						
						if(i == 1) {
							$("#yulekandianimg2").attr("src", jsonArray[i].imgurl);
							$("#yulekandiantitle2").text(jsonArray[i].title);
							$("#yulekandianintro2").text(jsonArray[i].intro);
						}
						
						if(i == 2) {
							$("#yulekandianimg3").attr("src", jsonArray[i].imgurl);
							$("#yulekandiantitle3").text(jsonArray[i].title);
							$("#yulekandianintro3").text(jsonArray[i].intro);
						}
					}
				}
			});
		}
	
		$(document).ready(function(){
		  // Initialize Tooltip
		  $('[data-toggle="tooltip"]').tooltip(); 
		  
		  // Add smooth scrolling to all links in navbar + footer link
		  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
		
		    // Prevent default anchor click behavior
		    event.preventDefault();
		
		    // Store hash
		    var hash = this.hash;
		
		    // Using jQuery's animate() method to add smooth page scroll
		    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
		    $('html, body').animate({
		      scrollTop: $(hash).offset().top
		    }, 900, function(){
		   
		      // Add hash (#) to URL when done scrolling (default click behavior)
		      window.location.hash = hash;
		    });
		  });
		})

	</script>
</body>
</html>
