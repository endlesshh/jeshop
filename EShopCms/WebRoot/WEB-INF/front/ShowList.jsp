<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="skin/default.css" rel="stylesheet" type="text/css" />
 
<style type="text/css">
<!--
.STYLE2 {
	font-size: 14px;
	color: #666666;
	font-weight: bold;
}
.STYLE3 {
	font-size: 12px;
	color:#0099FF;
	font-weight: bold;
}
.STYLE4 {color: #999999}
.STYLE5 {
	font-size: 14px;
	color: #FF3333;
}
.STYLE6 {
	font-size: 12px;
	color: #666666;
}
.STYLE7 {
	color: #FF0033;
	font-weight: bold;
}
.STYLE9 {
	color: #FF0033;
	font-weight: bold;
	font-size: 14;
}
-->
</style>
</head>

<body>
<s:include value="top.jsp"/>

<table width=800 border="0" cellspacing="5" cellpadding="0"  align="center">
<tr>
   <td>
     <img   src="images/4028835.gif" width=800/>
   </td>
</tr>
<tr><td width="31%">
<table width="100%" border="0" cellspacing="1" cellpadding="0" >
  <tr>
    <td width="31%"><table width="100%" border="0" cellspacing="4" cellpadding="0"  >
        <s:iterator value="pagebean.list" status="listjeannounce">
      
          <tr align="center" bgcolor="#CCCCCC">
            <td width="18%" bgcolor="#FFFFFF" style=" border-right:1px #CCCCCC solid;">
            
            <img src="../upfile/<s:property value='getProductThumb()'/>" width=120 height="120"/></td>
            <td width="32%" valign="bottom" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td align="left"><span class="STYLE3">
      <s:property  value="%{getProductName()}"/></span></td>
  </tr>
  <tr>
    <td align="left"> <span class="STYLE4">商品条形码</span>：
      <span class="STYLE7">
      <s:property value="getBarCode()"/></span></td>
  </tr>
  <tr>
    <td align="left"> <span class="STYLE4">市场价</span>：  
       <span class="STYLE9">
<s:property value="getPriceMarket()"/>
&nbsp;元</span>  &nbsp;&nbsp; <span class="STYLE4">库存量</span> <span class="STYLE7">
<s:property value="getProductNum()"/> &nbsp;&nbsp; <s:property value="getUnit()"/></span></td>
  </tr>
    <tr>
      <td align="left"><span class="STYLE4">该商品浏览次数</span>：<span class="STYLE7"><s:property escape="false" value="product.getHits()"/>次</span></td>
    </tr>
    <tr>
    <td align="left"> 
      <s:property value="%{getTradeMarkName()}"/></td>
  </tr>
  <tr>
    <td align="left">   <s:url id="addfav" value="/user/addFav.jspx">
    <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
    <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
    <s:a href="%{addfav}" ><img src="../configfile/btn_fav.gif" width="108"  border="0" height="28"></s:a>&nbsp; <s:url id="addshopcar" value="/user/addBuyCar.jspx">
    <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
    <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
   
   
   <s:a href="%{addshopcar}" > <img  border=0 src="../configfile/btn_car.gif" width="108" height="28"></s:a></td>
  </tr>
</table>                  </td>
            <td width="20%" bgcolor="#FFFFFF"></td>
            <s:set name="cid" value="getClassId()"/>
            <td width="15%" bgcolor="#FFFFFF"><s:property value="getClassName(#cid)"/>
             </td>
            <td width="15%" bgcolor="#FFFFFF"  valign="top"> <span class="STYLE6">会员</span><img src="images/rmb.jpg" /> <span class="STYLE5">
              <s:property value="getPriceMember()"/></span> 
                  </td>
            </tr>
           <tr>
          <td colspan="5" align=center height=20><hr style="border:1px #ececec solid; color:#CCCCCC"></td>
        </tr>
        </s:iterator>
       
        <tr>
          <td colspan="5" align=center height=20><s:a href="#" onclick="return newsub()"></s:a>          </td>
        </tr>
      <tr>
        <td colspan="5" align=center> 共
          <s:property value="pagebean.allRow"/>
          条记录
          共
          <s:property value="pagebean.totalPage"/>
          页
          当前第
          <s:property value="pagebean.currentPage"/>
          页
          <s:url id="ListNews" value="productSearchAPI.jspx">
            <s:param name="page">
              <s:property value="%{pagebean.currentPage+1}"/>
            </s:param>
          </s:url>
          <s:if test="%{pagebean.currentPage==1}"> 第一页 上一页 </s:if>
          <s:else>
            <s:url id="firstNews" value="productSearchAPI.jspx">
              <s:param name="page">1</s:param>
            </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
            <s:url id="preNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage-1}"/>
              </s:param>
            </s:url>
            <s:a href="%{preNews}">上一页</s:a>
          </s:else>
          <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
            <s:url id="nextNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage+1}"/>
              </s:param>
            </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.totalPage}"/>
              </s:param>
            </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
          </s:if>
          <s:else> 下一页 最后一页 </s:else></td>
      </tr>
      <tr>
        <td height="25" colspan="5" background="images/color.jpg">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>  
</td>
  </tr>
</table>
<s:include value="Tail.jsp"/>
</body>
</html>
