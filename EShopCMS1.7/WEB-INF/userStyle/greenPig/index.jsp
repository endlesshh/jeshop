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
.proclassList{
width:194px;
height:42px;
margin:3px;

background-image:url(<s:property value="getStyleName()"/>/images/fenlei_03.gif);}
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
a.chanenllink:link {
	text-decoration: none;
	color:#333333;
}
a.chanenllink:visited {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenllink:hover {
	text-decoration: none;
	color: #CC9900;
}
a.chanenllink:active {
	text-decoration: none;
	color: #006633;
}
a {
	font-size: 12px;
	color: #006600;
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


<s:include value="top.jsp"/>
<div align="center">
<div style=" width:1024px; height:1000px; padding:5px;">


<!--中间-->
<div>


<table width="95%" border="0" cellspacing="0" cellpadding="0">
 
  <tr>
    <td width="22%" align="left" valign="top">
    <div ><div style="padding:8px;"><s:property escape="false" value="eUserInfo.getUserAnnounce()"/>
     
   
    
    </div>
    
   
    </div>
    
    <s:include value="proclassList.jsp"/>

   <div>
   <div>
   <!--左栏管理-->
   <s:property escape="false" value="eUserInfo.getVa()"/>
   
   
   
   
   <br>  站长：<s:property value="eUserInfo.byName"/>
     <br> 邮件：<s:property value="eUser.email"/>
   
   </div>

   
   </div>



   
    
    
      </td>
    <td width="78%" align="left" valign="top">

   
    <table width="100%" border="0" cellspacing="3" cellpadding="0">
  <tr>
    <td style="padding:5px;"><s:property escape="false" value="eUserInfo.getJianjie()"/></td>
    <td width="35%" style="padding:5px;" align="left" valign="top">
    <div style="background-image:url(<s:property value="getStyleName()"/>/images/classChannle_all_03.gif);background-repeat:no-repeat; border-bottom:1px  ececec outset; padding-left:50px; height:32px; padding-top:10px;">促销信息</div>
    <div style="border:1px  #33FF33 outset; height:50px;"></div>
    
    
    <div>
    
    <s:set name="indexNews" value="getUserNews(1055,0,0,10).list"/>
    <s:iterator value="#indexNews" status="nlist">
    <div style="padding:3px; margin:3px; width:100%;"> <span style="color:#663300;"><s:property value="#nlist.index+1"/></span>&nbsp;&nbsp;&nbsp;<a title="header=[] body=[<s:property value="getSubheading()"/><br>作者：<s:property value="getAuthor()"/><br>关键词：<s:property value="getKeyword()"/>]" href="ShowNews.jspx?">
    <font color="#333333"><s:property value="getTitle()"/></font> <font color="#FF0000"><s:date name="getUpdateTime()" format="yyyy/MM/dd"/></font>
    </a></div>
    </s:iterator>
    
    </div>
    
    
    </td>
  </tr>
</table>

    
    
    <!--
    广告开始位置
    -->
    
    <div style="padding:8px;"><s:property escape="false" value="eUserInfo.vb"/> 
    </div>
    <!--广告结束位置-->
    
    
    
    
    
    
    
   
<!--热卖商品分类开始-->
  <div style="padding:15px;  ">
  
  <table width="100%">
<s:set name="pro" value="getUserPro(1,0,1,8).list"/>

<tr><td colspan="4" background="<s:property value="getStyleName()"/>/images/classChannle_all_03.gif" style="background-repeat:no-repeat; border-bottom:1px  ececec outset; padding-left:50px; height:32px;">热卖商品列表</td></tr>

<s:iterator value="#pro" status="listtemppro">
<s:if test="#listtemppro.index%4==0">
<tr>
</s:if>


<td >


<img style="border:1px #FFCCFF outset; padding:2px;" title="header=[] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'/>]"  src="../upfile/<s:property value="getProductThumb()"/>" width="150" height="150" />

<div class="productPicClass" align="center">
<a class="chanenllink"  href="ShowProduct.jspx?userProId=<s:property value="getProductId()"/>&StyleUserId=<s:property value="getStyleUserId()"/>"><font color="#660000"><s:property value="getProductName()"/></font></a></div>
<div ><font color="#663300">编号：<s:property value="getBarCode()"/></font></div>
<div ><font color="#663300"><img src="<s:property value="getStyleName()"/>/images/roundone_03.gif" /><font color="#FF0000"><b>零售价</b></font>：<s:property value="getPriceMarket()"/></font></div>
<div ><img src="<s:property value="getStyleName()"/>/images/roungthreee_03.gif" /><font color="#663300"><font color="#FF0000"><b>会员价</b></font>：<s:property value="getPriceMember()"/></font></div>
<img style="cursor:hand;" onclick="addNewPro(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>',1,'<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/gouwu_03.gif" />


<img style="cursor:hand;" onclick="addDuiBi(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getPriceMarket()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>','<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/duibi_gouwu_03.gif" />


</td>
  <s:if test="#listtemppro.index%4==3">
</tr>
</s:if>

</s:iterator>
</table>
 </div>
<!--热卖商品分类结束-->
   
    
    
    
    
   
   
   
   
   
   
    
   
<!--热卖商品分类开始-->


  <div style="padding:15px;  ">
  
  <table width="100%">
<s:set name="pro" value="getUserPro(1,0,2,8).list"/>

<tr><td colspan="4" background="<s:property value="getStyleName()"/>/images/classChannle_all_03.gif" style="background-repeat:no-repeat; padding-left:50px; height:34px;">热卖商品列表</td></tr>

<s:iterator value="#pro" status="listtemppro">
<s:if test="#listtemppro.index%4==0">
<tr>
</s:if>


<td >


<img style="border:1px #FFCCFF outset; padding:2px;" title="header=[] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'/>]"  src="../upfile/<s:property value="getProductThumb()"/>" width="150" height="150" />

<div class="productPicClass" align="center">
<a class="chanenllink"  href="ShowProduct.jspx?userProId=<s:property value="getProductId()"/>&StyleUserId=<s:property value="getStyleUserId()"/>"><font color="#660000"><s:property value="getProductName()"/></font></a></div>
<div ><font color="#663300">编号：<s:property value="getBarCode()"/></font></div>
<div ><font color="#663300"><img src="<s:property value="getStyleName()"/>/images/roundone_03.gif" /><font color="#FF0000"><b>零售价</b></font>：<s:property value="getPriceMarket()"/></font></div>
<div ><img src="<s:property value="getStyleName()"/>/images/roungthreee_03.gif" /><font color="#663300"><font color="#FF0000"><b>会员价</b></font>：<s:property value="getPriceMember()"/></font></div>
<img style="cursor:hand;" onclick="addNewPro(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>',1,'<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/gouwu_03.gif" />


<img style="cursor:hand;" onclick="addDuiBi(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getPriceMarket()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>','<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/duibi_gouwu_03.gif" />


</td>
  <s:if test="#listtemppro.index%4==3">
</tr>
</s:if>


</s:iterator>
</table>
 </div>
<!--热卖商品分类结束-->
   
    
    
    
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>



</div>
<!--中间-->

<s:include value="buttom.jsp"/>

</div>
</div>


</body></html>