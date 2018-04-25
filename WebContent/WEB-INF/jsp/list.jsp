<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Theme Made By www.w3schools.com - No Copyright -->
	  <title>基于 Struts2 的综合性娱乐网站</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <script src="static/js/jquery.min.js"></script>
	  <script src="static/js/bootstrap.min.js"></script>
		<style>
			#button {
			 width: 100%;;
			 border-right: 1px solid #000;
			 padding: 0 0 1em 0;
			 margin-bottom: 1em;
			 font-family: 'Trebuchet MS', 'Lucida Grande',
			   Verdana, Lucida, Geneva, Helvetica, 
			   Arial, sans-serif;
			 background-color: #90bade;
			 color: #333;
			 }
			 
			 #button ul {
			  list-style: none;
			  margin: 0;
			  padding: 0;
			  border: none;
			  }
			  
			 #button li {
			  border-bottom: 1px solid #90bade;
			  margin: 0;
			  }
			  
			 #button li a {
				display: block;
				padding: 5px 5px 5px 0.5em;
				border-left: 10px solid #1958b7;
				border-right: 10px solid #508fc4;
				background-color: #2175bc;
				color: #fff;
				text-decoration: none;
				width: 100%;
			} 
			  html>body #button li a {
				width: auto;
			  } 
			  #button li a:hover {
				  border-left: 10px solid #1c64d1;
				  border-right: 10px solid #5ba3e0;
				  background-color: #2586d7;
				  color: #fff;
			  }
		</style>
	</head>
	<body>
		<nav class="navbar navbar-default navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="/sshsite">返回首页</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>
		<div id="button">
			<ul id="newsList">
			 <li><a href="#">Home</a></li>
			 <li><a href="#">Hidden Cameras</a></li>
			 <li><a href="#">CCTV Cameras</a></li>
			 <li><a href="#">Employee Theft</a></li>
			 <li><a href="#">Helpful Hints</a></li>
			 <li><a href="#">F.A.Q</a></li>
			 <li><a href="#">About Us</a></li>
			 <li><a href="#">Contact Us</a></li>
			</ul>
		</div>
	</body>
	<script type="text/javascript">
		$(function() {
			newsList();
		});
	
		// 填充首页三个娱乐看点
		function newsList() {
			$.ajax({
				type: "GET",
				url: "yuLeNewsBackAction.action",
				dataType: "json",
				success: function(data) {
					$("#newsList").empty();
					$.each(data, function(index, item) {
						var li = $("<li></li>");
						var lia = $("<a></a>").attr("href","showANewsAction.action?id="+item.id);
						lia.append(item.title);
						lia.appendTo(li);
						li.appendTo("#newsList");
					});
				}
			});
		}
	</script>
</html>

