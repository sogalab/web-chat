
package com.fanyl.ws.dao.factory;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MyBatisConnectionFactory {
	private static SqlSessionFactory sqlSessionFactory;

	static{
		
		try {
			String resource = "config/mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			if (sqlSessionFactory == null) {
				
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader, "DevelopProjectMana");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static SqlSessionFactory getSqlProjectSessionFactory() {
		return sqlSessionFactory;
	}

}

