<html>
<head>
    <meta charset="UTF-8">
    <title>Web sockets test</title>
 <style type="text/css">
     .container
     {
         font-family: "Courier New";
         width: 680px;
         height: 300px;
         overflow: auto;
         border: 1px solid black;
     }

     .LockOff {
         display: none;
         visibility: hidden;
      }

      .LockOn {
         display: block;
         visibility: visible;
         position: absolute;
         z-index: 999;
         top: 0px;
         left: 0px;
         width: 1024%;
         height: 768%;
         background-color: #ccc;
         text-align: center;
         padding-top: 20%;
         filter: alpha(opacity=75);
         opacity: 0.75;
      }
   </style>

    <script src="http://static.blog.csdn.net/scripts/jquery.js" type="text/javascript"></script>

    <script type="text/javascript">
      var ws;
      var SocketCreated = false;
      var isUserloggedout = false;

      function ToggleConnectionClicked() {
            if (SocketCreated && (ws.readyState == 0 || ws.readyState == 1)) {
                SocketCreated = false;
                isUserloggedout = true;
                ws.close();
            } else {
                Log("准备连接到聊天服务器 ...");
                try {
                    if ("WebSocket" in window) {
                    	ws = new WebSocket("ws://" + document.getElementById("Connection").value);
                    }
                    else if("MozWebSocket" in window) {
                    	ws = new MozWebSocket("ws://" + document.getElementById("Connection").value);
                    }

                    SocketCreated = true;
                    isUserloggedout = false;
                } catch (ex) {
                    Log(ex, "ERROR");
                    return;
                }
                document.getElementById("ToggleConnection").innerHTML = "断开";
                ws.onopen = WSonOpen;
                ws.onmessage = WSonMessage;
                ws.onclose = WSonClose;
                ws.onerror = WSonError;
            }
        };


        function WSonOpen() {
            Log("连接已经建立。", "OK");
            $("#SendDataContainer").show();
   			    ws.send(document.getElementById("txtName").value);
        };

        function WSonMessage(event) {
            Log(event.data);
        };

        function WSonClose() {
            if (isUserloggedout)
                Log("【"+document.getElementById("txtName").value+"】离开了聊天室！");
            document.getElementById("ToggleConnection").innerHTML = "连接";
            $("#SendDataContainer").hide();
        };

        function WSonError() {
            Log("远程连接中断。", "ERROR");
        };


        function SendDataClicked() {
            if (document.getElementById("DataToSend").value.trim() != "") {
                ws.send(document.getElementById("txtName").value + "说 :\"" + document.getElementById("DataToSend").value + "\"");
                document.getElementById("DataToSend").value = "";
            }
        };


        function Log(Text, MessageType) {
            if (MessageType == "OK") Text = "<span style='color: green;'>" + Text + "</span>";
            if (MessageType == "ERROR") Text = "<span style='color: red;'>" + Text + "</span>";
            document.getElementById("LogContainer").innerHTML = document.getElementById("LogContainer").innerHTML + Text + "<br />";
            var LogContainer = document.getElementById("LogContainer");
            LogContainer.scrollTop = LogContainer.scrollHeight;
        };


        $(document).ready(function () {
            $("#SendDataContainer").hide();

            if ('WebSocket' in window) {
                Log("您的浏览器支持WebSocket. 您可以尝试连接到聊天服务器!", "OK");
                document.getElementById("Connection").value = "127.0.0.1:8080/web-chat/chat";
            } else {
                Log("您的浏览器不支持WebSocket。请选择其他的浏览器再尝试连接服务器。", "ERROR");
                document.getElementById("ToggleConnection").disabled = true;
            }

            $("#DataToSend").keypress(function(evt)
            {
            		if (evt.keyCode == 13)
            		{
            				$("#SendData").click();
            				evt.preventDefault();
            		}
            })
        });

    </script>
</head>
<body>
    <div id="skm_LockPane" class="LockOff"></div>
    <form id="form1" runat="server">
        服务器地址: <input type="text" id="Connection" /> 用户名： <input type="text" id="txtName" value="黄晓安"/>
        <button id='ToggleConnection' type="button" onclick='ToggleConnectionClicked();'>连接</button>
        <br />
        <br />
        <div id='LogContainer' class='container'></div>
        <br />
        <div id='SendDataContainer'>
        <input type="text" id="DataToSend" size="88" />
        <button id='SendData' type="button" onclick='SendDataClicked();'>发送</button>
        </div>
        <br />
    </form>
</body>
</html>

