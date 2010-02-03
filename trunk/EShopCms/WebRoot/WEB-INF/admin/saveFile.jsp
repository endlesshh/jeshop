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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <form> <td colspan="3" align="left">
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
%>
    
    
    
   
   
   
  
  正在删除文件......
  
   <%
  if(fpath.exists()){ fpath.delete();
  out.write("<script language=javascript>window.location.href='UserStyleFile.jspx'</script>");
  }else
  {
   out.write("<script language=javascript>window.location.href='UserStyleFile.jspx'</script>");
  }
    %>
    
    
    
    
   
    
    <input type="submit" value="保存" />
    

    </td>
  </form>
  </tr>
</table>


<s:include value="button.jsp"/>

</body>
</html>
