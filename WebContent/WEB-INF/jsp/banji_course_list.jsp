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
	<table>
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
</body>
</html>