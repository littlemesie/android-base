
<!DOCTYPE HTML>
<#assign base=request.contextPath />
<html lang="zh-cn">
<head>
	<title>我的首页</title>
	<meta charset="utf-8">
	<!-- Bootstrap -->
    <link href="${base}/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="/plugins/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="/plugins/js/jquery.min.js"></script>
    <script type="text/javascript" src="/plugins/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 导航 -->
	<div>
		<nav class="navbar navbar-default" role="navigation">
		<div class="logo">
			<img src="plugins/images/m-logo.png" height="70" width="70"><br>
			<img src="plugins/images/mm-logo.png" height="35" width="130">
		</div>
		<div class="navigation">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">首页</a></li>
				<li><a href="#mysite" data-toggle="tab">个人信息</a></li>
				<li><a href="./teacher/course">课表查询</a></li>
				<li><a href="./teacher/checkinfo">签到明细</a></li>
				<li><a href="./teacher/stuinfo">学生信息</a></li>
				<li><a href="./teacher/scores">学生成绩</a></li>
				
			</ul>
		</div>
		<!--  -->
		<div class="welcom">
            <div class="wel-out"><a href=""><strong>退出</strong></a></div>
            <div class="wel-name">欢迎您！<strong>张教授</strong></div>
            <div class="wel-img">
            	<img src="plugins/images/min_logo.png" height="36" width="36">
            </div>
        </div>
		</nav>
	</div>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="home">
			<h1>欢迎和提示界面！</h1>
			<h3>第一步：点击"管理项"</h3>
			<h3>第二步：点击"功能标签"</h3>
			<h3>第三步：点击"功能导航"</h3>
			
		</div>
		
		<div class="tab-pane fade" id="mysite">
			<div class="main">
				<div class="main_right_header">个人信息（2016-03-25）</div>
				<div class="right_1">
					<img src="plugins/images/photo.jpg" width="148px" alt="">
				</div>
				<div class="right_2">
					<img src="plugins/images/r_2_1.jpg" alt=""><br>
					<br>
					<br> <img src="plugins/images/r_2_2.jpg" alt=""><br>
					<br> <img src="plugins/images/r_2_3.jpg" alt=""><br>
				</div>
				<div class="right_3">
					<img src="plugins/images/weather.jpg" width="188px" alt="">
				</div>
			</div>
		</div>
	</div>
	
	<div class="footer">
			数字化校园资源导航 | 校园网络服务指南 | 校园一卡通应用指南 | 信息化应用系统指南 | 统一身份认证登录帮助 | 联系我们
	            Copyright © 2012 HZNU. All Rights Reserved. 杭州师范大学版权所有
	</div>
	
	
    
</body>
</html>
