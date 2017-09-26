<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						class="list-group-item active">课程列表</a>
					<a href="${pageContext.request.contextPath}/course/getAddCoursePage.action"
						class="list-group-item">添加课程</a>
				</div>
			</div>

			<!-- 右 -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="${pageContext.request.contextPath}/course/courselist.action">课程列表</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/course/getAddCoursePage.action" class="list-group-item">添加课程</a>
					</li>
				</ul>

				<table class="align-center table table-striped table-bordered table-hover table-condensed text-center">
					<tr>
						<td>课程序号</td>
						<td>课程</td>
						<td>学分</td>
						<td>删除</td>
					</tr>
					<c:forEach items="${courselist}" var="course">
						<tr>
							<td>${course.id}</td>
							<td>${course.coursename}</td>
							<td>${course.points}</td>
							<td>
								<a href="${pageContext.request.contextPath}/course/deleteCourse.action?id=${course.id}">删除</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>