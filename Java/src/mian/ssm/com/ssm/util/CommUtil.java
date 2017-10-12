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
	
	//dateת�ַ���,2012-12-12 10:23:24
	public static  String dateToString(Date  date) {//��̬�ķ���������ͨ������ֱ�ӷ��ʣ��Ǿ�̬�ķ���ֻ��ͨ���������
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr=sdf.format(date);
		return dateStr;
	}
	
	//�ַ���תdate
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
	//�ַ���תsqldate
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
	 * �ļ�����ͨ�÷���
	 * 
	 * 
	 * **/
	
	public static  void copyFile(String strFiles,String strFiled) {
		System.out.println("��ʼʱ�䣺"+System.currentTimeMillis());
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
					bos.write(buf,0,count);//д��ʱ��һ��д�Ŀ�ʼλ����0������λ����count
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
		
		

		System.out.println("����ʱ�䣺"+System.currentTimeMillis());

	}
}
