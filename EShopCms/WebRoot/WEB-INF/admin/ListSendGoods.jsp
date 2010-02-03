<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->



   <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
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
<font color="#FF0000"><s:property value="getErrMsg()"/></font>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

      
      <thead>  <tr>
        <th  >送货方式名称</th>
        <th  >简单介绍</th>
        <th >费用支付方式</th>
        <th >是否启用</th>
        <th >是否默认送货方式</th>
    <th  >最小运费</th>
    <th  >最大运费</th>
    <th  >删除</th>
    <th  >修改</th>
  </tr></thead>
  
  <tbody>
  <s:iterator value="listty">
  <tr>
    <td><s:property value="getTypeName()"/></td>
    <td><s:property value="getIntro()"/></td>
    <td>
    <s:set name="ztype" value="getChargeType()"/>

    <s:property value="returnchargName(#ztype)"/>
    &nbsp;</td>
    <td> <s:set name="isd" value="getIsDisabled()"/>
    <s:if test="#isd==1">
   目前启动    </s:if>
    <s:if test="#isd==0">
    目前不启动    </s:if></td>
    <td><s:set name="isd" value="getIsDefault()"/>
    <s:if test="#isd==1">
    默认方式    </s:if>
    <s:if test="#isd==0">
    非默认方式    </s:if>    </td>
    <td>
   <s:property value="getChargeMin()"/>   </td>
    <td> <s:property value="getChargeMax()"/></td>
    <td><a href="deleteGoodsType.jspx?typeId=<s:property value="getTypeId()"/>" ><img border="0" src="imgs/openpro_10.jpg"></a></td>
    <td><a href="findGoodsType.jspx?typeId=<s:property value="getTypeId()"/>" ><img  border="0" src="imgs/openpro_09.jpg"></a></td>
  </tr>
  </s:iterator>
 </tbody>
</table>


<s:include value="button.jsp"/>

</body>
</html>
