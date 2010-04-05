<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:property value="configBean.getSiteName()"/></title>
</head>

<body>
<s:include value="top.jsp"/>
<s:set name="productId" value="product.getProductId()"/>

<br>
<table width="920" class="bigbord" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="middle" height="25"  >&nbsp;
    
    当前位置：<a href="index.html">首页</a> >> <a href="Channel_<s:property value="curChannel.getChannelId()"/>.html"><s:property value="curChannel.getChannelName()"/></a> >> <a href="ShowClass_<s:property value="curClass.getClassId()"/>.html"><s:property value="curClass.getClassName()"/></a>
    </td>
  </tr>
</table><br>

<table width="920" height="250" align="center" class="bigbord">
    
    <tr>
       <td  class="contain_table" >
    <div class="index_midle_table_bg">&nbsp; <s:property value="product.getProductName()"/></div>
    
    <div>
    <table width="100%" border="0" cellspacing="4" cellpadding="0">
  <tr>
    <td width="56%" align="center" valign="middle"><IMG  class="productPic" alt="" width="330"  src="../upfile/<s:property value="Product.getProductThumb()"/>" /></td>
    <td width="44%" valign="top"><table width="100%" border="0" cellspacing="8" cellpadding="0">
      <tr>
        <td align="left">名称： 
          <s:property value="product.getProductName()"/></td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">品牌： 
          <s:property value="curClass.getClassName()"/></td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">型号： 
          <s:property value="product.getProductModel()"/></td>
        <td align="left">&nbsp;</td>
      </tr>
    
      <tr>
        <td align="left">浏览次数：最近浏览<s:property value="product.getHits()"/>次</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">市场价：<font  size="5" color="#FF0000">  
          <s:property value="product.getPriceMarket()"/></font>&nbsp;&nbsp;元</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">会员价：<font  size="5" color="#FF0000"> 
        <s:property  value="product.getPriceMember()"/></font>&nbsp;&nbsp;元</td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">团购价：<font size="5" color="#FF0000"> 
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
        <td colspan="2" align="left">简单介绍：</td>
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


   <tr>
     <td colspan="2"> 
  



<!--相关信息-->
</td>
   </tr>
   

</table>
    
    
    </div>
    
    
    </td>
    </tr>
    <tr><td>
    
    </td></tr>
    
    
</table>

  <s:iterator value="getExtendProduct(#productId)">
  <table width="920"  align="center" class="bigbord">
    
    <tr>
       <td  class="contain_table" >
    <div class="index_midle_table_bg">
  <s:property   value="showName"/></div></td>
  </tr>
  
   <tr>
    <td colspan="2"><s:property escape="false"  value="conBuffer"/></td>
  </tr>
  </table>
  </s:iterator>




<table width="920" height="250" align="center" class="bigbord">
    
    <tr>
       <td  class="contain_table" >
    <div class="index_midle_table_bg">
    
    <table width="75%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="tableChannelSelecton" id="ChtopTop1" onclick="ShowTablediv('classTPList',1,2);chCss('ChtopTop',1,2)">投票调查</td>
    <td class="tableChannelSelect" id="ChtopTop2" onclick="ShowTablediv('classTPList',2,2);chCss('ChtopTop',2,2)">相关内容</td>
  </tr>
</table>

    
    
    
    </div>
    
    <div>
   
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    
    <form action="SubCurcontent.jspx" method="post">
    <input type="hidden" name="infoMainId" value="<s:property  value="product.getProductId()"/>" />
    <input type="hidden" name="curType" value="product" />
    <s:iterator value="getProductCurey(#productId)" status="subCurey">
    <input type="hidden" name="cureyTitle" value="<s:property value="getTitle()"/>" />
    <input type="hidden" name="cureyNum" value="<s:property value="getNum()"/>" />
</s:iterator>
    
    
  <tr  id="classTPList1">
    <td>
    <div style="padding:10px;">
    <ul>
<s:iterator value="getProductCurey(#productId)" status="subCurey">
<li style="list-style:none; height:25px;">
<input style="border:0px;" type="radio" value="<s:property value="#subCurey.index"/>" id="ShowPageCurey<s:property value="#subCurey.index"/>" name="selectID" /><s:property value="getTitle()"/> &nbsp;<font color="#FF0000"> 票数：<s:property value="getNum()"/></font>
</li>
</s:iterator>
</ul>
<br />
<input type="submit" value="投票" onclick="SubUserTP()" />
</div>
</td>
    
  </tr>
  </form>
   <tr style="display:none;" id="classTPList2">
    <td><!--相关信息-->

<ul style="list-style:none; margin-top:5px;">
<s:iterator value="getProductContact(#productId)">
<li style="height:25px;">
<a href="ThreadProduct_<s:property value="getProductId()"/>.html"><s:property value="getProductName()"/></a> 

</li>
</s:iterator>
</ul>
</td>
    
  </tr>
</table>
   
   
    
    
    </div></td></tr></table>




<table width="920" height="250" align="center" class="bigbord">
    
    <tr>
       <td  class="contain_table" >
    <div class="index_midle_table_bg">&nbsp; <s:property value="product.getProductName()"/>评论</div>
    
    <div>
      <!-- 商品评论功能 直接放入模板之内 -->
   
 <iframe id="bobo" onload="Javascript:SetCwinHeight()"  width="100%" src="innitAddComment.jspx?ModuleType=<s:property value="curChannel.getModuleType()"/>&infoId=<s:property  value="product.getProductId()"/>" scrolling="no" frameborder="0"></iframe>
<!-- 评论功能结束 --> 
    
    
    </div></td></tr></table>





<table width="920"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="right" valign="middle" height="50"  ><img src="<s:property value="getRootPath()"/>/front/images/logo.jpg" width="220" height="62" /></td>
    <td align="left" valign="middle"  >开源电子商务平台 建造您独立的商务平台</td>
  </tr>
</table>
<table width="920"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td  align="center" valign="middle"  >最新版本发布地址：http://code.google.com/p/jeshop</td>
  </tr>
</table>
<s:include value="buttom.jsp"/>
</body>
</html>
