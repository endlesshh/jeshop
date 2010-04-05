<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

 <s:head /><script type="text/javascript" src="../jsFunction/tiny_mce.js">
		</script>
<script language="javascript" src="js/htmleditor.js">
</script>
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
    </style>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
</head>

<body>
<div style="border:0px #0099FF outset; text-align:left;" align="center">

<div style="border:1px #0099FF outset; background-image:url(images/color.jpg)"> 
<font size="+1px">添加管理<s:property value="%{getChannelName()}"/>页面</font>
</div>
<div style="border:0px #0099FF outset; width:100%; text-align:left; height:400px;">
  <s:form action="/admin/addUser.jspx" method="post">
  <s:hidden name="channelID" value="%{#request.channelID}"></s:hidden>
  <s:hidden name="newsbean.channelId" value="%{#request.channelID}"></s:hidden>
  <s:token />
  <s:textfield 
            label="请填写会员名称" 
            name="jeuser.userName"
            tooltip="会员的名称"
            required="true"
            size="30"/>
 <s:password   label="请填写会员密码" 
            name="jeuser.userPassword"
            tooltip="会员的密码"
            required="true"
            size="30"> </s:password>     
            <s:password   label="确认会员密码" 
            name="jeuser.lastPassword"
            tooltip="确认会员密码"
            required="true"
            size="30"/>
            
        <s:textfield 
            label="添加会员安全提问问题" 
            name="jeuser.question"
            tooltip="会员的名称"
            required="true"
            size="60"/> 
             
          <s:textfield 
            label="添加会员安全提问问题答案" 
            name="jeuser.answer"
            tooltip="会员的名称"
            required="true"
            size="60"/>    
            
    <s:textfield 
            label="请填写会员邮箱 必填项目" 
            name="jeuser.email"
            tooltip="会员的名称"
            required="true"
            size="60"/>
             <script language="javascript">
   function tt()
   {
   document.getElementById("showTop").src='../configfile/'+document.getElementById("tt").value+'.bmp';
   }
   
   </script>
    <tr>
  
   <td></td><td><img id="showTop" src="../configfile/1.bmp" height=60 width="60"></td>
   </tr>
   <s:select name="jeuser.userFace" id="tt" onchange="document.getElementById('showTop').src='../configfile/'+document.getElementById('tt').value+'.bmp';" list="#{'1':'头像1','2':'头像2','3':'头像3','4':'头像4','5':'头像5','6':'头像6','7':'头像7','8':'头像8'}" label="会员头像管理">
   
   
   </s:select>
  
      
      <s:textfield 
            label="会员头像或者视频宽" 
            name="jeuser.faceWidth"
            tooltip="会员的名称"
            required="true"
            size="4"
            value="30"/>
             <s:textfield 
            label="会员头像或者视频的高" 
            name="jeuser.faceHeight"
            tooltip="会员的名称"
            required="true"
            size="4"
            value="30"/>
            
 
     
         
            <s:submit  value="添加会员注册基本信息"></s:submit>
            
            
            </s:form>
</div>



<div style="border:1px #0099FF inset; background-image:url(images/color.jpg); height:25px;">

</div>

</div>
<br><br>
<s:include value="button.jsp"/>
</body>
</html>
