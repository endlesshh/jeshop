<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.util.*,java.sql.*" %>  
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 00px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
}
#Fmenu ul { list-style:none; margin:0px;}
#Fmenu li {  margin:0 15px;}
#Fmenu { padding:15px 15px 0 0}
#Fmenu ul li a:link { text-decoration:underline}
#Fmenu ul li a:visited { color:green; text-decoration:none;}
#Fmenu ul li a:hover { color:blue; text-decoration:underline;}
#Fmenu a { display:block; text-align:center; height:20px;}
#Fmenu li { width:430px; background:#FFF; margin-left:5px; line-height:20px;}


#Fmenu1 ul { list-style:none; margin:0px;}
#Fmenu1 li { float:left; margin:0 15px;}
#Fmenu1 { padding:15px 15px 0 0}
#Fmenu1 ul li a:link { text-decoration:underline}
#Fmenu1 ul li a:visited { color:green; text-decoration:none;}
#Fmenu1 ul li a:hover { color:blue; text-decoration:underline;}
#Fmenu1 a { display:block; text-align:center; height:20px; }
#Fmenu1 li { float:left; width:65px; background:#FFF; margin-left:5px; line-height:20px;}


-->
</style>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;">
        
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><p><img src="images/showMeiHua.gif" width="800" height="600" border="0" usemap="#Map" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td>&nbsp;</td>
  </tr>
</table>

        
        
        
        
        
        </td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif"></td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
</table>





<map name="Map" id="Map"><area shape="rect" coords="15,75,149,191" href="initSetup.jspx" />
<area shape="rect" coords="199,48,324,156" href="getStyleName.jspx" />
<area shape="rect" coords="362,36,492,154" href="initindexLogo.jspx" />
<area shape="rect" coords="517,46,626,168" href="setUserchan.jspx" />
<area shape="rect" coords="660,67,762,191" href="listUserClass.jspx" />
<area shape="rect" coords="213,207,369,256" href="initLinkUs.jspx" />
<area shape="rect" coords="208,266,367,319" href="initsetsongHuo.jspx" />
<area shape="rect" coords="205,326,366,382" href="initShowMoney.jspx" />
<area shape="rect" coords="202,401,377,448" href="initshouHouUs.jspx" />
<area shape="rect" coords="203,466,376,518" href="initJianjieUs.jspx" />
<area shape="rect" coords="204,532,379,587" href="initindexTop.jspx" />
<area shape="rect" coords="479,265,637,313" href="initindexLeft.jspx" />
<area shape="rect" coords="472,324,636,378" href="initindexMain.jspx" />
<area shape="rect" coords="477,395,639,451" href="initindexTop.jspx" />
<area shape="rect" coords="698,499,786,593" href="http://www.j-eshop.cn" target="_blank" />
<area shape="rect" coords="600,499,693,593" href="../u/u<s:property value="#session.user.userId"/>.html" target="_blank" />
</map></body>
</html>
