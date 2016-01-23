package com.plm.springproject.dao;

import java.util.List;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import com.plm.springproject.domain.User;  
  
public interface UserDao {  
 public void insertData(User user);  
 public List<User> getUserList();  
 public void updateData(User user);  
 public void deleteData(String id);  
 public User getUser(String id);  

}  