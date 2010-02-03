
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>服装商城</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE3 {
	color: #663333;
	font-weight: bold;
}
.STYLE6 {
	color: #663300;
	font-weight: bold;
}
-->
</style></head>

<body>
<s:include value="top.jsp"/>
<div align="center">

<table width="980" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4"><img src="images/images/channnelLeft_07.gif" width="124" height="4" /></td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif"><img src="images/images/chanenelCenterBG_07.gif" width="22" height="4" /></td>
        <td  width="128" height="4"><img src="images/images/channelRight_07.gif" width="128" height="4" /></td>
      </tr>
</table>
<table width="950" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="left" valign="middle">
    
    当前路径：<a href="index.jspx">首页</a>    
     <s:property value="curChannel.getChannelName()"/>  
    <s:property value="curClass.getClassName()"/>  
    
    
      </td>
  </tr>
</table>

<table width="980" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4"><img src="images/images/channnelLeft_07.gif" width="124" height="4" /></td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif"><img src="images/images/chanenelCenterBG_07.gif" width="22" height="4" /></td>
        <td  width="128" height="4"><img src="images/images/channelRight_07.gif" width="128" height="4" /></td>
      </tr>
</table></div>


<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><s:property escape="false" value="%{showNews(1070,0,12,10,1,'',0,0,'',0,'','News_long.jsp',1,'zhuysxCss')}"/>
    
    
    </td>
    <td width="689" align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="19" height="33"><img src="userLogin/images/class_top_1_11.gif" width="19" height="33" /></td>
            <td background="userLogin/images/class_top_2_11.gif" align="center">商品分类</td>
            <td width="19" height="33"><img src="userLogin/images/class_top_3_11.gif" width="19" height="33" /></td>
          </tr>
          <tr>
            <td background="userLogin/images/class_center_1_11.gif"><img src="userLogin/images/class_center_1_11.gif" width="19" height="33" /></td>
            <td>
    
    
    <table>
      <s:iterator value="ChannelClass(1,0)" status="clist">
    <tr>
      <td>+</td><td style="padding:3px; font-size:14px; color:#FF0000;">
    <a title="header=[] body=[<s:property value="getMetaDescription()"/>]" href="ShowClass_<s:property value="getClassId()"/>.html?showClass.jsp">
   <b><font color="#FF0000"><s:property value="getClassName()"/></font></b>
       </a>
       
       </td>
          <!--curClassChild(Integer ClassId)-->    
        </tr>
           
           
         
               <tr>
<td colspan="2" style="padding:3px; font-size:12px; ">

              <s:set name="cid" value="getClassId()"/>
             <s:iterator value="curClassChild(#cid).list" status="celist">
           
            
            <s:if test="#celist.index%2==0">
            
            </s:if>
         <span style="width:40%; margin:2px; padding:2px;">
           <a href="ShowClass_<s:property value="getClassId()"/>.html?showClass.jsp">
       <font color="#660033">
         
         <s:property value="getClassName()"/>
           </font></a> </span>
           
          
            
              </s:iterator>
             </td>
          <!--curClassChild(Integer ClassId)-->    
  
          
          
           
          
        
        
        
      </tr>
      </s:iterator>
      
      
      </table>
                 </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><img src="userLogin/images/class_centere_3_11.gif" width="19" height="33" /></td>
            <td valign="bottom" background="userLogin/images/class_centere_5_13.gif">&nbsp;</td>
            <td><img src="userLogin/images/class_center_6_13.gif" width="19" height="33" /></td>
          </tr>    
      </table>
    
    
    </td>
  </tr>
</table>
<s:include value="buttom.jsp"/>
</body>
</html>
