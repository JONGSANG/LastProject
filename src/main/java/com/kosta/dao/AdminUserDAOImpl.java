package com.kosta.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface AdminUserDAOImpl extends AdminUserDAO {
	
	
	
	@Override
	default String[] allMember() throws Exception {
		return null;
	}
	
}
