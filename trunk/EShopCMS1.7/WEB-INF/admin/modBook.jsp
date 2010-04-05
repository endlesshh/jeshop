<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
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
<div style="border:1px #0099FF inset; text-align:center;" align="center">

<div style="border:1px #0099FF inset; background-image:url(images/color.jpg)">  
留言设置  
</div>
<div style="border:0px #0099FF inset; width:80%; text-align:left; height:400px;">
  
  
  <s:form action="/admin/modBook.jspx" method="post">

  <s:hidden name="jebook.guestId" value="%{#request.guestId}"></s:hidden>
  <s:hidden name="guestId" value="%{#request.guestId}"></s:hidden>
  
  
  
  <s:textfield 
            label="管理员回复" 
            name="jebook.guestReply"
            tooltip="管理员回复"
            required="true"/> 
            
            
            
            <s:radio
            tooltip="是否通过"
            label="是否通过！"
            list="#{'0':'不通过', '1':'通过'}"
            name="jebook.guestIsPassed"
            listKey="key"
            listValue="value" 
            value="%{jebook.getGuestIsPassed()}"/> 
            
            
            
            <s:radio
            tooltip="是否有被客户浏览的权限"
            label="是否有被客户浏览的权限！"
            list="#{'0':'无', '1':'有'}"
            name="jebook.guestIsPrivate"
            listKey="key"
            listValue="value" 
            value="%{jebook.getGuestIsPrivate()}"/>    
            
            <s:radio
            tooltip="是否置顶"
            label="是否置顶！"
            list="#{'0':'不置顶', '1':'置顶'}"
            name="jebook.onTop"
            listKey="key"
            listValue="value" 
            value="%{jebook.getOnTop()}"/>
            
            <s:radio
            tooltip="是否具有可以回复"
            label="是否具有可以回复！"
            list="#{'0':'无', '1':'有'}"
            name="jebook.replyIsPrivate"
            listKey="key"
            listValue="value" 
            value="%{jebook.getReplyIsPrivate()}"/>     
                      
            <s:submit  value="更新留言设置"></s:submit>
            </s:form>
</div>



<div style="border:1px #0099FF inset; background-image:url(images/color.jpg); height:25px;">

</div>

</div>

<s:include value="button.jsp"/>
</body>
</html>
