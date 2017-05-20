<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
</head>


<style type="text/css">
	#headicon{
		text-align: center;
		margin-top: 60px;

	}
	.loginbox{
		padding-top: 30px;
		width:300px;
		margin:0 auto;
		margin-top: 20px;
		border:solid 1px #d8dee2;
		border-radius: 8px;
		height: 470px;
		
	}
	#sepline{

		margin: 0 auto;
		margin-top: 15px;
		color: grey;
		background-color: #d8dee2;
		width: 250px;
		height: 1px;
	}
	.inputbox{
		width: 250px;
		height: 30px;
		border-color: #d8dee2;
		border-radius: 5px;
		font-size: 15px;
		padding-left:8px;
	}
	#loginbtn{
		width:270px;
		height: 45px;
		background-color: #34d058;
		border-radius: 5px;
		color: #fff;
		font-size: 18px;
		font-family: "宋体";
		margin-top: 35px;
	}
	
</style>
<body>
<div id="headicon">
	<div class="loginbox">
		<b style="font-size: 25px;">用户注册</b>
		<div id="sepline"></div>
		<form method="post" action="regist">
		<h3 style="padding-top: 5px;">Username</h3>
		<input  class="inputbox" type="text" name="username" placeholder="用户名" required="required"/>
		<h3 style="padding-top: 5px;">Password</h3>
		<input  class="inputbox" type="password" name="password" placeholder="密码" required="required"/>
		<h3 style="padding-top: 5px;">Password Again</h3>
		<input  class="inputbox" type="password" name="pwdAgain" placeholder="确认密码" required="required"/>
		<input type="submit" id="loginbtn" value="注 册" />
		<s:fielderror name="registerror"/>
		
		</form>
	</div>
</div>

</body>
</html>