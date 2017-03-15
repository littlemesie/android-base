<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>">
    <title>个人信息</title>
    <!-- Bootstrap -->
    <link href="<%=basePath%>plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>plugins/css/index.css" rel="stylesheet">
</head>

<body>
	<!-- 导航 -->
	<div>
		<nav class="navbar navbar-default" role="navigation">
		<div class="logo">
			<img src="<%=basePath%>plugins/images/m-logo.png" height="70" width="70"><br>
			<img src="<%=basePath%>plugins/images/mm-logo.png" height="35" width="130">
		</div>
		<div class="navigation">
			<ul id="myTab" class="nav nav-tabs">
				<li><a href="./teacher/index">首页</a></li>
				<li class="active"><a href="./teacher/mysite">个人信息</a></li>
				<li><a href="./teacher/course">课表查询</a></li>
				<li><a href="./teacher/checkinfo">签到明细</a></li>
				<li><a href="./teacher/stuinfo">学生信息</a></li>
				<li><a href="./teacher/scores">学生成绩</a></li>
				
			</ul>
		</div>
		<div class="welcom">
            <div class="wel-out"><a href="./teacher/quit"><strong>退出</strong></a></div>
            <div class="wel-name">欢迎您！<strong>${sessionScope.teachers.get(0).teacherName}</strong></div>
            
            
            <div class="wel-img">
            	<img src="<%=basePath%>plugins/images/min_logo.png" height="36" width="36">
            </div>
        </div>
		</nav>
	</div>
	
    <div class="main">
		<table class="table table-bordered" id="info">
			<caption>个人信息</caption>
			<thead>
				<tr>
					<th>姓名</th>
					<!-- <th>密码</th> -->
					<th>学校</th>
					<th>学院</th>
					<th>修改信息</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${teacher}" var="teacher" varStatus="status">
					<tr class="active">
						<td>${teacher.teacherName}</td>
						<%-- <td >${teacher.teacherPwd}</td> --%>
						<td>${teacher.teacherCollege}</td>
						<td>${teacher.teacherAcademy}</td>
						<td>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#alter">修改</button>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	
	<!-- 开始进行修改用户信息 -->
	<form class="form-horizontal" action="./teacher/mysite" role="form" method="post">
		<div class="modal fade" id=alter tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
				
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">修改个人信息</h4>
					</div>
					<c:forEach items="${teacher}" var="teacher" varStatus="status">
					<div class="modal-body">
						<div class="form-group">
							<label class="col-md-2 control-lable">姓名</label>
							<div class="col-md-5">
								<input type="text"  class="form-control" name="teacherName" value="${teacher.teacherName}"/>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-md-2 control-lable">密码</label>
							<div class="col-md-5">
								<input type="password"  class="form-control" name="teacherPwd" value="${teacher.teacherPwd}"/>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-md-2 control-lable">学校</label>
							<div class="col-md-5">
								<input type="text"  class="form-control" name="teacherCollege" value="${teacher.teacherCollege}"/>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-md-2 control-lable">学院</label>
							<div class="col-md-5">
								<input type="text"  class="form-control" name="teacherAcademy" value="${teacher.teacherAcademy}"/>
							</div>
						</div>
					</div>
					</c:forEach>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">提交更改</button>
					</div>
					
				</div>
			</div>
		</div>
	</form>
	<!-- <div class="footer">
		数字化校园资源导航 | 校园网络服务指南 | 校园一卡通应用指南 | 信息化应用系统指南 | 统一身份认证登录帮助 | 联系我们
            Copyright © 2012 HZNU. All Rights Reserved. 杭州师范大学版权所有
	</div> -->
	
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<%-- <script type="text/javascript" src="<%=basePath%>/plugins/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/plugins/bootstrap/js/bootstrap.min.js"></script> --%>
    
</body>

</html>