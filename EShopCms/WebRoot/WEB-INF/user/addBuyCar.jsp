<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title></title>
    
    <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
    </style>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
   

<script type="text/javascript" src="../jsFunction/tiny_mce.js">
		</script>
<script language="javascript" src="js/htmleditor.js">
</script>
    
    
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2"> 加入收藏夹</td>
  </tr>
  <tr>
    <td width="25%">商品信息：</td>
    <td width="75%">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">以上商品已经被您选中！是否加入到您的收藏夹中</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
    <s:url id="addfav" value="/user/addFav.jspx">
    <s:param name="user.userId">6</s:param>
    <s:param name="product.productId">39</s:param></s:url>
    <s:a href="%{addfav}" ><img src="../configfile/btn_fav.gif" width="108"  border="0" height="28"></s:a></td>
  </tr>
</table>


</body>
</html>
