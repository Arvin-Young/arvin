package com.ssm.domain;

import java.sql.Date;

public class User {
	
	public Integer informationId;//资讯Id
	public Integer Re_serial;//招聘序号
	public Integer categoryId;//职位ID
	public Integer sectionId;//职位部门ID
	public String categoryName;//职位名称
	public String position;//岗位职责
	public String equirements;//任职要求
	public String Re_num;//招聘人数
	public String headline;//���� 
	public Date uptime; //ʱ�� 
	public String body ;//�ı�����
	public String images;//ͼƬ
	public Integer positioId;
	
	public Integer getPositioId() {
		return positioId;
	}
	public void setPositioId(Integer positioId) {
		this.positioId = positioId;
	}
	public Integer getSectionId() {
		return sectionId;
	}
	public void setSectionId(Integer sectionId) {
		this.sectionId = sectionId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getEquirements() {
		return equirements;
	}
	public void setEquirements(String equirements) {
		this.equirements = equirements;
	}
	public String getRe_num() {
		return Re_num;
	}
	public void setRe_num(String re_num) {
		Re_num = re_num;
	}
	public Integer getRe_serial() {
		return Re_serial;
	}
	public void setRe_serial(Integer re_serial) {
		Re_serial = re_serial;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public Integer getInformationId() {
		return informationId;
	}
	public void setInformationId(Integer informationId) {
		this.informationId = informationId;
	}
	public String getHeadline() {
		return headline;
	}
	public void setHeadline(String headline) {
		this.headline = headline;
	}
	public Date getUptime() {
		return uptime;
	}
	public void setUptime(Date uptime) {
		this.uptime = uptime;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	@Override
	public String toString() {
		return "User [informationId=" + informationId + ", Re_serial="
				+ Re_serial + ", categoryId=" + categoryId + ", sectionId="
				+ sectionId + ", categoryName=" + categoryName + ", position="
				+ position + ", equirements=" + equirements + ", Re_num="
				+ Re_num + ", headline=" + headline + ", uptime=" + uptime
				+ ", body=" + body + ", images=" + images + ", positioId="
				+ positioId + "]";
	}
	
}
