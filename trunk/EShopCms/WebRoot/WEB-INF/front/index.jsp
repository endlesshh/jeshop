  
<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><s:property value="configBean.getSiteName()"/></title>

</head>

<body>
<s:include value="top.jsp"/>

<!--
首页

-->
<!--发货通知-->
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

<div align="center">



<table width="830" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div class="listNewsClassBoxHuan">
<div style="padding:1px;">
<s:include value="slidPic.jsp"/>
</div>
</div>
</td>
    <td valign="top">
<div class="listNewsClassBox1">
<div class="listNewsTitle1">促销商品展销</div>
<div class="classContent">
<s:iterator value="ShowProductPageBean(2,12).list" status="jp" >
 <li style="text-align:left">
  <s:property value="#jp.index+1"/>.<a title="header=[] body=[<img src='../upfile/<s:property value="getProductThumb()"/>'>]" href="ThreadProduct_<s:property value="getProductId()"/>.html"><s:property  value="getProductName()"/></a>
  <font color="#FF0000"><b><s:property value="getPriceMember()"/></b>元</font>
 </li>
</s:iterator>

</div>
</div></td>
  </tr>
</table>
</div>
<!--
首页

-->
<!--会员网店开始-->


<div align="center">
<div class="listNewsClassBoxUserShop">
<div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />会员旺铺</div>
</div>
<div class="classContent">

<s:include value="Index_listAll_UserShop.jsp"/>

</div>
</div>
</div>
<!--会员网店结束-->


<table width="860" border="0" align="center" cellpadding="0" cellspacing="3">
  <tr>
    <td  valign="top" align="left" ><div class="listNewsClassBox">
<div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />商品分类</div>
</div>
<div>
<s:include value="ListClass.jsp"/>

</div>
</div></td><td valign="top" width="65%">
<div class="listNewsClassBox">
<div class="listNewsTitle"><div align="left"><img src="images/images/ico1.gif" />最新上架商品列表</div></div>
<div>
<s:include value="Index_listAll_product.jsp"/>

</div>
</div>

</td></tr></table>





















<div id="divObj" align="center" style="display:none;">
<table width="980" border="0" cellspacing="3" cellpadding="0">
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

   
   
   
   


<table align="center"  width="860"><tr><td valign="top" style="padding:3px;">
<!--文章列表类标签-->
<div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />季节流行</div>
</div>
<table><tr><td>
<ul class=list style="list-style-type:none;">
<s:iterator value="showNewsPhoto(3,20,3)">
  <li><A href="ShowArticle_<s:property value="getArticleId()"/>.html" target=_blank><img style="border:1px #ececec outset; margin:2px;" src="../upfile/<s:property value="getDefaultPicUrl()"/>" 
 width=180  height="60"  border=0 /> </A></li>
   
 
</s:iterator>
</ul>


</td>
</tr></table>


<!--文章列表类标签-->



</td><td align="right" valign="top" >
<table align="center" ><tr><td align="left" valign="top" style="padding:5px;"><!--文章列表类标签-->
<div class="listNewsTitle"><div align="left"><img src="images/images/ico1.gif" />装饰搭配</div></div>
<ul class=list style="list-style-type:disc">
<s:iterator value="showNews(3,19,10)">
 <li><A href="ShowArticle_<s:property value="getArticleId()"/>.html" target=_blank>◇
   <s:set name="title" value="getTitle()"/>
  <s:if test="#title.length()>15"><s:property value="%{#title.substring(0,15)}"/>..</s:if>
  <s:else> <s:property value="#title"/>  </s:else>
 </A></li>
</s:iterator>
</ul>
<!--文章列表类标签--></td><td align="left" valign="top" style="padding:5px;"><!--文章列表类标签-->

<div class="listNewsTitle"><div align="left"><img src="images/images/ico1.gif" />购物拾零</div></div>
<ul class=list style="list-style-type:disc">
<s:iterator value="showNews(3,21,10)">
 <li><A href="ShowArticle_<s:property value="getArticleId()"/>.html" target=_blank>◇
   <s:set name="title" value="getTitle()"/>
  <s:if test="#title.length()>15"><s:property value="%{#title.substring(0,15)}"/>..</s:if>
  <s:else> <s:property value="#title"/>  </s:else>
 </A></li>
</s:iterator>
</ul>
<!--文章列表类标签--></td>
    <td align="left" valign="top" style="padding:5px;"><!--文章列表类标签-->
  
    <div class="listNewsTitle"><div align="left"><img src="images/images/ico1.gif" />精彩资讯</div></div>
  
<ul class=list style="list-style-type:disc">
<s:iterator value="showNews(3,16,10)">
 <li><A href="ShowArticle_<s:property value="getArticleId()"/>.html" target=_blank>◇
   <s:set name="title" value="getTitle()"/>
  <s:if test="#title.length()>15"><s:property value="%{#title.substring(0,15)}"/>..</s:if>
  <s:else> <s:property value="#title"/>  </s:else>
 </A></li>
</s:iterator>
</ul>
<!--文章列表类标签--></td>
  
</tr></table>


</td>
</tr></table>



