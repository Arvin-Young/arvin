package com.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.ssm.domain.User;


public interface UserMapper {
	/**
	 * ��Ƹ��ѯ
	 */
	public List<Map<String,Object>> getUserList();
	/**
	 * ������Ѷ
	 */
	public void issuemessage(User user);
	/**
	 * �鿴������Ѷ
	 */
	public List<Map<String,Object>> lookissuemessage();
	/**
	 *单表资讯查询
	 */
	public Map<String,Object> Oneissuemessage(User user);
	/**
	 * 删除咨询
	 */
	public void IssuemessageDelete(User user);
	/**
	 *单表招聘查询
	 */
	public Map<String,Object> Onemessage(User user);
	/**
	 * 招聘删除
	 */
	public void RemessageDelete(User user);
	public void CategoryDelete(User user);
	public void SectionDelete(User user);
	/**
	 * 部门查询
	 */
	public List<Map<String,Object>> looksection();
	/**
	 * 职位查询
	 */
	public List<Map<String,Object>> lookposition();
	/**
	 * 职位要求查询 
	 * @return
	 */
	public Map<String,Object> lookcategory(User user);
	/**
	 * 添加招聘信息
	 */
	public void UpCategory(User user);
	public void UpRemessage(User user);
	/**
	 * 级联下拉框
	 */
	public List<Map<String,Object>> lookselect(User user);
	
}
