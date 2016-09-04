package com.fanyl.ws.dao;

import com.fanyl.ws.bean.User;


public interface IUserMapper {
	
	public User getByName(String name);

}