<table width="860" border="0" align="center" cellpadding="0" cellspacing="3">
  <tr>
    <td  valign="top" align="left" ><div class="listNewsClassBox">
<div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />品牌专区</div>
</div>
<div>
<s:include value="Index_listAll_tradMark.jsp"/>

</div>
</div></td><td valign="top" width="65%">
<div class="listNewsClassBox">
<div class="listNewsTitle"><div align="left"><img src="images/images/ico1.gif" />热卖商品</div></div>
<div>
<s:include value="Index_listAll_HotProduct.jsp"/>

</div>
</div>

</td></tr></table>

<table width="860" border="0" align="center" cellpadding="0" cellspacing="3">
  <tr>
    <td  valign="top" align="left" >

<!--站内通知选项-->


 <div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />站内通知</div>
</div>
<s:include value="Index_listAll_Announce.jsp"/>

 <div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />发货订单</div>
</div>
 <s:include value="Index_listAll_OrderList.jsp"/>


 <div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />最新注册会员</div>
</div>
 
<s:iterator  value="showUser(0)" status="ulist">
<li>
<span style="height:20px; width:20px; padding-top:6px;"><s:property value="#ulist.index+1"/>.</span><s:property value="getUserName()"/> &nbsp;&nbsp;

<font color="#FF0000">送积分：
<s:property value="getUserPoint()"/> 分</font>
</li>
</s:iterator>


 <s:include value="Index_listAll_Soft.jsp"/>




</div>
</div></td><td valign="top" width="65%">
<div class="listNewsClassBox">
<div class="listNewsTitle">
  <div align="left"><img src="images/images/ico1.gif" />推荐专区</div>
</div>
<div>
<s:include value="Index_listAll_isSletProduct.jsp"/>

</div>
</div>

</td></tr></table>

<table align="center" class="borderMain">
  <tr>
    <td align="left" valign="top" style="padding:5px;"><!--文章列表类标签-->
        <div class="listNewsTitle">
          <div align="left"><img src="images/images/ico1.gif" />新手指南/帮助中心</div>
        </div>
        
      <ul class=list style="list-style-type:disc">
          <s:iterator value="showNews(4,22,10)">
            <li><a href="ThreadInfo_<s:property value="getArticleId()"/>.html" target=_blank>◇
              <s:set name="title" value="getTitle()"/>
                <s:if test="#title.length()>15">
                  <s:property value="%{#title.substring(0,15)}"/>
                  ..</s:if>
                <s:else>
                  <s:property value="#title"/>
                </s:else>
            </li>
          </s:iterator>
        </ul>
      <!--文章列表类标签--></td>
    <td align="left" valign="top" style="padding:5px;"><!--文章列表类标签-->
    
         <div class="listNewsTitle">
          <div align="left"><img src="images/images/ico1.gif" />如何付款/退款</div>
        </div>
      <ul class=list style="list-style-type:disc">
          <s:iterator value="showNews(4,26,10)">
            <li><a href="ThreadInfo_<s:property value="getArticleId()"/>.html" target=_blank>◇
              <s:set name="title" value="getTitle()"/>
                <s:if test="#title.length()>15">
                  <s:property value="%{#title.substring(0,15)}"/>
                  ..</s:if>
                <s:else>
                  <s:property value="#title"/>
                </s:else>
            </li>
          </s:iterator>
        </ul>
      <!--文章列表类标签--></td>
    <td align="left" valign="top" style="padding:5px;"><!--文章列表类标签-->
     
         <div class="listNewsTitle">
          <div align="left"><img src="images/images/ico1.gif" />如何送货/退货</div>
        </div>
      <ul class=list style="list-style-type:disc">
          <s:iterator value="showNews(4,57,10)">
            <li><a href="ThreadInfo_<s:property value="getArticleId()"/>.html?ShowNews.jsp" target=_blank>◇
              <s:set name="title" value="getTitle()"/>
                <s:if test="#title.length()>15">
                  <s:property value="%{#title.substring(0,15)}"/>
                  ..</s:if>
                <s:else>
                  <s:property value="#title"/>
                </s:else>
            </li>
          </s:iterator>
        </ul>
      <!--文章列表类标签--></td>
    <td align="left" valign="top" style="padding:5px;"><!--文章列表类标签-->
      
         <div class="listNewsTitle">
          <div align="left"><img src="images/images/ico1.gif" />售后服务</div>
        </div>
      <ul class=list style="list-style-type:disc">
          <s:iterator value="showNews(4,25,10)">
            <li><a href="ThreadInfo_<s:property value="getArticleId()"/>.html?ShowNews.jsp" target=_blank>◇
              <s:set name="title" value="getTitle()"/>
                <s:if test="#title.length()>15">
                  <s:property value="%{#title.substring(0,15)}"/>
                  ..</s:if>
                <s:else>
                  <s:property value="#title"/>
                </s:else>
            </li>
          </s:iterator>
        </ul>
      <!--文章列表类标签--></td>
  </tr>
</table>
<!--广告标签说明
<s:property escape="false" value="getDetailAd(1)"/>
-->
<s:include value="buttom.jsp"/>

</body>
</html>
 
  
   