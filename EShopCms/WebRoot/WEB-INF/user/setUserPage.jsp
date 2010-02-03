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
        <td background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
    <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
    
    <s:set name="pagelist" value="getPage(#session.user.userId)"/>
   
 
    
    
    <table width="100%" border="0" cellspacing="3" cellpadding="0">
  <tr>
    <td width="13%">自定义页面ID</td>
    <td width="18%">页面名称</td>
    <td width="42%">直接调用地址</td>
    <td width="7%">修改</td>
    <td width="7%">删除</td>
    <td width="5%">&nbsp;</td>
    <td width="8%">&nbsp;</td>
  </tr> 
  <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  
  <s:iterator value="#pagelist" status="tp" >
    <s:set name="ttpid" value="getPageId()"/>
    
    <tr>
    <td><img src="images/page.gif"><em><b><font color="#FF0000"><s:property value="getPageId()"/></font></b></em></td>
    <td><s:property value="getPageName()"/></td>
    <td>&nbsp;</td>
    <td><a href="modPage.jspx?pageId=<s:property value="getPageId()"/>" ><img src="images/pics/mod.gif" border="0" width="45" height="20"></a></td>
    <td><a href="delePage.jspx?pageId=<s:property value="getPageId()"/>" ><img onClick="return confirm('该页面被引用，删除后频道有可能空页面，是否继续删除？')" src="images/pics/delete.gif" border="0" width="45" height="20"></a></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
    </s:iterator>
  <tr>
    <td>&nbsp;</td>
    <td><a href="addinitUserPage.jspx"><img src="images/pics/add.gif" width="74" height="20" border="0"></a></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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

</body>

