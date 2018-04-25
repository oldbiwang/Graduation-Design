<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>娱乐新闻后台管理</title>

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
						<li class="active"><a href="successAction.action">娱乐新闻管理 <span
								class="sr-only">(current)</span></a></li>
						<li><a href="yuLeKanDianBackAction.action">娱乐看点管理</a></li>
						<li><a href="yuLeSongBackAction.action">歌曲管理</a></li>
						<li><a href="logoutAction.action">退出登录</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
		<hr>
			<!-- Button trigger modal -->
			<div style="text-align: right;">
				<button type="button"  class="btn btn-success" data-toggle="modal" data-target="#myModal">
				  	新建娱乐新闻
				</button>
			</div>
			
			<!-- 新建 Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">新建娱乐新闻</h4>
			      </div>
			      <div class="modal-body">
			        <form action="saveYuLeNewsAction.action" method="post">
						  <div class="form-group">
						    <label for="title">标题</label>
						    <input type="text" class="form-control" id="title" name="yuLeNews.title" placeholder="title">
						  </div>
						  <div class="form-group">
						    <label for="imgurl">图片链接</label>
						    <input type="text" class="form-control" id="imgurl" name="yuLeNews.imgurl" placeholder="imgurl">
						  </div>
						  
						  <div class="form-group">
						    <label for="intro">简介</label>
						    <input type="text" class="form-control" id="intro" name="yuLeNews.intro" placeholder="intro">
						  </div>
						  
						   <div class="form-group">
						    <label for="exampleInputPassword1">娱乐新闻内容</label>
						    <textarea class="form-control" rows="8" name="yuLeNews.content"></textarea>
						  </div>
						  
						  <div class="form-group">
						    <label for="datetime">日期</label>
						    <input type="date" class="form-control" id="date" name="yuLeNews.date" placeholder="date">
						  </div>
						  
						  <div class="form-group">
						    <label for="link">外部链接</label>
						    <input type="text" class="form-control" id="link" name="yuLeNews.link" placeholder="link">
						  </div>
						  
						  <div class="form-group">
						    <label for="videourl">视频链接</label>
						    <input type="text" class="form-control" id="videourl" name="yuLeNews.videourl" placeholder="videourl">
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
			        <h4 class="modal-title" id="myEditModalLabel">编辑娱乐新闻</h4>
			      </div>
			      <div class="modal-body">
			        <form action="editSaveYuLeNewsAction.action" method="post">
			        	  <div class="form-group">
						    <input type="hidden" class="form-control" id="newsid" name="id">
						  </div> 
			        		
						  <div class="form-group">
						    <label for="title">标题</label>
						    <input type="text" class="form-control" id="edittitle" name="yuLeNews.title" placeholder="title">
						  </div>
						  <div class="form-group">
						    <label for="imgurl">图片链接</label>
						    <input type="text" class="form-control" id="editimgurl" name="yuLeNews.imgurl" placeholder="imgurl">
						  </div>
						  
						  <div class="form-group">
						    <label for="intro">简介</label>
						    <input type="text" class="form-control" id="editintro" name="yuLeNews.intro" placeholder="intro">
						  </div>
						  
						   <div class="form-group">
						    <label for="exampleInputPassword1">娱乐新闻内容</label>
						    <textarea class="form-control" rows="8" name="yuLeNews.content" id="edittextarea"></textarea>
						  </div>
						  
						  <div class="form-group">
						    <label for="datetime">日期</label>
						    <input type="date" class="form-control" id="editdate" name="yuLeNews.date">
						  </div>
						  
						  <div class="form-group">
						    <label for="link">外部链接</label>
						    <input type="text" class="form-control" id="editlink" name="yuLeNews.link" placeholder="link">
						  </div>
						  
						  <div class="form-group">
						    <label for="videourl">视频链接</label>
						    <input type="text" class="form-control" id="editvideourl" name="yuLeNews.videourl" placeholder="videourl">
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
			$.get("yuLeNewsBackAction.action", function(data) {
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
				url: "deleteYuLeNewsAction.action",
				data: "id="+id,
				success: function() {
					// window.location="success.action";
					callAction();
				} 
			});
		}
		
		// 导入编辑娱乐新闻的数据
		function loadedit(id) {
			$.ajax({
					type: "GET",
					url: "editYuLeNewsAction.action",
					data: "id="+id,
					dataType: "json",
					success: function(data) {
						$("#newsid").val(data.id);
						$("#edittitle").val(data.title);
						$("#editimgurl").val(data.imgurl);
						$("#editintro").val(data.intro);
						
						$("#edittextarea").val(data.content);
						var datestr = new Date(data.date.time - (data.date.timezoneOffset
								* 60000)).toLocaleDateString();
					
						$("#editdate").val(parseDateNormal(datestr));
						$("#editlink").val(data.link);
						
						$("#editvideourl").val(data.videourl);
					}
			});
	
		}
		
		/* function editsave(id) {
			$.ajax({
				type: "GET",
				url: "editSaveYuLeNewsAction.action",
				data: "id="+id,
				success: function() {
					alert("编辑修改保存成功！");
				}
			});
		} */
			
		
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