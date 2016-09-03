package com.fanyl.ws.controller.websocket;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

/**
 * WebScoket配置处理器
 */
@Component
@EnableWebSocket
public class WebChatConfig extends WebMvcConfigurerAdapter implements WebSocketConfigurer {
 
    @Resource
    WebChatHandler handler;
 
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(handler, "/ws").addInterceptors(new WebChatHandShake());
 
        registry.addHandler(handler, "/ws/sockjs").addInterceptors(new WebChatHandShake()).withSockJS();
    }
 
}
