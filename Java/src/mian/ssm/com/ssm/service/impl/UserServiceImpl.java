package com.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.ssm.domain.User;
import com.ssm.mapper.UserMapper;
import com.ssm.service.UserService;

public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	
	public List<Map<String,Object>> getUserList() {
		
		return userMapper.getUserList();
	}


	public void issuemessage(User user) {
		userMapper.issuemessage(user);
	}
	/**
	 * �鿴������Ѷ
	 */
	public List<Map<String,Object>> lookissuemessage(){
		return userMapper.lookissuemessage();
		
	}
	/**
	 *单表资讯查询
	 */
	public Map<String,Object> Oneissuemessage(User user){
		return userMapper.Oneissuemessage(user);
		
	}
	/**
	 *单表招聘查询
	 */
	public Map<String,Object> Onemessage(User user){
		return userMapper.Onemessage(user);
		
	}
	/**
	 * 招聘删除
	 */
	public void RemessageDelete(User user){
		userMapper.RemessageDelete(user);
	}
	public void CategoryDelete(User user){
		userMapper.CategoryDelete(user);
	}
	public void SectionDelete(User user){
		userMapper.SectionDelete(user);
	}
	/**
	 * 部门查询
	 */
	public List<Map<String,Object>> looksection(){
		return userMapper.looksection();
	}
	/**
	 * 职位查询
	 */
	public List<Map<String,Object>> lookposition(){
		return userMapper.lookposition();
	}
	/**
	 * 职位要求查询 
	 */
	public Map<String,Object> lookcategory(User user){
		return userMapper.lookcategory(user);
	}
	/**
	 * 添加招聘信息
	 */
	public void UpCategory(User user){
		userMapper.UpCategory(user);
	}
	public void UpRemessage(User user){
		userMapper.UpRemessage(user);
	}
	/**
	 * 删除咨询
	 */
	public void IssuemessageDelete(User user){
		userMapper.IssuemessageDelete(user);
	}
	/**
	 * 级联下拉框
	 */
	public List<Map<String,Object>> lookselect(User user){
		return userMapper.lookselect(user);
		
	}
}

