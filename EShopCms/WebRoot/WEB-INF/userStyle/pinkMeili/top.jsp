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
.STYLE1 {font-size: 36px}
-->
</style>


<link href="../jQuery/thickbox.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery.cookie.js"></script>
<script type="text/javascript" src="../jQuery/thickbox.js">
</script>
<script type="text/javascript" src="../jsFunction/usercart.js"></script>
<script type="text/javascript" src="../jQuery/thickbox-code/thickbox.js"></script>
<script type="text/javascript" src="../jQuery/js/global.js"></script>





<link href="../jQuery/thickbox-code/thickbox.css" rel="stylesheet" type="text/css" media="screen"  />
</head>

<body>





<div class="tapbanner" align="right" style="text-align:center;">  

购物车状态：<span class="conusercart_list"> 加载数据....  </span>
<s:if test="#session.user!=null">
| <a href="../user/userManager.jsp" target="_blank"><font color="#006600">进入管理中心</font></a> | <a href="../user/index.jsp" target="_blank"><font color="#006600">注销登录</font></a> | 

</s:if>
<s:else>
| <a href="../user/index.jsp" target="_blank"><font color="#006600">管理登陆</font></a> | 

</s:else>
<a href=# onClick="window.external.addFavorite('http://www.j-eshop.cn','<s:property value="eUserInfo.siteName"/>')"><font color="#006600"> 加入收藏</font></a> | <a href=# onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.j-eshop.cn');"><font color="#006600">设为首页</font></a> | <s:property value="eUserInfo.byName"/>站长欢迎您光临本站 
</div>
<div>
<div class="myusercart_list">
正在加载数据......

</div>
<div class="myuserduibi_list">
正在加载数据......

</div>


<table width="780" align="center">
<tr><td width="35%">




<!--设置网站标志图片-->
<s:set name="sitName" value="eUserInfo.siteName"/>
<s:set name="sitLogo" value="eUserInfo.siteLogon"/>
<s:set name="sitBanner" value="eUserInfo.siteBanner"/>
<s:if test="#sitLogo!=null">
<img src="../upfile/<s:property value="#sitLogo"/>"/>
</s:if>
<s:else>
 <s:if test="#sitName!=null">
 <span class="STYLE1"><s:property value="#sitName"/></span>
 </s:if>
 <s:else>
 <span class="STYLE1">网站名称设置</span>
 </s:else>
</s:else>
<!--设置网站标志图片-->





</td>
<td>
<s:if test="#sitBanner!=null">
<img src="../upfile/<s:property value="#sitBanner"/>" />
</s:if>
<s:else>
<img src="<s:property value="getStyleName()"/>/images/banner.gif" />
</s:else>




</td></tr></table>






<div style="background-image:url(<s:property value="getStyleName()"/>/images/channel_center_03.gif); height:30px; text-align:center; padding-top:8px;">

    <div class="channel">
<!--网站导航栏开始-->
<s:set name="uid" value="getStyleUserId()"/>
 <s:iterator  value="getUserChannel(#uid)" status="chanview" >
      
        <s:if test="getIsShow()==1">
        <span style="width:120px; padding-top:5px; text-align:center; vertical-align:middle; height:34px; background-image:url(images/channelOnMouse.gif)">
        
       <b>
       <s:if test="getCtype()==1">
       <a href="show_<s:property value="getPageId()"/>.html" >  <s:property value="getShowName()"/></a>
       </s:if>
       <s:else>
       <a class="chanenl" href="ShowChannel.jspx?StyleUserId=<s:property value="getStyleUserId()"/>&chanlinkurl=<s:property value="getShowLink()"/>" > <s:property value="getShowName()"/></a>
       </s:else>
       
       
       
       
       </b></span>
        </s:if>
      </s:iterator>
<!--网站导航栏结束-->

</div>
    
</div>

<a href="ShowProduct_Json.jspx?proID=452&amp;TB_iframe=true&amp;height=600&amp;width=400" class="thickbox" title="修改用户信息">登陆窗口</a>

</body></html>