<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::::::::::欢迎来到<s:property value="eUserInfo.siteName"/>网站：：：：：：</title>
<style type="text/css">
<!--

-->
</style>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
.topbanner{
padding:3px;
height:20px;
text-align:right;}
.userLogon{
font-size:40px;
text-align:left;
height:80px;}
.channel
{
padding-top:10px;
height:30px;
color:#FFFFFF;}

.anounce{
width:278px;
height:302px;

background-image:url(<s:property value="getStyleName()"/>/images/showAnounce_03.gif);}
a.chanenl:link {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenl:visited {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenl:hover {
	text-decoration: none;
	color: #CC9900;
}
a.chanenl:active {
	text-decoration: none;
	color: #006633;
}
.productPicClass{
float:inherit;}
.imgbg {
background-color: #F0F0F0;
color: #555;
border: 1px solid #CECFD0;
margin-bottom: 10px;
padding-bottom: 6px;
padding-top: 10px;
text-align: center;
}
-->
</style>

</head>

<body>
<div align="center">
<div style=" width:1024px; height:150px; padding:5px;">
<div style="height:30px; background-image:url(<s:property value="getStyleName()"/>/images/lightGreen_03.gif)"></div>
<div style="padding:8px;"><a href="../user/login.html">网站管理</a> | <a href="mailto:y_flash@163.com">产品建议</a> | <a href="../user/login.html">网站客服</a> | <a href="http://www.j-eshop.cn">更多商店商品</a> </div>
<div style="padding:8px;">网站名称：<s:property value="#sitName"/>
&nbsp;&nbsp;&nbsp;&nbsp;站长：<s:property value="eUserInfo.byName"/></div>
<div style="padding:8px;">站长邮箱：
  <s:property value="eUser.email"/></div>
<div style="padding:8px;">网页浏览量：<s:property value="eUserInfo.hitNum"/></div>

</div>
<div style="padding:2px;">样式名称：<s:property value="getStyleName()"/></div>

</div>
</div>
</body></html>