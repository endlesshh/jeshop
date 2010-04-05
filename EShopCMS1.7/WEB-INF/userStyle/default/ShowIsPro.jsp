<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎来到网店</title>
<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #006600;
}
a:hover {
	text-decoration: none;
	color: #CC9900;
}
a:active {
	text-decoration: none;
	color: #006633;
}
a {
	font-size: 12px;
	color: #006600;
}
-->
</style></head>

<body>
<s:include value="top.jsp"/>

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
 
  <tr>
    <td  align="left" valign="top"></td>
    <td  align="left" valign="top">

   
    
   
<!--热卖商品分类开始-->
  <div style=" ">
  
  <table width="100%">
<s:set name="pro" value="getUserPro(1,0,2,12).list"/>
<s:set name="pagebean" value="getUserPro(1,0,2,12)"/>

<s:iterator value="#pro" status="listtemppro">
<s:if test="#listtemppro.index%4==0">
<tr>
</s:if>


<td >


<img style="border:1px #FFCCFF outset; padding:2px;" title="header=[] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'/>]"  src="../upfile/<s:property value="getProductThumb()"/>" width="150" height="150" />

<div class="productPicClass" align="center">
<a class="chanenllink"  href="ShowProduct.jspx?userProId=<s:property value="getProductId()"/>&StyleUserId=<s:property value="getStyleUserId()"/>"><font color="#660000"><s:property value="getProductName()"/></font></a></div>
<div ><font color="#663300">编号：<s:property value="getBarCode()"/></font></div>
<div ><font color="#663300"><img src="<s:property value="getStyleName()"/>/images/roundone_03.gif" /><font color="#FF0000"><b>零售价</b></font>：<s:property value="getPriceMarket()"/></font></div>
<div ><img src="<s:property value="getStyleName()"/>/images/roungthreee_03.gif" /><font color="#663300"><font color="#FF0000"><b>会员价</b></font>：<s:property value="getPriceMember()"/></font></div>
<img style="cursor:hand;" onclick="addNewPro(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>',1,'<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/gouwu_03.gif" />


<img style="cursor:hand;" onclick="addDuiBi(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getPriceMarket()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>','<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/duibi_gouwu_03.gif" />


</td>
  <s:if test="#listtemppro.index%4==3">
</tr>
</s:if>


</s:iterator>
</table>
 </div>
<!--热卖商品分类结束-->
   
    
    
    
    
   
    
    
    
    </td>
  </tr>
  <tr>
    <td colspan="2">
    
    <br><br>
      <div>
       
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="ShowChannel.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
  <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="ShowChannel.jspx">
           <s:param name="page">1</s:param>
           <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param>
  </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="ShowChannel.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
             <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param></s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="ShowChannel.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
            <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="ShowChannel.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
             <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param></s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
        </s:if>
        <s:else>
          下一页 最后一页        </s:else>
      </div>
    
    </td>
   
  </tr>
</table>



<s:include value="buttom.jsp"/>


</body></html>