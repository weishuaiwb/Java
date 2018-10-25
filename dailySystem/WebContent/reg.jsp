<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="bootstrapvalidator/js/bootstrapValidator.min.js" ></script>
		<script type="text/javascript" src="bootstrapvalidator/js/language/zh_CN.js" ></script>
		<script type="text/javascript" src="layer/layer.js"></script>
		<link rel="stylesheet" href="css/animate.css">
		<title></title>
		<style>
			.btn-reg{
				width: 50%;
				margin-left: 50%;
			}
		</style>
	</head>
	<body>
		<div class="container animated bounceInleft">
			<div class="page-header">
				<h3>学生注册</h3>
			</div>
			<div class="col-sm-5">
				<form action="stu" method="get" class="form-reg">
					<!-- 使用隐藏域的值进行表单区分 reg--注册 -->
					<input type="hidden" name="method" value="reg" />
					<div class="form-group">
						<div class="radio">
							<label class="radio-inline">
								<input type="radio" name="sex" value="男" checked/>男
							</label>
							<label class="radio-inline">
								<input type="radio" name="sex" value="女"/>女
							</label>
						</div>
					</div>
					
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<input type="text" name="name" placeholder="输入姓名" class="form-control" required/>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-phone"></span>
							</div>
							<input type="text" name="phone" placeholder="输入手机号" class="form-control" pattern="^1[35876]\d{9}$" required/>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-lock"></span>
							</div>
							<input type="password" name="psw" placeholder="输入密码" class="form-control" required/>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-lock"></span>
							</div>
							<input type="password" name="repsw" placeholder="确认密码" class="form-control" required/>
						</div>
					</div>
					<div class="form-group text-right">
						<span>返回<a href="login.jsp">登录</a></span>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-success btn-reg">注册</button>
					</div>
				</form>
			</div>
		</div>
		
		
		<script>
			$(function(){
				$('.form-reg').bootstrapValidator({
					message:'输入的字段符合要求',
					feedbackIcons:{
						valid:'glyphicon glyphicon-ok', 
						Invalid:'glyphicon glyphicon-remove',
						validting:'glyphicon glyphicon-refresh',
					},
					fields:{
						psw:{
							message:'密码输入有误',
							validators:{
								stringLength:{
									message:'密码长度在4-16位',
									min:4,
									max:16
								}
							}
						},
						repsw:{
							message:'两次密码不一致',
							validators:{
								identical: {
                        			field: 'psw',
                        			message: '两次密码不一致'
                    			}
							}
						}
					}
				})
				
				
				if('${msg}'){
					layer.alert('${msg}',{
						icon:5,
						skin:'layui-layer-molv'
					});
				}
			})
		</script>
	</body>
</html>
