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

<%@include file="common/banjicourseheader.jsp"%>

<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="list-group">
					<a href="${pageContext.request.contextPath}/banji/banjicourselist.action"
						class="list-group-item active">班級课程列表</a>
					<a href="${pageContext.request.contextPath}/banji/getAddBanjiCoursePage.action"
						class="list-group-item">添加班級课程</a>
				</div>
			</div>

			<!-- 右 -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="${pageContext.request.contextPath}/banji/banjicourselist.action">班級课程列表</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/banji/getAddBanjiCoursePage.action" class="list-group-item">添加班級课程</a>
					</li>
				</ul>

				<table class="align-center table table-striped table-bordered table-hover table-condensed text-center">
					<tr>
						<td>ID</td>
						<td>班级</td>
						<td>课程</td>
						<td>学分</td>
						<td>删除</td>
					</tr>
					
					<c:forEach items="${banjicoursselist}" var="banjicoursselist">
					<tr>
						<td>${banjicoursselist.banjicourseId}</td>
						<td>${banjicoursselist.banji.classname}</td>		
						<td>${banjicoursselist.course.coursename}</td>
						<td>${banjicoursselist.course.points}</td>
						<td><a href="${pageContext.request.contextPath}/banji/deleteBanjiCourse.action?id=${banjicoursselist.banjicourseId}">删除</a></td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	
	
</body>
</html>