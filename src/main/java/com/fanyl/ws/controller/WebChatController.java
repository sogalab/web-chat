package com.fanyl.ws.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.TextMessage;

import com.fanyl.ws.bean.Message;
import com.fanyl.ws.bean.AbstractUser;
import com.fanyl.ws.controller.websocket.WebChatHandler;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/msg")
public class WebChatController {
 
    @Resource
    WebChatHandler handler;
 
    Map<String, AbstractUser> users = new HashMap<String, AbstractUser>();
     
    //用户登录
    @RequestMapping(value="login",method=RequestMethod.POST)
    public ModelAndView doLogin(AbstractUser user,HttpServletRequest request){
        request.getSession().setAttribute("uid", user.getId());
        request.getSession().setAttribute("name", users.get(user.getId()).getName());
        return new ModelAndView("redirect:talk");
    }
     
    //跳转到交谈聊天页面
    @RequestMapping(value="talk",method=RequestMethod.GET)
    public ModelAndView talk(){
        return new ModelAndView("chat");
    }
    //跳转到发布广播页面
    @RequestMapping(value="broadcast",method=RequestMethod.GET)
    public ModelAndView broadcast(){
        return new ModelAndView("broadcast");
    }
     
    //发布系统广播（群发）
    @ResponseBody
    @RequestMapping(value="broadcast",method=RequestMethod.POST)
    public void broadcast(String text) throws IOException{
        Message msg=new Message();
        msg.setDate(new Date());
        msg.setFrom(-1L);
        msg.setFromName("系统广播");
        msg.setTo(0L);
        msg.setText(text);
        handler.broadcast(new TextMessage(new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create().toJson(msg)));
    }
 
}