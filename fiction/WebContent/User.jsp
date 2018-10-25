<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>作者管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/manage.css">
	
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="js/jquery.js" ></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
	
	<style type="text/css">
			 body{
			 	background-color: #F7F6F2;
			 	margin:0;
			 	padding:0;
			 	}
			 
			 @font-face {
				font-family:"xf";
				src: url("font/xfzt.ttf");
			}
			
			.userbase{
				width: 520px;
				height: 220px;
				border: 1px solid #F3F3F4;
				background-color: white;
				margin-bottom:10px;
				margin-left:10px;
				margin-top:6px;
				border: 1px solid #E3E1DE;
			}
			.user-top{
				width: 100%;
				height: 170px;
				background-color: white;
				color: black;
				font-size: 23px;
				
			}
			.img1{
				display: inline-block;
				width: 200px;
				height: 170px;
				border: 3px solid #E3E1DE;
				
			}
			.uname{
				float:right;
				display: inline-block;
				/* margin-bottom:80px; */
				width:318px;
				height:170px;
				
				padding:10px;
				font-size:12px;
			}
			.uname span{
				margin-left:10px;
				margin-top:5px;
			
				font-size:23px;
			}
			.user-bottom{
				/* margin-top: 20px; */
				margin-left: 20px;
				color: black;
				
			}
			.user-bottom span{
				font-size: 23px;
				font-weight: 800;
				color: black;
				margin-right: 50px;
			}
			
			
			.d1{
				margin-left: 3px;
				padding: 5px;
			 	height: 150px;
			 	width: 200px;
			 	background-color: white;
			 	display: inline-block;
			 	border: 3px solid #E3E1DE;
			 	
			 }
			 
			 .d1 a{
			 	text-decoration: none;
			 	color: dodgerblue;
			 }
			 .d2{
			 	margin: 8px;
			 }

			 .size1{
			 	font-weight: 700;
			 	font-size: 25px;
			 }
			
	</style>
  </head>
  
  <body>
  	
  	<div class="userbase">
			<div class="user-top">
				<div class="img1"><img src="img/314425.jpg" alt="头像" width="194px" height="164px"/></div>
				<div class="uname">
					<span>${user.nickname} &nbsp;&nbsp;&nbsp;</span><button class="btn btn-danger btn-xs">Lv${user.grade}</button>
					<br>
					<p>(昵称一年方可修改一次)</p>
					<p style="color:red;font-size:16px;">真正的强者不是永不坠落，而是坠落后总会再度升起</p>
				</div>
			</div>
			<div class="user-bottom">
				关注:<span> 12</span>粉丝:<span> 47954</span>荣誉称号:<span style="color: red;"> 大神之光</span>
			</div>
		</div>
  
  
  
		        		<div class="d1" style="margin-left:10px;">
		        			<div class="d2"><span class="glyphicon glyphicon-piggy-bank"></span><strong>账户余额</strong></div>
		        			<div class="d3"><span class="size1">${user.coin }</span>起点币</div>
		        			<hr />
		        			<a href="">充值 </a>&nbsp;&nbsp;&nbsp;&nbsp;
		        			
		        		</div>
		        		<div class="d1">
		        			<div class="d2"><span class="glyphicon glyphicon-piggy-bank"></span><strong>剩余推荐票</strong></div>
		        			<div class="d3"><span class="size1">${user.monthretickets }</span>月票 ·<span class="size1"> ${user.retickets }</span>推荐票</div>
		        			<hr />
		        			<a href="">投票 </a>&nbsp;&nbsp;&nbsp;&nbsp;<a>获取规则</a>
		        		</div>
		        		<div class="d1">
		        			<div class="d2"><span class="glyphicon glyphicon-piggy-bank"></span><strong>我的书架</strong></div>
		        			<div class="d3"><span class="size1">17</span>本藏书</div>
		        			<hr />
		        			<a href="">前往查看</a>
		        		</div>
		        		<div class="d1">
		        			<div class="d2"><span class="glyphicon glyphicon-piggy-bank"></span><strong>本章留言</strong></div>
		        			<div class="d3"><span class="size1">5</span>条留言</div>
		        			<hr />
		        			<a href="" >前往查看</a>
		        		</div>


		
  </body>
</html>