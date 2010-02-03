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
<table width="900" border="0" align="center" cellpadding="0" cellspacing="3">
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
      名称：
      <input  name=productName  id=productName3 style="border:1px #663300 outset; height:20px;" size="10"/>
品牌：
<input  name=product.tradeMarkName id=tradeMarkName style="border:1px #663300 outset;" size="10"/>
<input type="submit" value="搜索" /></td>
    </tr> 
  <input type="hidden" name="linkurl" value="result.jsp" />
  </form>
</table>
   
<table  border="0" align="center" cellpadding="0" cellspacing="3"   width="900">
  <tr>
    <td align="left"> 
    当前频道：<s:property value="chanconfig.getChannelName()"/> 频道关键词：<s:property value="chanconfig.metaKeywords"/>
    
    
    </td>
  </tr>
</table>

<table width="920" border="0" align="center" cellpadding="0" cellspacing="4" >
  <tr>
    <td width="150"> 
    
    
    <table width="100%">
      <!--注意获取ID-->
      <s:set name="channelId" value="getChannelId()"/>
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
    
    <s:set name="channelId" value="getChannelId()"/>
      <s:iterator value="ChannelClass(#channelId,0)" status="clist">
    <div style="float:left; height:150px; text-align:left; vertical-align:top; width:40%; margin-left:10px;">
     <div style="height:22px; border-bottom:2px #FF0000 outset; margin-bottom:4px;">
      <li><s:property value="getClassName()"/></li></div>
      
    
     <s:set name="cid" value="getClassId()"/>
 
 
  <s:iterator value="curChannelProduct(#cid,8).list" status="jp" >
   <li style="height:20px;">
  <!--应用商品-->
  <a href="ShowProduct_<s:property value="getProductId()"/>.html">
  <s:if test="getIsHot()==1">
  <font color="#FF0000">【热卖】</font>
  </s:if>
  
  
  
  <s:property value="getProductName()"/> </a>
  <font color="#FF0000">【
  会员价：<s:property value="getPriceMember()"/>元】
  </font>
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
