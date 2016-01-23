package com.psl.dao;

import com.psl.bean.Login;

public interface LoginDao {
	
	void insertLogin(Login login);
	Login getLogin(String username);
	boolean verifyLogin(String uname, String pwd);
	void updateLogin(Login login);
	void deleteLogin(Login login);

}
