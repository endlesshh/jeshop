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

<div  align="center" style="border:0px #ececec outset; width:80%; margin:3px; padding:3px;">
<table width="100%" border="0" cellspacing="3" cellpadding="0">
  <form action="productSearchAPI.jspx" method="post" name="from" id="from"> <tr>
    <td colspan="4" align="center">
    
    
    
   
    <s:property escape="false" value="getClassAll(1,0)"/>    <!--列举分类标签-->  最高价：
      <INPUT value=0  maxlength=5 onKeyUp="this.value=this.value.replace(/\D/g,'')"  name=minPrice id=minPrice size="3" />
         <select onChange="document.getElementById('minPrice').value=this.value">
           <option value="0">0</option>
           <option value="10">10</option>
           <option value="15">15</option>
           <option value="20">20</option>
           <option value="25">25</option>
           <option value="40">40</option>
           <option value="100">100</option><option value="150">150</option>
           <option value="200">200</option>
          </select>
         最低价：
         <INPUT   maxlength=7 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=maxPrice id=maxPrice size="3" value="5000" />      
         <select onChange="document.getElementById('maxPrice').value=this.value">
           <option value="500">500</option>
           <option value="600">600</option>
           <option value="650">650</option>
           <option value="700">700</option>
           <option value="750">750</option>
           <option value="800">800</option>
           <option value="850">850</option><option value="950">950</option>
           <option value="1000">1000</option>
           <option value="5000">5000</option>
          </select>
      商品名称：
      <input  name=productName  id=productName3 style="border:1px #663300 outset; height:20px;" size="10"/>
品牌搜索：
<input  name=product.tradeMarkName id=tradeMarkName style="border:1px #663300 outset;" size="10"/>
<input type="submit" value="开始搜索" /></td>
    </tr> 
  <input type="hidden" name="linkurl" value="result.jsp" />
   
  </form>
</table>
</div>

   
<table  border="0" align="center" cellpadding="0" cellspacing="3"   width="900">
  <tr>
    <td align="left" style="padding-left:40px;"> 
    当前频道：<s:property value="curChannel.getChannelName()"/> 频道关键词：<s:property value="curChannel.metaKeywords"/>
    
    
    </td>
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
        <td align="left" valign="top" background="images/images/buttons_03.gif">
          <div style="height:470px;"> 
          
         
         
         
         
         <table width="100%">
      <!--注意获取ID-->
    <s:set name="channelId" value="curChannel.getChannelId()"/>
    <s:set name="classId" value="curClass.getClassId()"/>
      <s:iterator value="ChannelClass(#channelId,0)" status="clist">
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
           <a href="InfoClass_<s:property value="getClassId()"/>.html">
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
    <s:set name="classId" value="getClassId()"/>
   

    
      <s:iterator value="ChannelClass(#channelId,0)" status="clist">
    <div style="float:left; height:150px; text-align:left; vertical-align:top; width:40%; margin-left:10px;">
     <div style="height:22px; border-bottom:2px #FF0000 outset; margin-bottom:4px;">
      <li><s:property value="getClassName()"/></li></div>
      
    
     <s:set name="cid" value="getClassId()"/>
    <s:iterator value="getallSoftList(#channelId,#cid).list">
  <li style="height:20px;">
<span style="height:20px; width:20px; padding-top:6px;"><s:property value="#ulist.index+1"/></span>
<a href="ShowSoft_<s:property value="getSoftId()"/>.html"><s:property value="getSoftName()"/> </a>&nbsp;

<font color="#009900">
<a href="ShowSoft_<s:property value="getSoftId()"/>.html">
<s:property value="getSoftVersion()"/> </font>
</li>

    </s:iterator>  
    
    
    
    
    </div>
    
    
    </s:iterator>
    
    </td>
  </tr>
</table>




<s:include value="buttom.jsp"/>
</body>
</html>
