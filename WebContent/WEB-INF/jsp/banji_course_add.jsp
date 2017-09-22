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
<form action="${pageContext.request.contextPath}/banji/addbanjicourse.action" method="post">
	班级：
	<select name="banjiId">
		<c:forEach items="${banjilist}" var="banji">
			<option value="${banji.id}">${banji.classname}</option>
		</c:forEach>
	</select> 
	课程：
	<select name="courseId">
		<c:forEach items="${courselist}" var="course">
			<option value="${course.id}">${course.coursename}</option>
		</c:forEach>
	</select>
	<input type="submit" value="添加"/>
</form>
</body>
</html>