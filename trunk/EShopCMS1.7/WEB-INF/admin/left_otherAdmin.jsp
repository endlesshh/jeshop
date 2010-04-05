<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理导航</title>

<link href="skins/css/style_left.css" rel="stylesheet" type="text/css" />
<style>
.menu1{
font-size:12px;
border:0px #ffffff double;
background:url(images/pics/title_bg_hide.gif);
background-repeat:no-repeat;
width:158px;
cursor:hand;
color:#000000;
}

.menu2{
text-align:left;
vertical-align:middle;
padding-top:10px;

border:1px #ececec double;
color:#000000;
height:18px;


font-size:12px;

}
.cy{
text-align:left;
vertical-align:middle;
padding-top:10px;
background-color : #ffffff;
border:1px #ececec double;
background-image:url(images/pics/title_bg_quit.gif);
color:#000000;
height:18px;

font-size:12px;

}


</style>



<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>

<style type="text/css">
<!--
.STYLE2 {font-size: 12px}
.STYLE5 {font-size: 12px; color: #999999; }
-->
</style>
</head>

<body>

<table width="100%" height="400" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" style="padding-top:10px; ">
    
    <s:property value="#session.admin.userName"/>
    </td>
  </tr>
 
</table>
</body>
</html>