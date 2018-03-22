<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>娱乐看点后台管理</title>

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
						<li><a href="success.action">娱乐新闻管理 <span
								class="sr-only">(current)</span></a></li>
						<li class="active"><a href="yuLeKanDianBackAction.action">娱乐看点管理</a></li>
						<li><a href="yuLeSongBackAction.action">歌曲管理</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
		<hr>
			<!-- Button trigger modal -->
			<div style="text-align: right;">
				<button type="button"  class="btn btn-success" data-toggle="modal" data-target="#myModal">
				  	新建娱乐看点
				</button>
			</div>
			
			<!-- 新建娱乐看点  Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">新建娱乐新闻</h4>
			      </div>
			      <div class="modal-body">
			        <form action="saveYuLeKandianAction.action" method="post">
						  <div class="form-group">
						    <label for="title">标题</label>
						    <input type="text" class="form-control" id="title" name="yuLeKandian.title" placeholder="title">
						  </div>
						  <div class="form-group">
						    <label for="imgurl">图片链接</label>
						    <input type="text" class="form-control" id="imgurl" name="yuLeKandian.imgurl" placeholder="imgurl">
						  </div>
						  
						  <div class="form-group">
						    <label for="intro">简介</label>
						    <input type="text" class="form-control" id="intro" name="yuLeKandian.intro" placeholder="intro">
						  </div>
						  
						   <div class="form-group">
						    <label for="exampleInputPassword1">娱乐新闻内容</label>
						    <textarea class="form-control" rows="8" name="yuLeKandian.content"></textarea>
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
			        <h4 class="modal-title" id="myEditModalLabel">编辑娱乐看点</h4>
			      </div>
			      <div class="modal-body">
			        <form action="editSaveYuLeKandianAction.action" method="post">
			        	  <div class="form-group">
						    <input type="hidden" class="form-control" id="newsid" name="id">
						  </div> 
			        		
						  <div class="form-group">
						    <label for="title">标题</label>
						    <input type="text" class="form-control" id="edittitle" name="yuLeKandian.title" placeholder="title">
						  </div>
						  <div class="form-group">
						    <label for="imgurl">图片链接</label>
						    <input type="text" class="form-control" id="editimgurl" name="yuLeKandian.imgurl" placeholder="imgurl">
						  </div>
						  
						  <div class="form-group">
						    <label for="intro">简介</label>
						    <input type="text" class="form-control" id="editintro" name="yuLeKandian.intro" placeholder="intro">
						  </div>
						  
						   <div class="form-group">
						    <label for="exampleInputPassword1">娱乐新闻内容</label>
						    <textarea class="form-control" rows="8" name="yuLeKandian.content" id="edittextarea"></textarea>
						  </div>
						  	  
						  <div class="form-group" style="text-align: center;">
						    <label for="submit">保存修改</label>&nbsp;&nbsp;&nbsp;
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
			$.get("yuLeKanDianJsonListAction.action", function(data) {
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
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.title);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.intro);
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
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.title);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.intro);
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
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.title);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.intro);
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
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.title);
					var divcontent = $("<div></div>").addClass("panel-body").append(item.intro);
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
					var h3 = $("<h3></h3>").addClass("panel-title").append(item.title);
					var divcontent = 						$("<div></div>").addClass("panel-body").append(item.intro);
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
				url: "deleteYuLeKandianAction.action",
				data: "id="+id,
				success: function() {
					// window.location="success.action";
					callAction();
				} 
			});
		}
		
		// 导入编辑娱乐看点的数据
		function loadedit(id) {
			$.ajax({
					type: "GET",
					url: "editYuLeKandianAction.action",
					data: "id="+id,
					dataType: "json",
					success: function(data) {
						$("#newsid").val(data.id);
						$("#edittitle").val(data.title);
						$("#editimgurl").val(data.imgurl);
						$("#editintro").val(data.intro);
						$("#edittextarea").val(data.content);
					}
			});
		}
	</script>
</body>
</html>