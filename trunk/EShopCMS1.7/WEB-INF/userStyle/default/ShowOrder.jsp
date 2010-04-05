<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
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
 <s:set name="tday" value="new java.util.Date()"/>

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
 
  <tr>
    <td width="2%" align="left" valign="top">

    
    
</td>
    <td align="left" valign="top" style="padding:15px;">

   
   
   <!----->
   
 
  
<script>
function orderCheck()
{
  if(document.getElementById("orderNum").value=="")
  {
   alert('订单编号为空');
   document.getElementById("orderNum").focus();
   return false;
  }
  if(document.getElementById("userName").value=="")
  {
   alert('收件人名称为空！请仔细填写');
   document.getElementById("userName").focus();
   return false;
  }
  if(document.getElementById("daili").value=="")
  {
   alert('代理收件人名称为空！如果收件人无法收取时候，可以代理人收取');
   document.getElementById("daili").focus();
   return false;
  }
  if(document.getElementById("address").value=="")
  {
   alert('收件人地址为空！请仔细填写');
   document.getElementById("address").focus();
   return false;
  }
   if(document.getElementById("pnum").value=="")
  {
   alert('联系人电话为空！请填写您的电话');
   document.getElementById("pnum").focus();
   return false;
  }
   if(document.getElementById("telPhone").value=="")
  {
   alert('联系人电话为空！请填写您的手机号');
   document.getElementById("telPhone").focus();
   return false;
  }
   if(document.getElementById("youbian").value=="")
  {
   alert('请填写联系人的邮政编码！以便收取');
   document.getElementById("youbian").focus();
   return false;
  }
   if(document.getElementById("beizhu").value=="")
  {
   alert('请填写备注信息！关于您的商品的备注信息！');
   document.getElementById("beizhu").focus();
   return false;
  }
   if(document.getElementById("safecode").value=="")
  {
   alert('请填写验证码！');
   document.getElementById("safecode").focus();
   return false;
  }
  
}


</script>

</head>

<body>
<form action="setUserOrder.jspx" method="post" onsubmit="return orderCheck()">
<table width="754" border="0" align="center" cellpadding="0" cellspacing="10">
  <tr>
    <td colspan="2">提示信息</td>
    <input type="hidden" name="userInfoId" value="<s:property value="eUserInfo.infoId"/>" />
    <input type="hidden" name="StyleUserId" value="<s:property value="getStyleUserId()"/>"/>  </tr><input type="hidden" name="userId" value="<s:property value="getStyleUserId()"/>"/>
  <tr>
    <td width="102">订单编号：</td>
    <td width="622">
     
    <input type="text" id="orderNum" value="<s:date name="#tday" format="DDMMyyyy"/><s:property value="getOrderCode()"/>"  name="orderNum" style="border:0px #006600 outset; color:#00CC00; font-size:14px; font-weight:bold;"/></td>
  </tr>
  <tr>
    <td>收件人姓名：</td>
    <td><input type="text" id="userName"  name="userName" /></td>
  </tr>
  <tr>
    <td>代理收件人姓名：</td>
    <td><input type="text" name="dailiUserName" id="daili"  /></td>
  </tr>
  <tr>
    <td>收货地址：</td>
    <td><input name="address" id="address" type="text" size="60" /></td>
  </tr>
 
  <tr>
    <td>收件人电话：</td>
    <td><input type="text" name="phoneNum"  id="pnum"  /></td>
  </tr>
  <tr>
    <td>收件人手机号：</td>
    <td><input type="text"  name="telPhone"  id="telPhone" /></td>
  </tr>
  <tr>
    <td>电子邮件：</td>
    <td><input type="text"  name="email"  id="email"/></td>
  </tr>
  <tr>
    <td>收件人邮编：</td>
    <td><input type="text"  name="youbian"  id="youbian"/></td>
  </tr>
  <tr>
    <td>付款方式：</td>
    <td>
    货到付款：<input type="checkbox" name="fukuan" value="货到付款"/>
    邮政汇款：<input type="checkbox" name="fukuan" value="邮局汇款"/>
    支付宝支付：<input type="checkbox" name="fukuan" value="支付宝支付"/>
    其他支付方式：<input type="checkbox" name="fukuan" value="其他支付方式"/>    </td>
  </tr>
  <tr>
    <td>其他备注信息：</td>
    <td rowspan="2" align="left" valign="top"><textarea class="productOrder_list" id="beizhu" name="beizhu" cols="60" rows="10">
    
    
    
    </textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>请在备注信息里面仔细填写您需要购买的 商品编号 数量 型号等其他附加信息，以便为您送货，如有询问，请和商家客服联系，确认后提交订单。</td>
  </tr>
  <tr>
    <td>输入验证码：</td>
    <td><input type="text" id="safecode" name="safecode"  size="6"/>
    <s:url id="url" value="getSageCode.jspx"/>
    <img src="getSafeCode.jspx" onclick="this.src='getSafeCode.jspx'" style="cursor:hand;" />     </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" value="提交订单" /><input type="reset" value="重置订单"/></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>

   
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

