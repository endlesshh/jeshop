<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎来到<s:property value="eUserInfo.siteName"/>网站</title>
</head>


<body>
<s:include value="top.jsp"/>
<br>
<table width="800" height="150" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr><td width="226" align="left" valign="top">
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
<br></td>
    <td align="right" width="316" valign="top">
    
    
    <table width="98%" border="0" cellspacing="0"  cellpadding="0">
  <tr>
    <td class="showchannelTop"  >&nbsp;促销活动</td>
  </tr>
  <tr>
    <td><s:property escape="false" value="eUserInfo.getVc()"/></td>
  </tr>
</table>
    
    
    </td>
    <td align="left" width="237"  valign="top">
    <table width="98%" align="right" border="0" cellspacing="0" class="showchannelbord" cellpadding="0">
  <tr>
    <td class="showchannelTop"  >&nbsp; 最新资讯</td>
  </tr>
  <tr>
    <td>  <s:set name="indexNews" value="getUserNews(0,0,0,10).list"/>
    <s:iterator value="#indexNews" status="nlist">
    <div style="padding:3px; margin:3px; width:100%;"> <span style="color:#663300;"><s:property value="#nlist.index+1"/></span>&nbsp;&nbsp;&nbsp;<a title="header=[] body=[<s:property value="getSubheading()"/><br>作者：<s:property value="getAuthor()"/><br>关键词：<s:property value="getKeyword()"/>]" href="ViewNews.jspx?userNewsId=<s:property value="getArticleId()"/>&StyleUserId=<s:property value="getStyleUserId()"/>">
    <font color="#333333"><s:property value="getTitle()"/></font> <font color="#FF0000"><s:date name="getUpdateTime()" format="yyyy/MM/dd"/></font>
    </a></div>
    </s:iterator></td>
  </tr>
</table>
    
    
    
    </td>
  </tr></table>


<br>

<table width="800" height="150" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr><td width="226" align="left" valign="top">
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



  
  
  
  </td>
    <td align="right" valign="top"><table width="98%" border="0" cellspacing="0" class="showchannelbord" cellpadding="0">
  <tr>
    <td class="showchannelTop"   >热卖商品</td>
  </tr>
  <tr>
    <td>
    
    
    <div style="padding:10px;  ">
  
  <table width="100%">
<s:set name="pro" value="getUserPro(1,0,1,8).list"/>

<s:property value="listtemppro"/>
<s:iterator value="#pro" status="listtemppro">
<s:if test="#listtemppro.index%4==0">
<tr>
</s:if>


<td >

<a class="chanenllink"  href="ShowProduct.jspx?userProId=<s:property value="getProductId()"/>&StyleUserId=<s:property value="getStyleUserId()"/>">
<img border="0" style="border:1px #FFCCFF outset; padding:2px;" title="header=[] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'/>]"  src="../upfile/<s:property value="getProductThumb()"/>" width="120" height="120" />
</a>
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
    
    
    </td>
  </tr>
</table></td>
  </tr></table>


<br>


<table width="800" height="150" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr><td width="226" align="left" valign="top">
<table width="100%" border="0" cellspacing="0" class="showchannelbord" cellpadding="0">
  <tr>
    <td class="showchannelTop"  >&nbsp;站长信息</td>
  </tr>
  <tr>
    <td>
      <s:property escape="false" value="eUserInfo.getVa()"/>
   
   
   <br>
   
   <br>  站长：<s:property value="eUserInfo.byName"/>
     <br> 邮件：<s:property value="eUser.email"/>
   
    <br>
    
    </td>
  </tr>
</table>



  
  
  
  </td>
    <td align="right" valign="top"><table width="98%" border="0" cellspacing="0" class="showchannelbord" cellpadding="0">
  <tr>
    <td class="showchannelTop"  >&nbsp;推荐商品列表</td>
  </tr>
  <tr>
    <td>

  <div style="padding:15px;  ">
  
  <table width="100%">
<s:set name="pro" value="getUserPro(1,0,2,8).list"/>


<s:iterator value="#pro" status="listtemppro">
<s:if test="#listtemppro.index%4==0">
<tr>
</s:if>


<td >

<a class="chanenllink"  href="ShowProduct.jspx?userProId=<s:property value="getProductId()"/>&StyleUserId=<s:property value="getStyleUserId()"/>">
<img border="0" style="border:1px #FFCCFF outset; padding:2px;" title="header=[] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'/>]"  src="../upfile/<s:property value="getProductThumb()"/>" width="120" height="120" />
</a>
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
<!--热卖商品分类结束--></td>
  </tr>
</table></td>
  </tr></table>
  
  <s:include value="buttom.jsp"/>
</body>
</html>
