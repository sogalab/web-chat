<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="/webchat/resources/css/main.css">
</head>
<body>
	<div class="bg">
	    <div class="login">
	      <div class="login_icon"></div>
	      <form class="login_form" action="msg/login" method="post">
	        <div class="login_input_div">
	          <svg class="login_input_icon name svg_icon" viewBox="0 0 20 20">
	            <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
	          </svg>
	          <input name="name" type="text" class="login_input name" placeholder="Username" value=""/>
	        </div>
	        <div class="login_input_div">
	          <svg class="login_input_icon pass svg_icon" viewBox="0 0 20 20">
	            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
	          </svg>
	          <input name="password" type="password" class="login_input pass" placeholder="Password" value=""/>
	        </div>
	        <button type="button" class="login_submit">登录</button>
	        <p class="login_signup">还没有账号? &nbsp;<a href="#" target="_blank">立即注册</a></p>
	      </form>
	    </div>
	</div>

	<script src="http://csdnimg.cn/public/common/libs/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script>
	$(document).ready(function () {
	    var animating = false, submitPhase1 = 1200, submitPhase2 = 400, $login = $('.login');
	    $(document).on('click', '.login_submit', function (e) {		
	        if (animating)
	            return;
	        animating = true;
	        var that = this;
	        $(that).addClass('processing');
	        setTimeout(function () {
	            $(that).addClass('success');
	            setTimeout(function () {
	                $login.hide();
	                $login.addClass('inactive');
	                animating = false;
	                $(that).removeClass('success processing');
	            }, submitPhase2);
	            setTimeout(function () {
	                $(".login_form").submit();
	            }, submitPhase2 + 100);
	        }, submitPhase1);
	    });
	});
	</script>
</body>
</html>
