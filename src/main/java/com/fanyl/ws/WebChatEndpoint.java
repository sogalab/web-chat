package com.fanyl.ws;

import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/chat")
public class WebChatEndpoint {
	
	private static int count = 0;
	
	private static CopyOnWriteArraySet<WebChatEndpoint> webSocketSet = new CopyOnWriteArraySet<WebChatEndpoint>();
	
	private Session session;
	
    public WebChatEndpoint(){
        System.out.println("Websocket..");
    }

    @OnOpen
    public void onopen(Session session){
    	this.session = session;
        webSocketSet.add(this); 
        System.out.println("连接成功");
        System.out.println("当前在线人数："+ ++count);
    }
    
    @OnClose
    public void onclose(Session session){
    	webSocketSet.remove(this); 
        System.out.println("关闭连接....");
        count--;
        
    }
    
    @OnMessage      
    public void onMessage(Session session,String msg){
    	System.out.println("服务器接收到消息，开始转发");
        for(WebChatEndpoint item: webSocketSet){             
		    try {
		    	item.session.getBasicRemote().sendText("client"+session.getId()+"say:"+msg);
		    } catch (IOException e) {
		        e.printStackTrace();
		        continue;
		    }
		}
    }
    
    @OnError
    public void onError(Session session, Throwable error){
        System.out.println("发生错误");
        error.printStackTrace();
    }
}