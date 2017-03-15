<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>LOGIN</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<%=basePath%>plugins/css/login.css" rel="stylesheet" media="screen">

</head>

<body>
	<h1>
		杭州师范大学二维码签到系统<sup>2016</sup>
	</h1>

	<div class="login" style="margin-top:50px;">

		<div class="header">
			<div class="switch" id="switch">
				<a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7" >快速登录</a>
				<a class="switch_btn" id="switch_login" href="javascript:void(0);"tabindex="8">快速注册</a>
				<div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
			</div>
		</div>

		<div class="web_qr_login" id="web_qr_login"style="display: block; height: 235px;">
			<!--登录-->
			<div class="web_login" id="web_login">
				<div class="login-box">
					<div class="login_form">
						<form:form modelAttribute="contentModel" action="./teacher/login"  name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post" >
							<!-- 账号 -->
							<div class="uinArea" id="uinArea">
								<label class="input-tips" for="u">帐号：</label>
								<div class="inputOuter" id="uArea">
									<input type="text" id="u" name="name" class="inputstyle" />
								</div>
							</div>
						
							<div class="pwdArea" id="pwdArea">
								<label class="input-tips" for="p">密码：</label>
								<div class="inputOuter" id="pArea">
									<input type="password" id="p" name="pwd" class="inputstyle" />
									<form:errors path="error_msg"></form:errors><br/>
								</div>
								
							</div>
							
							<div style="padding-left:50px;margin-top:20px;">
								<input type="submit" value="登 录" style="width:150px;"class="button_blue" onclick="return check(this.form)"/>
								<label><input class="teacher" type="radio" name="login" value="teacher" checked="checked"/>教师</label>
								<label><input class="admin" type="radio" name="login" value="adminstrator"/>管理员</label>
							</div>
							
						</form:form>
					</div>
				</div>
			</div>
			<!--登录end-->
		</div>

		<!--注册-->
		<div class="qlogin" id="qlogin" style="display: none; ">

			<div class="web_login">
				<form name="form2" id="regUser" accept-charset="utf-8" action="./teacher/register" method="post">
					<input type="hidden" name="to" value="reg" /> <input type="hidden" name="did" value="0" />
					<ul class="reg_form" id="reg-ul">
						<div id="userCue" class="cue">快速注册请注意格式</div>
						<li>
							<label for="user" class="input-tips2">用户名：</label>
							<div class="inputOuter2">
								<input type="text" id="user" name="userName" maxlength="16" class="inputstyle2" />
							</div>
						</li>

						<li>
							<label for="passwd" class="input-tips2">密码：</label>
							<div class="inputOuter2">
								<input type="password" id="passwd" name="userPwd" maxlength="16" class="inputstyle2" />
							</div>
						</li>
						<li>
							<label for="passwd2" class="input-tips2">确认密码：</label>
							<div class="inputOuter2">
								<input type="password" id="passwd2" name="" maxlength="16" class="inputstyle2" />
							</div>
						</li>

						<!-- <li>
							<label for="qq" class="input-tips2">QQ：</label>
							<div class="inputOuter2">
								<input type="text" id="qq" name="qq" maxlength="10" class="inputstyle2" />
							</div>
						</li> -->

						<li>
							<div class="inputArea">
								<input type="button" id="reg"style="margin-top:10px;margin-left:85px;" class="button_blue" value="同意协议并注册" /> 
								<a href="#" class="zcxy" target="_blank">注册协议</a>
							</div>
						</li>
					</ul>
				</form>
			</div>


		</div>
		<!--注册end-->
	</div>
	<!-- <div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div> -->
	
	<script language='javascript' src="<%=basePath%>plugins/js/jquery.min.js"></script>
	<script language='javascript' src="<%=basePath%>plugins/js/login.js"></script>
	
	<script type="text/javascript">
         function check(form) {

          if(form.name.value=='') {
                alert("请输入用户帐号!");
                form.userId.focus();
                return false;
           }
	       if(form.pwd.value==''){
	                alert("请输入登录密码!");
	                form.password.focus();
	                return false;
	         }
	          return true;
         }
</script>
</body>

</html>
