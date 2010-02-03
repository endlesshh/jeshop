<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  
</head>
  <s:include value="top.jsp"/>
  <body>
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" align="left" valign="middle" style="padding-left:80px;">
    
    当前路径：<a href="index.jspx">首页</a>    
     <s:property value="curChannel.getChannelName()"/>  
    <s:property value="curClass.getClassName()"/>  
    
    
    </td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4" >
  <tr>
    <td width="150"> 
    
    
    <table width="100%">
      <!--注意获取ID-->
      <s:set name="channelId" value="curChannel.getChannelId()"/>
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

    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33%" align="left" valign="top"><img src="../upfile/<s:property value="soft.getSoftPicUrl()"/>" width="150" height="150" /></td>
    <td width="61%" align="left" valign="top"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td width="36%">软件名称：</td>
        <td width="64%">
          <s:property value="soft.getSoftName()"/></td>
      </tr>
      <tr>
        <td>软件版本</td>
        <td><s:property value="soft.getSoftVersion()"/></td>
      </tr>
      <tr>
        <td>上传时间</td>
        <td><s:property value="soft.getCreateTime()"/></td>
      </tr>
      <tr>
        <td>软件作者</td>
        <td><s:property value="soft.getAuthor()"/></td>
      </tr>
      <tr>
        <td>演示地址</td>
        <td>
        
        <a href="<s:property value="soft.getDemoUrl()"/>" >软件演示</a>        </td>
      </tr>
      <tr>
        <td>适用操作系统</td>
        <td><s:property value="soft.getOperatingSystem()"/></td>
      </tr>
      <tr>
        <td>软件语言</td>
        <td><s:property value="soft.getSoftLanguage()"/></td>
      </tr>
      <tr>
        <td>免费/收费</td>
        <td><s:property value="soft.getCopyrightType()"/></td>
      </tr>
      <tr>
        <td>下载地址</td>
        <td>
        <a href="<s:property value="soft.getDownloadUrl()"/>" >下载</a>        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2">软件简介：</td>
    </tr>
  <tr>
    <td colspan="2"><s:property value="soft.getSoftIntro()"/></td>
    </tr>
    <s:set name="softId" value="soft.getSoftId()"/>
    <s:iterator value="getExtendSoft(#softId)">
   <tr>
    <td colspan="2"><s:property   value="showName"/></td>
  </tr>
  
   <tr>
    <td colspan="2"><s:property escape="false"  value="conBuffer"/></td>
  </tr>
  </s:iterator>
    
    
  <tr>
    <td colspan="2"> <iframe id="bobo" onload="Javascript:SetCwinHeight()"  width="100%" src="innitAddComment.jspx?ModuleType=<s:property value="curChannel.getModuleType()"/>&infoId=<s:property  value="soft.getSoftId()"/>" scrolling="no" frameborder="0"></iframe></td>
    </tr>
   
</table>

    
    

    
    
    </td>
  </tr>
</table>


<s:include value="buttom.jsp"/>
 
</body>
</html>
