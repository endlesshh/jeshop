<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 00px;
	margin-bottom: 0px;
}
-->
</style>
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />

<script language="javascript" >

function check()
{
	if(document.getElementById('oldPass1').value.length<=3)
	{
	alert('会员确认密码为空或者长度小于3');
	document.getElementById('oldPass1').focus();
	return false;
	}
	
    if(document.getElementById('oldPass1').value!=document.getElementById('newUserPassword').value)
	{
	alert('密码和确认密码不相等');
	document.getElementById('newUserPassword').focus();
	return false;
	}
</script>	
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td colspan="3" align="left">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="1" cellpadding="0" >
            <tr>
              <td height="20" >会员修改密码</td>
            </tr>
            <tr>
              <td height=200 >&nbsp;&nbsp;&nbsp;
                  <s:property value="#session.user.getUserName()"/>
                您好！ <font color=#ff0000> 请修改您的登录密码，修改后您将使用新的密码登录，旧的密码即将丢失</font> <br/>
                  <font color=#ff0000><b>
                    <s:property value="#request.ErrorMsg"/>
                    </b></font>
                  <s:form action="upDatePassword.jspx" method="post" onsubmit="return check()">
                    <input type="hidden" name="userId" value="<s:property value='#session.user.getUserId()'/>"/>
                    <s:textfield name="oldPass" label="请输入您的旧密码" id="oldPass"></s:textfield>
                    <s:textfield name="oldPass1" label="请输入您的新密码" id="oldPass1"></s:textfield>
                    <s:textfield name="newUserPassword" label="请确认您的新密码" id="newUserPassword"></s:textfield>
                    <s:submit value="确认修改您的密码"></s:submit>
                  </s:form>
              </td>
            </tr>
        </table></td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif"></td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
</table>



</body>
</html>
