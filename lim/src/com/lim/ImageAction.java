package com.lim;

import java.io.File;
import java.io.FileInputStream;  
import java.io.IOException;  
import java.io.OutputStream;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class ImageAction extends HttpServlet {  
  private static final long serialVersionUID = -1L;  
  private static String[] sss=null;
  private static int indexs=13;
  
  
  public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        this.doPost(request, response);  
    }  
  
  public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
    	if(sss==null){
    		sss=Customerinfo.geturl();
    	}else{
    		while(indexs<=16)
    		{
    	
    	String sl=sss[indexs];
    	System.out.println(sl);
    	
    	//sl=sl.replace(" \",File.separator);
    	
        //读取本地图片输入流  
        FileInputStream inputStream = new FileInputStream(sl);  
        int i = inputStream.available();  
        //byte数组用于存放图片字节数据  
        byte[] buff = new byte[i];  
        inputStream.read(buff);  
        //记得关闭输入流  
        inputStream.close();  
        //设置发送到客户端的响应内容类型  
        //response.setContentType("image/*"); 
        response.setHeader("Content-type", "image/png");
        
        //response.setDateHeader("expires", 0);
        
        
        OutputStream out = response.getOutputStream();  
        //response.setHeader("Cache-Control", "no-cache");
        //response.setHeader("pragma", "no-cache");
        out.write(buff);  
        //关闭响应输出流  
        out.close();  
		
        
        	indexs++;break;
        	//response.flushBuffer();
        	//response.resetBuffer();
        	
    		}
    	
    	}
    }  
}  


