package com.ssm.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommUtil {
	
	//date转字符串,2012-12-12 10:23:24
	public static  String dateToString(Date  date) {//静态的方法，可以通过类名直接访问，非静态的方法只能通过对象访问
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr=sdf.format(date);
		return dateStr;
	}
	
	//字符串转date
	public static  Date  stringToDate(String time){
		Date date=null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			 try {
				date=sdf.parse(time);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return date;
		
	}
	//字符串转sqldate
	public static  java.sql.Date  stringToSqlDate(String time){
		Date date=null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date=sdf.parse(time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new java.sql.Date(date.getTime());
		
	}
	
	
	
	/*
	 * 文件拷贝通用方法
	 * 
	 * 
	 * **/
	
	public static  void copyFile(String strFiles,String strFiled) {
		System.out.println("开始时间："+System.currentTimeMillis());
		File files = new File(strFiles);
		File filed = new File(strFiled);
		byte[] buf= new byte[1024];
		try {
			FileInputStream fis= new FileInputStream(files);
			FileOutputStream fos = new FileOutputStream(filed);
			BufferedInputStream bis= new BufferedInputStream(fis);
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			int count =0;
				while((count=bis.read(buf))!=-1){
					bos.write(buf,0,count);//写的时候，一次写的开始位置是0，截至位置是count
				}
				bos.flush();
				bos.close();
				bis.close();
				fos.flush();
				fos.close();
				fis.close();
				
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		

		System.out.println("结束时间："+System.currentTimeMillis());

	}
}
