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
				<td><a
					href="${pageContext.request.contextPath}/course/deleteCourse.action?id=${course.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>