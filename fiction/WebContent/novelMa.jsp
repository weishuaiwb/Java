<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 小说管理 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>  
    <title>小说管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/manage.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />

	<link rel="stylesheet" href="css/animate.css" />
	<script type="text/javascript" src="js/jquery.js" ></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="bootstrapvalidator/js/bootstrapValidator.min.js" ></script>
	<script type="text/javascript" src="bootstrapvalidator/js/language/zh_CN.js" ></script>
	<script type="text/javascript" src="layer/layer.js" ></script>
  </head>
  
  <body style="background-color:#F7F6F2;">
    <!-- <div class="header1">
    	<h2>当前位置：小说管理</h2>
    </div>
    <div class="left">
   		<ul>

 			<li><a href="authorMa.jsp">作者管理</a></li>
    		<li><a href="readerMa.jsp">读者管理</a></li>
    		<li><a href="novelMa.jsp">小说管理</a></li>


		</ul>
    </div> -->
    <div class="context" >
    	<div class="th">
	    	<form id="form1" name="form1" method="post"action="novel-manage.jsp">
	    		请输入要查询的小说标题：
	    		<input type="text" name="keyword" id="keyword" style="height:25px" />
	    		<input class="btn btn-success" type="submit" name="button" id="button" value="查询" style="cursor: pointer"/>
	    		<!-- <button class="btn btn-info"><a href="newfiction.jsp" style="color: white;">开新书</a></button> -->
	    	</form>
    	</div>
		<table class="table table-bordered table-hover text-center" id="table1">
			<tr >
				<th><input type="checkbox"></th>
				<th>序号</th>
				<th>书名</th>
				<th>作者名</th>
				<th>章节数</th>
				<th>本书状态</th>
				<th>管理操作</th>
			</tr>
				
			<c:forEach items="${TextList }" var="text" varStatus="dd">
			<tr>
				<td><input type="checkbox" name="tps" class="check" form="del" value="${text.tid }"/></td>
				<td>${dd.count }</td>
				<td>${text.tname }</td>
				<td>${text.author }</td>
				<td>${text.sectionNum }</td>
				<td>${text.condition1 }</td>
				<td>
					<button type="button" class="btn btn-primary" data-text-id="${text.tid}">
						<a href="Section?method=findSection&tid=${text.tid}" target="_blank" style="color:white;text-decoration:none;"><span class="glyphicon glyphicon-list-alt"></span> 详细信息</a>
					</button>
					<button type="button" class="btn btn-success" data-text-id="${text.tid}">
						<a href="Section?method=findSection&tid=${text.tid}" target="_blank" style="color:white;text-decoration:none;"><span class="glyphicon glyphicon-list-alt"></span> 列表页面</a>
					</button>
					<button type="button" class="btn btn-info btnupload"  data-text-id="${text.tid }" data-text-name="${text.tname }" data-toggle="modal" data-target="#myModal">
					 	<span class="glyphicon glyphicon-upload"></span> 章节上传
					</button>
					<input type="button" class="btn btn-danger btnDel"  value="完结" data-text-id="${text.tid }" />
				</td>
			<tr>
			</c:forEach>
   		</table>
		
		
		<!-- 章节上传模态框 -->
		<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
			      </div>
			      <div class="modal-body">
			        <div class="container">
						<div class="progress col-sm-5">
							<div id="progressDiv" class="progress-bar progress-bar-success rogress-bar-striped active" style="min-width: 2em;">
							</div>
						</div>
					</div>
					<div class="container">
						<form id="f" class="col-sm-5" method="post" enctype="multipart/form-data">
							<input type="file" name="myFile"><br>
							<input type="hidden" name="method" value="txtFile" />
							<input type="hidden" name="tid"  id="h1"/>
							<input type="hidden" name="tname"  id="h2"/>
							<button id="btn1" type="button" class="btn btn-success">上传</button>
							
						</form>
					</div>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" id="upajax" data-dismiss="modal">结束上传</button>
			        
			      </div>
			    </div>
			  </div>
			</div>
    </div>  
    <div id="dataShow" style="width:450px;margin:0 auto;">  
        <table class="table" id="table"></table>  
    </div>  
    <br/>  
    <div id="page" style="margin:-50px;"></div>  
    
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
				/* console.info(count); */
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
		var data = new FormData(getId('f'));
		//发送请求
		xhr.send(data);
	})
	
	
	function getId(id){
		return document.getElementById(id);
	}
    
   
    
    
	$(function(){
		var id = null;
		//列表
		$('.btnlist').click(function(){
			var tid = $(this).data('textId');
			location.href="Section?method=findSection&tid="+tid;
		});
		
		//上传
		$('.btnupload').click(function(){
			var tid = $(this).data('textId');
			var tname = $(this).data('textName');
// 			var daily = $('#d').val();//获取数据(JSON字符串)..只能取到第一层的数据，因为id都相同
			//将JSON字符串转为JSON对象
// 			daily = JSON.parse(daily);//{"":}
			/* text = eval('(' + text + ')');  */
			id = tid;
			/* console.info(tname); */
			$('#h1').val(tid);
			$('#h2').val(tname);
			
			
			/* $('#d3').text(daily.nextPlan); */
		}); 
		
		

		
		
		
		//完结
		$('.btnDel').click(function(){
			var id = $(this).data('textId');
			layer.confirm('确认完结？',{
				btn:['确认','取消'],
				icon:1
			},function(){
				location.href="text?method=delTextByTid&id="+id;
			});
			
		})
		
		
		//批量删除
		/* $('.btnDelAll').click(function(){
			if($('input[name=ids]:checked').length>0){		//判断是否有选择的删除对象
				var cks = $('input[name=ids]:checked');		//获取对象数组
				var ids = [];
				$.each(cks,function(i,n){					//遍历对象数组
					console.info($(n).val());
					ids.push($(n).val().trim());			//取出对象的值
				})
				var id = ids.join(',');						//以,为间隔拼接字符串
				layer.confirm("确认删除所选的"+cks.length+"条数据吗?",{
					btn:['删除','取消'],
					icon:0
				},function(){
					location.href="daily?method=delAll&ids="+id;
				});
			}else{
				layer.alert("至少选一项");
			}
		}) */
		
		
		
		//有提示则弹出提示窗
		if('${daily_msg}'){
			layer.msg('${daily_msg}');
			
		}
		
		if('${sub_msg}'){
			layer.msg('${sub_msg}');
		}
		
		
		
		$('.btnInfo').click(function(){
			var text = $(this).data('text');
			
		})
		
		
		



	})
	</script>
  </body>
  
</html>