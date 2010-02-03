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
    <td height="25" align="left" valign="middle">
    
    当前路径：<a href="index.jspx">首页</a>    
     <s:property value="curChannel.getChannelName()"/>  
    <s:property value="curClass.getClassName()"/>  
    
    
    </td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="4" >
  <tr>
    <td width="150"> 
    
    
    <table width="100%">
      <!--注意获取ID-->
      <s:set name="channelId" value="NewsBean.getChannelId()"/>
      <s:iterator value="ChannelClass(#channelId,0)" status="clist">
      <tr>
      <td>+</td><td style="padding:3px; font-size:14px; color:#FF0000;">
    <a title="header=[] body=[<s:property value="getMetaDescription()"/>]" href="InfoClass_<s:property value="getClassId()"/>.html">
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
    

<p align="center">
 <font color="<s:property value="NewsBean.titleFontColor"/>"  style="font-size:<s:property value="NewsBean.titleFontType"/>px"><s:property value="NewsBean.getTitle()"/></font>
</p>
 <p align="center"> <s:property value="NewsBean.getSubheading()"/>【作者：<s:property value="NewsBean.getAuthor()"/>】
</p>
  <p>
</p>
 <p align="center"> 来源：<s:property value="NewsBean.getCopyFrom()"/> &nbsp;录入者：<s:property value="NewsBean.getInputer()"/>文章点击率 ： 
  <s:property value="NewsBean.getHits()"/>
 </p>
  
   <p align="center">
   
   <s:set name="content" value="NewsBean.getContent()"/>
   <s:property escape="false"  value="cutStrContent(#content)"/>  <!--分页功能-->

   
 </p>
  
  <!--拓展字段-->
  <s:iterator value="getExtendArticle(#artId)">
  
  拓展字段
  </s:iterator>
  
  
  
  
  
<!--相关信息-->
相关内容：
<s:set name="artId" value="NewsBean.articleId"/>
<s:iterator value="getNewsContact(#artId)">
<li>
<s:property value="getTitle()"/>
</li>
</s:iterator>

<br>投票调查：

<s:iterator value="getNewsCurey(#artId)">
<li>
<s:property value="getTitle()"/>
</li>
</s:iterator>

<!--相关信息-->


    <iframe id="bobo" onload="Javascript:SetCwinHeight()"  width="100%" src="innitAddComment.jspx?ModuleType=<s:property value="curChannel.getModuleType()"/>&infoId=<s:property  value="NewsBean.getArticleId()"/>" scrolling="no" frameborder="0"></iframe>
    
    
    
    </td>
  </tr>
</table>

<s:include value="buttom.jsp"/>
 
</body>
</html>
