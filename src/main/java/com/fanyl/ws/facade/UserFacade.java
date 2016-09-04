package com.fanyl.ws.facade;

import com.fanyl.ws.bean.User;
import com.fanyl.ws.dao.UserDAO;

public class UserFacade {
	
	private UserDAO userDAO = new UserDAO();
	
	public User getByName(String name){
		return userDAO.getByName(name);
	}
}
