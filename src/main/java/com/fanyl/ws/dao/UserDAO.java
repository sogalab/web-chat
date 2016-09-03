package com.fanyl.ws.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import com.fanyl.ws.dao.factory.MyBatisConnectionFactory;

public class UserDAO implements IUserMapper {
	
	private SqlSessionFactory sqlSessionFactory = MyBatisConnectionFactory
			.getSqlProjectSessionFactory();

	private IUserMapper iUserMapper;

	
}
