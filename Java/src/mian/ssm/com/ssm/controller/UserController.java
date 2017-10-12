package com.ssm.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.domain.User;
import com.ssm.service.UserService;
import com.ssm.util.CommUtil;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/getuserlist")
	public ModelAndView getUserList() {
		List<Map<String,Object>> userList = userService.getUserList();
		List<Map<String, Object>> looksection = userService.looksection();
		List<Map<String, Object>> lookposition = userService.lookposition();
		ModelAndView model = new ModelAndView();
		model.addObject("userList", userList);
		model.addObject("looksection", looksection);
		model.addObject("lookposition", lookposition);
		model.setViewName("user");
		return model;
	}
	@RequestMapping("/getuser")    
		public void getuser(HttpServletRequest request, HttpServletResponse response,User user){
		User usert = new User();
		//1锟斤拷锟斤拷锟斤拷一锟斤拷DiskFileItemFactory锟斤拷锟斤拷  
        DiskFileItemFactory factory = new DiskFileItemFactory();  
        //2锟斤拷锟斤拷锟斤拷一锟斤拷锟侥硷拷锟较达拷锟斤拷锟斤拷锟斤拷  
        ServletFileUpload upload = new ServletFileUpload(factory);  
        //锟斤拷锟斤拷洗锟斤拷募锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷  
        upload.setHeaderEncoding("UTF-8");   
        factory.setSizeThreshold(1024 * 500);//锟斤拷锟斤拷锟节达拷锟斤拷俳锟街滴�00K  
        File linshi = new File("E:\\linshi");//锟斤拷锟斤拷锟斤拷500K锟斤拷时锟津，存到一锟斤拷锟斤拷时锟侥硷拷锟斤拷锟斤拷  
        factory.setRepository(linshi);  
        upload.setSizeMax(1024 * 1024 * 5);//锟斤拷锟斤拷锟较达拷锟斤拷锟侥硷拷锟杰的达拷小锟斤拷锟杰筹拷锟斤拷5M  
        try {  
            // 1. 锟矫碉拷 FileItem 锟侥硷拷锟斤拷 items  
            List<FileItem> /* FileItem */items = upload.parseRequest(request);  
  
            // 2. 锟斤拷锟斤拷 items:  
            for (FileItem item : items) {  
                // 锟斤拷锟斤拷一锟斤拷一锟斤拷谋?锟斤拷, 锟斤拷印锟斤拷息  
                if (item.isFormField()) {  
                    String name = item.getFieldName();  
                    String value = null;
					try {
						value = item.getString("utf-8");
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
					String imagename = name + ": " + value;
					if(name.equals("headline")){
						usert.setHeadline(value);
					}else if(name.equals("body")){
						usert.setBody(value);
					}
					System.out.println(value);
					System.out.println(imagename);  
                }  
                // 锟斤拷锟斤拷锟侥硷拷锟斤拷锟斤拷锟斤拷募锟斤拷锟斤拷娴�d:\\files 目录锟斤拷.  
                else {  
                    String fileName = item.getName();  
                    long sizeInBytes = item.getSize();  
                    System.out.println(fileName);  
                    System.out.println(sizeInBytes);  
  
                    InputStream in = null;
					try {
						in = item.getInputStream();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
                    byte[] buffer = new byte[1024];  
                    int len = 0;  
  
                    //图片位锟斤拷
                    usert.setImages("img\\"+fileName);
                    fileName = "C:\\Users\\benben\\workspace\\Java\\src\\main\\webapp\\img\\"+ fileName;//锟侥硷拷锟斤拷锟斤拷锟较达拷锟斤拷位锟斤拷 
                    System.out.println(fileName);  
                    OutputStream out = null;
					try {
						out = new FileOutputStream(fileName);
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
  
                    try {
						while ((len = in.read(buffer)) != -1) {  
						    out.write(buffer, 0, len);  
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
  
                    try {
						out.close();
						in.close();  
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
                }  
            }  
  
        } catch (FileUploadException e) {  
            e.printStackTrace();  
        }  
        

	       Date date = new Date();
	       java.sql.Date stringToSqlDate = CommUtil.stringToSqlDate(CommUtil.dateToString(date));
	       usert.setUptime(stringToSqlDate);
	       userService.issuemessage(usert);
	    }  
	@RequestMapping("/lookation")
	public ModelAndView lookation() {
		List<Map<String, Object>> lookissuemessage = userService.lookissuemessage();
		ModelAndView model = new ModelAndView();
		model.addObject("userList", lookissuemessage);
		model.setViewName("lookation");
		return model;
		
	}
	
	@RequestMapping(value="/information")
	@ResponseBody
	public List<Map<String,Object>> getPageInformation(@RequestParam Integer number){
		List<Map<String,Object>> userList = userService.getUserList();
		List<Map<String,Object>> list= new ArrayList<Map<String,Object>>();
		Map<String,Object> map = new HashMap<String,Object>();
		if(number>0){
			for (int i = 0; i <number; i++) {
				map = userList.get(i);
				list.add(map);
			}
		}else{
			list = userList;
		}
		
		return list;
	}
	
	@RequestMapping(value="/zixun")
	@ResponseBody
	public List<Map<String,Object>> getZiXun(@RequestParam Integer number){
		List<Map<String,Object>> userList = userService.lookissuemessage();
		List<Map<String,Object>> list= new ArrayList<Map<String,Object>>();
		Map<String,Object> map = new HashMap<String,Object>();
		for (int i = 0; i <number; i++) {
			map = userList.get(i);
			list.add(map);
		}
		return list;
	}
	
	@RequestMapping(value="/address/{address}")
	public String zhaopingPage(@PathVariable String address){
		return address;
	}
	
	
	@RequestMapping(value="/address/xiangqinPage")
	public String xiangqinPage(@RequestParam Integer id,ServletRequest request){
		request.setAttribute("id", id);
		return "zhaoping_xiangqing";
	}

	@RequestMapping(value="/address/new")
	public String newPage(@RequestParam Integer id,ServletRequest request){
		request.setAttribute("id", id);
		return "new";
	}

	/* 单表资讯查询*/
	@RequestMapping("/address/Oneissuemessage")
	@ResponseBody
	public Map<String, Object> Oneissuemessage(User user,@RequestParam Integer id) {
		user.setInformationId(id);
		Map<String, Object> oneissuemessage = userService.Oneissuemessage(user);
		return oneissuemessage;
	}
	/* 单表招聘查询*/
	@RequestMapping("/address/Onemessage")
	@ResponseBody
	public Map<String, Object> Onemessage(User user,@RequestParam Integer id) {
		user.setCategoryId(id);
		Map<String, Object> onemessage = userService.Onemessage(user);
		return onemessage;
	}
	/*招聘删除*/
	@RequestMapping("/MessageDelete")
	@ResponseBody
	public String MessageDelete(User user) {
		userService.RemessageDelete(user);
		userService.CategoryDelete(user);
		return "user";
	}
	/*发布招聘*/
	@RequestMapping("/IssueMessage")
	public String IssueMessage(User user) {
		Map<String, Object> lookcategory = userService.lookcategory(user);
		Integer categoryId = (Integer) lookcategory.get("categoryId");
		Integer sectionId = (Integer) lookcategory.get("sectionId");
		user.setCategoryId(categoryId);
		user.setSectionId(sectionId);
		userService.UpCategory(user);
		userService.UpRemessage(user);
		return "redirect:getuserlist.do";
	}
	/*二级下拉框*/
	@RequestMapping("/twoselect")
	@ResponseBody
	public List<Map<String, Object>> twoselect(User user) {
		List<Map<String, Object>> lookselect = userService.lookselect(user);
		return lookselect;

	}
	/*删除咨询*/
	@RequestMapping("/IssuemessageDelete")
	@ResponseBody
	public String IssuemessageDelete(User user) {
		System.out.println(user.getInformationId());
		userService.IssuemessageDelete(user);
		return "ok";
		

	}
	
}

	