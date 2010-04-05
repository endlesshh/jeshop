<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::::::::::欢迎来到<s:property value="eUserInfo.siteName"/>网站：：：：：：</title>
<style type="text/css">
<!--

-->
</style>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
.topbanner{
padding:3px;
height:20px;
text-align:right;}
.userLogon{
font-size:40px;
text-align:left;
height:80px;}
.channel
{
padding-top:10px;
height:30px;
color:#FFFFFF;}

.anounce{
width:278px;
height:302px;

background-image:url(<s:property value="getStyleName()"/>/images/showAnounce_03.gif);}
a.chanenl:link {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenl:visited {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenl:hover {
	text-decoration: none;
	color: #CC9900;
}
a.chanenl:active {
	text-decoration: none;
	color: #006633;
}
.productPicClass{
float:inherit;}
.imgbg {
background-color: #F0F0F0;
color: #555;
border: 1px solid #CECFD0;
margin-bottom: 10px;
padding-bottom: 6px;
padding-top: 10px;
text-align: center;
}
.STYLE1 {font-size: 36px}

-->
</style>


<link href="../jQuery/thickbox.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery.cookie.js"></script>
<script type="text/javascript" src="../jQuery/thickbox.js">

</script>
<script type="text/javascript" src="../jsFunction/usercart.js"></script>



</head>

<body>
<s:include value="top.jsp"/>

<s:set name="sname" value="getSProName()"/>
<s:set name="smin" value="getSminPrice()"/>
<s:set name="smax" value="getSmaxPrice()"/>
<s:set name="uid" value="getStyleUserId()"/>
<s:set name="pagebean" value="SerchPro(#uid,#sname,#smin,#smax,1)"/>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="2">
<tr>
  <td colspan="5">&nbsp;</td>
</tr>
<tr>
    <td colspan="5"><div align="center">
       
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
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
            <s:url id="firstNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
           <s:param name="page">1</s:param>
           <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param>
  </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
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
          <s:url id="nextNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
            <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
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
      </div></td>
    </tr>
<tr>
  <td colspan="5">&nbsp;</td>
</tr>


<s:iterator value="#pagebean.list">


  <tr>
    <td width="74"><img style="border:1px #FFCCFF outset; padding:2px;" title="header=[] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'/>]"  src="../upfile/<s:property value="getProductThumb()"/>" width="80" height="80" /></td>
    <td width="146"><s:property value="getProductName()"/></td>
    <td width="124"><img src="<s:property value="getStyleName()"/>/images/roungthreee_03.gif" /><font color="#663300"><font color="#FF0000"><b>会员价</b></font>：<s:property value="getPriceMember()"/></font></td>
    <td width="136"><font color="#663300"><img src="<s:property value="getStyleName()"/>/images/roundone_03.gif" /><font color="#FF0000"><b>零售价</b></font>：<s:property value="getPriceMarket()"/></font></td>
    <td width="228"><img title="header=[] body=[放入购物车后可以直接结算 <br> 点击打开购物车]" style="cursor:hand;" onclick="addNewPro(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>',1,'<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/gouwu_03.gif" />
    
    
<img style="cursor:hand;" title="header=[] body=[放入商品对比可以和相同的商品对比 也可以和不同的商品对比 <br> 点击打开对比框]" onclick="addDuiBi(<s:property value="getProductId()"/>,'<s:property value="getProductName()"/>',<s:property value="getPriceMember()"/>,<s:property value="getPriceMarket()"/>,<s:property value="getStyleUserId()"/>,'<s:property value="getProductThumb()"/>','<s:property value="getUnit()"/>');return false" src="<s:property value="getStyleName()"/>/images/duibi_gouwu_03.gif" />    </td>
  </tr>
</s:iterator> <tr>
    <td colspan="5"><div align="center">
       
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
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
            <s:url id="firstNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
           <s:param name="page">1</s:param>
           <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param>
  </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
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
          <s:url id="nextNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
            <s:param name="StyleUserId">
            <s:property value="getStyleUserId()"/>
  </s:param>
   <s:param name="chanlinkurl">
             <s:property value="getChanlinkurl()"/>
  </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews"  value="SerchPro.jspx">
   <s:param name="sProName"><s:property value="#sname"/></s:param>
    <s:param name="sminPrice"><s:property value="#smin"/></s:param>
     <s:param name="smaxPrice"><s:property value="#smax"/></s:param>
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
      </div></td>
    </tr>
</table>

 
    
    
    
<s:include value="buttom.jsp"/>
    
   
    

</body></html>