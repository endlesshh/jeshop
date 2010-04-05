<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
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
a:link {
	color: #000000;
}
a:visited {
	color: #000000;
}
a:hover {
	color: #000000;
}
a:active {
	color: #000000;
}
.STYLE1 {color: #333333}
-->
    </style>
    
   
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>

    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif">&nbsp;</td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="2" cellpadding="0">
      <tr>
        <td width="2%" height="25" align="center" bgcolor="#CCCCCC"><span class="STYLE1"></span></td>
        <td width="8%" align="center" bgcolor="#CCCCCC"><span class="STYLE1"><strong>商品编号</strong></span></td>
        <td width="19%" align="center" bgcolor="#CCCCCC"><span class="STYLE1"><strong>商品名称</strong></span></td>
        <td width="10%" align="center" bgcolor="#CCCCCC"><span class="STYLE1"><strong>商品图片</strong></span></td>
        <td width="14%" align="center" bgcolor="#CCCCCC"><span class="STYLE1"><strong>价格</strong></span></td>
        <td width="9%" align="center" bgcolor="#CCCCCC"><span class="STYLE1"><strong>购买</strong></span></td>
        <td colspan="2" align="center" bgcolor="#CCCCCC"><span class="STYLE1"><strong>删除收藏</strong></span></td>
        </tr> 
       
      <s:iterator value="pagebean.list" status="fav">
     
      
      <s:set name="pid" value="%{getProductId()}"/>
     
      <s:set name="Tp" value="%{getProductById(#pid)}"></s:set>
     <s:property value="%{getBarCode()}"/>
      
      <tr>
        <td align="center"><input type="checkbox" name="proid" value="<s:property value="%{#Tp.getProductId()}"/>"/></td>
        <td align="center"><s:property value="%{#Tp.getBarCode()}"/></td>
        <td align="center">
        
        
        
        <a href="../front/ShowProduct_<s:property value="%{getProductId()}"/>.html?showProduct.jsp">
        
         <s:property value="%{#Tp.productName}"/></a>
            
                <s:set name="pid" value="%{#Tp.getProducerId()}"></s:set>
                <s:set name="cid" value="%{#Tp.getClassId()}"></s:set>
                <s:property value="%{getProducerName(#pid)}"/>            </td>
        <td align="center"><img title=" body=[<img src=../upfile/<s:property value="%{#Tp.getProductThumb()}"/>/>]" height="80" width="80" src="../upfile/<s:property value="%{#Tp.getProductThumb()}"/>"/></td>
        <td align="center">会员价：<font color=#ff0000><s:property value="%{#Tp.getPriceMember()}"/></font>元</td>
        <td align="center">
          <s:url id="toGou" value="addBuyCar.jspx">
        <s:param name="favshop.shopfavId">
         <s:property value="%{getShopfavId()}"/>
        </s:param>
        
         <s:param name="product.productId">
         <s:property value="%{getProductId()}"/>
        </s:param>
        
        <s:param name="user.userId">
         <s:property value="%{getUserId()}"/>
        </s:param>
        </s:url>
        
        
        <img border="0" src="../configfile/btn_car.gif" onClick="simpleCart.add('name=<s:property  value="getProductId()"/>_ <s:property value="getProductName()"/>','price=58','image=../upfile/<s:property value="getProductThumb()"/>');return false;" style="cursor:hand;" width="108" height="28"></td>
        <td colspan="2" align="center">&nbsp;&nbsp;&nbsp;&nbsp;
          <s:url id="delP" value="deleFav.jspx">
            <s:param name="favshop.shopfavId">
              <s:property value="%{getShopfavId()}"/>
              </s:param>
            <s:param name="user.userId">
              <s:property value="%{getUserId()}"/>
              </s:param>
            </s:url>
        
          <s:a  href="%{delP}"><img border="0" src="images/pics/delete.gif"></s:a></td>
        </tr>
       </s:iterator>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td width="14%">&nbsp;</td>
        <td width="24%">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="8" align="center"> 【<a href="../front/index.html">返回首页</a>】 共
            <s:property value="pagebean.allRow"/> 
          条记录
        共
          <s:property value="pagebean.totalPage"/> 
          页
        当前第
          <s:property value="pagebean.currentPage"/>
          页
        
          <s:url id="ListNews" value="/user/ListFav.jspx">
            <s:param name="page">
              <s:property value="%{pagebean.currentPage+1}"/>
            </s:param>
          </s:url>
  
          <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页        </s:if>
          <s:else>
            <s:url id="firstNews" value="/user/ListFav.jspx">
              <s:param name="page">1</s:param>
            </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
            <s:url id="preNews" value="/user/ListFav.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage-1}"/>
              </s:param>
            </s:url>
            <s:a href="%{preNews}">上一页</s:a>
          </s:else>
          <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
            <s:url id="nextNews" value="/user/ListFav.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.currentPage+1}"/>
              </s:param>
            </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/user/ListFav.jspx">
              <s:param name="page">
                <s:property value="%{pagebean.totalPage}"/>
              </s:param>
            </s:url>
            <s:a href="%{ListNews}">最后一页</s:a>
          </s:if>
          <s:else>
            下一页 最后一页        </s:else>
          <s:else></s:else></td>
        </tr>
    </table></td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif">&nbsp;</td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
    </table>
</body>
</html>
