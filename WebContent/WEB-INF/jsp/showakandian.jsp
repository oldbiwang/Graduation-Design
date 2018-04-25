<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>基于 Struts2 的综合性娱乐网站</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="static/showakandian/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="static/showakandian/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="static/showakandian/assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
	
		<!-- Header -->
		<section id="header">
			<nav class="navbar navbar-default navbar-fixed-top">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="/sshsite">返回首页</a></li>
			      </ul>
			    </div>
			  </div>
			</nav>
			<header>
				<h1>娱乐看点</h1>
				<p>By CJC</p>
			</header>
			<footer>
				<a href="#banner" class="button style2 scrolly-middle">follow me</a>
			</footer>
		</section>

		<!-- Banner -->
		<section id="banner">
			<header>
				<h2>this is a poem</h2>
			</header>
			<p> 春天的诗行.<br /> by 思绪微漾<br />
				&nbsp;&nbsp;春天，写下串串诗行<br />
				让清浅的时光 
				婉约在春日的曼妙中<br />
				在阳光下
				心间也萌发出
				稚嫩的新芽 <br />
				内心
				正孕育着一场春花烂漫
				撒满内心的芬芳<br />
				馨香着温暖的情怀
				一些牵念 
				正在生根发芽 <br />
				让爱的思绪
				飞舞在生命的春风里 <br />
				欢唱着
				迎接新的勃勃生机<br />
				春天的诗行
				充满了爱的味道 <br />
				愿所有的美好
				都温柔绽放 <br />
				愿所有的深情
				都拥抱芳华<br />
				春天的芳颜
				娇颜早已已倾城倾国 <br />
				一首浅浅的诗
				染墨于河畔的柳枝 <br />
				顾盼生怜着
				醉在馥郁的桃花香里<br />
				悄然舞起
				一曲曼妙的霓裳舞曲
				</p>
			<footer>
				<a href="#first" class="button style2 scrolly">娱乐看点</a>
			</footer>
		</section>

		<!-- Feature 1 -->
			<article id="first" class="container box style1 right">
				<a href="#" class="image fit"><img src="static/showakandian/images/pic01.jpg" alt="" /></a>
				<div class="inner">
					<header>
						<h2>title</h2>
					</header>
					<p  id="title">Tortor faucibus ullamcorper nec tempus purus sed penatibus. Lacinia pellentesque eleifend vitae est elit tristique velit tempus etiam.</p>
				</div>
			</article>

		<!-- Feature 2 -->
			<article class="container box style1 left">
				<a href="#" class="image fit"><img src="static/showakandian/images/pic02.jpg" alt="" /></a>
				<div class="inner">
					<header>
						<h2>intro</h2>
					</header>
					<p id="intro">Rhoncus mattis egestas sed fusce sodales rutrum et etiam ullamcorper. Etiam egestas scelerisque ac duis magna lorem ipsum dolor.</p>
				</div>
			</article>

		<!-- Portfolio -->
			<article class="container box style2">
			<!-- 	<header>
					
				</header> -->
				<img id="img" src="" style="width : 80%; height: 80%;"/>
			</article>

		<!-- Contact -->
			<article class="container box style3">
				<header>
					<h2>content</h2>
				</header>
				<p id="content"></p>
			</article>

		<section id="footer">
			<div class="copyright">
				<ul class="menu">
					<li>基于 Struts2 的综合性娱乐网站</li>
				</ul>
			</div>
		</section>

		<!-- Scripts -->
		<script src="static/showakandian/assets/js/jquery-1.8.3.min.js"></script>
		<script src="static/showakandian/assets/js/jquery.scrolly.min.js"></script>
		<script src="static/showakandian/assets/js/jquery.poptrox.min.js"></script>
		<script src="static/showakandian/assets/js/skel.min.js"></script>
		<script src="static/showakandian/assets/js/util.js"></script>
		<!--[if lte IE 8]><script src="static/showakandian/assets/js/ie/respond.min.js"></script><![endif]-->
		<script src="static/showakandian/assets/js/main.js"></script>

	</body>
	<script type="text/javascript">
		$(function() {
			getAKandian();
		})
		
		function getAKandian() {
		$.ajax({
			type: "GET",
			url: "editYuLeKandianAction.action",
			data: "id=" + <%= request.getAttribute("id") %>,
			dataType: "json",
			success: function(data) {
				$("#img").attr("src", data.imgurl);
				$("#title").text(data.title);
				$("#intro").text(data.intro);
				$("#content").text(data.content);
			}
		});
	}
	</script>
</html>