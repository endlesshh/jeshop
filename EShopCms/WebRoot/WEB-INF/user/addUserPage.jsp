<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <s:head />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		function slideToggle(){
$("#slidShow").slideToggle(500);
}

$(pageInit);
var editor;
function pageInit()
{
	
	$('#content').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
}

function check()
{
  if($("#pname").value.length==0)
  {
  alert('请填写自定义页面的名称');
  $("#pname").focus();
  return false;
  }
}
	
	


			

	
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
	padding:

}
.STYLE2 {color: #009966}
.STYLE3 {color: #0066CC}
.STYLE4 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style></head>

<body>
<table width="850" border="0" align="center" cellpadding="0" cellspacing="0">

<tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
    <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
    
    <form action="addUserPage.jspx" method="post" onSubmit="return check()">
    <table width="100%" border="0" cellspacing="5" cellpadding="0">
      <tr>
        <td colspan="2">编辑用户自定义页面</td>
        </tr>
      <tr>
        <td width="17%">页面名称</td>
        <td width="83%"><input name="pageName" type="text" id="pname" size="60">
        <input type="hidden" name="userId" value="<s:property value="#session.user.userId"/>" />        </td>
      </tr>
      <tr>
        <td colspan="2">编辑页面：<span  onClick="editor.pasteHTML('<strong>粘贴的内容</strong>');"  style="font-size:16px; cursor:hand;"><b>+</b></span> &nbsp;&nbsp;<span style="font-size:16px; cursor:hand;"><b>-</b></span></td>
      </tr>
      <tr>
        <td colspan="2">插入公用标签：【用户名称】【电子邮件】【站点公告】【网站名称】【网站关键词】</td>
      </tr>
      <tr>
        <td colspan="2">插入商品标签：</td>
      </tr>
      <tr>
        <td colspan="2"><textarea rows="30" id="content" name="pageContent" style="width:100%;"></textarea></td>
        </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" value="保存该页面" /></td>
      </tr>
    </table>
      </form>
    <s:set name="pagelist" value="getPage(#session.user.userId)"/></td>
    <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
  </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>

</body>

