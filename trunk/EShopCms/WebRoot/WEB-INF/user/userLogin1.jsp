<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>会员登录管理</title>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
}
.STYLE4 {
	color:#666666;
	font-weight: bold;
}
input{
border:1px #999999 outset;
height:20px;}
-->
</style>
<style>

INPUT {
	FONT: 12px "宋体",Tahoma
}

</style> 



</head>
<body bgcolor="#FFFFFF">
<!-- ImageReady Slices (userlogin.psd) -->
<div align="center"><img src="../front/images/writerorder.gif"></div>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35%" align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
   <s:url id="uservlogin"  value="/user/userviplogin.jspx"/>
   
   <form name="uform" action="<s:property value="%{uservlogin}"/>" method="post"> 
    <tr align="center">

      <td colspan="3">会员登录</td>

      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td width="31%" align="right"><span class="STYLE4">用户名</span>：</td>
      <td colspan="2"><input size="20" id="uu" type="text" style="width:149;height:20px;" name="userName" ></td>
    </tr>
    <tr>
      <td align="right"><span class="STYLE4">密 码</span> ：</td>
      <td colspan="2"><input  size="20" id="up" type="password" style="width:149;height:20px; " name="passWord" ></td>
    </tr>
    <tr>
      <td align="right"><span class="STYLE4">验证码</span>：</td>
      <td width="24%"   valign="middle"><input type="password" name="safecode" id="sp" size="6" style="width:50;height:20px; "></td>
      
      <td width="45%" valign="middle">
      <s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:handle" src="<s:property value="%{imgsoft}"/>" />      </td>
    </tr>
    <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2" align="left"><input type="submit" name="button" id="button" value="提交">
        <input type="reset" name="button" id="button" value="重置"></td>
      </tr>
   
    <tr align="center">
 

      <td colspan="3">  <s:url id="imgsoft1" value="/user/regeUser.jspx"/>
      <a title="fade=[on] header=[欢迎注册为本站会员] body=[<p align='center'><ul><li>为了您的安全起见，注册后您的购物收藏信息将保留，便于为您售后</li><li>通过会员卡您将获得更多的优惠信息</li><li>本站为您提供及时的信息服务，请将您的信息准确填写</li></ul>]"  href="<s:property value="%{imgsoft1}"/>"><font color="#ff0000">会员注册</font></a>     <a title="header=[欢迎查看注册条款] body=[<p align='center'><ul><li>请您详细准确填写您的信息，避免邮寄物品丢失</li></ul>]" href="<s:property value="%{imgsoft1}"/>"><font color="#FF0000">注册条款</font></a> <a href="../front/index.jspx" title="返回首页"><font color="#FF000000">返回首页</font></a></td>
    </tr>
    <tr align="center">
      <td colspan="3">客服电话：13935188143	客服邮箱:y_flash@163.com</td>
    </tr>
   
   </form>
  </table></td>
    <td width="65%" align="left" valign="top"><table width="100%" border="0" cellspacing="10" cellpadding="0">
  <tr>
    <td colspan="2" align="center">会员简单注册</td>
  </tr>
  <tr>
    <td align=center colspan="2">
    
    <font color=#ff0000>
    <s:property value="getErrorMsg()" />
    </font>    </td>
  </tr>
  
<script language="javascript">
	function checkSub(){
	
	
    if(document.getElementById('userName').value.length<=3)
	{
	alert('会员用户名称为空或者长度小于3');
	document.getElementById('userName').focus();
	return false;
	}
	
	if(document.getElementById('password').value.length<=3)
	{
	alert('会员密码为空或者长度小于3');
	document.getElementById('password').focus();
	return false;
	}
	if(document.getElementById('lpass').value.length<=3)
	{
	alert('会员确认密码为空或者长度小于3');
	document.getElementById('lpass').focus();
	return false;
	}
	
    if(document.getElementById('password').value!=document.getElementById('lpass').value)
	{
	alert('密码和确认密码不相等');
	document.getElementById('password').focus();
	return false;
	}
	
	if((!document.getElementById('usergId1').checked)&&(!document.getElementById('usergId2').checked))
	{
        alert('请选择用户组！');
	   document.getElementById('usergId1').focus();
	   return false;
	}
	
	
	
	
	if(document.getElementById('answer').value.length<=5)
	{
	alert('您的问题答案为空或者字数少于5');
	document.getElementById('answer').focus();
	return false;
	}
	if(document.getElementById('email').value.length<=5)
	{
	alert('请填写您的邮箱');
	document.getElementById('email').focus();
	return false;
	}
	if(document.getElementById('safecode').value.length<=5)
	{
	alert('请填写您的验证码！');
	document.getElementById('safecode').focus();
	return false;
	}
	
	
	
	
	
	
	}
    
    </script>
    
 <form action="regeUser.jspx" method="post" name="s" id="fs" > <tr>
    <td width="19%">名称</td>
    <td width="81%"><input type="text" name="jeuser.userName" size="40"  id="userName"/></td>
 </tr>
  <tr>
    <td>密码</td>
    <td><input type="password" name="jeuser.userPassword" size="40" id="password"/></td>
  </tr>
  <tr>
    <td>确认密码</td>
    <td><input type="password" name="jeuser.lastPassword" size="40" id="lpass"/></td>
  </tr>
  <tr>
    <td>选择注册</td>
    <td> 
             <s:iterator value="listUgroup()" status="ug">
             <s:property value="getTypeName()"/>
              ：<input id="usergId1" type="radio" style="border:0px;" 
              <s:if test="#ug.index==0"> checked</s:if>
              name="jeuser.groupId" value="<s:property value="getUserTypeId()"/>">
             &nbsp;&nbsp;
             </s:iterator>
             
             
             
             
               </td>
  </tr>
  <tr>
    <td>提示问题</td>
    <td><select name="jeuser.question2" id="regeUser_jeuser_question">
      <option value="您的生日是什么">您的生日是什么</option> 
      <option value="您的名字是什么">您的名字是什么</option>
    </select></td>
  </tr>
  <tr>
    <td>提示答案</td>
    <td><input type="text" name="jeuser.answer" size="40" value="" id="answer"/></td>
  </tr>
  <tr>
    <td>会员邮箱</td>
    <td><input type="text" name="jeuser.email" size="40" value="" id="email"/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td> <textarea id="test" name="test" rows="15" cols="40">  
     　欢迎您注册为本站会员，您在访问本站（含论坛）时，请您自觉遵守以下条款。

一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息： 
　　（一）煽动抗拒、破坏宪法和法律、行政法规实施的；
　　（二）煽动颠覆国家政权，推翻社会主义制度的；
　　（三）煽动分裂国家、破坏国家统一的；
　　（四）煽动民族仇恨、民族歧视，破坏民族团结的；
　　（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；
　　（六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；
　　（七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；
　　（八）损害国家机关信誉的；
　　（九）其他违反宪法和法律行政法规的；
　　（十）进行商业广告行为的。

二、互相尊重，对自己的言论和行为负责。
         
         </textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input id="safecode" name="safecode" type="text" size="8"><s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:hand" src="<s:property value="%{imgsoft}"/>" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" id="regeUser_0" value="确认注册"/></td>
  </tr>
 </form>
</table></td>
  </tr>
</table>

        
        
        
        
        
        
        
    </td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
      </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>






<!-- End ImageReady Slices -->
</body>
</html>