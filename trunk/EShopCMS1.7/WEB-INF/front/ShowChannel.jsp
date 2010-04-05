<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="skin/default.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

<s:include value="top.jsp"/>

<table  border="0" align="center" cellpadding="0" cellspacing="3"   width="800">
  <tr>
    <td align="left"> 
    当前频道：<s:property value="chanconfig.getChannelName()"/> 频道关键词：<s:property value="chanconfig.getKeyword()"/>
    
    
    </td>
  </tr>
</table>

<table width="100" border="0" align="center" cellpadding="0" cellspacing="0" class="classTableborder">
  <tr>
    <td> <s:property escape="false" value="ShowPhoto(1053,0,6,10,120,120,10,0,0,0,0,'','','showPhoto.jsp')"/></td>
  </tr>
</table>

<table width="810" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td class="bigborder" width="266" height="253"><img src="images/show_huandeng_03.jpg" width="266" height="253" /></td>
    <td width="529" align="left" valign="top" class="bigborder">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="images/main_left_Other_03.jpg" width="9" height="24"><img src="images/main_left_Other_03.jpg"  /></td>
    <td width="340" background="images/main_left_Other_03.jpg" class="borderTitle">团购类别</td>
    <td width="59" background="images/main_left_Other_03.jpg">&nbsp;</td>
    <td width="117" background="images/main_left_Other_03.jpg" class="borderTitle">更多的信息</td>
  </tr>
  <tr>
    <td colspan="4"   class="contentMarting">
    
    <s:property escape="false" value="getClassTree(1053,1)"/>
    
    </td>
  </tr>
  <tr>
    <td colspan="4">
      <s:property escape="false" value="%{showNews(1053,0,20,4,1,'show',1,1,'',1,'show','link.jsp')}"/>
    
    
    </td>
  </tr>
  <tr>
    <td colspan="4" width="353" height="18"><img src="images/QQkefu_06.jpg" width="353" height="18" /></td>
  </tr>
</table>

    
    
    </td>
  </tr>
</table><table width="810" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td width="266" height="253" align="center" valign="top" class="silverborder"><table width="265" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="images/sileverboder_11.jpg" width="9" height="26" valign="top"><img src="images/sileverboder_11.jpg" width="9" height="26" /></td>
    <td width="347"  height="26" align="left" background="images/sileverboder_11.jpg" class="borderTitle">最新行业咨询</td>
    </tr>
  <tr>
    <td  height="120" colspan="2" align="left" valign="top" class="listContentandshow">
     <s:property escape="false" value="%{showNews(1053,0,15,15,1,'show',1,0,'',0,'show','link.jsp')}"/>
    
    
    </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" height="18">&nbsp;</td>
  </tr>
</table>

<img src="images/adoneleft_11.jpg" /></td>
    <td width="529" align="left" valign="top" class="silverborder">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="images/sileverboder_11.jpg" width="9" height="26"><img src="images/sileverboder_11.jpg" width="9" height="26" /></td>
    <td width="112" background="images/sileverboder_11.jpg" class="borderTitle">团购商品热卖</td>
    <td width="143" background="images/sileverboder_11.jpg">&nbsp;</td>
    <td width="144" background="images/sileverboder_11.jpg">&nbsp;</td>
    <td width="118" background="images/sileverboder_11.jpg" class="borderTitle">更多的商品</td>
  </tr>
  <tr>
    <td colspan="5"  height="120" class="borderTitle">
    <s:property escape="false" value="ShowProduct(1053,0,8,4,120,120,10,10,10,12,12,'showProduct.jsp')"/>
    
    
    </td>
  </tr>
 
</table>

    
    
    </td>
  </tr>
</table>
</body>
</html>
