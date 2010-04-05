<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.codec.binary.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=request.getParameter("fileName")%></title>

<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		$(pageInit);
var editor;
function pageInit()
{
	
	$('#addNews_newsbean_content').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
}
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 00px;
	margin-bottom: 0px;
}
-->
</style>
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
</head>

<body>

      <%
	
	String rootPath = request.getParameter("rootPath");
	String path = request.getParameter("path");
	if(rootPath == null) rootPath = "";
	rootPath = rootPath.trim();
	if(rootPath.equals("")){
		rootPath = application.getRealPath("/front/"+request.getParameter("fileName"));
	}

	if(path == null) {
		path = rootPath;
	}else{
		path = new String(path.getBytes());
	}
	File fpath = new File(path);
	File file = new File(path);
%>
    
    
    
   
   
  <% 
response.setContentType("text/html");
javax.servlet.ServletOutputStream ou = response.getOutputStream();
if (!file.exists()) {
return;
}
// 读取文件流
String filename=new String(request.getParameter("fileName").getBytes("ISO8859_1"),"utf-8").toString();
java.io.FileInputStream fileInputStream = new java.io.FileInputStream(file);
// 下载文件
// 设置响应头和下载保存的文件名
if (filename != null && filename.length() > 0) {
response.setContentType("application/x-msdownload");
response.setHeader("Content-Disposition", "attachment; filename=" + new String(filename.getBytes("utf-8"),"iso8859-1") + "");
if (fileInputStream != null) {
int filelen = fileInputStream.available();
//文件太大时内存不能一次读出,要循环
byte a[] = new byte[filelen];
fileInputStream.read(a);
ou.write(a);
}
fileInputStream.close();
ou.close();
}
%> 

   
</body>
</html>
