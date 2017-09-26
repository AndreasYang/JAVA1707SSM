<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.11.1.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css" />
<script type="text/javascript">
		function uploadPic(){
			var options = {
					url : "${pageContext.request.contextPath}/upload/uploadPic.action",
					dataType : "json",
					type : "post",
					success : function(data) {
						$("#imgId").attr("src", "/pic/" + data.fileName);
					}
			};
			 $("#form-add").ajaxSubmit(options);
		}
	</script>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-2">
	        <div class="list-group">
					<a href="${pageContext.request.contextPath}/student/pageList.action"
					   class="list-group-item">学生管理</a> 
					<a href="${pageContext.request.contextPath}/student/getSearchStudentPage.action"
					   class="list-group-item">学生搜索</a> 
					<a href="${pageContext.request.contextPath}/student/getAddStudentPage.action"
					   class="list-group-item active">添加学生</a>
				</div>
		</div>
		<div class="col-md-10">
			<ul class="nav nav-tabs">
	                <li>
	                    <a href="${pageContext.request.contextPath}/student/pageList.action">学生列表</a>
	                </li>
	                <li>
	                    <a href="${pageContext.request.contextPath}/student/getSearchStudentPage.action">学生搜索</a>
	                </li>
	                <li class="active">
	                	<a href="${pageContext.request.contextPath}/student/getAddStudentPage.action">添加学生</a>
	                </li>
			</ul>
			
			<form class="form_border col-md-4" id="form-add" action="${pageContext.request.contextPath}/student/addStudent.action" enctype="multipart/form-data" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">学号:</label>
					<input type="text" class="form-control" name="number" />
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">姓名:</label>
					<input type="text" class="form-control" name="name" />
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">年龄:</label>
					<input type="text" class="form-control" name="age" />
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">性别:</label>
					<input type="text" class="form-control" name="gender" />
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">地址:</label>
					<input type="text" class="form-control" name="address" />
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">班级：</label>
					<select name="banjiId" class="form-control">
						<c:forEach items="${banjilist}" var="banji">
							<option value="${banji.id}">${banji.classname}</option>
						</c:forEach>
					</select>
				</div>
				 <div  class="form-group">
				  	<label >上传头像</label>
				  	<img alt="" id="imgId" src="" width="100" height="100">
				  	<input type="file" name="pictureFile" onchange="uploadPic();"/>
				  </div>
				<input type="submit" class="btn btn-success" value="添加"/>
			</form>
		</div>
	</div>
</div>
</body>
</html>