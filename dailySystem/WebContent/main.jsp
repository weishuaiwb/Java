<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/animate.css" />
<script type="text/javascript" src="js/jquery.js" ></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="bootstrapvalidator/js/bootstrapValidator.min.js" ></script>
<script type="text/javascript" src="bootstrapvalidator/js/language/zh_CN.js" ></script>
<script type="text/javascript" src="layer/layer.js" ></script>
<style>
	.navbar{
		border-radius:0;
	}
	.table td{
		/*vertical-align: middle;*/
		white-space:nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		max-width: 200px;
	}
	.table td:last-child{
		text-align:center;
	}
	.btn-group{
		margin-bottom:10px;
	}
	
</style>
</head>
<body>
<!-- 日报提交模态框 -->
	<div class="modal animated fadeInUp" id="dailyAdd">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4>日报提交</h4>
				</div>
			<form action="daily" method="post"  class="form-sub" id="form-sub">
				<input type="hidden" value="subDaily" name="method" />
				<div class="modal-body">
					
						
						<div id="" class="form-group">
							<div class="input-group">
							  <span class="input-group-addon">今日内容:</span>
							  <textarea rows="5" name="todayTask" placeholder="请输入内容..." required class="form-control" style="resize: none;"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
							  <span class="input-group-addon">完成情况:</span>
							  <textarea rows="5" name="completeInfo" placeholder="请输入内容..." required class="form-control" style="resize: none;"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
							  <span class="input-group-addon">明日计划:</span>
							  <textarea rows="5" name="nextPlan" placeholder="请输入内容..." required class="form-control" style="resize: none;"></textarea>
							</div>
						</div>
					
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" form="form-sub" type="submit">提交</button>
				</div>
				</form>
			</div>
		</div>
	</div>
<!-- 日报详情模态框 -->
	<div class="modal animated bounceIn" id="dailyInfo">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4>日报详情</h4>
				</div>
				<div class="modal-body">
					<dl>
						<dt>今日任务:</dt>
						<dd id="d1"></dd>
						<dt>完成情况:</dt>
						<dd id="d2"></dd>
						<dt>明日计划</dt>
						<dd id="d3"></dd>
					</dl>
				</div>
				<div class="modal-footer">
					<button class="btn btn-danger" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
<!-- 日报修改模态框 -->
	<div class="modal animated pulse" id="dailyEdit">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4>日报修改</h4>
				</div>
				<form action="daily" class="update-form" id="update-form">
					<div class="modal-body">
						<!-- 使用隐藏域来区分业务逻辑 -->
						<input type="hidden" name="method" value="updateDaily"/>
						<input type="hidden" name="did">
						<div id="" class="form-group">
							<div class="input-group">
							  <span class="input-group-addon">今日内容:</span>
							  <textarea rows="5" name="todayTask" placeholder="请输入内容..." required class="form-control" style="resize: none;"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
							  <span class="input-group-addon">完成情况:</span>
							  <textarea rows="5" name="completeInfo" placeholder="请输入内容..." required class="form-control" style="resize: none;"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
							  <span class="input-group-addon">明日计划:</span>
							  <textarea rows="5" name="nextPlan" placeholder="请输入内容..." required class="form-control" style="resize: none;"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">取消</button>
						<button class="btn btn-primary" type="submit" form="update-form">确认修改</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- 	导航区 -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="" class="navbar-brand">J1807日报管理系统</a>
			</div>
			<div class="navbar-collapse collapse" id="userInfo">
			 <ul class="nav navbar-nav navbar-right">
		        <li><a href="#"></a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 欢迎你，${student.name }<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="#">修改密码</a></li>
		            <li><a href="#">安全退出</a></li>
		          </ul>
		        </li>
		      </ul>
			</div>
		</div>
	</nav>	
<!-- 	内容区 -->
	<div class="container-fluid">
<!-- 		路径导航 -->
		<ol class="breadcrumb">
		  <li><a href="#">日报管理</a></li>
		  <li class="active">日报列表</li>
		</ol>
		
<!-- 		按钮组 -->
		<div class="btn-group">
			<button class="btn btn-primary"  data-toggle="modal" data-target="#dailyAdd"><span class="glyphicon glyphicon-cloud-upload"></span>提交日报</button>
			<button class="btn btn-danger btnDelAll"><span class="glyphicon glyphicon-remove"></span>批量删除</button>
		</div>
		
