<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<meta charset='utf-8'/>
	<title></title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
	<h2>个人信息设置</h2>
	<hr>
	<form action="" method="post">
		<div class="col-md-12">
			<div class="form-group">
		        <label class="col-sm-2 control-label text-right">昵称：</label>
		        <div class="col-sm-7">
		            <input type="text" name="" class="form-control" placeholder="请输入文本">
		        </div>
		    </div><br><br>
		    
		    <div class="form-group">
		        <label class="col-sm-2 control-label text-right">风格喜好：</label>
		        <div class="col-sm-7">
		          	<select name="">
				  		<option value="">仙侠</option>
				  		<option value="">玄幻</option>
				  		<option value="">都市</option>
				  		<option value="">科幻</option>
				  		<option value="">二次元</option>
				  	</select>
		        </div>
		    </div><br><br>
		    
		    <div class="form-group">
		        <label class="col-sm-2 control-label text-right">实名认证：</label>
		        <div class="col-sm-7">
		            <a href="">查看实名认证信息</a>
		        </div>
		    </div><br><br>
		
		    <div class="form-group">
		        <label class="col-sm-2 control-label text-right">座右铭：</label>
		        <div class="col-sm-7">
		            <input type="text" name="" class="form-control" placeholder="请输入文本">
		        </div>
		    </div><br><br>
		    
		    <!-- <div class="form-group">
		        <label class="col-sm-2 control-label">文件域：</label>
		        <div class="col-sm-7">
		            <input type="file" name="" class="form-control">
		        </div>
		    </div><br><br> -->
		    <div class="form-group">
		        <label class="col-sm-2 control-label text-right">风格偏向：</label>
		        <div class="col-sm-7">
		            <label class="checkbox-inline">
		                <input type="checkbox" value="option1" id="inlineCheckbox1">仙侠</label>
		            <label class="checkbox-inline">
		                <input type="checkbox" value="option2" id="inlineCheckbox2">历史军事</label>
		            <label class="checkbox-inline">
		                <input type="checkbox" value="option3" id="inlineCheckbox3">未来科幻</label>
		        	<label class="checkbox-inline">
		                <input type="checkbox" value="option4" id="inlineCheckbox4">都市异能</label>
		            <label class="checkbox-inline">
		                <input type="checkbox" value="option5" id="inlineCheckbox5">二次元</label>
		        
		        </div>
		    </div>
		</div>
	</form>
	</div>
</body>
</html>