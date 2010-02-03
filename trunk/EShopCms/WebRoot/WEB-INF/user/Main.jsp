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
    <td><table width="100%" border="0" cellspacing="1" cellpadding="0" >
          <tr>
            <td height="20"  ><img src="image/bannner.gif" width="593" height="112" />            </td>
          </tr>
          <tr>
            <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="24%" align="center" valign="middle">
    <s:set name="tuser" value="#session.user"/>
    <s:property value="#tuser.getByName()"/>
    <s:if test="#tuser.getUserFace()!=null">
    <img width="120" style="border:1px #CCCCCC outset; padding:2px;"   src="../upfile/<s:property value="#tuser.getUserFace()"/>"/></s:if>
    <s:else>
    <img width="120" style="border:1px #CCCCCC outset; padding:2px;"   src="../upfile/null.gif"/>    </s:else>    </td>
    <td width="76%" align="left" valign="top">
          <div id="Fmenu">
            <ul><s:property value="#session.user.getUserName()"/>您好！   <s:set name="utp" value="getUserType()"/>
            <s:if test="#utp!=null">
             您好：您的会员级别属于【<s:property value="#utp.typeName"/>】            </s:if>
           <li><img src="image/20070701104420918.gif" width="21" height="16" /> 
             目前您的消费积分是：
            
          <s:property value="#session.user.getConsumePoint()"/> </li>
         <li> <img src="image/20070701104420918.gif" width="21" height="16" /> 您的帐户余额是：<s:property value="#session.user.getBalance()"/>  元</li>
        <li> <img src="image/20070701104420918.gif" width="21" height="16" />  您提交发表信息：<s:property value="#session.user.getPostItems()"/> 条 </li>
         <li> <img src="image/20070701104420918.gif" width="21" height="16" /> 已经通过信息：<s:property value="#session.user.getPassedItems()"/> 条 </li>
         <li> <img src="image/20070701104420918.gif" width="21" height="16" /> 已经删除的信息：<s:property value="#session.user.getDelItems()"/> 条 </li>
          </ul>     
          </div>                 </td>
  </tr>
  <tr>
    <td align="center" valign="top" ><div><a href="modMyMsg.jspx?user.userId=<s:property value="#session.user.getUserId()"/>">
    <font color="#666666">
    修改会员头像</font></a></div></td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><img src="images/webLogo.gif" width="770" height="141" border="0" usemap="#Map" /> </td>
    </tr>
  <tr>
    <td colspan="2">    </td>
    </tr>
</table>

            
            
            
            
            
            
            </td>
          </tr>
        </table></td>
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





<map name="Map" id="Map"><area shape="rect" coords="16,25,105,122" href="../front/buycart.jsp" />
<area shape="rect" coords="110,30,196,124" href="ListFav.jspx?user.userId=<s:property value="#session.user.getUserId()"/>
" /><area shape="rect" coords="201,31,280,127" href="addSonsum.jsp" />
<area shape="rect" coords="286,32,375,130" href="setPassword.jsp" /><area shape="rect" coords="379,33,454,130" href="lookUpOrderForm.jspx" />
<area shape="rect" coords="463,29,552,129" href="sonsum.jsp" />
<area shape="rect" coords="562,25,648,127" href="../front/index.html" />
<area shape="rect" coords="663,21,758,128" href="http://www.j-eshop.cn" />
</map></body>
</html>
