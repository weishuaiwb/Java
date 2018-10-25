<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<script type="text/javascript" src="jquery/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
	
		<title></title>
	</head>
	<body>
		<div class="container" style="margin-top:5px;">
		<!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">头像上传</a></li>
		    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">头像上传</a></li>
		    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">规则</a></li>
		    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">整本上传</a></li>
		  </ul>
		
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="home">
		    	<h1>封面图上传</h1>
		    	<hr/>
				<div class="container">
					<div class="progress col-sm-5">
						<div id="progressDiv" class="progress-bar progress-bar-success rogress-bar-striped active" style="min-width: 2em;">
							
						</div>
						<label>请上传jpg格式图片</label>
					</div>
				</div>
				<div class="container">
					<form id="f1" class="col-sm-5" method="post" enctype="multipart/form-data">
						<input type="file" name="myFile"><br>
						<input type="hidden" name="method" value="imageFile" />
						<input type="hidden" name="tid" value="${tid }" />
						<input type="hidden" name="tname" value="${tname }" />
						<button id="btn1" type="button" class="btn btn-success">上传</button>
						
					</form>
				</div>
			</div>
		    <div role="tabpanel" class="tab-pane" id="profile">
				<div class="container">
					<h1>章节上传</h1>
		    		<hr/>
					<div class="progress col-sm-5">
						<div id="progressDiv" class="progress-bar progress-bar-success rogress-bar-striped active" style="min-width: 2em;">
							
						</div>
						<label>请上传初始章节</label>
					</div>
				</div>
				<div class="container">
					<form id="f2" class="col-sm-5" method="post" enctype="multipart/form-data">
						<input type="file" name="myFile"><br>
						<input type="hidden" name="method" value="txtFile" />
						<input type="hidden" name="tid" value="${tid }" />
						<input type="hidden" name="tname" value="${tname }" />
						<button id="btn2" type="button" class="btn btn-success">上传</button>
						
					</form>
				</div>
			</div>
			</div>
		    
		  </div>
		
	
		<%-- <div class="container">
			<div class="progress col-sm-5">
				<div id="progressDiv" class="progress-bar progress-bar-success rogress-bar-striped active" style="min-width: 2em;">
					
				</div>
				
			</div>
		</div>
		<div class="container">
			<form id="f" class="col-sm-5" method="post" enctype="multipart/form-data">
				<input type="file" name="myFile"><br>
				<input type="hidden" name="tid" value="${tid }" />
				<input type="hidden" name="tname" value="${tname }" />
				<button id="btn" type="button" class="btn btn-success">上传</button>
				
			</form>
		</div> --%>
		
		<script>
			getId('btn1').addEventListener('click',function(){
				//1.获取XMLHttpRequest对象
				var xhr = new XMLHttpRequest();
				//2.打开连接
				xhr.open('post','upload',true);
				//3.设置状态改变的回调
				xhr.onreadystatechange = function(){
					if(xhr.readyState == 4 && xhr.status == 200){
						var msg = xhr.responseText;
						alert(msg);
					}
				}
				//设置一个上传进度改变的回调
				xhr.upload.onprogress = function(pd){
					//判断是否可以获得上传的进度(服务端是否接受到文件)
					if(pd.lengthComputable){
						//获取当前进度
						var count = pd.loaded;
						console.info(count);
						//获取总长度
						var total = pd.total;
						//计算进度条的比例
						var progress = Math.round((count/total)*100) + '%';
						//修改进度条的进度
						getId('progressDiv').style.width = progress;
						getId('progressDiv').innerHTML = progress;
					}
				}
				//将form表单中的数据封装成一个formDate对象
				var data = new FormData(getId('f1'));
				//发送请求
				xhr.send(data);
			})
			
			getId('btn2').addEventListener('click',function(){
				//1.获取XMLHttpRequest对象
				var xhr = new XMLHttpRequest();
				//2.打开连接
				xhr.open('post','upload',true);
				//3.设置状态改变的回调
				xhr.onreadystatechange = function(){
					if(xhr.readyState == 4 && xhr.status == 200){
						var msg = xhr.responseText;
						alert(msg);
					}
				}
				//设置一个上传进度改变的回调
				xhr.upload.onprogress = function(pd){
					//判断是否可以获得上传的进度(服务端是否接受到文件)
					if(pd.lengthComputable){
						//获取当前进度
						var count = pd.loaded;
						console.info(count);
						//获取总长度
						var total = pd.total;
						//计算进度条的比例
						var progress = Math.round((count/total)*100) + '%';
						//修改进度条的进度
						getId('progressDiv').style.width = progress;
						getId('progressDiv').innerHTML = progress;
					}
				}
				//将form表单中的数据封装成一个formDate对象
				var data = new FormData(getId('f2'));
				//发送请求
				xhr.send(data);
			})
			
			
			function getId(id){
				return document.getElementById(id);
			}
		</script>
		
	</body>
</html>