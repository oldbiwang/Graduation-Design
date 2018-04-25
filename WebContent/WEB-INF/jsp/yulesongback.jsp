<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>歌曲后台管理</title>

    <!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<br>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">CJC</a>
				</div>
		
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="successAction.action">娱乐新闻管理 <span
								class="sr-only">(current)</span></a></li>
						<li><a href="yuLeKanDianBackAction.action">娱乐看点管理</a></li>
						<li class="active"><a href="yuLeSongBackAction.action">歌曲管理</a></li>
						<li><a href="logoutAction.action">退出登录</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
		<hr>
			<!-- Button trigger modal -->
			<div style="text-align: right;">
				<button type="button"  class="btn btn-success" data-toggle="modal" data-target="#myModal">
				  	新建歌曲
				</button>
			</div>
			
			<!-- 新建歌曲  Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">新建歌曲</h4>
			      </div>
			      <div class="modal-body">
			        <form action="saveYuLeSongAction.action" method="post">
						  <div class="form-group">
						    <label for="url">歌曲链接</label>
						    <input type="text" class="form-control" id="url" name="yuLeSong.url" placeholder="url">
						  </div>
						  
						  <div class="form-group">
						    <label for="level">歌曲排行等级</label>
						    <input type="text" class="form-control" id="level" name="yuLeSong.level" placeholder="level">
						  </div>
						  
						   <div class="form-group">
						    <label for="singer">歌手</label>
						    <input type="text" class="form-control" id="singer" name="yuLeSong.singer" placeholder="singer">
						  </div>
						  
						   <div class="form-group">
						    <label for="name">歌曲名字</label>
						    <input type="text" class="form-control" id="name" name="yuLeSong.name" placeholder="name">
						  </div>
						  
						   <div class="form-group">
						    <label for="link">歌曲外链</label>
						    <input type="text" class="form-control" id="link" name="yuLeSong.link" placeholder="link">
						  </div>
						  
						  <div class="form-group" style="text-align: center;">
						    <label for="submit">保存新建</label>&nbsp;&nbsp;&nbsp;
						    <button type="submit" id="submit" class="btn btn-primary">Submit</button>
						  </div>
						  
					</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			
			<!-- 编辑  Modal -->
			<div class="modal fade" id="myEditModal" tabindex="-1" role="dialog" aria-labelledby="myEditModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myEditModalLabel">编辑歌曲</h4>
			      </div>
			      <div class="modal-body">
			        <form action="editSaveYuLeSongAction.action" method="post">
			        	  <div class="form-group">
						    <input type="hidden" class="form-control" id="songid" name="id">
						  </div> 
			        		
						  <div class="form-group">
						    <label for="url">歌曲链接</label>
						    <input type="text" class="form-control" id="songurl" name="yuLeSong.url" placeholder="url">
						  </div>
						  <div class="form-group">
						    <label for="level">歌曲等级排行</label>
						    <input type="text" class="form-control" id="songlevel" name="yuLeSong.level" placeholder="level">
						  </div>
						  
						  <div class="form-group">
						    <label for="singer">歌手</label>
						    <input type="text" class="form-control" id="songsinger" name="yuLeSong.singer" placeholder="singer">
						  </div>
						  
						   <div class="form-group">
						    <label for="name">歌曲名字</label>
						    <input type="text" class="form-control"  name="yuLeSong.name" id="songname" placeholder="name">
						  </div>
						  
						   <div class="form-group">
						    <label for="link">歌曲外链</label>
						    <input type="text" class="form-control"  name="yuLeSong.link" id="songlink" placeholder="link">
						  </div>
						  	  
						  <div class="form-group" style="text-align: center;">
						    <label for="editsubmit">保存修改</label>&nbsp;&nbsp;&nbsp;
						    <button type="submit" id="editsubmit" class="btn btn-primary">Submit</button>
						  </div>
						  
					</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
		<hr>
		
		<div class="bs-example" id="newslist" data-example-id="contextual-panels"> 

   		</div>
	</div>
	
	  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="static/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="static/js/json2.js"></script>
	
	
	<script type="text/javascript">
		$(function() {
			callAction();	
		}); 
		
		// 页面加载完就发送 ajax 请求的函数， 返回数据 data 给回调函数
		function callAction() {
			$.get("yuLeSongJsonListAction.action", function(data) {
				callBackFunction(data)
			});
		}
		
		// 调用生成新闻列表的函数
		function callBackFunction(dataParam) {
			$("#newslist").empty();
			var jsonArrayObject = JSON.parse(dataParam);
			
			$.each(jsonArrayObject, function(index, item) {
				if(index % 5 == 0) {
					var div = $("<div></div>").addClass("panel panel-primary");
					var divheading = $("<div></div>").addClass("panel-heading");
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.singer);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.name);
					h3.appendTo(divheading);
					divcontent.append("<br>");
					divheading.appendTo(div);
					divcontent.appendTo(div);
					
					// 添加编辑删除按钮
					var btndiv = $("<div></div>").addClass("btn-group").attr("role","group").attr("aria-label","Basic example");
					var editBtn = $("<button></button>").attr("type","button")
						.addClass("btn btn-primary")
						.attr("data-toggle","modal")
						.attr("data-target","#myEditModal")
						.append("编辑");
					editBtn.click(function() {
						loadedit(item.id);
					});
					var delBtn = $("<button></button>").attr("type","button").addClass("btn btn-danger").append("删除");
					delBtn.click(function() {
						delYuLeNews(item.id);
					});
					editBtn.appendTo(btndiv);
					delBtn.appendTo(btndiv);
					btndiv.appendTo(divcontent);
				}
				
				else if(index % 5 == 1) {
					var div = $("<div></div>").addClass("panel panel-success");
					var divheading = $("<div></div>").addClass("panel-heading");
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.singer);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.name);
					h3.appendTo(divheading);
					divcontent.append("<br>");
					divheading.appendTo(div);
					divcontent.appendTo(div);
					
					// 添加编辑删除按钮
					var btndiv = $("<div></div>").addClass("btn-group").attr("role","group").attr("aria-label","Basic example");
					var editBtn = $("<button></button>").attr("type","button")
						.addClass("btn btn-primary")
						.attr("data-toggle","modal")
						.attr("data-target","#myEditModal")
						.append("编辑");
					editBtn.click(function() {
						loadedit(item.id);
					});
					var delBtn = $("<button></button>").attr("type","button").addClass("btn btn-danger").append("删除");
					delBtn.click(function() {
						delYuLeNews(item.id);
					});
					editBtn.appendTo(btndiv);
					delBtn.appendTo(btndiv);
					btndiv.appendTo(divcontent);
				}
				
				else if(index % 5 == 2) {
					var div = $("<div></div>").addClass("panel panel-info");
					var divheading = $("<div></div>").addClass("panel-heading");
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.singer);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.name);
					h3.appendTo(divheading);
					divcontent.append("<br>");
					divheading.appendTo(div);
					divcontent.appendTo(div);
					
					// 添加编辑删除按钮
					var btndiv = $("<div></div>").addClass("btn-group").attr("role","group").attr("aria-label","Basic example");
					var editBtn = $("<button></button>").attr("type","button")
						.addClass("btn btn-primary")
						.attr("data-toggle","modal")
						.attr("data-target","#myEditModal")
						.append("编辑");
					editBtn.click(function() {
						loadedit(item.id);
					});
					var delBtn = $("<button></button>").attr("type","button").addClass("btn btn-danger").append("删除");
					delBtn.click(function() {
						delYuLeNews(item.id);
					});
					editBtn.appendTo(btndiv);
					delBtn.appendTo(btndiv);
					btndiv.appendTo(divcontent);
				}
				
				else if(index % 5 == 3) {
					var div = $("<div></div>").addClass("panel panel-warning");
					var divheading = $("<div></div>").addClass("panel-heading");
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.singer);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.name);
					h3.appendTo(divheading);
					divcontent.append("<br>");
					divheading.appendTo(div);
					divcontent.appendTo(div);
					
					// 添加编辑删除按钮
					var btndiv = $("<div></div>").addClass("btn-group").attr("role","group").attr("aria-label","Basic example");
					var editBtn = $("<button></button>").attr("type","button")
						.addClass("btn btn-primary")
						.attr("data-toggle","modal")
						.attr("data-target","#myEditModal")
						.append("编辑");
					editBtn.click(function() {
						loadedit(item.id);
					});
					var delBtn = $("<button></button>").attr("type","button").addClass("btn btn-danger").append("删除");
					delBtn.click(function() {
						delYuLeNews(item.id);
					});
					editBtn.appendTo(btndiv);
					delBtn.appendTo(btndiv);
					btndiv.appendTo(divcontent);
				}
				
				else if(index % 5 == 4) {
					var div = $("<div></div>").addClass("panel panel-danger");
					var divheading = $("<div></div>").addClass("panel-heading");
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.singer);
					var divcontent =  $("<div></div>").addClass("panel-body").append(item.name);
					h3.appendTo(divheading);
					divcontent.append("<br>");
					divheading.appendTo(div);
					divcontent.appendTo(div);
					
					// 添加编辑删除按钮
					var btndiv = $("<div></div>").addClass("btn-group").attr("role","group").attr("aria-label","Basic example");
					var editBtn = $("<button></button>").attr("type","button")
						.addClass("btn btn-primary")
						.attr("data-toggle","modal")
						.attr("data-target","#myEditModal")
						.append("编辑");
					editBtn.click(function() {
						loadedit(item.id);
					});
					var delBtn = $("<button></button>").attr("type","button").addClass("btn btn-danger").append("删除");
					delBtn.click(function() {
						delYuLeNews(item.id);
					});
					editBtn.appendTo(btndiv);
					delBtn.appendTo(btndiv);
					btndiv.appendTo(divcontent);
				}
				
				div.appendTo("#newslist");
			});
		}
		
		// 删除娱乐新闻的函数
		function delYuLeNews(id) {
			$.ajax({
				type: "GET",
				url: "deleteYuLeSongAction.action",
				data: "id="+id,
				success: function() {
					//window.location="yuLeSongBackAction.action";
					callAction();
				} 
			});
		}
		
		// 导入编辑歌曲的数据
		function loadedit(id) {
			$.ajax({
					type: "GET",
					url: "editYuLeSongAction.action",
					data: "id="+id,
					dataType: "json",
					success: function(data) {
						$("#songid").val(data.id);
						$("#songsinger").val(data.singer);
						$("#songlevel").val(data.level);
						$("#songurl").val(data.url);
						$("#songname").val(data.name);
						$("#songlink").val(data.link);
					}
			});
		}
	</script>
</body>
</html>