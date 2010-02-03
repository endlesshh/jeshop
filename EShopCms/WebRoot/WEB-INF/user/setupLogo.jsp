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
        <td colspan="3"><img src="images/logo12.gif" width="639" height="130"></td>
        </tr><form action="SetindexLogo.jspx" method="post">
      <tr>
        <td colspan="3"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr> <s:set name="slogo" value="userInfo.getSiteLogon()"/>
            <td width="25%"><span class="STYLE4">选择上传网站标志</span></td>
            <td width="75%"><input type="text" name="vedioname" id="vedioname"  value="<s:property value="#slogo"/>" size="40" /></td>
          </tr>
          <tr>
            <td>
           
            <s:if test="#slogo!=null">
            
            <img src="../upfile/<s:property value="#slogo"/>" width=120 height=50 />
            </s:if></td>
            <td><iframe align=left width="400" height="60" src="upfilevideo.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
          </tr>
        
        </table></td>
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
        <td colspan="2"><img src="images/bannner12.gif"></td>
        <td>&nbsp;</td>
      </tr><form action="SetindexBanner.jspx" method="post">
      <tr>
        <td colspan="3"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="25%"><span class="STYLE4">选择上传网站形象图片</span></td>
            <s:set name="sloga" value="userInfo.getSiteBanner()"/>            <td width="75%"><input type="text" name="filename" value="<s:property value="#sloga"/>" id="filename" size="40" /></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
          </tr>
         
        </table></td>
      </tr>
     
      <tr>
        <td>&nbsp;</td>
        <td> 
            <s:if test="#sloga!=null">
            
            <img src="../upfile/<s:property value="#sloga"/>"  width=560 height=120/>
            </s:if></td>
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

