<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/banji/searchBanjiCourse.action" method="post">
	班级：<input type="text" name="classname"/>
	<button type="submit">搜索</button>
	<table class="align-center table table-striped table-bordered table-hover table-condensed text-center">
					<tr>
						<td>ID</td>
						<td>班级</td>
						<td>课程</td>
						<td>学分</td>
						<td>删除</td>
					</tr>
					
					<c:forEach items="${banjiCourselist}" var="banjiCourselist">
					<tr>
						<td>${banjiCourselist.banjicourseId}</td>
						<td>${banjiCourselist.banji.classname}</td>		
						<td>${banjiCourselist.course.coursename}</td>
						<td>${banjiCourselist.course.points}</td>
						<td><a href="${pageContext.request.contextPath}/banji/deleteBanjiCourse.action?id=${banjicoursselist.banjicourseId}">删除</a></td>
					</tr>
					</c:forEach>
				</table>
</form>
</body>
</html>