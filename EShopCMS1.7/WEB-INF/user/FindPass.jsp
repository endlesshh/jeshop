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
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>



</head>
<body bgcolor="#FFFFFF">
<!-- ImageReady Slices (userlogin.psd) -->
<div align="center"></div>
<table width="80%" border="0" style=" margin-top:150px;" align="center" cellpadding="0" cellspacing="0">
    <form action="FindPass.jspx" method="post">  <tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="3" cellpadding="1">
          <tr>
            <td height="25" colspan="5"><div align="center" class="STYLE1">密码找回</div></td>
          </tr>
          <tr>
            <td height="25" colspan="5" align="center"><font color="#FF0000"><b><s:property value="getEMsg()"/></b></font></td>
          </tr>
          <tr>
            <td align="left"><img src="image/20070701104420918.gif" width="21" height="16">注册用户名：</td>
            <td colspan="4" align="left"><input type="text" name="eUserName" size="20" style="height:25px;"  id="userName"  onBlur="if(this.value==''||$('#userName').val()==''){$('#uname').html('<font color=#ff0000>用户名不能为空</font>');$('#userName').addClass('msgerr');}else{$('#uname').html('<font color=#00ff00>用户名格式正确</font>');$('#userName').removeClass();}"/> <span id="uname"></span> </td>
          </tr>
          <tr>
            <td width="20%" align="left"><img src="image/20070701104420918.gif" width="21" height="16">提示问题：</td>
            <td width="80%" colspan="4" align="left"><select name="eRequest" id="regeUser_jeuser_question">
      <option value="小学学校名称">我小学学校名称是什么</option> 
      <option value="喜欢吃的一种食物">我最喜欢吃的一种食物是什么</option>
       <option value="喜欢说的一句话是什么">我最喜欢说的一句话是什么</option>
    </select></td>
          </tr>
          <tr>
            <td align="left"><img src="image/20070701104420918.gif" width="21" height="16">提示答案：</td>
            <td colspan="4" align="left"><input type="text" name="eAnser" size="60" style="height:25px;"  id="answer"onBlur="if(this.value==''||this.value.length==0){$('#ans').html('<font color=#ff0000>提示答案不能为空</font>');$('#answer').addClass('msgerr');}else{$('#ans').html('<font color=#00ff00>提示答案格式正确</font>');$('#answer').removeClass();}"/> <span id="ans"></span></td>
          </tr>
          <tr>
            <td align="left"><img src="image/20070701104420918.gif" width="21" height="16"><strong></strong>注册邮箱：</td>
            <td colspan="4" align="left"><input type="text" name="eMail" id="f3" size="40" style="height:25px;" jVal="{valid:/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/,message:'您的邮件格式不正确，请采用正确的邮件格式', styleType:'cover'}" jValKey="{valid:/[a-zA-Z0-9._%+-@]/, cFunc:'alert', cArgs:['Email Address: '+$(this).val()]}"/></td>
          </tr>
          <tr>
            <td align="left"><img src="image/20070701104420918.gif" width="21" height="16">验证码：</td>
            <s:url id="imgsoft" value="/admin/getSafeCode.jspx"/><td colspan="4" align="left"><input id="safecode" name="eSafeCode" jVal="{valid:function (val) { if (val.length <6) return false; else return true; }, message:'请正确输入您的验证码', styleType:'cover'}"
					 type="text" style=" width:87px;height:25px;" size="8"/></td>
          </tr>
          <tr>
            <td align="left">&nbsp;</td>
            <td colspan="4" align="left"><img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:hand" src="
      <s:property value="%{imgsoft}"/>" /></td>
          </tr>
          <tr>
            <td colspan="5"><div align="center">
            
            <input type="submit" value="取回密码" />
            
            </div></td>
          </tr>
          <tr>
            <td colspan="5" align="center">
            <s:url id="imgsoft1" value="/user/regeUser.jspx"/>
      <a title="fade=[on] header=[欢迎注册为本站会员] body=[<p align='center'><ul><li>为了您的安全起见，注册后您的购物收藏信息将保留，便于为您售后</li><li>通过会员卡您将获得更多的优惠信息</li><li>本站为您提供及时的信息服务，请将您的信息准确填写</li></ul>]"  href="<s:property value="%{imgsoft1}"/>"><font color="#ff0000">会员注册</font></a>     <a title="header=[欢迎查看注册条款] body=[<p align='center'><ul><li>请您详细准确填写您的信息，避免邮寄物品丢失</li></ul>]" href="<s:property value="%{imgsoft1}"/>"><font color="#FF0000">注册条款</font></a> <a href="../front/index.jspx" title="返回首页"><font color="#FF000000">返回首页</font></a>
            
            
            
            
            </td>
          </tr>
        </table></td>
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