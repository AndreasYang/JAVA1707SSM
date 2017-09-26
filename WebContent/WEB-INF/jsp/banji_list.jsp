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

<%@include file="common/banjiheader.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="list-group">
					<a href="${pageContext.request.contextPath}/banji/banjilist.action"
						class="list-group-item active">班級列表</a> 
					<a href="${pageContext.request.contextPath}/banji/getAddBanjiPage.action"
						class="list-group-item">添加班級</a>
				</div>
			</div>

			<!-- 右 -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="${pageContext.request.contextPath}/banji/banjilist.action">班級列表</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/banji/getAddBanjiPage.action">添加班级</a>
					</li>
				</ul>

				<table class="align-center table table-striped table-bordered table-hover table-condensed text-center">
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
			</div>
		</div>
	</div>
	
</body>
</html>