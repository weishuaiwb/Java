<%@page import="java.net.URLDecoder"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!--引入bootstrap的css文件-->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<!--引入JQuery文件-->
		<script type="text/javascript" src="js/jquery.js" ></script>
		<!--引入bootstrap的js文件-->
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
		<!--引入bootstrapvalidator的css文件-->
		<link rel="stylesheet" href="bootstrapvalidator/css/bootstrapValidator.min.css" />
		<!--引入bootstrapvalidator的验证插件-->
		<script type="text/javascript" src="bootstrapvalidator/js/bootstrapValidator.min.js" ></script>
		<!--引入bootstrapvalidator的语言包-->
		<script type="text/javascript" src="bootstrapvalidator/js/language/zh_CN.js" ></script>
		<script type="text/javascript" src="layer/layer.js"></script>
		<link rel="stylesheet" href="css/animate.css">
		<title></title>
		<style type="text/css">
			.Login_box{
				border: 1px solid rgba(0,0,0,0.2);
				border-radius: 5px;
				/*height: 100px;*/
				margin-top: 100px;
			}
		</style>
	</head>
	<body>
		
		<div class="container animated bounceInLeft">

			<div class="Login_box col-sm-4 col-sm-offset-4">
				<div class="page-header">
					<h2>用户登录</h2>
				</div>
				<form action="stu" class="loginForm" method="post">
					<!-- 使用隐藏域的值进行表单区分 reg--注册 -->
					<input type="hidden" name="method" value="login" />
					<div class="form-group ">
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-phone"></span>
							</span>
							<input type="text" class="form-control" name="phone" placeholder="输入手机号" required />
						</div><br />
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-lock"></span>
							</span>
							<input type="password" class="form-control" name="password" placeholder="输入密码" required/>
						</div>
					</div>
					<span class="alert text-center" style="color:red;" data-msg="${error }">
						${error }
						<!-- <button class="close" data-dismiss="alert">&times;</button> -->
					</span>
					
					<div class="form-group text-right">
						没有账号？立即<a href="reg.jsp">注册</a>
						<div class="checkbox">
							<label >
								<input type="checkbox" name="check"/>
								一周内免登录
							</label>
						</div>
						
					</div>
					
					<div class="form-group text-right">
						<button class="btn btn-success btn-group-justified" type="submit">登录</button>
					</div>
				</form>
			</div>
			
		</div>
		
		
		<%-- <%
			Cookie[] cks = request.getCookies();
			String username = null;
			String password = null;
			for(Cookie ck : cks){
				//获取Cookie中username的值
				if("username".equals(ck.getName())){
					username =URLDecoder.decode(ck.getValue(),"utf-8");
				}
				//获取Cookie中password的值
				if("password".equals(ck.getName())){
					password = ck.getValue();
				}
			}
			if(username!=null && password!=null){
				//免登录，进入登录逻辑判断页面
				session.setAttribute("nickname",username);
				response.sendRedirect("doLogin.jsp?username="+username+"&password="+password);
			}
			
		%> --%>
		
		<script type="text/javascript">
		
			$(function(){
				
				//根据警告框中的内容判断是否显示警告框
				if($('.alert').data('msg') ==''){
					$('.alert').hide();
				}else{
					$('.alert').show();
				}
				
				
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
