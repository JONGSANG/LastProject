package com.kosta.dao;

import java.util.List;

public interface AdminUserDAO {

	public List<String> allMember() throws Exception;

	public List<String> allAdmin() throws Exception;
	
}
