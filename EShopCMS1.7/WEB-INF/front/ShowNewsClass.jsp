
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
      <s:set name="channelId" value="getChannelId()"/>
      <s:set name="classId" value="getClassId()"/>
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
    <td> <s:property escape="false" value="ShowPhoto(#channel,#classId,6,10,120,120,10,0,0,0,0,'','','showPhoto.jsp')"/></td>
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
        <td align="left" valign="top" background="images/images/buttons_03.gif">
          <div> 
          
         
         <div class="index_midle_table_bg">栏目分类</div>
         
         
         <table width="100%">
      <!--注意获取ID-->
    
     
      <s:iterator value="ChannelClass(#channelId,#classId)" status="clist">
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
           <a href="InfoClass_<s:property value="getClassId()"/>.html?ShowNewsClass.jsp">
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
        <td align="left" valign="top" background="images/images/buttons_03.gif"><span class="STYLE6">
        <div class="index_midle_table_bg">
        本站综合导读 
        </div>
        </span>
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
    <td width="689" align="left" valign="top">
    <s:set name="classId" value="getClassId()"/>
    <s:set name="channelId" value="curClass.getChannelId()"/>
    
      <s:iterator value="ChannelClass(#channelId,#classId)" status="clist">
    <div style="float:left; height:150px; text-align:left; vertical-align:top; width:40%; margin-left:10px;">
     <div style="height:22px; border-bottom:2px #FF0000 outset; margin-bottom:4px;">
      <li><div class="index_midle_table_bg"><s:property value="getClassName()"/></div></li></div>
      
    
     <s:set name="cid" value="getClassId()"/>
    <s:iterator value="showNewsPage(#channelId,#cid).getList()">
  <li style="height:20px;"><A href="ShowArticle_<s:property value="getArticleId()"/>.html" target=_blank>◇
   <s:set name="title" value="getTitle()"/>
  <s:if test="#title.length()>20"><s:property value="%{#title.substring(0,20)}"/>..</s:if>
  <s:else> <s:property value="#title"/>  </s:else>
 </A></li>
    </s:iterator>  
    
    
    
    
    </div>
    
    
    </s:iterator>
    
    </td>
  </tr>
</table>

     <s:include value="buttom.jsp"/>
</body>
</html>
