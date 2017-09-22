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
	<table>
		<tr>
			<td colspan="10">所有学生信息</td>
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

		<c:forEach items="${pageBean.studentlist}" var="student">
			<tr>
				<td>${student.id}</td>
				<td>${student.number}</td>
				<td>${student.name}</td>
				<td>${student.age}</td>
				<td>${student.gender}</td>
				<td>${student.address}</td>
				<td>${student.banji.classname}</td>
				<td><a
					href="${pageContext.request.contextPath}/student/deleteStudent.action?id=${student.id}">删除</a></td>
				<td><a
					href="${pageContext.request.contextPath}/student/findStudentBuId.action?id=${student.id}">修改</a></td>
		</c:forEach>
	</table>

	<!-- 分页 -->
	<nav aria-label="Page navigation" class="pull-right">
	<ul class="pagination">
		<!-- 向前跳转结束 -->
		<c:if test="${pageBean.pageIndex==1}">
			<li class="disabled"><a href="javascript:void(0);"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
		</c:if>
		<c:if test="${pageBean.pageIndex!=1}">
			<li><a
				href="${pageContext.request.contextPath}/student/pageList.action&pageIndex=${pageBean.pageIndex-1}"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
		</c:if>
		<!-- 向前跳转结束 -->


		<c:forEach begin="1" end="${pageBean.totalPage }" var="page">

			<c:if test="${pageBean.pageIndex!=page}">
				<li><a
					href="${pageContext.request.contextPath}/student/pageList.action?pageIndex=${page}">${page}</a></li>
			</c:if>
			<c:if test="${pageBean.pageIndex==page}">
				<li class="active"><a
					href="${pageContext.request.contextPath}/student/pageList.action?pageIndex=${page}">${page}</a></li>
			</c:if>
		</c:forEach>



		<!-- 向后跳转开始 -->
		<c:if test="${pageBean.pageIndex == pageBean.totalPage}">
			<li class="disabled"><a href="javascript:void(0);"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</c:if>
		<c:if test="${pageBean.pageIndex != pageBean.totalPage}">
			<li><a
				href="${pageContext.request.contextPath}/student/pageList.action?pageIndex=${pageBean.pageIndex+1}"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</c:if>
	</ul>
	</nav>
	<!-- 向后跳转结束 -->
	<!-- 分页 -->
</body>
</html>