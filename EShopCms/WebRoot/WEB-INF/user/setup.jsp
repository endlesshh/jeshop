<%@ page contentType="text/html; charset=utf-8" %>
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
	
	$('#strcontent').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
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
a:link {
	color: #666666;
}
a:visited {
	color: #666666;
}
a:hover {
	color: #666666;
}
a:active {
	color: #666666;
}
.STYLE4 {
	color: #663300;
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
    <td align="center" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
        <td><span class="STYLE4">请填写网站配置信息</span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr><form action="SetupWeb.jspx" method="post">
      <tr>
        <td colspan="3"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td width="13%">网站名称：</td>
              <td width="87%"><input type="text"  name="webName" value="<s:property value="userInfo.getSiteName()"/>" /></td>
            </tr>
            <tr>
              <td>网站关键词：</td>
              <td><input type="text" name="webKey" value="<s:property value="userInfo.getSiteName()"/>"/></td>
            </tr>
            <tr>
              <td>网站是否开通：</td>
              <td>网站目前不开通：<input type="radio" name="ta" value="0" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网站目前不开通：<input checked type="radio" name="ta" value="1" /></td>
            </tr>

                </table></td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" value="保存配置信息" />
          网站配置信息</td>
        <td>&nbsp;</td>
      </tr></form>
    </table>
    <s:set name="stylist" value="getStyleNameList(10)"/>
    <s:set name="uinfo"  value="getuUserInfo()"/>
    
     <s:set name="pagebean" value="getStyleNameList(10)"/></td>
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

