package com.plm.springproject;


import org.springframework.stereotype.Controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;  
import java.util.HashMap;  
import java.util.List;  
import java.util.Map;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;  
import org.springframework.web.servlet.ModelAndView;  
import com.plm.springproject.domain.User;
import com.plm.springproject.jdbc.UserRowMapper;
import com.plm.springproject.services.UserService; 
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired  
	 UserService userService;  
	UserRowMapper user;
	ResultSet resultSet;
	  
	 @RequestMapping("/")  
	 public ModelAndView registerUser(@ModelAttribute User user) {  
	  
	  List<String> genderList = new ArrayList<String>();  
	  genderList.add("male");  
	  genderList.add("female");  
	  
	  List<String> cityList = new ArrayList<String>();  
	  cityList.add("delhi");  
	  cityList.add("gurgaon");  
	  cityList.add("meerut");  
	  cityList.add("noida");  
	  
	  Map<String, Object> map = new HashMap<String, Object>();  
	  map.put("genderList", genderList);  
	  map.put("cityList", cityList);  
	  return new ModelAndView("register", "map", map);  
	 }  
	  
	 @RequestMapping("/insert")  
	 public String insertData(@ModelAttribute User user) {  
		 System.out.println("in insert");
	  if (user != null)  
	   userService.insertData(user);  
	  return "redirect:/getList";  
	 }  
	  
	 @RequestMapping("/getList")  
	 public ModelAndView getUserLIst() throws SQLException {  
	  List<User> userList = userService.getUserList();  
	  
	
	  return new ModelAndView("userList", "userList", userList);  
	 }  
	  
	 @RequestMapping("/edit")  
	 public ModelAndView editUser(@RequestParam String id,  
	   @ModelAttribute User user) {  
	  
	  user = userService.getUser(id);  
	  
	  List<String> genderList = new ArrayList<String>();  
	  genderList.add("male");  
	  genderList.add("female");  
	  
	  List<String> cityList = new ArrayList<String>();  
	  cityList.add("delhi");  
	  cityList.add("gurgaon");  
	  cityList.add("meerut");  
	  cityList.add("noida");  
	  
	  Map<String, Object> map = new HashMap<String, Object>();  
	  map.put("genderList", genderList);  
	  map.put("cityList", cityList);  
	  map.put("user", user);  
	  
	  return new ModelAndView("edit", "map", map);  
	  
	 }  
	  
	 @RequestMapping("/update")  
	 public String updateUser(@ModelAttribute User user) {  
	  userService.updateData(user);  
	  return "redirect:/getList";  
	  
	 }  
	  
	 @RequestMapping("/delete")  
	 public String deleteUser(@RequestParam String id) {  
	  System.out.println("id = " + id);  
	  userService.deleteData(id);  
	  return "redirect:/getList";  
	 }  
	}  

