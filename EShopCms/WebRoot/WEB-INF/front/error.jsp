<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
  
 
  <title>服务器繁忙</title>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 100px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #666666;
}
a:visited {
	color: #666666;
}
a:hover {
	color: #666666;
}
a:active {
	color: #666666;
}
.STYLE3 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 14px;
}
a {
	font-weight: bold;
}
-->
  </style></head>
  
  <body>
    
   <table width="300" border="0" align="center" cellpadding="0" cellspacing="2" style="border:1px #CCCCCC outset; height:200px;">
<tr>
            <td height="30" align="center" bgcolor="#0065FF" style="border:1px #CCCCCC outset;"><span class="STYLE3">服务器繁忙！请稍候操作</span></td>
     </tr>
          <tr>
            <td align="left" valign="top" style="padding:8px;"><p>请您确认您的操作，<a href="javascript:window.history.back(-1)">返回 </a>刷新页面后重新操作</p>
            <p>返回<a href="../front/index.html">网站首页</a></p>
            <s:url id="ulr" value="/admin/subAll.jspx"/>
            
            <p>返回<a href="<s:property value="%{#ulr}"/>">管理首页</a></p>
            <p>如果该提示页面经常出现,请您将该提示截图发送到以下邮箱：y_flash@163.com 技术人员为您解决。</p></td>
     </tr>
        </table>
     

</body>
</html>
