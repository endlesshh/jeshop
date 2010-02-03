 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <s:iterator value="ShowHotProductPageBean(1,8).list" status="jp" >
                 
                <s:if test="(#jp.index)%4==0">
               <tr>
                </s:if>
                
   
                   <td>
                   
                   
                   <table width="90%" border="0" cellspacing="2" cellpadding="0" style="padding:3px; ">
  <tr>
    <td align="center">
    <div style="padding:3px;background-repeat:no-repeat;">
    <a  href="ShowProduct_<s:property value="getProductId()"/>.html">  
<img border="0" title="header=[<s:property value="getProductName()"/>] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'></a>
    </div>
    
      <p align=left><b>市场价：</b><s:property value="getPriceMarket()"/>元<br><b>会员价：</b><s:property value="getPriceMember()"/>元<br><b>团购价：</b><s:property value="getPriceTuangou()"/>元
    ]" width="130" height="140" src="../upfile/<s:property value="getProductThumb()"/>" style="padding:3px;" />
   </a>
    </div>
</td>
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
  
    <img src="userLogin/images/shoucang_07.gif" onClick="simpleCart.add('name=<s:property  value="getProductId()"/>_<s:property value="getProductName()"/>','price=<s:property value="getPriceMember()"/>','image=../upfile/<s:property value="getProductThumb()"/>');return false;" style="cursor:hand;" border="0" width="62" height="22">
    </td>
  </tr>
 
</table>         
                   
          </td>
  
            <s:if test="(#jp.index)%4==3">
               </tr>
                </s:if>
                
                </s:iterator>
               
  
 
</table>