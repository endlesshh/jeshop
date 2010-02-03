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
    <td><img src="images/2.jpg" /></td>
  </tr>
</table>

<table width="810" border="0" cellspacing="5" cellpadding="0">
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
    <td colspan="2"><img src="images/1.jpg" /></td>
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
<s:include value="Tail.jsp"/>
</body>
</html>
 
  
    
  
   