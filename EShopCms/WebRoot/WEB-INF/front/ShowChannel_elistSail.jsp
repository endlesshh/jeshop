
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
<div align="center">

<table width="980" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4"><img src="images/images/channnelLeft_07.gif" width="124" height="4" /></td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif"><img src="images/images/chanenelCenterBG_07.gif" width="22" height="4" /></td>
        <td  width="128" height="4"><img src="images/images/channelRight_07.gif" width="128" height="4" /></td>
      </tr>
</table>
<table width="950" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="left" valign="middle">
    
    当前路径：<a href="index.jspx">首页</a>    
     <s:property value="curChannel.getChannelName()"/>  
    <s:property value="curClass.getClassName()"/>  
    
    
      </td>
  </tr>
</table>

<table width="980" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4"><img src="images/images/channnelLeft_07.gif" width="124" height="4" /></td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif"><img src="images/images/chanenelCenterBG_07.gif" width="22" height="4" /></td>
        <td  width="128" height="4"><img src="images/images/channelRight_07.gif" width="128" height="4" /></td>
      </tr>
</table></div>


<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td  width="22" height="34" ><img src="userLogin/images/userLogin1_07.gif" width="22" height="34" /></td>
    <td background="userLogin/images/userLogin_top_2_07.gif">会员登录</td>
    <td width="22" height="34" ><img src="userLogin/images/userLogin_top_3_07.gif" width="22" height="34" /></td>
  </tr>
  <tr>
    <td align="left" valign="top"><img src="userLogin/images/userLogin_center_1_07.gif" width="22" height="186" /></td>
    <td>

    <table border="0" cellspacing="4" cellpadding="0"  width="100%" >
      <form><tr>
    <td width="26%" align="right" valign="bottom">用户名：</td>
     <td width="74%">
       
       
         <input type="text" size="16" style="border:1px #663300 outset; width:120px; height:20px;"/>      </td>
      </tr>
      <tr>
      <td align="right" valign="bottom">
      密 码：</td>
       <td><input type="text" size="16" style="border:1px #663300 outset; width:120px; height:20px;" /></td>
      </tr>
      <tr>
       <td align="right">
      验证码：</td>
       <td>
      <input type="text" size="4" style="border:1px #663300 outset; height:20px;" /><s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:handle" src="<s:property value="%{imgsoft}"/>" /></td>
      </tr>
      
      <tr>
        <td colspan="2" align="center" valign="bottom"><input type="submit"  value="会员登录"/><input value="重置" type="reset"/></td>
      </tr>
     
      <tr>
      
    <td colspan="2" align="center" valign="bottom"> <span class="STYLE8">会员注册 忘记密码 注册条款</span></td>
    </tr></form>
    </table>

    </td>
    <td valign="top" background="userLogin/images/userLogin_center_right_07.gif"><img src="userLogin/images/userLogin_center_3_07.gif" width="22" height="184" /></td>
  </tr>
  <tr>
    <td><img src="userLogin/images/userLogin_butom_right_1_07.gif" width="22" height="21" /></td>
    <td background="userLogin/images/userLoing_butom_center_2_07.gif">&nbsp;</td>
    <td><img src="userLogin/images/userLogin_buttom_last_07.gif" width="22" height="21" /></td>
  </tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td  width="22" height="34" ><img src="userLogin/images/userLogin1_07.gif" width="22" height="34" /></td>
    <td background="userLogin/images/userLogin_top_2_07.gif">商品分类</td>
    <td width="22" height="34" ><img src="userLogin/images/userLogin_top_3_07.gif" width="22" height="34" /></td>
  </tr>
  <tr>
    <td align="left" valign="top"><img src="userLogin/images/userLogin_center_1_07.gif" width="22" height="119" /></td>
    <td>
    <s:include value="listClass.jsp"/>
    
    
    </td>
    <td valign="top" background="userLogin/images/userLogin_center_right_07.gif"><img src="userLogin/images/userLogin_center_3_07.gif" width="22" height="119" /></td>
  </tr>
  <tr>
    <td><img src="userLogin/images/userLogin_butom_right_1_07.gif" width="22" height="21" /></td>
    <td background="userLogin/images/userLoing_butom_center_2_07.gif">&nbsp;</td>
    <td><img src="userLogin/images/userLogin_buttom_last_07.gif" width="22" height="21" /></td>
  </tr>
</table>
    
    
    </td>
    <td width="689" align="left" valign="top">
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="19" height="33"><img src="userLogin/images/class_top_1_11.gif" width="19" height="33" /></td>
            <td background="userLogin/images/class_top_2_11.gif"><img src="userLogin/images/NewShopTuiJian_21.gif" width="86" height="23" /></td>
            <td width="19" height="33">&nbsp;</td>
        </tr>
          <tr>
            <td background="userLogin/images/class_center_1_11.gif"><img src="userLogin/images/class_center_1_11.gif" width="19" height="33" /></td>
            <td>
            
            
            
                         <!--自定义商品列表-->
              
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
               <s:set name="pagebean" value="ShowElitProductPageBean(1,8)"/>
               
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
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><img src="userLogin/images/class_centere_3_11.gif" width="19" height="33" /></td>
            <td valign="bottom" background="userLogin/images/class_centere_5_13.gif">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
          
         
      </table>
    
    
    </td>
  </tr>
</table>

     <s:include value="buttom.jsp"/>
</body>
</html>
