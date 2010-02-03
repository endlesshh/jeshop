
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>服装商城</title>
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
<s:set name="productId" value="product.getProductId()"/>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td  width="22" height="34" >&nbsp;</td>
    <td background="userLogin/images/userLogin_top_2_07.gif">商品分类</td>
    <td width="22" height="34" >&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td><s:include value="listClass.jsp"/></td>
    <td valign="top" background="userLogin/images/userLogin_center_right_07.gif">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td background="userLogin/images/userLoing_butom_center_2_07.gif">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
    
    </td>
    <td width="689" align="left" valign="top">
    
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="19" height="33">&nbsp;</td>
            <td align="center"> 
             <s:property value="product.getProductName()"/>
            </td>
            <td width="19" height="33">&nbsp;</td>
        </tr>
          <tr>
            <td >&nbsp;</td>
            <td >
            <table width="100%" border="0" cellspacing="4" cellpadding="0">
  <tr>
    <td width="56%" align="left" valign="middle"><IMG alt="" width="330"  src="../upfile/<s:property value="Product.getProductThumb()"/>" /></td>
    <td width="44%" valign="top"><table width="100%" border="0" cellspacing="8" cellpadding="0">
      <tr>
        <td align="left">服装名称： <s:property value="product.getProductName()"/></td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">服装品牌： <s:property value="curClass.getClassName()"/></td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">服装型号： <s:property value="product.getProductModel()"/></td>
        <td align="left">&nbsp;</td>
      </tr>
    
      <tr>
        <td align="left">浏览次数：最近浏览<s:property value="product.getHits()"/>次</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">服装市场价：<font  size="5" color="#FF0000">  <s:property value="product.getPriceMarket()"/></font>&nbsp;&nbsp;元</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">本站网站价：<font  size="5" color="#FF0000"> 
        <s:property  value="product.getPriceMember()"/></font>&nbsp;&nbsp;元</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">本站批量价：<font size="5" color="#FF0000"> 
        <s:property value="product.getPriceTuangou()"/></font>&nbsp;&nbsp;元</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center">
        
        <s:url id="addfav" value="/user/addFav.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="product.getProductId()"/></s:param></s:url>
      <s:a href="%{addfav}" ><img border="0" src="images/btn_fav.gif" />        </s:a></td>
        </tr>
      <tr>
        <td colspan="2" align="center"><s:url id="addshopcar" value="/user/addBuyCar.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="product.getProductId()"/></s:param></s:url>
      <s:a href="%{addshopcar}" ><img onClick="simpleCart.add('name=<s:property  value="product.getProductId()"/>_ <s:property value="getProductName()"/>','price=58','image=../upfile/<s:property value="product.getProductThumb()"/>');return false;" style="cursor:hand;" src="images/btn_car.gif" border="0" /></s:a></td>
        </tr>
      <tr>
        <td colspan="2" align="center">&nbsp;</td>
        </tr>
      <tr>
        <td colspan="2" align="left">服装简单介绍：</td>
        </tr>
      <tr>
        <td colspan="2" align="left"> <div style="padding:15px;">
        <s:property escape="false" value="product.getProductIntro()"/>
    </div>  </td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif">&nbsp;</td>
        <td  width="128" height="4">&nbsp;</td>
      </tr>
    </table></td>
    </tr>
  <tr>
    <td>本型号服装详细介绍：</td>
    <td>&nbsp;</td>
  </tr>
 
  <tr>
    <td colspan="2"><s:property escape="false"  value="product.getProductExplain()"/></td>
  </tr>

  <s:iterator value="getExtendProduct(#productId)">
   <tr>
    <td colspan="2"><s:property   value="showName"/></td>
  </tr>
  
   <tr>
    <td colspan="2"><s:property escape="false"  value="conBuffer"/></td>
  </tr>
  </s:iterator>
   <tr>
     <td colspan="2"> 
  
<!--相关信息-->
相关商品：

<s:iterator value="getProductContact(#productId)">
<li>
<a href="ThreadProduct_<s:property value="getProductId()"/>.html"><s:property value="getProductName()"/></a> 
价格：<s:property value="getProductMarketPrice()"/>
</li>
</s:iterator>

<br>投票调查：

<s:iterator value="getProductCurey(#productId)">
<li>
<input style="border:0px;" type="radio" name="ShowPageProductCurey" /><s:property value="getTitle()"/>  票数：<s:property value="getNum()"/>
</li>
</s:iterator>
<input type="button" value="投票" />
<!--相关信息-->
</td>
   </tr>
   
  <tr>
    <td colspan="2">
    
     <!-- 商品评论功能 直接放入模板之内 -->
   
 <iframe id="bobo" onload="Javascript:SetCwinHeight()"  width="100%" src="innitAddComment.jspx?ModuleType=<s:property value="curChannel.getModuleType()"/>&infoId=<s:property  value="product.getProductId()"/>" scrolling="no" frameborder="0"></iframe>
<!-- 评论功能结束 -->    </td>
    </tr>
</table>
             
              
           
           
           
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td valign="bottom" >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
      </table>
    
    
    </td>
  </tr>
</table>

<s:include value="buttom.jsp"/>
</body>
</html>
