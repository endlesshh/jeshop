
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
     <a href="channel_<s:property value="curChannel.getChannelId()"/>.html" ><s:property value="curChannel.getChannelName()"/>  </a>>>
   <s:property value="curClass.getClassName()"/>
    
    
      </td>
  </tr>
</table>

<table width="980" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
        <s:set name="channelId" value="getChannelId()"/>
      <s:set name="classId" value="getClassId()"/>
  <s:set name="channel" value="getChannelId()"/>
    <td> <s:property escape="false" value="ShowPhoto(#channel,#classId,8,10,120,120,10,0,0,0,0,'','','showPhoto.jsp')"/></td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="250" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="28" height="19">&nbsp;</td>
        <td width="705" background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" >&nbsp;</td>
      </tr>
      <tr>
        <td width="28" height="141" valign="top">&nbsp;</td>
        <td align="left" valign="top" background="images/images/buttons_03.gif"><span class="STYLE6">手机分类</span>
          <div style="height:470px;"> 
          
         
         
         
         
         <table width="100%">
      <!--注意获取ID-->

      <s:iterator value="ChannelClass(1,0)" status="clist">
      <tr>
      <td>+</td><td style="padding:3px; font-size:14px; color:#FF0000;">
    <a title="header=[] body=[<s:property value="getMetaDescription()"/>]" href="ShowClass_<s:property value="getClassId()"/>.html?showClass.jsp">
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
           <a href="ShowClass_<s:property value="getClassId()"/>.html?showClass.jsp">
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
    </table>
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="28" height="19">&nbsp;</td>
        <td width="705" background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" >&nbsp;</td>
      </tr>
      <tr>
        <td width="28" height="141" valign="top">&nbsp;</td>
        <td align="left" valign="top" background="images/images/buttons_03.gif"><span class="STYLE6">本站综合导读 </span>
          <div style="height:200px;"> <div> <s:property escape="false" 
                            value="%{showNews(0,0,18,6,1,'',0,0,'',0,'','News_Consultants1.jsp',0,'')}"/></div>   </div>          </td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
<tr></tr>
    </table>
    
    
    </td>
    <td width="689" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="26" height="19">&nbsp;</td>
        <td width="705" background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" >&nbsp;</td>
      </tr>
      <tr>
        <td width="26" height="141" align="left" valign="top">&nbsp;</td>
        <td align="center" valign="top" background="images/images/buttons_03.gif"><span class="STYLE3">
         
         <div>
         
         <div> <s:set name="tradId" value="getTradId()"/>
         <s:set name="trad" value="getTradDetail(#tradId)"/>
         <p align="center">
         <s:property value="#trad.trademarkName"/>
         </p>
          <p align="center"> 
        <img src="../upfile/<s:property value="#trad.trademarkPhoto"/>"/>  </p>
          <p align="center"> <s:property value="#trad.trademarkIntro"/></p>
         
        

         
         
         </div>
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="124" height="4">&nbsp;</td>
        <td style="background-repeat:repeat-x; background-position:center;" background="images/images/chanenelCenterBG_07.gif">&nbsp;</td>
        <td  width="128" height="4">&nbsp;</td>
      </tr>
    </table></div>
        
        
        
        
 <!--自定义商品列表-->
 <div style="height:22px; border-bottom:2px #FF0000 outset;">
   <li>该品牌下的所有商品</li>
 </div>
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
           
                <s:iterator value="getProductByTrad(#tradId)" status="jp" >
                 
                <s:if test="(#jp.index)%4==0">
               <tr>
                </s:if>
                
   
                   <td>
                   
                   
                   <table width="90%" border="0" cellspacing="2" cellpadding="0" style="padding:3px; ">
  <tr>
    <td align="center">
    <div style="padding:3px;  background-repeat:no-repeat;">
    <a  href="ShowProduct_<s:property value="getProductId()"/>.html?showProduct.jsp">  
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

        
        
        </span>
        
        
        
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
  </tr>
</table>
<div style="height:22px;border-bottom:2px #FF0000 outset;"">
   <li>所有品牌</li>
 </div>
<table><tr>
<td>
<s:iterator value="listTrad()">

   <!--品牌专区-->
   <div style="float:left" >
   <div >
   <a href="ShowTrad_<s:property value="getTrademarkId()"/>.html?ShowTrad.jsp">
   <img width="160" border=0 height="70" style="border:1px #ececec outset; margin:2px;" src="../upfile/<s:property value="getTrademarkPhoto()"/>"/>
   </a>
   </div>
   <div >
   <s:property value="getTrademarkName()"/>
   </div>
   </div>
</s:iterator>
</td>
</tr></table>


     <s:include value="buttom.jsp"/>
</body>
</html>
