<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>领先网络科技</title>
<link href="../jQuery/jVal.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>
<script type="text/javascript">

  function check()
  {
  if(document.getElementById("userName").value.length<=0)
  {
	$("#errmsg").html('<font color=#ff0000>您的管理员名称为空，请仔细填写</font>');
    $("#errmsg").focus();
    return false;
  }
  if(document.getElementById("passWord").value.length<=0)
  {
    $("#errmsg").html('<font color=#ff0000>您的管理员密码为空，请仔细填写</font>');
    document.getElementById("passWord").focus();
    return false;
  }
   if(document.getElementById("safeCode").value.length<=0)
  {
    $("#errmsg").html('<font color=#ff0000>您忘记了填写验证码，请仔细填写</font>');
    document.getElementById("safeCode").focus();
    return false;
  }
  
  document.getElementById("form").submit();
  }


</script>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {color: #000000}
.STYLE2 {color:#0099FF; font-weight: bold; }
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: none;
	color: #00FF00;
}
a:active {
	text-decoration: none;
	color: #FFFFFF;
}
a {
	font-size: 12px;
}
-->
</style></head>

<body>
<div style="height:28px; background-color:#CCCCCC; background-image:url(imgs/beader-top_02.jpg);" align="center">
<a href="../"><font color="#333333">返回首页</font></a> | <a href="../user/index.html"><font color="#333333">用户登录</font></a></div>
<div style=" background-repeat:repeat-x;">
<table width="899" border="0" align="center" cellpadding="0" cellspacing="0">
   <form id="form" action="UserLogin.jspx" method="post" onSubmit="return check()">  <tr>
    <td width="800" height="400" colspan="3" align="center" ><table width="300" border="0" cellspacing="3" cellpadding="0" style="border:0px #0099FF outset;">

     <tr>
        <td colspan="3" align="center" ><img src="imgs/log.jpg" width="283" height="63" /></td>
        </tr>
      <tr>
       
        <td colspan="2" align="left" class="STYLE1"><table width="95%" border="0" cellspacing="0" cellpadding="0">
        
          <tr>
            <td width="7" height="29"><img src="images/u-left_03.gif" width="7" height="29" /></td>
            <td align="left" background="images/u-center_03.gif">
            <img src="images/printpage.gif" width="14" height="14" />
            <font color="#FFFFFF">用户名：</font><input name="userName" type="text"  id="userName"style="border:0px; color:#ffffff; background-image:url(images/ibg_03.gif);"/>            </td>
            <td width="7" height="29"><img src="images/u-right_03.gif" width="7" height="29" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
       
        <td colspan="2" align="left" class="STYLE1"><table width="95%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="7" height="29"><img src="images/u-left_03.gif" width="7" height="29" /></td>
            <td align="left" background="images/u-center_03.gif"><img src="images/printpage.gif" width="14" height="14" />
              <font color="#FFFFFF">密 码 ：</font><input name="passWord"  type="password" id="passWord" style="border:0px; color:#ffffff; background-image:url(images/ibg_03.gif);"/>            </td>
            <td width="7" height="29"><img src="images/u-right_03.gif" width="7" height="29" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
     
        <td width="51%" valign="middle" class="STYLE1"><table style="float:left;" width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="7" height="29"><img src="images/u-left_03.gif" width="7" height="29" /></td>
            <td align="left" background="images/u-center_03.gif">
           <img src="images/printpage.gif" width="14" height="14" /> <font color="#FFFFFF">验证码：</font><input name="safeCode"  type="text" id="safeCode" style="border:0px; color:#ffffff;  width:50px; background-image:url(images/ibg_03.gif);"/>            </td>
            <td width="7" height="29"><img src="images/u-right_03.gif" width="7" height="29" /></td>
          </tr>
        </table>            </td>
        <td width="35%" valign="middle" class="STYLE1"><img border=0  style="cursor:hand; border:0px #CCCCCC outset;" src="getSafeCode.jspx" onClick="javascript:this.src='getSafeCode.jspx'"/></td>
      </tr>
     
      <tr>
     
        <td colspan="2" align="center" class="STYLE1">
        <img src="images/usersubmit.jpg" onclick="return check()" width="85" height="29" style="cursor:hand;"/><img style="cursor:hand;" src="images/norememberpass.jpg" width="85" height="29" onclick="window.location.href='../front/index.html'" /></td>
        </tr>
      <tr>
        <td colspan="3" align="center" class="STYLE1" style="padding:5px;">QQ：274797328 电子邮箱：y_flash@163.com</td>
      </tr>

    </table>
    <br>
    <div id="errmsg" style="height:25px;">&nbsp;</div>
    
    </td>
  </tr>
  <tr>
    <td width="63">&nbsp;</td>
    <td width="727" align="left" valign="bottom" class="STYLE1">&nbsp;</td>
    <td width="109"></td>
  </tr></form>
</table>
</div>

</body>
</html>
