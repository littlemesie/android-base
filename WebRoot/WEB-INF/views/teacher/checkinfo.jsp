<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>

    <base href="<%=basePath%>">
    <title>签到明细</title>
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
				<li><a href="./teacher/mysite">个人信息</a></li>
				<li><a href="./teacher/course">课表查询</a></li>
				<li class="active"><a href="./teacher/checkinfo">签到明细</a></li>
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
			<table class="table table-hover">

						   <thead>
						      <tr>
						         <th>姓名</th>
						         <th>课程名</th>
						         <th>学号</th>
						         <th>手机号</th>
						         <th>状态</th>
						         <th>手动签到</th>
						      </tr>
						   </thead>
						   <tbody>
						      <tr>
						         <td>Tanmay</td>
						         <td>Bangalore</td>
						         <td>560001</td>
						         <td>Bangalore</td>
						         <td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		成功
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		手动签到
									</button>
								</td>
						      </tr>
						      <tr>
						         <td>Sachin</td>
						         <td>Mumbai</td>
						         <td>400003</td>
						         <td>Bangalore</td>
						         <td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		成功
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		手动签到
									</button>
								</td>
						      </tr>
						      <tr>
						         <td>Uma</td>
						         <td>Pune</td>
						         <td>411027</td>
						         <td>Bangalore</td>
						         <td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		成功
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		手动签到
									</button>
								</td>
						      </tr>
						      <tr>
						         <td>Uma</td>
						         <td>Pune</td>
						         <td>411027</td>
						         <td>Bangalore</td>
						         <td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		成功
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		手动签到
									</button>
								</td>
						      </tr>
						      <tr>
						         <td>Uma</td>
						         <td>Pune</td>
						         <td>411027</td>
						         <td>Bangalore</td>
						         <td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		成功
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		手动签到
									</button>
								</td>
						      </tr>
						      <tr>
						         <td>Uma</td>
						         <td>Pune</td>
						         <td>411027</td>
						         <td>Bangalore</td>
						         <td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		成功
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		手动签到
									</button>
								</td>
						      </tr>
						   </tbody>
						</table>
		</div>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
		   aria-labelledby="myModalLabel" aria-hidden="true">
		   <div class="modal-dialog">
		      <div class="modal-content">
		         <div class="modal-header">
		            <button type="button" class="close" 
		               data-dismiss="modal" aria-hidden="true">
		                  &times;
		            </button>
		            <h4 class="modal-title" id="myModalLabel">
		               修改信息
		            </h4>
		         </div>
		         <div class="modal-body">
		            <form class="form-horizontal" role="form">
					   <div class="form-group">
					      <label for="firstname" class="col-sm-2 control-label">名字</label>
					      <div class="col-sm-10">
					         <input type="text" class="form-control" id="firstname" 
					            placeholder="请输入名字">
					      </div>
					   </div>
					   <div class="form-group">
					      <label for="lastname" class="col-sm-2 control-label">姓</label>
					      <div class="col-sm-10">
					         <input type="text" class="form-control" id="lastname" 
					            placeholder="请输入姓">
					      </div>
					   </div>
					   <div class="form-group">
					      <div class="col-sm-offset-2 col-sm-10">
					         <div class="checkbox">
					            <label>
					               <input type="checkbox"> 请记住我
					            </label>
					         </div>
					      </div>
					   </div>
					   <div class="form-group">
					      <div class="col-sm-offset-2 col-sm-10">
					         <button type="submit" class="btn btn-default">登录</button>
					      </div>
					   </div>
					</form>
		         </div>
		         <div class="modal-footer">
		            <button type="button" class="btn btn-default" 
		               data-dismiss="modal">关闭
		            </button>
		            <button type="button" class="btn btn-primary">
		               提交更改
		            </button>
		         </div>
		      </div><!-- /.modal-content -->
		</div><!-- /.modal -->
	<div class="footer">
		数字化校园资源导航 | 校园网络服务指南 | 校园一卡通应用指南 | 信息化应用系统指南 | 统一身份认证登录帮助 | 联系我们
            Copyright © 2012 HZNU. All Rights Reserved. 杭州师范大学版权所有
	</div>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>

</html>