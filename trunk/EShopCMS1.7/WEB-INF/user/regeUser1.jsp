<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <s:head /><script type="text/javascript" src="../jsFunction/tiny_mce.js">
		</script>

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
-->
</style></head>

<body>

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
	
	if(document.getElementById('usergId').value.length<=0)
	{
	alert('请选择用户组！');
	document.getElementById('usergId').focus();
	return false;
	}
	}
    
    </script>
    
    

<table width="100%" border="0" cellspacing="3" cellpadding="0">
  <tr>
    <td colspan="2">会员注册</td>
  </tr>
 <form> <tr>
    <td>名称</td>
    <td><input type="text" name="jeuser.userName" size="30" value="" id="userName"/></td>
  </tr>
  <tr>
    <td>密码</td>
    <td><input type="password" name="jeuser.userPassword" size="30" id="password"/></td>
  </tr>
  <tr>
    <td>确认密码</td>
    <td><input type="password" name="jeuser.lastPassword" size="30" id="lpass"/></td>
  </tr>
  <tr>
    <td>选择注册</td>
    <td>  <s:radio list= "group" label="选择会员组"  name="jeuser.groupId"
            listKey="userTypeId"
            listValue="typeName" 
            id="usergId"
             /> </td>
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
    <td><input type="text" name="jeuser.answer" size="60" value="" id="answer"/></td>
  </tr>
  <tr>
    <td>会员邮箱</td>
    <td><input type="text" name="jeuser.email" size="30" value="" id="email"/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td> <textarea rows="15" cols="80">  
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
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:handle" src="<s:property value="%{imgsoft}"/>
      " /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" id="regeUser_0" value="确认注册"/></td>
  </tr>
 </form>
</table>




</body>

