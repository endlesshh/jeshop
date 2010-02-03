<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据库初始化建设</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
	color: #FFFFFF;

}
input{
height:18px;
border:2px #663300 out;}
-->
</style></head>

<body>
<div align="center"  style="border:0px #CCCCCC outset; padding:2px;background-image:url(init.jpg); background-repeat:repeat-y;background-position:center; height:340px; margin-top:150px;">
<div>
<table  border="0" width="550" style=" margin-top:40px;" align="center" cellpadding="0" cellspacing="3" >
  <form>
    <tr>
      <td colspan="2" align="center"><input name="按钮" type="button"  value="返回上一步操作" onclick="window.location.href='../index.jsp'" /></td>
    </tr>
   
    <tr>
    <td colspan="2" align="center">
    <%
	if (request.getParameter("hostName")!=null)
	{
	try{
    Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
	 String   url = "";
	if(request.getParameter("isNewData")==null)
	{
	   url="jdbc:microsoft:sqlserver://"+request.getParameter("hostName")+":"+request.getParameter("hostPort")+";";  
	   out.print("不创建数据库");
	Connection   conn=DriverManager.getConnection(url,request.getParameter("userName"),request.getParameter("passWord"));    
	if(conn!=null)
	{
	out.println("<font color=#00CC00>数据库连接成功</font>");
	session.setAttribute("hostName",request.getParameter("hostName"));
	session.setAttribute("userName",request.getParameter("userName"));
	session.setAttribute("passWord",request.getParameter("passWord"));
	session.setAttribute("dbName",request.getParameter("dbName"));
	session.setAttribute("hostPort",request.getAttribute("hostPort"));
	session.setAttribute("isOK","isOk");
	}
	   
	   
	   
	   
	}else
	{
	   out.print("创建数据库");
	   url="jdbc:microsoft:sqlserver://"+request.getParameter("hostName")+":"+request.getParameter("hostPort")+";";
	   Connection   conn=DriverManager.getConnection(url,request.getParameter("userName"),request.getParameter("passWord"));    
	if(conn!=null)
	{
	out.println("<font color=#00CC00>数据库连接成功</font>");
	session.setAttribute("hostName",request.getParameter("hostName"));
	session.setAttribute("userName",request.getParameter("userName"));
	session.setAttribute("passWord",request.getParameter("passWord"));
	session.setAttribute("dbName",request.getParameter("dbName"));
	session.setAttribute("hostPort",request.getAttribute("hostPort"));
	session.setAttribute("isOK","isOk");
	if(request.getParameter("isNewData")!=null)
	{

	  Statement   stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=#ff0000>数据库正在创建正在创建.........</font><br>");
	stmt.execute("create database "+request.getParameter("dbName")+"");
	out.println("<font color=##003366><b>"+request.getParameter("dbName")+"</b></font><font color=#00ff00>数据库创建完成创建成功</font><br>");
	stmt.close();
	}
	
	}
	}
 
    
	}catch(Exception e)
	{
	out.println("数据库连接失败,失败原因如下<font color=#ff0000>："+e.toString()+"</font>");
	session.removeAttribute("isOK");
	}
	
	}
	
	%>    </td>
  </tr>
  <tr>
    <td width="266" align="right">服务器IP地址：</td>
    <td width="372" align="left">
    <%if(request.getParameter("hostName")!=null)
	{
	%>
    <input type="text" name="hostName" size="20" value="<%=request.getParameter("hostName")%>" />
	<%
	
	}else
	{
	%>
    <input type="text" name="hostName" size="20" value="<%=request.getServerName()%>" />
	<%
	}%>    </td>
  </tr>
  <tr>
    <td align="right">服务器端口：</td>
    <td align="left">
    <%
	if(request.getParameter("hostPort")!=null)
	{
	%>
	<input type="text" name="hostPort" size="4" value="<%=request.getParameter("hostPort")%>" />
	<%
	}else
	{
	%>
    <input type="text" name="hostPort" size="4" value="1433" />
	<%
	}
	%>    </td>
  </tr>
  <tr>
    <td align="right">数据库类型：</td>
    <td align="left">
    <select><option value="1">SQL Server</option>
    
    <option disabled="disabled" value="2">My sql</option></select>    </td>
  </tr>
  <tr>
    <td align="right">数据库用户名：</td>
    <td align="left">
    <%
	if (request.getParameter("userName")!=null)
	{
	%>
	<input type="text" size="10" name="userName" value="<%=request.getParameter("userName")%>" />
	<%
	}else
	{
	%>
	<input type="text" size="10" name="userName"/>
	<%
	}
	
	%>    </td>
  </tr>
  <tr>
    <td align="right">数据库密码：</td>
    <td align="left">
    
    <%
	if(request.getParameter("passWord")!=null)
	{
	%>
    <input type="text" size="10" name="passWord" value="<%=request.getParameter("passWord")%>"/>
	
	<%
	}else
	{
	%>
	  <input type="text" size="10" name="passWord" />
	
	<%
	}
	
	%>    </td>
  </tr>
  <tr>
    <td align="right">数据库名称：</td>
    <td align="left">
    <%
	if(request.getParameter("dbName")!=null)
	{
	%>
	<input type="text" size="10" name="dbName" value="<%=request.getParameter("dbName")%>"/>
	<%
	}else
	{
	%>
	<input type="text" size="10" name="dbName" />
	<%
	}
	
	%>   
    
   新建数据库： <input type="checkbox" value="isNew" name="isNewData" />
    
     </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit"  value="数据库连接测试" />&nbsp;&nbsp;&nbsp;
    <%
	if(session.getAttribute("isOK")!=null)
	{
	%>
	<input name="按钮" type="button"  value="下一步操作" onclick="if(confirm('执行该操作以后，如果存在数据库数据将被清空，不存在则继续创建数据库！是否继续执行')){window.location.href='InitDBScond.jsp'}else{return false;}" />
   
	<%
	}
	
	%>
     
    
    </td>
    </tr>
  <tr>
    <td colspan="2" align="center"></td>
  </tr></form>
</table>
</div>
</div>
</body>
</html>
