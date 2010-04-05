<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎来到网店</title>
<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #006600;
}
a:hover {
	text-decoration: none;
	color: #CC9900;
}
a:active {
	text-decoration: none;
	color: #006633;
}
a {
	font-size: 12px;
	color: #006600;
}
body,td,th {
	font-size: 12px;
}
-->
</style>


</head>

<body>




<!--留言管理开始页面-->

<script type="text/javascript" src="<s:property value="getStyleName()"/>/jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="<s:property value="getStyleName()"/>/jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="<s:property value="getStyleName()"/>/jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="<s:property value="getStyleName()"/>/jQuery/jquery.alerts.js"></script>

<script>
function orderCheck()
{
  if(document.getElementById("NickName").value=="")
  {
   alert('用户名称不可以为空的啊');
   document.getElementById("NickName").focus();
   return false;
  }
  if(document.getElementById("bookTitle").value=="")
  {
   alert('留言主题不可以为空的啊');
   document.getElementById("bookTitle").focus();
   return false;
  }
  if(document.getElementById("Email").value=="")
  {
   alert('电子邮件不可以为空的啊');
   document.getElementById("Email").focus();
   return false;
  }
   if(document.getElementById("content").value=="")
  {
   alert('请填写留言内容 不可以为空啊');
   document.getElementById("content").focus();
   return false;
  }
   
  
}


</script>

<s:set name="uid"  value="getStyleUserId()"/>
<s:set name="blist" value="getBookList(#uid,0,0)"/>
<s:iterator value="#blist.list" >
<div style="height:25px;">
留言主题：<b><s:property value="getBookTitle()"/></b><br>
<div>留言内容：<s:property value="getContent()"/><br>
店家回复内容：<s:property value="getRecontent()"/>
</div>


</div>
</s:iterator>


<form action="setUserBook.jspx" method="post" onsubmit="return orderCheck()">
<table width="754" border="0" align="center" cellpadding="0" cellspacing="10">
  <tr>
    <td colspan="2">提示信息：<s:property value="getErrMsg()"/></td>
    <input type="hidden" name="userInfoId" value="<s:property value="eUserInfo.infoId"/>" />
    <input type="hidden" name="StyleUserId" value="<s:property value="getStyleUserId()"/>"/>  </tr><input type="hidden" name="userId" value="<s:property value="getStyleUserId()"/>"/>
    <input type="hidden" name="ba" value="0"/>
    <input type="hidden" name="bb" value="0"/>
    <tr>
      <td>您的昵称：</td>
      <td><input type="text"  id="NickName" name="NickName" value="匿名留言"/></td>
    </tr>
    <tr>
      <td>留言主题：</td>
      <td><input type="text" id="bookTitle"  name="bookTitle"/></td>
    </tr>
    <tr>
      <td>电子邮件：</td>
      <td><input type="text"  id="Email" name="Email" /></td>
    </tr>
    <tr>
      <td>QQ：</td>
      <td><input type="text" id="QQ"  name="QQ"/></td>
    </tr>
    <tr>
    <td>留言内容：</td>
    <td><textarea cols="40" id="content" name="content" rows="15"></textarea></td>
  </tr>
  <tr>
    <td width="102">入验证码：</td>
    <td><input type="text" id="safecode" name="safecode"  size="6"/>
    <s:url id="url" value="getSageCode.jspx"/>
    <img src="getSafeCode.jspx" onclick="this.src='getSafeCode.jspx'" style="cursor:hand;" />     </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" value="提交留言" /><input type="reset" value="重置留言"/></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>

<!--留言管理结束页面-->


</body>
</html>