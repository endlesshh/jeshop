
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>服装商城</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE6 {
	color: #663300;
	font-weight: bold;
}
-->
</style></head>

<body>
<s:include value="top.jsp"/>
<div align="center">

<table width="980" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4"><img src="images/images/channnelLeft_07.gif" width="124" height="4" /></td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif"><img src="images/images/chanenelCenterBG_07.gif" width="22" height="4" /></td>
        <td  width="128" height="4"><img src="images/images/channelRight_07.gif" width="128" height="4" /></td>
      </tr>
</table>
<table width="950" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="left" valign="middle">
    
    当前路径：<a href="index.jspx">首页</a>    
     <s:property value="curChannel.getChannelName()"/>  
    <s:property value="curClass.getClassName()"/>  
    
    
      </td>
  </tr>
</table>

<table width="980" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4"><img src="images/images/channnelLeft_07.gif" width="124" height="4" /></td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif"><img src="images/images/chanenelCenterBG_07.gif" width="22" height="4" /></td>
        <td  width="128" height="4"><img src="images/images/channelRight_07.gif" width="128" height="4" /></td>
      </tr>
</table></div>


<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><s:include value="userLogin.jsp"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td  width="22" height="34" ><img src="userLogin/images/userLogin1_07.gif" width="22" height="34" /></td>
    <td background="userLogin/images/userLogin_top_2_07.gif">商品分类</td>
    <td width="22" height="34" ><img src="userLogin/images/userLogin_top_3_07.gif" width="22" height="34" /></td>
  </tr>
  <tr>
    <td align="left" valign="top"><img src="userLogin/images/userLogin_center_1_07.gif" width="22" height="119" /></td>
    <td align="left" valign="top"> 
    <s:include value="listClass.jsp"/>
   
    
    
       </td>
    <td valign="top" background="userLogin/images/userLogin_center_right_07.gif"><img src="userLogin/images/userLogin_center_3_07.gif" width="22" height="119" /></td>
  </tr>
  <tr>
    <td><img src="userLogin/images/userLogin_butom_right_1_07.gif" width="22" height="21" /></td>
    <td background="userLogin/images/userLoing_butom_center_2_07.gif">&nbsp;</td>
    <td><img src="userLogin/images/userLogin_buttom_last_07.gif" width="22" height="21" /></td>
  </tr>
</table></td>
    <td width="689" align="center" valign="top">
    
    <br>
    选择需要购买的商品，放入购物车：<br>
    <img src="images/all.gif" width="693" height="88" />
    <br>进入购物车查看商品数量，金额，已经是否满足您的购物需要<br>
    <img src="images/lookOrder.gif" width="693" height="88" />
    <br>
    填写购物订单，如果用户已经登陆，请直接填写订单，否则，用户简单注册，这样方便订单查询和售后服务
    
    <br>
    
    <img src="images/writerorder.gif" width="693" height="88" />
    <br>
    提交订单，完成网购。
    <br>
    <img src="images/orderResult.gif" width="693" height="88" /></td>
  </tr>
</table>
<s:include value="buttom.jsp"/>
</body>
</html>
