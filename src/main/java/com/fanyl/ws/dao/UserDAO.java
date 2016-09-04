package com.fanyl.ws.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.fanyl.ws.bean.User;
import com.fanyl.ws.dao.factory.MyBatisConnectionFactory;

public class UserDAO implements IUserMapper {
	
	private SqlSessionFactory sqlSessionFactory = MyBatisConnectionFactory
			.getSqlProjectSessionFactory();

	private IUserMapper iUserMapper;

	@Override
	public User getByName(String name) {
        SqlSession session = sqlSessionFactory.openSession();
        User user = new User();
        try {
        	iUserMapper = session.getMapper(IUserMapper.class);
        	user = iUserMapper.getByName(name);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
	}
	
}
