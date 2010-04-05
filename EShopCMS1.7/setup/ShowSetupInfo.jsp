<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据库初始化建设</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 14px;
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


<table width="450" border="0" cellspacing="3" cellpadding="0">
 <form action="InitDBScond.jsp"> <tr>
    <td colspan="2" height="60">&nbsp;</td>
    </tr>
  <tr>
    <td colspan="2" align="center">请确认您的初始化信息</td>
    </tr>
  <tr>
    <td width="128">数据库名称</td>
    <td width="313"><%
	out.println(session.getAttribute("dbName"));
	%>
    
    
    </td>
  </tr>
  <tr>
    <td>服务器地址</td>
    <td><%
	out.println(session.getAttribute("hostName"));
	%></td>
  </tr>
  <tr>
    <td>服务器端口</td>
    <td><%
	out.println(session.getAttribute("hostPort"));
	%></td>
  </tr>
  <tr>
    <td>用户名</td>
    <td><%
	out.println(session.getAttribute("userName"));
	%></td>
  </tr>
  <tr>
    <td>密码</td>
    <td><%
	out.println(session.getAttribute("passWord"));
	%></td>
  </tr>
  <tr>
    <td>数据库类型</td>
    <td><%
	out.println(session.getAttribute("dbType"));
	%></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="button" onclick="window.location.href='InitDB.jsp'" value="返回上层"/>&nbsp;<input type="submit" value="开始创建数据库"/></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </form>
</table>




</div>
</div>
</body>
</html>