<!-- 		数据库区 -->
		<div class="data-container">
			<table class="table table-striped table-bordered">
				<tr>
					<th><input type="checkbox" /></th>
					<th>序号</th>
					<th>今日任务</th>
					<th>完成情况</th>
					<th>明日计划</th>
					<th>提交时间</th>
					<th>更新时间</th>
					<th>操作</th>
				</tr>
				
				<c:forEach items="${dailys}" var="daily" varStatus="dailys">
					<tr>
						<td><input type="checkbox" name="ids" value="${daily.id}" /></td>
						<td>${dailys.count}</td>
						<td>${daily.todayTask}</td>
						<td>${daily.completeInfo}</td>
						<td>${daily.nextPlan}</td>
						<td>
							<fmt:formatDate value="${daily.subTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>
							<fmt:formatDate value="${daily.lastTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>
							<input type="hidden" id="d" value="${daily }">
							<button class="btn btn-primary btn-sm btnInfo" data-daily="${daily }" data-toggle="modal" data-target="#dailyInfo"><span class="glyphicon glyphicon-info-sign"></span>详情</button>
							<button class="btn btn-info btn-sm btnUpdate" data-daily="${daily }" data-toggle="modal" data-target="#dailyEdit"><span class="glyphicon glyphicon-edit"></span>修改</button>
							<button class="btn btn-danger btn-sm btnDel" data-daily-id="${daily.id }"><span class="glyphicon glyphicon-remove"></span>删除</button>
						</td>
					</tr>
				</c:forEach>

			</table>
<!-- 			分页标签 -->
			<div class="text-center">
				<ul class="pagination">
					<c:choose>
						<c:when test="${cp eq 1 }">
							<li class="disabled"><a href="daily?method=findBySid&cp=${cp-1 }"><span>&laquo;</span></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="daily?method=findBySid&cp=${cp-1 }"><span>&laquo;</span></a></li>
						</c:otherwise>
					</c:choose>
					<c:forEach begin="1" end="${tp }" var="page">
						<c:choose>
							<c:when test="{cp eq page}">
								<li class="active"><a href="">${page }</a></li>
							</c:when> 
							<c:otherwise>
								<li><a href="daily?method=findBySid&cp=${page }">${page }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${cp eq tp }">
							<li class="disabled"><a href="daily?method=findBySid&cp=${cp+1 }"><span>&raquo;</span></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="daily?method=findBySid&cp=${cp+1 }"><span>&raquo;</span></a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			
		</div>
	</div>
	

<script>
	$(function(){
		
		//表单验证
		$('.form-sub').bootstrapValidator({
			message:'输入的字段符合要求',
			feedbackIcons:{
				valid:'glyphicon glyphicon-ok',
				invalid:'glyphicon glyphicon-remove',
				validating:'glyphicon glyphicon-refresh',
			},
			fields:{
				todayTask:{
					message:'输入有误',
					validators:{
						stringLength:{
							message:'字符长度最少20个字',
							min:20
						}
					}
				},
				completeInfo:{
					message:'输入有误',
					validators:{
						stringLength:{
							message:'字符长度最少20个字',
							min:20
						}
					}
				},
				nextPlan:{
					message:'输入有误',
					validators:{
						stringLength:{
							message:'字符长度最少20个字',
							min:20
						}
					}
				}
				
			}
		})
		
		
		//查看详情
		$('.btnInfo').click(function(){
			var daily = $(this).data('daily');
// 			var daily = $('#d').val();//获取数据(JSON字符串)..只能取到第一层的数据，因为id都相同
			console.info(daily);
			//将JSON字符串转为JSON对象
// 			daily = JSON.parse(daily);//{"":}
			daily = eval('(' + daily + ')');
// 			console.info(daily.id);
			$('#d1').text(daily.todayTask);
			$('#d2').text(daily.completeInfo);
			$('#d3').text(daily.nextPlan);
		});
		
		
		//修改
		$('.btnUpdate').click(function(){
			var daily = $(this).data('daily');
// 			var daily = $('#d').val();//获取数据(JSON字符串)
			console.info(daily);
			//将JSON字符串转为JSON对象
// 			daily = JSON.parse(daily);//{"":}
			daily = eval('(' + daily + ')');
// 			console.info(daily.id);
			$('#update-form textarea[name=todayTask]').val(daily.todayTask);
			$('#update-form textarea[name=completeInfo]').val(daily.completeInfo);
			$('#update-form textarea[name=nextPlan]').val(daily.nextPlan);
			$('#update-form input[name=did]').val(daily.id);
			
		});
		
		
		
		//删除
		$('.btnDel').click(function(){
			var id = $(this).data('dailyId');
			layer.confirm('确认删除？',{
				btn:['确认','取消'],
				icon:2
			},function(){
				location.href="daily?method=del&id="+id;
			});
			
		})
		
		
		//批量删除
		$('.btnDelAll').click(function(){
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
		})
		
		
		
		//有提示则弹出提示窗
		if('${daily_msg}'){
			layer.msg('${daily_msg}');
			
		}
		
		if('${sub_msg}'){
			layer.msg('${sub_msg}');
		}
		
		
		
		$('.btnInfo').click(function(){
			console.info(eval("("+$(this).data('daily')+")"));
		})
	})
</script>
</body>
</html>