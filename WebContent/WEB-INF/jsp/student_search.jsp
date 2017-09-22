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
	<form action="${pageContext.request.contextPath}/student/searchStudent.action" method="post">
		<input type="text" name="name"/>
		<input type="text" name="age"/>
		<select name="gender">
			<option value="">不限</option>
			<option value="男">男</option>
			<option value="女">女</option>
		</select>
		<input type="submit" value="搜索" />
	</form>
	
	<table>
		<tr>
			<td colspan="10">学生信息</td>
		</tr>
		<tr>
			<td>id</td>
			<td>学号</td>
			<td>姓名</td>
			<td>年龄</td>
			<td>性别</td>
			<td>家庭所在地</td>
			<td>班级</td>
			<td>删除</td>
			<td>修改</td>
		</tr>

		<c:forEach items="${list}" var="student">
			<tr>
				<td>${student.id}</td>
				<td>${student.number}</td>
				<td>${student.name}</td>
				<td>${student.age}</td>
				<td>${student.gender}</td>
				<td>${student.address}</td>
				<td>${student.banji.classname}</td>
				<td><a href="${pageContext.request.contextPath}/student/deleteStudent.action?id=${student.id}">删除</a></td>
				<td><a href="${pageContext.request.contextPath}/student/findStudentBuId.action?id=${student.id}">修改</a></td>
		</c:forEach>

	</table>
</body>
</html>