<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <!-- Bootstrap -->
    <link href="<%=basePath%>plugins/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">

    
  </head>
  
  <body>
  <div class="container">
<h1 class="page-header">User Login</h1>
<form action="./teacher/login" class="form-horizontal" role="form" method="post">

  <div class="form-group">
    <label for="userName" class="col-xs-2 control-label">UserName</label>
    <div class="col-xs-3">
      <input type="text" class="form-control" id="userName" name="userName" placeholder="userName">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword" class="col-xs-2 control-label">Password</label>
    <div class="col-xs-3">
      <input type="userPwd" class="form-control" name="userPwd" id="inputPassword" placeholder="userPwd">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
   <div class="col-xs-offset-2 col-xs-3">
      <button type="submit" class="btn btn-success btn-block">Sign in</button>
    </div>
  </div>
</form>
 </div> 
    <script src="<%=basePath%>plugins/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
