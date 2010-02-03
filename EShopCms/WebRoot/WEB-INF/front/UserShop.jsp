
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
     <a href="channel_<s:property value="curChannel.getChannelId()"/>.html" ><s:property value="curChannel.getChannelName()"/>  </a>>>
   <s:property value="curClass.getClassName()"/>
    
    
      </td>
  </tr>
</table>

<table width="980" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td> <s:property escape="false" value="ShowPhoto(1,0,8,10,120,120,10,0,0,0,0,'','','showPhoto.jsp')"/></td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="28" height="19">&nbsp;</td>
        <td width="705" background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" >&nbsp;</td>
      </tr>
      <tr>
        <td width="28" height="141" valign="top">&nbsp;</td>
        <td align="left" valign="top" background="images/images/buttons_03.gif"><span class="STYLE6">手机分类</span>
          <div style="height:470px;"> 
          
         
         
         
         
         <table width="100%">
      <!--注意获取ID-->
      
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
    <td width="689" align="left" valign="top">
<!--
首页

-->
<!--会员网店开始-->
<table align="center" width="100%" >
  <tr>
    <td align="left" valign="top" ><div style="height:22px; border-bottom:2px #FF0000 outset;">
      <li>最新店家排行</li>
    </div></td>
  </tr>
  <tr><td align="left" valign="top" style="padding:3px;">
<s:set name="pagebean" value="showUser(2,10)"/>
<s:iterator value="showUser(2,10).list">
<s:if test="getUserFace()==null">

<div >
<a href="../u/u<s:property value="getUserId()"/>.html">
<img src="../configfile/null.gif" width="120" height="100" border="0" /></a>
<p align="center"><s:property value="getUserName()"/></p>
</div>
</s:if>
<s:else>
<div ><a href="../u/u<s:property value="getUserId()"/>.html">
<img src="../upfile/<s:property value="getUserFace()"/>" width="120" height="100" border="0" /></a>
<p align="center"><s:property value="getUserName()"/></p>
</div>
</s:else>



</s:iterator>
 
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/ListNews.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/ListNews.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <a href="ShopEx_1.html">第一页</a>
            
            
              <s:url id="preNews" value="/admin/ListNews.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
           </s:url>
           
            <a href="ShopEx_<s:property value="%{#pagebean.currentPage-1}"/>.html">上一页</a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/ListNews.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
          </s:url>
            <a href="ShopEx_<s:property value="%{#pagebean.currentPage+1}"/>.html">下一页</a>
            <s:url id="nextNews" value="/admin/ListNews.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
           </s:url>
           <a href="ShopEx_<s:property value="%{#pagebean.totalPage}"/>.html">最后一页</a>
        </s:if>
        <s:else>
        下一页 最后一页        </s:else>

</td>
</tr></table>
<!--会员网店结束-->

</td>
  </tr>
</table>

     <s:include value="buttom.jsp"/>
</body>
</html>
