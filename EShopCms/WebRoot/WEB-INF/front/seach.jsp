
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
.STYLE6 {
	color: #663300;
	font-weight: bold;
}
-->
</style></head>

<body>
<table width="100%" border="0" cellspacing="3" cellpadding="0">
  <form action="productSearchAPI.jspx" method="post" name="from" id="from"> <tr>
    <td width="27%"><span class="STYLE6">搜索分类</span>：</td>
    <td width="26%"><s:property escape="false" value="getClassAll(1,10)"/>     </td>
    <td width="18%">&nbsp;</td>
    <td width="29%" align="right">&nbsp;</td>
  </tr> 
  <tr> <input type="hidden" name="linkurl" value="result.jsp" />
    <td>商品名称：</td>
    <td colspan="3"><input  name=product.productName  id=productName style="border:1px #663300 outset; height:20px;" size="30"/></td>
    </tr>
  <tr>
    <td>最高价：</td>
    <td colspan="3"><INPUT value=0  maxlength=5 onKeyUp="this.value=this.value.replace(/\D/g,'')"  name=minPrice id=minPrice size="3" />
         <select onchange="document.getElementById('minPrice').value=this.value">
      <option value="0">0</option>
      <option value="10">10</option>
      <option value="15">15</option>
      <option value="20">20</option>
      <option value="25">25</option>
      <option value="40">40</option>
      <option value="100">100</option><option value="150">150</option>
      <option value="200">200</option>
      </select>最低价：
      <INPUT   maxlength=7 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=maxPrice id=maxPrice size="3" value="5000" />      <select onchange="document.getElementById('maxPrice').value=this.value">
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
      
      
      </td>
    </tr>
  <tr>
    <td>品牌搜索：</td>
    <td colspan="3"><INPUT  name=product.tradeMarkName id=tradeMarkName style="border:1px #663300 outset;" size="30"/></td>
    </tr>
  <tr>
    <td>关键词：</td>
    <td><input  name=product.keyword  id=productName style="border:1px #663300 outset;" size="10"/></td>
    <td><input type="submit" value="开始搜索" /></td>
    <td>&nbsp;</td>
  </tr></form>
</table>


<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26" height="19"><img src="../user/images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="../user/images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="../user/images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="../user/images/images/leftuser_03.gif" width="26" height="141" /></td>
    <td align="left" valign="top"  style="background-repeat:repeat-x;" background="images/images/buttons_03.gif">
        
        <table width="100%" border="0" cellspacing="4" cellpadding="0"  >
         <div>
          共
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
            <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
          </s:url>
          <s:if test="%{pagebean.currentPage==1}"> 第一页 上一页 </s:if>
          <s:else>
            <s:url id="firstNews" value="productSearchAPI.jspx">
              <s:param name="page">1</s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
            <s:url id="preNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage-1}"/>
              </s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{preNews}">上一页</s:a>
          </s:else>
          <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
            <s:url id="nextNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage+1}"/>
              </s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.totalPage}"/>
              </s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
          </s:if>
          <s:else> 下一页 最后一页 </s:else>
         </div>
         <br><br>
        <s:iterator value="pagebean.list" status="listjeannounce">
      
          <tr align="center" bgcolor="#CCCCCC">
            <td width="41%" bgcolor="#FFFFFF" style=" border-right:1px #CCCCCC solid;">
            <a href="ShowProduct.jspx?product.productId=<s:property  value="getProductId()"/>&pass=6LaF6auY3571.8863238177046sdfsdLef-10-143---------2-------&linkurl=showProduct.jsp" target="_blank" />
            <img border="0" src="../upfile/<s:property value='getProductThumb()'/>" width=120 height="120" style="padding:5px;"/>
            
            </a>            </td>
            <td width="42%" valign="bottom" bgcolor="#FFFFFF">
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
    <s:a href="%{addfav}" ><img  border="0" src="images/images/jiarushoucang_07.gif" /></s:a>&nbsp; <s:url id="addshopcar" value="/user/addBuyCar.jspx">
    <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
    <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
   
   
   <s:a href="%{addshopcar}" > <img border="0" src="images/images/jiarugouwuche_07.gif" /></s:a></td>
  </tr>
</table>                  </td>
            <td width="10%" bgcolor="#FFFFFF"></td>
            <s:set name="cid" value="getClassId()"/>
            <td width="7%" align="left" bgcolor="#FFFFFF">
            <s:property value="curClass.getClassName()"/>
            <s:property value="getClassName(#cid)"/>              <span class="STYLE6">会员价</span> <span class="STYLE5">
              <s:property value="getPriceMember()"/>
              </span>                  </td>
            </tr>
           <tr>
          <td colspan="4" align=center height=20><hr style="border:1px #ececec solid; color:#CCCCCC"></td>
        </tr>
        </s:iterator>
       
        <tr>
          <td colspan="4" align=center height=20><s:a href="#" onclick="return newsub()"></s:a>          </td>
        </tr>
      <tr>
        <td colspan="4" align=center> 共
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
            <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
          </s:url>
          <s:if test="%{pagebean.currentPage==1}"> 第一页 上一页 </s:if>
          <s:else>
            <s:url id="firstNews" value="productSearchAPI.jspx">
              <s:param name="page">1</s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
            <s:url id="preNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage-1}"/>
              </s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{preNews}">上一页</s:a>
          </s:else>
          <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
            <s:url id="nextNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage+1}"/>
              </s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="productSearchAPI.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.totalPage}"/>
              </s:param>
              <s:param name="linkurl">
            
            <s:property value="getLinkurl()"/>
            </s:param>
            </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
          </s:if>
          <s:else> 下一页 最后一页 </s:else></td>
      </tr>
      <tr>
        <td height="25" colspan="4" background="images/color.jpg">&nbsp;</td>
      </tr>
    </table>
        <!--会员中心-->
    </td>
        <td  width="23" height="136" align="left" valign="top" background="../user/images/images/bubu1_03.gif"><img src="../user/images/images/leftRinght_03.gif" width="23" height="136" /></td>
      </tr>
      <tr>
        <td><img src="../user/images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="../user/images/images/heibut_03.gif"></td>
        <td><img src="../user/images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>


</body>
</html>
