<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
	String basePath2 = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

	    <div class="app">
	      <div class="app_top">
	        <div class="app_menu-btn">
	          <span></span>
	        </div>
	        <p class="app_hello">Fan Yongliang</p>
	        <div class="app_user">
	          <img src="/webchat/resources/images/head.png" alt="" class="app_user-photo" />
	        </div>
	        <div class="app_user" style="width: 14rem;">
	        	<div>
		        	<ul>
		        		<li style="list-style: none;position: relative;top: 15px;left: -6px;float: left;"> 等级 </li>
		        		<li style="background: url(/webchat/resources/images/25.gif) no-repeat;background-position: -28px;background-size: cover;height: 22px;width: 22px;list-style: none;position: relative;top: 15px;left: 0px;float: left;"></li>
		        		<li style="background: url(/webchat/resources/images/25.gif) no-repeat;background-position: -28px;background-size: cover;height: 22px;width: 22px;list-style: none;position: relative;top: 15px;left: 6px;float: left;"></li>
		        		<li style="background: url(/webchat/resources/images/25.gif) no-repeat;background-position: -28px;background-size: cover;height: 22px;width: 22px;list-style: none;position: relative;top: 15px;left: 12px;float: left;"></li>
		        		<li style="background: url(/webchat/resources/images/25.gif) no-repeat;background-position: -28px;background-size: cover;height: 22px;width: 22px;list-style: none;position: relative;top: 15px;left: 18px;float: left;"></li>
		        	</ul>
	        	</div>
	        	<div style="position: relative;top: 25px;">
		        	<ul>
		        		<li style="background: url(/webchat/resources/images/base_v.1.png) no-repeat;background-position-x: -50px;background-size: cover;height: 64px;width: 26px;list-style: none;position: relative;top: 15px;left: 0px;float: left;"></li>
		        	</ul>
	        	</div>
	        </div>
	      </div>
	      <div class="app_bot">
	        <div class="app_meetings">
	          <div class="app_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="app_meeting-photo" />
	            <p class="app_meeting-name">Feed the cat</p>
	            <br />
	            <p class="app_meeting-info">
	              <span class="app_meeting-time">8 - 10am</span>
	              <span class="app_meeting-place">Real-life</span>
	            </p>
	          </div>
	          <div class="app_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="app_meeting-photo" />
	            <p class="app_meeting-name">Feed the cat!</p>
	            <br />
	            <p class="app_meeting-info">
	              <span class="app_meeting-time">1 - 3pm</span>
	              <span class="app_meeting-place">Real-life</span>
	            </p>
	          </div>
	          <div class="app_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="app_meeting-photo" />
	            <p class="app_meeting-name">FEED THIS CAT ALREADY!!!</p>
	            <br />
	            <p class="app_meeting-info">
	              <span class="app_meeting-time">This button is just for demo ></span>
	            </p>
	          </div>
	          <div class="app_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="app_meeting-photo" />
	            <p class="app_meeting-name">FEED THIS CAT ALREADY!!!</p>
	            <br />
	            <p class="app_meeting-info">
	              <span class="app_meeting-time">This button is just for demo ></span>
	            </p>
	          </div>
	          <div class="app_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="app_meeting-photo" />
	            <p class="app_meeting-name">Feed the cat!</p>
	            <br />
	            <p class="app_meeting-info">
	              <span class="app_meeting-time">1 - 3pm</span>
	              <span class="app_meeting-place">Real-life</span>
	            </p>
	          </div>
	          <div class="app_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="app_meeting-photo" />
	            <p class="app_meeting-name">Feed the cat!</p>
	            <br />
	            <p class="app_meeting-info">
	              <span class="app_meeting-time">1 - 3pm</span>
	              <span class="app_meeting-place">Real-life</span>
	            </p>
	          </div>
	          <div class="app_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="app_meeting-photo" />
	            <p class="app_meeting-name">Feed the cat!</p>
	            <br />
	            <p class="app_meeting-info">
	              <span class="app_meeting-time">1 - 3pm</span>
	              <span class="app_meeting-place">Real-life</span>
	            </p>
	          </div>
	        </div>
	      </div>
	      <div class="app_logout">
	        <svg class="app_logout-icon svg_icon" viewBox="0 0 20 20">
	          <path d="M6,3 a8,8 0 1,0 8,0 M10,0 10,12"/>
	        </svg>
	      </div>
	    </div>


		<div class='card-holder' style="display: block;">
		  <div class='card-wrapper'>
		    <a href='#'>
		      <div class='card bg-01'>
		        <span class='card-content'>&lt;&nbsp;&nbsp;1</span>
		      </div>
		    </a>
		  </div>
		  <div class='card-wrapper'>
		    <a href='#'>
		      <div class='card bg-02'>
		        <span class='card-content'>&lt;&nbsp;&nbsp;2</span>
		      </div>
		    </a>
		  </div>
		  <div class='card-wrapper'>
		    <a href='#'>
		      <div class='card bg-03'>
		        <span class='card-content'>&lt;&nbsp;&nbsp;3</span>
		      </div>
		    </a>
		  </div>
		  <div class='card-wrapper'>
		    <a href='#'>
		      <div class='card bg-04'>
		        <span class='card-content'>&lt;&nbsp;&nbsp;4</span>
		      </div>
		    </a>
		  </div>
		  <div class='card-wrapper'>
		    <a href='#'>
		      <div class='card bg-05'>
		        <span class='card-content'>&lt;&nbsp;&nbsp;5</span>
		      </div>
		    </a>
		  </div>
		  <div class='card-wrapper'>
		    <a href='#'>
		      <div class='card bg-06'>
		        <span class='card-content'>&lt;&nbsp;&nbsp;6</span>
		      </div>
		    </a>
		  </div>
		  <div class='card-wrapper'>
		    <a href='#'>
		      <div class='card bg-07'>
		        <span class='card-content'>&lt;&nbsp;&nbsp;7</span>
		      </div>
		    </a>
		  </div>
		</div>


	    <div class="session" >
	      <div class="session_top" >
	        <p class="session_hello" >
	        管理员
			<span>X</span>
	        </p>
	      </div>
	    </div>



	    <div class="chat" >
	      <div class="chat_bot">
	        <div class="">
	          <div class="chat_meeting">
	            <img src="/webchat/resources/images/head.png" alt="" class="chat_meeting-photo" />
	            <p class="chat_meeting-name">Feed the cat</p>
	            <br />
	            <p class="chat_meeting-info">
	              <span class="">8 - 10am</span>
	              <span class="">Real-life</span>
	            </p>
	            <div class="notice" >
                    <marquee direction="left">目前只有聊天功能呢，以后会陆续开发私聊，图片，在线时间，对方正在打字，互动游戏等功能。。尽请期待！</marquee>
                </div>
	          </div>
	      	</div>
	      </div>
	      <div id="content" class="chat_top" >
			<div class="chatbox_left">
				<div class="d1">
					<span class="name">管理员</span>
					&nbsp;&nbsp;
					<span class="time">21:37:36</span>
				</div>
				<div class="d2" >
					<img class="img" src="/webchat/resources/images/head.png" alt="" >
					<div class="corner" ></div>
					<div class="content" >
						......1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
					</div>
				</div>
			</div>
			<div class="clearboth" style="clear: both;"></div>
			<div class="chat_msg" style="border-radius: 5px;border: 1px solid #f6f6f6;color: #fff;text-align: center;margin-bottom: 15px;padding-top: 5px;padding-bottom: 5px;">
				<div>22:04:56</div>
				<span class="message-music" style="width: 10px;height: 10px;background: url(http://zb.666001.cc/images/icon.png) -68px -22px no-repeat;display:inline-block;margin-top:2px;"></span>
				管理员上线了
			</div>
			<div class="chatbox_right">
				<div class="d1" >
					<span class="time" >23:19:29</span>
					&nbsp;&nbsp;
					<span class="name" >我</span>
				</div>
				<div class="d2" >
					<img class="img" src="/webchat/resources/images/head.png" alt="" >
					<div class="corner" ></div>
					<div class="content" >
						ABC<br>
						ABC<br>
						ABC<br>
						ABC<br>
						ABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABC
					</div>
				</div>
			</div>
			<div class="clearboth" style="clear: both;"></div>
	      </div>
		  <div class="app__bot" style="height:3rem;background:rgba(0, 0, 0, 0.5);">
		  	<a class="emoji" style="width:25px;float:left;margin:5px 0 0 5px;" data-toggle="popover" data-placement="top" title="表情"><img style="width:100%;" class="img_emoji" src="http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/5c/huanglianwx_thumb.gif"></a>
		  	<button onkeydown="send(event)" onclick="sendMsg()" style="position: absolute;right: 3px;bottom: 0;width: 8rem;height: 2.8rem;color: #333;background: #fff;border: 1px solid #999;margin: 0 1px 1px 0;border-radius: 8px;">发送</button>
		  </div>
	      <div class="app__bot" style="height:8rem;border-radius:8px;">
                <span class="span-message" style="color:#aaa;position:absolute;margin:13px;">按Ctrl + Enter键发送消息</span>
				<div id="msg" class="text-message" contenteditable="true" placeholder="按Ctrl + Enter键发送消息" style=	"border: 1px solid #c6cede !important;overflow: auto;vertical-align: top;outline: none;resize: none;border: 1px #c8c8c8 solid;box-sizing: border-box;width: 100%;margin: 0; padding: 12px;font-size: 14px;height: 8rem;color: #aaa;"></div>

	        </div>
	      </div>
	</div>

	<script src="http://csdnimg.cn/public/common/libs/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
	
	<script>
		$(document).ready(function () {
		    var animating = false, logoutPhase1 = 800, $login = $('.login'), $app = $('.app');
	
		    $(document).on('click', '.app__logout', function (e) {
		        if (animating)
		            return;
		        animating = true;
		        var that = this;
		        $(that).addClass('clicked');
		        setTimeout(function () {
		            $app.removeClass('active');
		            $login.show();
		            $login.css('top');
		            $login.removeClass('inactive');
		        }, logoutPhase1 - 120);
		        setTimeout(function () {
		            $app.hide();
		            animating = false;
		            $(that).removeClass('clicked');
		        }, logoutPhase1);
		    });
	
		    $(document).on('click', '.text-message', function (e) {
		    	$('.span-message').text('');
		    });
	
		});
	</script>
	
	<script>
		var path = '<%=basePath%>';
		var uid='${uid eq null?-1:uid}';
		if(uid==-1){
			location.href="<%=basePath2%>";
		}
		var from=uid;
		var fromName='${name}';
		var to = uid == "1"?"2":"1";
		
		var websocket;
		
		if ('WebSocket' in window) {
			websocket = new WebSocket("ws://" + path + "/ws?uid="+uid);
		} else if ('MozWebSocket' in window) {
			websocket = new MozWebSocket("ws://" + path + "/ws"+uid);
		} else {
			websocket = new SockJS("http://" + path + "/ws/sockjs"+uid);
		}
		
		websocket.onopen = function(event) {
			console.log("WebSocket:已连接");
			console.log(event);
		};
		
		websocket.onmessage = function(event) {
			var data=JSON.parse(event.data);
			console.log("WebSocket:收到一条消息",data);
			var textCss=data.from==-1?"sfmsg_text":"fmsg_text";
			$("#content").append("<div class='fmsg'><label class='name'>"+data.fromName+"&nbsp;"+data.date+"</label><div class='"+textCss+"'>"+data.text+"</div></div>");
			scrollToBottom();
		};
		
		websocket.onerror = function(event) {
			console.log("WebSocket:发生错误 ");
			console.log(event);
		};
		
		websocket.onclose = function(event) {
			console.log("WebSocket:已关闭");
			console.log(event);
		};
		
		function sendMsg(){
			var v=$("#msg").html();
			if(v==""){
				return;
			}else{
				var data={};
				data["from"]=from;
				data["fromName"]=fromName;
				data["to"]=to;
				data["text"]=v;
				websocket.send(JSON.stringify(data));
				$("#content").append("<div class='tmsg'><label class='name'>我&nbsp;"+new Date().Format("yyyy-MM-dd hh:mm:ss")+"</label><div class='tmsg_text'>"+data.text+"</div></div>");
				scrollToBottom();
				$("#msg").html("");
			}
		}
		
		function scrollToBottom(){
			var div = document.getElementById('content');
			div.scrollTop = div.scrollHeight;
		}
		
		Date.prototype.Format = function (fmt) { //author: meizz 
		    var o = {
		        "M+": this.getMonth() + 1, //月份 
		        "d+": this.getDate(), //日 
		        "h+": this.getHours(), //小时 
		        "m+": this.getMinutes(), //分 
		        "s+": this.getSeconds(), //秒 
		        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
		        "S": this.getMilliseconds() //毫秒 
		    };
		    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		    for (var k in o)
		    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
		    return fmt;
		}
		
		function send(event){
			var code;
			if(window.event){
				code = window.event.keyCode; // IE
			}else{
				code = e.which; // Firefox
			}
			if(code==13){ 
				sendMsg();            
			}
		}
		
		function clearAll(){
			$("#content").empty();
		}
		scrollToBottom();
	</script>
	
	<audio id="music">
	    <source src="http://w.qq.com/audio/classic.mp3" type="audio/mpeg" />
	</audio>
</body>
</html>