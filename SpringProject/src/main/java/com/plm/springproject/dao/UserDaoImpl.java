package com.plm.springproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;  
import java.util.List;  
import javax.sql.DataSource;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import com.plm.springproject.domain.User;  
import com.plm.springproject.jdbc.UserRowMapper;

  
  
public class UserDaoImpl implements UserDao {  
  
 @Autowired  
 DataSource dataSource;  
  
 public void insertData(User user) {  
  
  String sql = "INSERT INTO user "  
    + "(first_name,last_name, gender, city) VALUES (?, ?, ?,?)";  
  
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
  
  jdbcTemplate.update(  
    sql,  
    new Object[] { user.getFirstName(), user.getLastName(),  
      user.getGender(), user.getCity() });  
  
 }  
  
 public List<User> getUserList() {  
  List<User> userList = new ArrayList<User>();  
  
  String sql = "select * from user";  
  
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
  userList = jdbcTemplate.query(sql, new UserRowMapper());  
  return userList;  
 }  
  
 @Override  
 public void deleteData(String id) {  
  String sql = "delete from user where user_id=" + id;  
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
  jdbcTemplate.update(sql);  
  
 }  
  
 @Override  
 public void updateData(User user) {  
  
  String sql = "UPDATE user set first_name = ?,last_name = ?, gender = ?, city = ? where user_id = ?";  
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
  
  jdbcTemplate.update(  
    sql,  
    new Object[] { user.getFirstName(), user.getLastName(),  
      user.getGender(), user.getCity(), user.getUserId() });  
  
 }  
  
 @Override  
 public User getUser(String id) {  
  List<User> userList = new ArrayList<User>();  
  String sql = "select * from user where user_id= " + id;  
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
  userList = jdbcTemplate.query(sql, new UserRowMapper());  
  return userList.get(0);  
 }  
 
 private static class UserRowMapper implements ParameterizedRowMapper<User>
	{

		@Override
		public User mapRow(ResultSet rs, int arg1)throws SQLException 
		{
			User user = new User();
			user.setUserId(rs.getInt(1));
			user.setFirstName(rs.getString(2));
			user.setLastName(rs.getString(3));  
			user.setGender(rs.getString(4));  
			 user.setCity(rs.getString(5));
			  return user;  
		}
		 
 
 
 
 
 
	}
 
 
 
 
 
 
 
 
}  
