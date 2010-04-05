<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="org.apache.commons.io.FileUtils" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.io.File" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据库初始化建设</title>
</head>


    <style type="text/css">
<!--
body,td,th {
	font-size: 12px;
	color: #FFFFFF;

}
input{
height:20px;
border:2px #663300 out;}
-->
</style>
    <body>
    <div align="center" style=" margin-top:150px;">
    <input name="按钮" type="button"  value="返回上一步操作" onclick="window.location.href='InitDB.jsp'" />
<table width="550" height="340" border="0" style="border:1px #CCCCCC outset; padding:2px;background-image:url(init.jpg)" align="center" cellpadding="0" cellspacing="3" >
  <form>
    <tr>
      <td width="638" height="38" align="center">
      
      
      </td>
    </tr>
    
  <tr>
    <td align="right" valign="top">
    <iframe src="setdb.jsp" width="100%" height="400" ></iframe>
    
    
    
    
    </td>
  </tr></form>
</table>
<br>
   <div id="msg"></div> </div>

</body></html>