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
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif">&nbsp;</td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;">
        
        <table width="100%" border="0" cellspacing="1" cellpadding="0" >
          <tr>
            <td height="20"  >&gt;&gt;会员积分与消费</td>
          </tr>
          <tr>
            <td>
            &nbsp;&nbsp;&nbsp;
            <s:property value="#session.user.getUserName()"/>您好！目前您的消费积分是：
            
          <s:property value="#session.user.getConsumePoint()"/>  <br>
          您的帐户余额是：<s:property value="#session.user.getBalance()"/>  元<br>
          您提交发表信息：<s:property value="#session.user.getPostItems()"/> 条 <br>
          已经通过信息：<s:property value="#session.user.getPassedItems()"/> 条 <br>
          已经删除的信息：<s:property value="#session.user.getDelItems()"/> 条 <br>
          
            
            
            
            
            </td>
          </tr>
        </table>
        
        <br />积分转化成钱
        
        <br><font color="#FF0000"><s:property value="getErrMsg()"/></font>
          <table width="450" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="186">您目前的金额：</td>
              <td width="264"><s:property value="#session.user.getBalance()"/>  元</td>
            </tr>
            <tr>
              <td>您目前的点数：</td>
              <td><s:property value="#session.user.getUserPoint()"/> 点</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="button" value="账户余额转换成点数" onclick="window.location.href='MoneyToPoint.jspx'" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table></td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif">&nbsp;</td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
    </table>



</body></html>