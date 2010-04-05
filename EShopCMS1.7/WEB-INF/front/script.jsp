   
<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><s:property value="configBean.getSiteName()"/></title>

<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>

<body>
<s:include value="top.jsp"/>


<s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
<script type="text/javascript">
function checkIsMoneyUserNumberIsRigh()
{
var inmoneyForm = document.form_inmoney_userAcount; 
if(inmoneyForm.userName.value=="")
{
 $('#load_content_inMoneyMsg').html("<font color=#ff0000 style='font-size:12px'>输入充值的用户名</font>");
 return false;
}
if(inmoneyForm.cardCode.value=="")
{
$('#load_content_inMoneyMsg').html("<font color=#ff0000 style='font-size:12px'>输入充值卡的充值卡号</font>");
 return false;
}
if(inmoneyForm.cardPass.value=="")
{
$('#load_content_inMoneyMsg').html("<font color=#ff0000 style='font-size:12px'>输入充值卡的充值号密码</font>");
 return false;
}
if(inmoneyForm.safecode.value=="")
{
$('#load_content_inMoneyMsg').html("<font color=#ff0000 style='font-size:12px'>输入验证码</font>");
 return false;
}

CheckMoneyToUserACount('UserInMoneyTo.jspx?userName='+inmoneyForm.userName.value+'&userPass=null&cardCode='+inmoneyForm.cardCode.value+'&cardPass='+inmoneyForm.cardPass.value+'&safecode='+inmoneyForm.safecode.value,$('#load_content_inMoneyMsg'));
$('#InmoneyUserAcountSafeCode').src='<s:property value="%{imgsoft}"/>';
}
</script>

<table width="450" border="0" align="center" cellpadding="0" cellspacing="3">
  <form name="form_inmoney_userAcount">
  <tr>
    <td colspan="2"><img src="../configfile/inMoneyIndexShowUser_02.jpg" width="383" height="90"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><div id="load_content_inMoneyMsg">
  
</div></td>
  </tr>
  <tr>
    <td>用户名</td>
    <td>
    <input type="text" style="height:25px; width:150px; " name="userName" id="userName_inmoney_userAcount"/></td>
  </tr>
  <tr>
    <td>充值卡号</td>
    <td><input type="text"  style="height:25px; width:250px; " name="cardCode" id="cardCode_inmoney_userAcount"/></td>
  </tr>
  <tr>
    <td>充值卡密码</td>
    <td><input type="password"  style="height:25px; width:250px; " name="cardPass" id="cardPass_inmoney_userAcount"/></td>
  </tr>
  <tr>
    <td>验证码</td>
    <td><input type="text" size="6" style="height:25px;"  name="safecode" id="safecode_inmoney_userAcount"/> &nbsp;&nbsp; 
     <span style="vertical-align:middle"> <img id="InmoneyUserAcountSafeCode" border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:hand;  padding:1px; border:0px #CCCCCC outset;18px;" src="<s:property value="%{imgsoft}"/>" />   </span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
      <img onClick="checkIsMoneyUserNumberIsRigh()" style="cursor:hand;" src="../configfile/inMoneyIndexShowUser_18.jpg" width="245" height="44"></td>
  </tr></form>
</table>

<s:include value="buttom.jsp"/>
</body>
  </html>