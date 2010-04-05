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
    
    <script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>
</head>

<body>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
<form action="updateGoodsType.jspx" method="post">
<input type="hidden" name="typeId" value="<s:property value="jetype.typeId"/>" />
  <tbody>
  <tr>
    <td width="22%">送货方式名称：</td>
    <td width="78%"><input value="<s:property value="jetype.getTypeName()"/>" type="text" name="typeName" jVal="{valid:function (val) { if (val.length < 4) return false; else return true; }, message:'运货方式名称小于4个字符', styleType:'cover'}" /></td>
    </tr>
  <tr>
    <td>送货方式说明：</td>
    <td><textarea name="intro" cols="30" rows="8">
   <s:property value="jetype.getIntro()"/>
    </textarea></td>
  </tr>
  <tr>
    <td>运费类型：</td>
    <td><select name="chargeType" >
    <option value="1">现金</option>
    <option value="2">银行转账</option>
    <option value="3">邮局汇款</option>
    </select></td>
  </tr>
  <tr>
    <td>当客户不说明时默认：</td>
    <td>不做为默认：<input type="radio" name="isDefault" value="0" checked />  做为默认选项：<input type="radio" name="isDefault" value="1"/></td>
  </tr>
  <tr>
    <td>是否启用该运货方式：</td>
    <td>不启用该方式：
      <input type="radio" name="isDisabled" value="0"  />  
      启用该送货方式：
      <input type="radio" name="isDisabled" value="0" checked/></td>
  </tr>
  <tr>
    <td>最小运费</td>
    <td><input name="chargeMin" type="text" size="4" value="<s:property value="jetype.getChargeMin()"/>" /></td>
  </tr>
  <tr>
    <td>最大运费</td>
    <td><input name="chargeMax" type="text" size="4" value="<s:property value="jetype.getChargeMax()"/>" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="提交" /></td>
  </tr>
  </tbody>
  </form>
</table>


<s:include value="button.jsp"/>

</body>
</html>
