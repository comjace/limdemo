package com.lim;

import java.util.*;
import java.sql.*;

public class Customerinfo {
static ArrayList<String[]> list =new ArrayList<String[]>();
static 	String SQL="select * from reg_customer";	

public static ArrayList<String[]> getcustomerinfo(){
	

	list.clear();
	System.out.println("初始化成功！"); 
	 
	try {
		ResultSet rt = Mycon.getcon().createStatement().executeQuery(SQL);
		ResultSetMetaData md = rt.getMetaData(); //得到结果集(rs)的结构信息，比如字段数、字段名等   
        int columnCount = md.getColumnCount(); //返回此 ResultSet 对象中的列数   
        System.out.println("获取记录集成功！");
       
        while (rt.next()) {   
        	String[] strArray=new String[20];  
       	 	for (int i = 1; i <= columnCount; i++) 
			{   
       		 //strArray[i-1]=rt.getNString(i); //数据库有int字段，不支持utf-8  
       		 strArray[i-1]=rt.getString(i);
       		 System.out.print(strArray[i-1]+"\t");
         	}  
       	 	int a = Integer.parseInt(strArray[8]);
			switch(a)
			{
			case 0:
				strArray[8]="未审核";
				
				break;
			case 1:
				strArray[8]="审核已通过";break;
			default:
				strArray[8]="无法获取审核状态 ";break;
			}
                  
         list.add(strArray);  
         System.out.println("");
         //System.out.println("list:" + list.toString());   
        }   
	} catch (SQLException e1) {

		e1.printStackTrace();
	} catch (Exception e1) {
	
		e1.printStackTrace();
	}
	
	//连接数据库，获取记录
	
	//记录数据转到list

	Mycon.close();
	
	return list;
	}




static int rowindex=9;
public static void seturl(int id){
	rowindex=id;
	 System.out.println("获取行数成功！"+id);
	}
public static String[] geturl(){
	String[] surl=list.get(rowindex);
	 System.out.println("获取行成功"+surl.toString());
	return surl;
	}
public static void clearlist(){
	list.clear();
}



}



/*
 * 		String regidcard = rt.getString("reg_idcard");
		String regbank = rt.getString("reg_bank");
		String regbankinfo = rt.getString("reg_bankinfo");
		String regbankcard = rt.getString("reg_bankcard");
		String regaccountperson = rt.getString("reg_accountperson");
		String regphone = rt.getString("reg_phone");
		String regshopid = rt.getString("reg_shopid");
		String regshop = rt.getString("reg_shop");
		String regmerchantname = rt.getString("reg_legalperson");
		int regstatus = rt.getInt("reg_status");
 		strArray={regidcard,regbank,regbankcard,regaccountperson,regphone,status};
 		
 		<script type="text/javascript">
 			function displayDate(){
 			window.open("m-s-showpic.jsp","newwindow","height=800, width=800, top=300, left=300, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"); 

 			return false;
 		}
 </script>
 	
 	
 	//点击事件
 	$("button").click(function(){  
  		$.post("/foo/usr/11",function(data){ 	}); 		  
 	}); 
 
 
 
 * */
 