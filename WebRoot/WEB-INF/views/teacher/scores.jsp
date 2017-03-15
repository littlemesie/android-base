<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>学生成绩</title>
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
				<li><a href="./teacher/stuinfo">学生信息</a></li>
				<li class="active"><a href="./teacher/scores">学生成绩</a></li>

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

		<table class="table table-hover">

						   <thead>
						      <tr>
						         <th>姓名</th>
						         <th>学号</th>
						         <th>院系</th>
						         <th>班级</th>
						         <th>平时成绩</th>
						         <th>考试成绩</th>
						         <th>手机号</th>
						         <th>备注</th>
						      </tr>
						   </thead>
						   <tbody>
						      <tr>
						         <td>葛小伦</td>
						         <td>2015112013001</td>
						         <td>阿里巴巴商学院</td>
						         <td>电商111班</td>
						         <td>25分</td>
								<td>65分</td>
								<td>13588736661</td>
								<td></td>
						      </tr>
						      <tr>
						         <td>皇子</td>
						         <td>2015112013002</td>
						         <td>阿里巴巴商学院</td>
						         <td>电商111班</td>
						         <td>25分</td>
								<td>65分</td>
								<td>13588736662</td>
								<td></td>
						      </tr>
						      <tr>
						         <td>提莫</td>
						         <td>2015112013003</td>
						         <td>阿里巴巴商学院</td>
						         <td>电商111班</td>
						         <td>25分</td>
								<td>65分</td>
								<td>13588736663</td>
								<td></td>
						      </tr>
						      <tr>
						         <td>剑圣</td>
						         <td>2015112013004</td>
						         <td>阿里巴巴商学院</td>
						         <td>电商111班</td>
						         <td>25分</td>
								<td>65分</td>
								<td>13588736664</td>
								<td></td>
						      </tr>
						      <tr>
						         <td>赵信</td>
						         <td>2015112013005</td>
						         <td>阿里巴巴商学院</td>
						         <td>电商111班</td>
						         <td>25分</td>
								<td>65分</td>
								<td>13588736665</td>
								<td></td>
						      </tr>
						      <tr>
						         <td>蛮王</td>
						         <td>2015112013006</td>
						         <td>阿里巴巴商学院</td>
						         <td>电商111班</td>
						         <td>25分</td>
								<td>65分</td>
								<td>13588736666</td>
								<td></td>
						      </tr>
						   </tbody>
						</table>

	</div>
	<div class="footer">数字化校园资源导航 | 校园网络服务指南 | 校园一卡通应用指南 | 信息化应用系统指南
		| 统一身份认证登录帮助 | 联系我们 Copyright © 2012 HZNU. All Rights Reserved.
		杭州师范大学版权所有</div>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>

</html>