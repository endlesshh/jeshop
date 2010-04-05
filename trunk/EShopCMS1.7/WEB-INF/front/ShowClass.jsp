
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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



<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" align="left" valign="middle">
    
    当前路径：<a href="index.jspx">首页</a>    
     <a href="channel_<s:property value="curChannel.getChannelId()"/>.html" ><s:property value="curChannel.getChannelName()"/>  </a>>>
   <s:property value="curClass.getClassName()"/>
    
    
      </td>
  </tr>
</table>

<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
        <s:set name="channelId" value="getChannelId()"/>
      <s:set name="classId" value="getClassId()"/>
  <s:set name="channel" value="getChannelId()"/>
    <td> <s:property escape="false" value="ShowPhoto(#channel,#classId,8,10,120,120,10,0,0,0,0,'','','showPhoto.jsp')"/></td>
  </tr>
</table>
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="28" height="19">&nbsp;</td>
        <td width="705" background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" >&nbsp;</td>
      </tr>
      <tr>
        <td width="28" height="141" valign="top">&nbsp;</td>
        <td align="left" valign="top" background="images/images/buttons_03.gif"><span class="STYLE6"><s:property value="curClass.getClassName()"/>分类</span>
          <div> 
          
         
         <div class="index_midle_table_bg">栏目分类</div>
         
         
         <table width="100%">
      <!--注意获取ID-->
      <s:set name="channelId" value="getChannelId()"/>
      <s:set name="classId" value="getClassId()"/>
     
      <s:iterator value="ChannelClass(#channelId,#classId)" status="clist">
      <tr>
      <td>+</td><td style="padding:3px; font-size:14px; color:#FF0000;">
    <a title="header=[] body=[<s:property value="getMetaDescription()"/>]" href="ShowClass_<s:property value="getClassId()"/>.html">
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
           <a href="ShowClass_<s:property value="getClassId()"/>.html">
       <font color="#660033">
         
         <s:property value="getClassName()"/>
           </font></a> </span>
           
          
            
              </s:iterator>
             </td>
          <!--curClassChild(Integer ClassId)-->    
  
          
          
           
          
        
        
        
      </tr>
      </s:iterator></table>
         
         
         
         
         </div>
    
    
          </td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
<tr></tr>
    </table>
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="28" height="19">&nbsp;</td>
        <td width="705" background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" >&nbsp;</td>
      </tr>
      <tr>
        <td width="28" height="141" valign="top">&nbsp;</td>
        <td align="left" valign="top" background="images/images/buttons_03.gif"><span class="STYLE6">本站综合导读 </span>
          <div style="height:200px;"> <div> <s:property escape="false" 
                            value="%{showNews(0,0,18,6,1,'',0,0,'',0,'','News_Consultants1.jsp',0,'')}"/></div>   </div>          </td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
<tr></tr>
    </table>
    
    
    </td>
    <td width="689" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="26" height="19">&nbsp;</td>
        <td width="705" background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" >&nbsp;</td>
      </tr>
      <tr>
        <td width="26" height="141" align="left" valign="top">&nbsp;</td>
        <td align="center" valign="top" background="images/images/buttons_03.gif"><span class="STYLE3">
         
         <div>
         
         <div> <s:property value="curClass.getClassName()"/>
         </div>
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4">&nbsp;</td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif">&nbsp;</td>
        <td  width="128" height="4">&nbsp;</td>
      </tr>
    </table></div>
          <div>  
          
           <s:property escape="false" value="curClassProduct(9,3,160,160,15,10,10,12,0,'showProduct.jsp')"/>
           </div>
        </span>
        
        
        
        </td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
<tr></tr>
    </table></td>
  </tr>
</table>

     <s:include value="buttom.jsp"/>
</body>
</html>
