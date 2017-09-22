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
			<td>班级序号</td>
			<td>班级</td>
			<td>删除</td>
		</tr>
		<c:forEach items="${banjilist}" var="banji">
		<tr>
			<td>${banji.id}</td>
			<td>${banji.classname}</td>
			<td><a href="${pageContext.request.contextPath}/banji/deleteBanji.action?id=${banji.id}">删除</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>