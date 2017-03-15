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
    <title>课程二维码</title>
    <!-- Bootstrap -->
    <link href="<%=basePath%>plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>plugins/css/index.css" rel="stylesheet">
    
</head>

<body style="background-color:#FFF;">
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
				<li class="active"><a href="./teacher/course">课表查询</a></li>
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
		<table class="table table-bordered">
			<caption>课程表</caption>
			<thead>
				<tr>
					<th>序列号</th>
					<th>课程名称</th>
					<th>开课学院</th>
					<th>上课时间</th>
					<th>上课地点</th>
					<th>课程学分</th>
					<th>创建二维码</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${courses}" var="course" varStatus="status">
					<tr class="active">
						<td>${course.courseID}</td>
						<td>${course.courseName}</td>
						<td>${course.courseCollege}</td>
						<td>${course.courseTime}</td>
						<td>${course.courseAddress}</td>
						<td>${course.courseScores}</td>
						<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#create">创建</button></td>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
	</div>
	
	<!-- 生成二维码 -->
	<form class="form-horizontal" role="form" action="./teacher/course" method="post">
		<div class="modal fade" id=create tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
				
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">二维码</h4>
					</div>
					
					<div class="modal-body">
						<div class="form-group">
							<c:forEach items="${courses}" var="course" varStatus="status">
							课程号:<input type="text"name="courseId" value="${course.courseID}"/>
							</c:forEach>
							<button type="submit" class="btn btn-primary">生成二维码</button>
					    	<!-- <input type="submit" value="生成二维码" /> -->
					    	<div id="qrcode_div">
					    		<img id='qrImg' />
					    	</div>
				    	</div>
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<!-- <button type="submit" class="btn btn-primary">提交更改</button> -->
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
    <%--  <script type="text/javascript" src="<%=basePath%>plugins/bootstrap/js/bootstrap.min.js"></script> --%>
    <script src="plugins/js/jquery.min.js"></script>
    <script>
    	/* $(function(){
    		$("#qrImg").attr("src");
    	}); */
    	//将一个表单的数据返回成JSON对象
		/* $.fn.serializeObject = function() {
		  var o = {};
		  var a = this.serializeArray();
		  $.each(a, function() {
		    if (o[this.name]) {
		      if (!o[this.name].push) {
		        o[this.name] = [ o[this.name] ];
		      }
		      o[this.name].push(this.value || '');
		    } else {
		      o[this.name] = this.value || '';
		    }
		  });
		  return o;
		};
		
    	$(document).ready(
    		function(){
	    		$("input[type=submit]").click(function(e){
	    			 var jsonuserinfo = $.toJSON($('#form').serializeObject());
	    			 jQuery.ajax( {
				         type : 'POST',
				         contentType : 'application/json',
				         url : 'teacher/course',
				         data : jsonuserinfo,
				         dataType : 'json',
				         success : function(data) {
				           alert("新增成功！");
				         },
				         error : function(data) {
				           alert("error")
				          }
			        });
	    			e.preventDefault();
	    			$("#qrcode_div").empty().append("<img id='qrImg' />");
	    			$("#qrImg").attr("src", "qrcode?courseId="+$("input[type=text][name=courseId]").val());
	    		});
    		}); */
    	
    </script>
</body>

</html>