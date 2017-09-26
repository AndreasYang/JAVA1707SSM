<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
						class="list-group-item">班級列表</a> 
					<a href="${pageContext.request.contextPath}/banji/getAddBanjiPage.action"
						class="list-group-item active">添加班級</a>
				</div>
			</div>

			<!-- 右 -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li>
						<a href="${pageContext.request.contextPath}/banji/banjilist.action">班級列表</a>
					</li>
					<li class="active">
						<a href="${pageContext.request.contextPath}/banji/getAddBanjiPage.action">添加班级</a>
					</li>
				</ul>
				<form action="${pageContext.request.contextPath}/banji/addBanji.action}" method="post">
					班级：<input type="text" name="classname"/><br>
					<input type="submit"/>
				</form>
			</div>
		</div>
	</div>

	
</body>
</html>