<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="skin/default.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

<s:include value="top.jsp"/>
<br>
<table  border="0" class="bigbord" align="center" cellpadding="0" cellspacing="3"   width="920">
  <tr>
    <td align="left"> 
    当前频道：<s:property value="chanconfig.getChannelName()"/> 频道关键词：<s:property value="chanconfig.metaKeywordss"/><s:property value="chanconfig.metaDescription"/>
    
    
    </td>
  </tr>
</table>
<br>
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
  <s:set name="channel" value="getChannelId()"/>
    <td> <s:property escape="false" value="ShowPhoto(#channel,0,7,10,120,120,10,0,0,0,0,'','','showPhoto.jsp')"/></td>
  </tr>
</table>
<br />
<table width="920" border="0" align="center" cellpadding="0" cellspacing="4" >
  <tr>
    <td width="150" align="left" valign="top"> 
    <div class="index_midle_table_bg">栏目分类</div>
    
    <table width="100%">
      <!--注意获取ID-->
      <s:set name="channelId" value="getChannelId()"/>
      <s:iterator value="ChannelClass(#channelId,0)" status="clist">
      <tr>
      <td>+</td><td style="padding:3px; font-size:14px; color:#FF0000;">
    <a title="header=[] body=[<s:property value="getMetaDescription()"/>]" href="InfoClass_<s:property value="getClassId()"/>.html?ShowNewsClass.jsp">
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
      </s:iterator></table>
    
    
    
    
    </td>
    <td  align="left" valign="top">
    <!--
    当前频道的子栏目列表
    
    -->
    
    <s:set name="channelId" value="getChannelId()"/>
      <s:iterator value="ChannelClass(#channelId,0)" status="clist">
    <div style="float:left; height:150px; text-align:left; vertical-align:top; width:40%; margin-left:10px;">
     <div style="height:22px; border-bottom:0px #FF0000 outset; margin-bottom:4px;">
      <li>
      <div class="index_midle_table_bg">
      &nbsp;<s:property value="getClassName()"/>
      </div></li></div>
      
    
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
