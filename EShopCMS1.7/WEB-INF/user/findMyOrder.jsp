<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
session.setAttribute("user",null);
session.setAttribute("webUser",null);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../jQuery/jVal.css" rel="stylesheet" type="text/css">
<head>
<title>找回密码</title>
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>
<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.msgok{
border:1px #00CC00 outset;}
.msgerr
{
border:1px #FF0000 outset;}
body,td,th {
	font-size: 12px;
}
input{
border:1px #999999 outset;
}
-->
</style>



</head>
<body bgcolor="#FFFFFF">
<!-- ImageReady Slices (userlogin.psd) -->
<div align="center"></div>
<table width="80%" border="0" style=" margin-top:150px;" align="center" cellpadding="0" cellspacing="0">
    <form action="lookuporder.jspx" method="post">  <tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
        
        <table width="100%" border="0" cellspacing="4" cellpadding="0">
  <tr>
    <td height="25" colspan="2" align="center"><strong>订单查询</strong></td>
    </tr>
  <tr>
    <td width="19%">输入订单编号：</td>
    <td width="81%"><input type="text" name="Showordercode"  size="40" style="height:25px;"/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="查询订单状态"/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><s:property escape="false" value="getEMsg()"/></td>
  </tr>
  <tr>
    <td colspan="2" align="center"> <s:url id="imgsoft1" value="/user/regeUser.jspx"/>
      <a title="fade=[on] header=[欢迎注册为本站会员] body=[<p align='center'><ul><li>为了您的安全起见，注册后您的购物收藏信息将保留，便于为您售后</li><li>通过会员卡您将获得更多的优惠信息</li><li>本站为您提供及时的信息服务，请将您的信息准确填写</li></ul>]"  href="<s:property value="%{imgsoft1}"/>"><font color="#ff0000">会员注册</font></a>     <a title="header=[欢迎查看注册条款] body=[<p align='center'><ul><li>请您详细准确填写您的信息，避免邮寄物品丢失</li></ul>]" href="<s:property value="%{imgsoft1}"/>"><font color="#FF0000">注册条款</font></a> <a href="../front/index.jspx" title="返回首页"><font color="#FF000000">返回首页</font></a>
      <a href="FindPass.jspx"><font color="#FF000000">找回密码</font></a>
      </td>
    </tr>
</table>

        
        
        
        
        
        
        
        </td>
    <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"></td>
  </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif"></td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr></form>
</table>






<!-- End ImageReady Slices -->
</body>
</html>