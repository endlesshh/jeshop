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
li{
height:25px;}
.STYLE2 {
	font-size: 12px;
	font-weight: bold;
	color: #663300;
}
.STYLE3 {
	font-size: 12px;
	font-weight: bold;
	color: #FF6699;
}
-->
</style></head>

<body>

<s:include value="top.jsp"/>
<s:set name="proId" value="getUserProId()"/>
<s:set name="product" value="getUserProduct(#proId)"/>
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="30%" rowspan="4" align="left" valign="top">
    <s:include value="proclassList.jsp"/>    </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td><s:property value="#product.getProductName()"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="50%"><img src="../upfile/<s:property value="#product.getProductThumb()"/>"  style="padding:2px; border:1px #CCCCCC outset;" width="400"  /></td>
        <td width="50%" align="left" valign="top" style="padding:15px;">
        
        
        <ul style=" list-style-type:none; height:25px;">
        <li ><span class="STYLE2" >商品名称：
          <s:property value="#product.getProductName()"/> </span></li>
         <li><span class="STYLE3">商品型号：  <s:property value="#product.getProductModel()"/></span></li>
         <li>商品编号：  <s:property value="#product.getBarCode()"/></li>
         <li>品牌名称：  <s:property value="#product.getTrademarkName()"/></li>
          <li>网站价：  <s:property value="#product.getPriceMember()"/> 元</li>
         <li>零售价：  <s:property value="#product.getPriceMarket()"/>元</li>
        
         <li>团购价格：  <s:property value="#product.getPriceTuangou()"/> 元</li>
        </ul>        </td>
      </tr>
      
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">
        <div style="height:25px; background-color:#FFCCFF;">商品简介</div>
        <div style="height:25px;  padding:15px;">
        <s:property escape="false" value="#product.getProductIntro()"/>
        </div>  
         <div style="height:25px; background-color:#FFCCFF;">详细介绍</div>   
         <div style="height:25px;  padding:15px;">
        <s:property escape="false" value="#product.getProductExplain()"/>
        </div>           </td>
        </tr>
    </table></td>
    </tr>
  <tr>
    <td colspan="2"><div style="height:25px; background-color:#FFCCFF;">商品评论</div>    </td>
    </tr>
  <tr>
    <td colspan="2">
    
    
    
    
      
    

<!--留言管理开始页面-->

<script type="text/javascript" language="javascript">
function orderCheck()
{
  if(document.getElementById("NickName").value=="")
  {
   alert('用户名称不可以为空的啊');
   document.getElementById("NickName").focus();
   return false;
  }
  if(document.getElementById("bookTitle").value=="")
  {
   alert('留言主题不可以为空的啊');
   document.getElementById("bookTitle").focus();
   return false;
  }
  if(document.getElementById("Email").value=="")
  {
   alert('电子邮件不可以为空的啊');
   document.getElementById("Email").focus();
   return false;
  }
   if(document.getElementById("content").value=="")
  {
   alert('请填写留言内容 不可以为空啊');
   document.getElementById("content").focus();
   return false;
  }
   
  
}


</script>

<s:set name="uid"  value="getStyleUserId()"/>
<s:set name="ppid" value="#product.getProductId()"/>
<s:set name="blist" value="getBookList(#uid,1,#ppid)"/>
<s:iterator value="#blist.list" >
<div style="height:25px; padding:5px; margin:5px; text-align:left;">
留言主题：<b><s:property value="getBookTitle()"/></b><br>
<div>留言内容：<s:property value="getContent()"/><br>
店家回复内容：<s:property value="getRecontent()"/>
</div>


</div>
</s:iterator>


<form action="setUserBook.jspx" method="post" onsubmit="return orderCheck()">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="10">

  <tr>
    <td colspan="2">提示信息：<s:property value="getErrMsg()"/></td>
    <input type="hidden" name="userInfoId" value="<s:property value="eUserInfo.infoId"/>" />
    <input type="hidden" name="StyleUserId" value="<s:property value="getStyleUserId()"/>"/>  </tr><input type="hidden" name="userId" value="<s:property value="getStyleUserId()"/>"/>
    <input type="hidden" name="ba" value="1"/>
    <input type="hidden" name="bb" value="<s:property escape="false" value="#product.getProductId()"/>"/>
    <tr>
      <td>您的昵称：</td>
      <td align="left"><input type="text"  id="NickName" name="NickName" value="匿名留言"/></td>
    </tr>
    <tr>
      <td>留言主题：</td>
      <td align="left"><input type="text" id="bookTitle" readonly="readonly" value="<s:property escape="false" value="#product.getProductName()"/>评论"  name="bookTitle"/></td>
    </tr>
    <tr>
      <td>电子邮件：</td>
      <td align="left"><input type="text"  id="Email" name="Email" /></td>
    </tr>
    <tr>
      <td>QQ：</td>
      <td align="left"><input type="text" id="QQ"  name="QQ"/></td>
    </tr>
    <tr>
    <td>留言内容：</td>
    <td align="left"><textarea cols="40" class="xheditor-mini" id="content" name="content" rows="15"></textarea></td>
  </tr>
  <tr>
    <td width="102">入验证码：</td>
    <td align="left"><input type="text" id="safecode" name="safecode"  size="6"/>
    <s:url id="url" value="getSageCode.jspx"/>
    <img src="getSafeCode.jspx" onclick="this.src='getSafeCode.jspx'" style="cursor:hand;" />     </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="left">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" value="提交留言" /><input type="reset" value="重置留言"/></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="left">&nbsp;</td>
  </tr>
</table>
</form>

<!--留言管理结束页面-->

    
    
    
    
    
    
    
    
    </td>
    </tr>
</table>

<s:include value="buttom.jsp"/>
</div>
</body></html>