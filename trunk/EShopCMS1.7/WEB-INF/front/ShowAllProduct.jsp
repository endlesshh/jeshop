
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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

<br>
<table width="920" class="bigbord" border="0" align="center" cellpadding="0" cellspacing="0">
  <form action="productSearchAPI.jspx" method="post" name="from" id="from"> <tr>
  
  <td height="50" align="center">
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

<br>

<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      
      <tr>
        
        <td align="left" valign="top" class="contain_table" > <div class="index_midle_table_bg">&nbsp; 分类</div>
          <div > 
          
         
         
         
         
         <table width="100%">
      <!--注意获取ID-->
      
      <s:iterator value="ChannelClass(1,0)" status="clist">
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
    </table></td>
<td width="689" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
               <s:set name="pagebean" value="ShowProductPageBean(1,16)"/>
               
                <s:iterator value="#pagebean.list" status="jp" >
                 
                <s:if test="(#jp.index)%4==0">
               <tr>
                </s:if>
                
   
                   <td>
                   
                   
                   <table width="90%" border="0" cellspacing="2" cellpadding="0" style="padding:3px; ">
  <tr>
    <td align="center">
    <div style="padding:3px; background-color:#CCCCCC;">
   <a href="ShowProduct_<s:property value="getProductId()"/>.html?showProduct.jsp"> <img  border="0"width="120" title="header=[] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'></a>
    </div>
    
      <p align=left><b>市场价：</b><s:property value="getPriceMarket()"/>元<br><b>会员价：</b><s:property value="getPriceMember()"/>元<br><b>团购价：</b><s:property value="getPriceTuangou()"/>元
    ]" height="140" src="../upfile/<s:property value="getProductThumb()"/>" /></td>
  </tr>
  <tr>
    <td align="center"><span class="STYLE8">
      <s:property value="getProductName()"/>
    </span></td>
  </tr>
  <tr>
    <td align="center"><span class="STYLE4">零售</span>：<em><strong><s:property value="getPriceMarket()"/></strong></em><img src="userLogin/images/renminbi_11.gif" width="17" height="15"><br><span class="STYLE5">会员</span>：<em><strong><s:property value="getPriceMember()"/><img src="userLogin/images/renminbi_11.gif" width="17" height="15"></strong></em></td>
  </tr>
  <tr>
    <td align="center">
     <s:url id="addfav" value="/user/addFav.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
      <s:a href="%{addfav}" >
    
    
    <img src="userLogin/images/goubuycar_07.gif" border="0" width="62" height="22"></s:a>
    <s:url id="addshopcar" value="/user/addBuyCar.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
     
    
    
    <img onClick="simpleCart.add('name=<s:property  value="getProductId()"/>_<s:property value="getProductName()"/>','price=58','image=../upfile/<s:property value="getProductThumb()"/>');return false;"  style="cursor:hand;" src="userLogin/images/shoucang_07.gif" border="0" width="62" height="22">
   
    
    </td>
  </tr>
 
</table>         
                   
          </td>
  
            <s:if test="(#jp.index)%4==3">
               </tr>
                </s:if>
                
                </s:iterator>
               
  
 
</table>
<br><br>
<!--分页标签-->


        共<s:property value="#pagebean.allRow"/> 
        件商品  
        共分
        <s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="ShowPage.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页
        </s:if>
        <s:else>
            <s:url id="firstNews" value="ShowPage.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="ShowPage.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="lNews" value="ShowPage.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
          </s:url>
            <s:a href="%{lNews}">下一页</s:a>
            <s:url id="xNews" value="ShowPage.jspx">

           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{xNews}">最后一页</s:a>
            
        </s:if>
        <s:else>
            下一页 最后一页
        </s:else>
<br>

  <!--自定义商品列表-->          
            
            </td>
  </tr>
</table>

     <s:include value="buttom.jsp"/>
</body>
</html>
