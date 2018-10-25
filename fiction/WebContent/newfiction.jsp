<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ws.fiction.dto.User"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<title>新书申请</title>
		<style type="text/css">
			
			
		</style>
	</head>
	<body>
		<div class="container">
			<div >
				<h2>新书申请</h2>
				
				<hr />
				<div class="">
				<form action="text" method="post">
					<input type="hidden" name="method" value="newFiction"/>
					<input type="hidden" name="uname" value="${user.uname}" />
					
								
					<div class="col-md-2">
						小说名称：    <br /><br />
						小说类别:  <br /><br />
						内容简介：  
						
					</div>
					<div class="col-md-7">
						<input type="text" placeholder="仅支持中英文" name="tname"  /><br /><br />
						<div >
						<select name="classes" >
								<option value="仙侠">仙侠</option>
								<option value="玄幻">玄幻</option>
								<option value="都市">都市</option>
								<option value="无限">无限</option>
								<option value="网游">网游</option>
								<option value="其他">other</option>
							</select>
						
					</div><br />
					
					<textarea name="introduce" rows="" cols="" class="form-control" style="resize: none;"></textarea>
					</div>
					<div class="col-md-3">
						<input type="submit" value="提交" class="btn btn-danger form-control"/>
					</div>
					
					
				</form>
			</div>
			</div>
			
		</div>
	</body>
</html>
