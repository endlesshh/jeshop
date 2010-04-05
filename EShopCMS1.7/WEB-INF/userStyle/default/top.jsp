<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<style type="text/css">
<!--
a {
	font-size: 12px;
}
body,td,th {
	font-size: 12px;
}
.showchannelbord{ border:1px #FF9900 outset;}
.showchannelTop{ text-align:left; background-image:url(<s:property value="getStyleName()"/>/images/channel_bg.jpg); color:#663300; height:30px;}
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



<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
-->
</style><div class="tapbanner" align="right" style="text-align:center;">  
<div style="background-image:url(<s:property value="getStyleName()"/>/images/topBg.jpg); height:25px; text-align:center; padding-top:8px;">

购物车状态：<span class="conusercart_list">   </span>
<s:if test="#session.user!=null">
| <a href="../user/userMain.html" target="_blank"><font color="#006600">进入管理中心</font></a> | <a href="../user/login.html" target="_blank"><font color="#006600">注销登录</font></a> | 

</s:if>
<s:else>
| <a href="../user/login.html" target="_blank"><font color="#006600">管理登陆</font></a> | 

</s:else>
<a href=# onClick="window.external.addFavorite('http://www.j-eshop.cn','<s:property value="eUserInfo.siteName"/>')"><font color="#006600"> 加入收藏</font></a> | <a href=# onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.j-eshop.cn');"><font color="#006600">设为首页</font></a> | <s:property value="eUserInfo.byName"/>站长欢迎您光临本站 
</div>
</div>


<div>
<div  class="myusercart_list">
</div>
<div class="myuserduibi_list">
</div>

<br>
<table width="800" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr><td width="226" align="center" valign="top">
  


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
 <span class="STYLE1">  <img src="<s:property value="getStyleName()"/>/images/Logo.jpg" width="130" height="91" /></span>
 </s:else>
</s:else>
<!--设置网站标志图片-->

  
  
  
  
  
  
</td>
    <td align="center" valign="middle">
    
    
    <s:if test="#sitBanner!=null">
<img src="../upfile/<s:property value="#sitBanner"/>" />
</s:if>
<s:else>
<img   src="<s:property value="getStyleName()"/>/images/banner.jpg" width="518" height="101" />
</s:else>


    
    </td>
  </tr></table>

<br>

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="31" height="96"><img src="<s:property value="getStyleName()"/>/images/channel_left_03.jpg"  />
    
    
    
    
    
    </td>
    <td style=" background-repeat:repeat-x;" background="<s:property value="getStyleName()"/>/images/channel_center_03.jpg">
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="40" align="center">
    
    <s:set name="uid" value="getStyleUserId()"/>
 <s:iterator  value="getUserChannel(#uid)" status="chanview" >
      
        <s:if test="getIsShow()==1">
        <span style="width:120px; padding-top:5px; text-align:center; vertical-align:middle; height:34px; background-image:url(images/channelOnMouse.gif)">
        
       <b>
       <s:if test="getCtype()==1">
       <a  class="chanenl" href="show_<s:property value="#uid"/>_<s:property value="getPageId()"/>.html" > 
       <font color="#663300">
        <s:property value="getShowName()"/>
        </font>
        </a>
       </s:if>
       <s:else>
       <a class="chanenl" href="ShowChannel.jspx?StyleUserId=<s:property value="getStyleUserId()"/>&chanlinkurl=<s:property value="getShowLink()"/>">  <font color="#663300"><s:property value="getShowName()"/>
       </font>
       </a>
       </s:else>

       </b></span>
        </s:if>
      </s:iterator>
    
    
    </td>
  </tr>
  <tr>
    <td height="30" align="center"> <div align="center"><form method="post" action="SerchPro.jspx">商品搜索：<input type="text" name="sProName" onfocus="$.cookie('myuserduibi')"  />最低价<input type="text" name="sminPrice" size="6" value="0" />最高价<input value="1500" type="text" name="smaxPrice" size="6" /><input type="submit" value="搜索商品"/>

<input type="hidden" name="StyleUserId" value="<s:property value="getStyleUserId()"/>"/>
</form></div></td>
  </tr>
</table>

    
    
    </td>
    <td width="31" height="96" align="right" valign="top"><img src="<s:property value="getStyleName()"/>/images/channel_right_03.jpg"  /></td>
  </tr>
</table>

