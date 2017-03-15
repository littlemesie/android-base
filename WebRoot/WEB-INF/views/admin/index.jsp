<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
	<head>
		<base href="<%=basePath%>">
		<title>二维码签到系统</title>
		<!-- Bootstrap -->
	    <link href="<%=basePath%>plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
	    <link rel="stylesheet" href="<%=basePath%>plugins/bootstrap/css/bootstrap.min.css">
	    <link href="<%=basePath%>plugins/css/admin_index.css" rel="stylesheet">
	</head>
	<body>
		<!-- 页头 -->
		<header>
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<a href="#" title="二维码签到">
							<img id="logo" src="<%=basePath%>plugins/images/logo.jpg" alt="签到">
						</a>
					</div>
					<div class="col-md-6">
						<div class="pull-right" id="search">
							欢迎您:<a href="#">admin</a>&nbsp;<button type="button" class="btn">退出</button>
						</div>

					</div>
				</div>
			</div>
		</header><!-- 页头结束 -->
		<hr />
		<main><!-- 主体部分 -->
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<nav id="nav">
							<div class="panel-group" id="accordion">
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseOne">
								          教师基本信息
								        </a>
								      </h4>
								    </div>
								    <div id="collapseOne" class="panel-collapse collapse in">
								      <div class="panel-body">
								        阿里巴巴商学院<br>
								        外国语学院<br>
								        杭州国际服务工程学院
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseTwo">
								          学生基本信息
								        </a>
								      </h4>
								    </div>
								    <div id="collapseTwo" class="panel-collapse collapse">
								      <div class="panel-body">
								        阿里巴巴商学院<br>
								        外国语学院<br>
								        杭州国际服务工程学院
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseThree">
								          访问统计
								        </a>
								      </h4>
								    </div>
								    <div id="collapseThree" class="panel-collapse collapse">
								      <div class="panel-body">
								        查看访问数据
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseFour">
								          管理日志
								        </a>
								      </h4>
								    </div>
								    <div id="collapseFour" class="panel-collapse collapse">
								      <div class="panel-body">
								        日志列表<br>
								        日志归档
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseFive">
								          缓存管理
								        </a>
								      </h4>
								    </div>
								    <div id="collapseFive" class="panel-collapse collapse">
								      <div class="panel-body">
								        缓存清理<br>
								        缓存配置
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseSix">
								          数据备份
								        </a>
								      </h4>
								    </div>
								    <div id="collapseSix" class="panel-collapse collapse">
								      <div class="panel-body">
								        开始备份<br>
								        删除备份
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseSeven">
								          异常处理
								        </a>
								      </h4>
								    </div>
								    <div id="collapseSeven" class="panel-collapse collapse">
								      <div class="panel-body">
								        删除异常数据
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" 
								          href="#collapseEight">
								          在线升级
								        </a>
								      </h4>
								    </div>
								    <div id="collapseEight" class="panel-collapse collapse">
								      <div class="panel-body">
								        在线升级
								      </div>
								    </div>
								  </div>

								</div>

						</nav>
					</div>
					<div class="col-md-10">
						<h3><span>教师基本信息</span></h3>
						<div class="col-md-8">
							<input type="text" class="input">&nbsp;&nbsp;学院
							<input type="text" class="input">&nbsp;&nbsp;课程
							<input type="text" class="input">&nbsp;&nbsp;姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<div class="col-md-1">
							<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						        查询
							</button>&nbsp;&nbsp;
						</div>
						<div class="col-md-1">
							<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						        增加
							</button>
						</div>
						<table class="table table-hover">

						   <thead>
						      <tr>
						         <th>姓名</th>
						         <th>课程名</th>
						         <th>教工号</th>
						         <th>手机号</th>
						         <th>修改</th>
						         <th>删除</th>
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
						         		修改
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		删除
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
						         		修改
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		删除
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
						         		修改
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		删除
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
						         		修改
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		删除
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
						         		修改
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		删除
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
						         		修改
									</button>
								</td>
								<td>
						         	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						         		删除
									</button>
								</td>
						      </tr>
						   </tbody>
						</table>
						
						
						<nav>
						  <ul class="pagination">
						    <li>
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li><a href="">1</a></li>
						    <li><a href="">2</a></li>
						    <li><a href="">3</a></li>
						    <li><a href="">4</a></li>
						    <li><a href="">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav>
					</div>
				</div>
			</div>
		</main>
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
		</div>
		<footer><!-- 页脚部分 -->
			<div class="container">
				<div class="footer">
					&copy; 2016 杭州师范大学
				</div>
			</div>
		</footer>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</html>