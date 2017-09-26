<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/jstl-1.2.jar"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css" />
</head>
<body>
<%@include file="common/courseheader.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="list-group">
					<a href="${pageContext.request.contextPath}/course/courselist.action"
						class="list-group-item">课程列表</a>
					<a href="${pageContext.request.contextPath}/course/getAddCoursePage.action"
						class="list-group-item active">添加课程</a>
				</div>
			</div>

			<!-- 右 -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li>
						<a href="${pageContext.request.contextPath}/course/courselist.action">课程列表</a>
					</li>
					<li class="active">
						<a href="${pageContext.request.contextPath}/course/getAddCoursePage.action" class="list-group-item">添加课程</a>
					</li>
				</ul>

				<form class="form_border col-md-3" action="${pageContext.request.contextPath}/course/addCourse.action" method="post">
					<div class="form-group">
						<label for="name">课程名称</label>
						<input type="text" class="form-control" name="coursename" />
					</div>
					<div class="form-group">
						<label for="name">学分</label>
						<input type="text" class="form-control" name="points" />
					</div>
					<input type="submit" class="btn btn-success"/>
				</form>
			</div>
		</div>
	</div>

</body>
</html>