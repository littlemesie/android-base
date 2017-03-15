<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>

<base href="<%=basePath%>">
<title>学生信息</title>
<!-- Bootstrap -->
<link href="<%=basePath%>plugins/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=basePath%>plugins/css/index.css" rel="stylesheet">
</head>
<body style="background-color:#FFF;">
	<!-- 导航 -->
	<div>
		<nav class="navbar navbar-default" role="navigation">
		<div class="logo">
			<img src="<%=basePath%>plugins/images/m-logo.png" height="70"
				width="70"><br> <img
				src="<%=basePath%>plugins/images/mm-logo.png" height="35"
				width="130">
		</div>
		<div class="navigation">
			<ul id="myTab" class="nav nav-tabs">
				<li><a href="./teacher/index">首页</a></li>
				<li><a href="./teacher/mysite">个人信息</a></li>
				<li><a href="./teacher/course">课表查询</a></li>
				<li><a href="./teacher/checkinfo">签到明细</a></li>
				<li class="active"><a href="./teacher/stuinfo">学生信息</a></li>
				<li><a href="./teacher/scores">学生成绩</a></li>

			</ul>
		</div>
		<div class="welcom">
			<div class="wel-out">
				<a href="./teacher/quit"><strong>退出</strong></a>
			</div>
			<div class="wel-name">
				欢迎您！<strong>${sessionScope.teachers.get(0).teacherName}</strong>
			</div>
			<div class="wel-img">
				<img src="<%=basePath%>plugins/images/min_logo.png" height="36"
					width="36">
			</div>
		</div>
		</nav>
	</div>

	<div class="main">
		<table class="table">
			<caption>学生信息</caption>
			<thead>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>电话</th>
					<th>学院</th>
					<th>专业</th>
					<th>班级</th>
					<th>性别</th>
					<th>身份证号</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="student" varStatus="status">
					<tr class="active">
						<td>${student.stuNo}</td>
						<td>${student.stuName}</td>
						<td>${student.stuPhone}</td>
						<td>${student.stuAcademic}</td>
						<td>${student.stuSpecialty}</td>
						<td>${student.stuSlass}</td>
						<td>${student.stuSex}</td>
						<td>${student.stuDentityID}</td>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
	</div>
	<!-- <div class="footer">数字化校园资源导航 | 校园网络服务指南 | 校园一卡通应用指南 | 信息化应用系统指南
		| 统一身份认证登录帮助 | 联系我们 Copyright © 2012 HZNU. All Rights Reserved.
		杭州师范大学版权所有</div> -->
	<script type="text/javascript"
		src="<%=basePath%>plugins/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>plugins/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>