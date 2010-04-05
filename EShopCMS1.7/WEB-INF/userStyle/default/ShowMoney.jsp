<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎来到网店</title>
<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #006600;
}
a:hover {
	text-decoration: none;
	color: #CC9900;
}
a:active {
	text-decoration: none;
	color: #006633;
}
a {
	font-size: 12px;
	color: #006600;
}
-->
</style></head>

<body>
<s:include value="top.jsp"/>

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
 
  <tr>
    <td width="22%" align="left" valign="top">
   
    <table width="100%" border="0" cellspacing="0" class="showchannelbord" cellpadding="0">
  <tr>
    <td class="showchannelTop"  >&nbsp;网站公告</td>
  </tr>
  <tr>
    <td>
    
    <div style="padding:8px; overflow:hidden;">
    
    
    <s:property escape="false" value="eUserInfo.getUserAnnounce()"/>
     
   
    
    </div>
    
    
    </td>
  </tr>
</table>
    
    <br>
    <table width="100%" border="0" cellspacing="0" class="showchannelbord" cellpadding="0">
  <tr>
    <td class="showchannelTop"  >商品分类</td>
  </tr>
  <tr>
    <td>
    
    <s:set name="uid" value="getStyleUserId()"/>
<s:iterator value="getUserClassList(#uid)">
 <div class="proclassList"> 
 
 <div style="padding:8px; padding-left:30px; font-size:14px;">
 <a class="channel" href="ShowClass.jspx?StyleUserId=<s:property value="getStyleUserId()"/>&classId=<s:property value="getClassId()"/>"><b ><font color="#663300"><s:property value="getClassName()"/></font></b></a>
   </div>
   
   </div> 
   
</s:iterator>
    
    
    
    
    </td>
  </tr>
</table>


   <div>
   <div>
   <!--左栏管理-->
   <s:property escape="false" value="eUserInfo.getVa()"/>
   
   
   
   
   <br>  站长：<s:property value="eUserInfo.byName"/>
     <br> 邮件：<s:property value="eUser.email"/>
   
   </div>

   
   </div>



   
    
    
      </td>
    <td width="100%" align="left" valign="top">

   <table width="98%" border="0" align="right" cellpadding="0" cellspacing="0" class="showchannelbord">
  <tr>
    <td class="showchannelTop"  >付款方式</td>
  </tr>
  <tr>
    <td>
    <div style="padding:8px; overflow:hidden;">
    <s:property escape="false" value="eUserInfo.fukuanfangshi"/>
    
    </div>
    
    
    </td>
  </tr>
</table>
   
   <!----->
   
 

   
    <!----->
    
    
   
    
    
    
    </td>
  </tr>
  <tr>
    <td colspan="2">
    
   
    
    </td>
   
  </tr>
</table>



<s:include value="buttom.jsp"/>


</body></html>