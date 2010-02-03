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

<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#cmeta').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<script type="text/javascript">
function check()
{
if(document.getElementById('cname').value.length==0)
{
alert('您的栏目名称为空');
document.getElementById('cname').focus();
return false;
}
if(document.getElementById('clink').value.length==0)
{
alert('您的栏目模板的路径为空，请填写模板路径');
document.getElementById('clink').focus();
return false;
}
if(document.getElementById('cmeta').value.length==0)
{
alert('您的栏目描述为空，请填写');
document.getElementById('cmeta').focus();
return false;
}
}
</script>


</head>

<body>
<form action="setYeePay.jspx" method="post">
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
  <thead>
  <tr>
    <th colspan="2" align="center">易宝支付设置</th>
  </tr></thead>
  <tr>
    <td colspan="2"><s:property value="getErrMsg()"/></td>
    </tr>
  <tr>
    <td width="20%">设置易宝支付商家ID：</td>
    <td width="80%"><input type="text" value="<s:property value="getYeepay_proID()"/>" name="yeepay_proID" /></td>
  </tr>
  <tr>
    <td>设置易宝支付商家安全码值：</td>
    <td><input type="text" value="<s:property value="getYeepay_keyvalue()"/>" name="yeepay_keyvalue" /></td>
  </tr>
  <tr>
    <td>是否开通易宝支付：</td>
    <td>默认开通：<input type="checkbox" checked value="1" /></td>
  </tr>
  
  
  <tr>
    <td colspan="2" align="center"><input type="submit" value="保存设置" /></td>
    </tr>
</table>
</form>
  
<form action="setYeePay.jspx" method="post" onSubmit="return false">
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
  <thead>
  <tr>
    <th colspan="2" align="center">支付宝支付设置</th>
  </tr></thead>
  <tr>
    <td colspan="2"><s:property value="getErrMsg()"/></td>
    </tr>
  <tr>
    <td width="20%">设置支付宝商家账号：</td>
    <td width="80%"><input type="text" value="" name="yeepay_proID" /></td>
  </tr>
  <tr>
    <td>设置支付宝商家安全码：</td>
    <td><input type="text" value="" name="yeepay_keyvalue" /></td>
  </tr>
    <tr>
    <td>是否开支付宝宝支付：</td>
    <td>默认不开通开通：<input type="checkbox" value="1" /></td>
  </tr>

  <tr>
    <td colspan="2" align="center"><input type="submit" value="保存设置" /></td>
    </tr>
</table>
</form>
  

<s:include value="button.jsp"/>
</body>
</html>
