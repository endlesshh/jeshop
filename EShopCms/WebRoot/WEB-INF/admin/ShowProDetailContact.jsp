<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:100%; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
.sortable th {background:url(images/header-bg.gif); height:25px; text-align:left; color:#cfdce7; border:1px solid #fff; border-right:none; font-size:12px;
text-align:center; vertical-align:middle;}
.sortable th h3 {font-size:10px; padding:6px 8px 8px}
.sortable td {padding:4px 6px 6px; border-bottom:1px solid #c6d5e1; border-right:1px solid #c6d5e1}
.sortable .head h3 {background:url(images/sort.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .desc, .sortable .asc {background:url(images/header-selected-bg.gif)}
.sortable .desc h3 {background:url(images/desc.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .asc h3 {background:url(images/asc.gif) 7px  center no-repeat; cursor:pointer; padding-left:18px}
.sortable .head:hover, .sortable .desc:hover, .sortable .asc:hover {color:#fff}
.sortable .evenrow td {background:#fff}
.sortable .oddrow td {background:#ecf2f6}
.sortable td.evenselected {background:#ecf2f6}
.sortable td.oddselected {background:#dce6ee}

#controls {width:980px; margin:0 auto; height:25px}
#perpage {float:left; width:200px}
#perpage select {float:left; font-size:11px}
#perpage span {float:left; margin:2px 0 0 5px}
#navigation {float:left; width:580px; text-align:center}
#navigation img {cursor:pointer}
#text {float:left; width:200px; text-align:right; margin-top:2px}


body,td,th {
	font-size: 12px;
}
a:link {
	color: #666666;
}
a:visited {
	color: #666666;
}
a:hover {
	color: #666666;
}
a:active {
	color: #666666;
}
</style>
</head>

<body>
          <s:url id="deleurl" value="/admin/deleProduct.jspx">
            <s:param name="product.productId">
              <s:property  value="product.productId"/>
            </s:param>
          </s:url>
          <s:url id="seturl" value="/admin/initMod.jspx">
            <s:param name="product.productId">
              <s:property  value="product.productId"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="product.channelId"/>
            </s:param>
          </s:url>
           <s:set name="pid" value="product.productId"/>
           
           <div align="center"> <input type="button" value="返回商品列表" onClick="window.location.href='ListProduct.jspx?channelId=<s:property value="product.channelId"/>'" /> <input onClick="window.location.href='initMod.jspx?product.productId=<s:property value="product.productId"/>&channelId=<s:property value="product.channelId"/>'"  type="button" value="修改商品" /><input onClick="window.location.href='deleProduct.jspx?product.productId=<s:property value="product.productId"/>&channelId=<s:property value="product.channelId"/>'" type="button" value="删除商品" /><input  onClick="window.location.href='initSetProduct.jspx?productId=<s:property  value="%{product.getProductId()}"/>&channelId=<s:property value="%{product.getChannelId()}"/>'" type="button" value="商品设置" /></div>
           
<form action="setProductContact.jspx" method="post">
    <input type="hidden" name="productId" value="<s:property  value="product.productId"/>"/>
     <input type="hidden" name="channelId" value="<s:property value="product.channelId"/>"/>
<table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
    <thead>
      <tr>
    <th colspan="2">相关商品修改</th>
    </tr>
 <s:iterator value="getProductContact(#pid)">
  <tr>
    <td title="">
   <input type="text" value="<s:property value="getProductId()"/>" size="3" />商品名称: <input type="text" value="<s:property value="getProductName()"/>" size="30" /> </td>
    <td>&nbsp;浏览次数：<s:property value="getHits()"/></td>
  </tr>
  </s:iterator>
 
  <tr>
    <td colspan="2">  <textarea onClick="var rval=window.showModalDialog('ListProductSimple.jspx?channelId=<s:property value="getChannelId()"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:500px');if(rval!=null){
  
    var str = this.value;
    if(str.length<=0)
    {
    this.value=rval
    }else
    {
    this.value=this.value+','+rval;
    }

    }" name="contactStr" id="contactStr" cols="40" rows="5"><s:property value="product.getContactStr()"/></textarea>
   <br>
      <input type="button" value="选择相关内容" onClick="var rval=window.showModalDialog('ListProductSimple.jspx?channelId=<s:property value="getChannelId()"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:500px');if(rval!=null){
  
    var str = document.getElementById('contactStr').value;
    if(str.length<=0)
    {
    document.getElementById('contactStr').value=rval
    }else
    {
    document.getElementById('contactStr').value=document.getElementById('contactStr').value+','+rval;
    }

    }"  /></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" value="保存" />    </td>
  </tr>
</table>


</form>

<s:include value="button.jsp"/>

</body>
</html>
