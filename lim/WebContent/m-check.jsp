<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*,java.util.*"%>
<%@ page import="com.lim.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息审核</title>
<script type="text/javascript" >
function Displaypic(rowindex){
	
		
	window.open("showpic.jsp","newwindow","height=500, width=500, top=150, left=300, resizable=no,location=no, status=no");
	
	Customerinfo.seturl(rowindex);
}
</script>

</head>
<body>

<table border="1" width="100%" >

<tr>
	<th>微辰号</th>
   <th>身份证号码</th>
   <th>开户行</th>
   <th>银行卡号</th>
   <th>开户人</th>
   <th>电话号码</th>
   <th>审核状态</th>
   <th>证件照片</th>
   <th>审核操作</th>
</tr>

<%
ArrayList<String[]> list =Customerinfo.getcustomerinfo();


for(int i=0;i<list.size();i++)
{	String[] tl=list.get(i);
{%>
		
	<tr style="flaot:center">
	
  	<td><%=tl[0] %></td>
  	<td><%=tl[1] %></td>
  	<td><%=tl[3] %></td>
 	<td><%=tl[5] %></td>
 	<td><%=tl[6] %></td>
 	<td><%=tl[7] %></td>
 	<td><%=tl[8] %></td>
 	<td><input type="submit" id="reg-checkpic<%=tl[0]%>"  name="<%=i %>" value="查看证件照片" onclick="Displaypic(<%=i%>)"></td>
 	<td><input type="submit" id="reg-checkok<%=tl[0] %>"  value="审核通过">
 	<input type="button" id="reg-nopass<%=tl[0]%>"value="驳回审核信息">
 	</td>
	</tr>
	
<%}
}
%>

</table>


</body>

<script type="text/javascript">



</script>




</html>