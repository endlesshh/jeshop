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
 <script language="javascript">
			function checkSub(){
			
			if(document.getElementById('cardCode').value.length<=0)
			{
			
			document.getElementById("cardCode").focus();
			alert('您的会员卡的卡号为空');
			return false;
			}
			
			if(document.getElementById("cardPass").value.length<=0)
			{
			document.getElementById("cardPass").focus();
			alert('您的会员卡的密码为空');
			return false;
			}
			if(document.getElementById("safecode").value.length<=0)
			{
			document.getElementById("safecode").focus();
			alert('您的验证码为空');
			return false;
			}
			}
            
            </script>
<body>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;">
        
           <s:property value="#session.user.getUserName()"/>您好！目前您的消费积分是：
            
          <s:property value="#session.user.getConsumePoint()"/><br/>  
          您的帐户余额是：<s:property value="#session.user.getBalance()"/>元<br/>
  
          如果充值请在下面输入您的充值卡号和充值密码：
          
            <br/>
           
             <font color=#ff0000><b><s:property value="getErrMsg()"/></b></font>
            <form action="inMoney.jspx" method="post" onsubmit="return checkSub()">
        <table>
        <tr><td></td><td><font color=#ff0000>您充值以后，您的账号余额处查询您的充值金额</font></td></tr>
         <tr><td></td><td><font color=#ff0000>本卡本次充值以后将要作废！该密码将同时不可以使用</font></td></tr>
          <input type="hidden" name="userId" value="<s:property value="#session.user.getUserId()"/>"/>
        
         
         
         <tr><td></td><td><font color=#ff0000>充值金额将同于您的卡上的金额！充值后请您检查帐户余额</font></td></tr>
         <tr>
           <td align="right">充值卡号：</td>
           <td  valign="middle"><input type="text" size="40"  style="border:1px #663300 outset;"  name="cardCode" id="cardCode" /></td>
         </tr>
         <tr>
           <td align="right">充值卡密码：</td>
           <td  valign="middle">  
         
            <input type="text"  style="border:1px #663300 outset;"   size="40" name="cardPass" id="cardPass"/>
        </td>
         </tr>
         <tr>
      <td align="right">验证码：</td>
      <td  valign="middle"><input type="password" name="safecode" id="safecode" size="6" style="border:1px #663300 outset;" ></td>
        </tr>
        <tr><td></td><td><s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:handle" src="<s:property value="%{imgsoft}"/>" />  </td></tr>
       
         <s:submit value="开始充值"></s:submit>
          </table>
          </form>
          
          
        
        
        
        </td>
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
