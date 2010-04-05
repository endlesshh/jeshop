<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>
  
  <body><s:include value="top.jsp"/>
 <s:set  name="artId"   value="NewsBean.getArticleId()"/>
<br>
<table width="920" class="bigbord" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="middle" height="25"  >&nbsp;
    
    当前位置：<a href="index.html">首页</a> >> <a href="Channel_<s:property value="curChannel.getChannelId()"/>.html"><s:property value="curChannel.getChannelName()"/></a> >> <a href="ShowClass_<s:property value="curClass.getClassId()"/>.html"><s:property value="curClass.getClassName()"/></a>
    </td>
  </tr>
</table><br>
<table width="920" border="0" align="center" cellpadding="0" cellspacing="4" >
  <tr>
    <td width="150" align="center" valign="top"> 
    
    <div class="index_midle_table_bg">当前栏目分类</div>
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
 <font color="<s:property value="NewsBean.titleFontColor"/>"  style="font-size:<s:property value="NewsBean.titleFontType"/>px;"><s:property value="NewsBean.getTitle()"/></font>
</p>
  <p>
</p>
 <p align="center"> 【作者：<s:property value="NewsBean.getAuthor()"/>】&nbsp;&nbsp;来源：<s:property value="NewsBean.getCopyFrom()"/> &nbsp;录入者：<s:property value="NewsBean.getInputer()"/>文章点击率 ： 
  <s:property value="NewsBean.getHits()"/>&nbsp;&nbsp;发布时间：<s:date format="yyyy-MM-dd" name="NewsBean.getUpdateTime()"/>
 </p>
  <hr>
   <p align="center">
   
  
   
   <s:set name="content" value="NewsBean.getContent()"/>
   
   <s:property escape="false"  value="cutStrContent(#content)"/>  <!--分页功能-->

   
 </p>
  
  <!--拓展字段-->
  <s:iterator value="getExtendArticle(#artId)">
  
   <table width="100%"  align="center">
    
    <tr>
       <td  class="contain_table" >
    <div style="width:200px;" class="index_midle_table_bg">
  <s:property   value="showName"/></div></td>
  </tr>
  
   <tr>
    <td colspan="2"><s:property escape="false"  value="conBuffer"/></td>
  </tr>
  </table>
  </s:iterator>
  
  
  
  
  
<!--相关信息-->
<div style="width:200px;" class="index_midle_table_bg">相关内容</div>
<s:set name="artId" value="NewsBean.articleId"/>
<s:iterator value="getNewsContact(#artId)">
<li>
<a href="ShowArticle_<s:property value="getArticleId()"/>.html" target="_blank"><s:property value="getTitle()"/></a>
</li>
</s:iterator>

<br>
<div style="width:200px;" class="index_midle_table_bg">投票调查</div>
<table>
  <form action="SubCurcontent.jspx" method="post">
    <input type="hidden" name="infoMainId" value="<s:property  value="NewsBean.getArticleId()"/>" />
    <input type="hidden" name="curType" value="news" />
    <s:iterator value="getNewsCurey(#artId)" status="subCurey">
    <input type="hidden" name="cureyTitle" value="<s:property value="getTitle()"/>" />
    <input type="hidden" name="cureyNum" value="<s:property value="getNum()"/>" />
</s:iterator>
    
    
  <tr  id="classTPList1">
    <td>
    <div style="padding:10px;">
    <ul>
<s:iterator value="getNewsCurey(#artId)" status="subCurey">
<li style="list-style:none; height:25px;">
<input style="border:0px;" type="radio" value="<s:property value="#subCurey.index"/>" id="ShowPageCurey<s:property value="#subCurey.index"/>" name="selectID" /><s:property value="getTitle()"/> &nbsp;<font color="#FF0000"> 票数：<s:property value="getNum()"/></font>
</li>
</s:iterator>
</ul>
<br />
<input type="submit" value="投票" onClick="SubUserTP()" />
</div>
</td>
    
  </tr>
  </form>
</table>





<!--相关信息-->


    <iframe id="bobo" onload="Javascript:SetCwinHeight()"  width="100%" src="innitAddComment.jspx?ModuleType=<s:property value="curChannel.getModuleType()"/>&infoId=<s:property  value="NewsBean.getArticleId()"/>" scrolling="no" frameborder="0"></iframe>
    
    
    
    </td>
  </tr>
</table>

<s:include value="buttom.jsp"/>
 
</body>
</html>
