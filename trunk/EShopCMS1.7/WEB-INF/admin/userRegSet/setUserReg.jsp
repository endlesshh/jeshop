<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
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

.sortable {width:980px; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
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
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
    </style>
</head>

<body>
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript"  src="../jQuery/script.js">
		</script>
<script language="javascript">
  var sorter = new TINY.table.sorter("sorter");
	sorter.head = "head";
	sorter.asc = "asc";
	sorter.desc = "desc";
	sorter.even = "evenrow";
	sorter.odd = "oddrow";
	sorter.evensel = "evenselected";
	sorter.oddsel = "oddselected";
	sorter.paginate = true;
	sorter.currentid = "currentpage";
	sorter.limitid = "pagelimit";
	sorter.init("table",1);
  </script>
  
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <thead> 
      
      <tr>
    <th colspan="2">会员注册选项</th>
    </tr>
    </thead>
  <tr>
    <td colspan="2">关于会员注册配置</td>
  </tr>
  <tr>
    <td width="245">会员注册问题(|线隔开多个选项)</td>
    <td width="731"><textarea name="UserQuery" cols="40" rows="10"></textarea></td>
  </tr>
  <tr>
    <td>会员注册选项</td>
    <td><p>用户名(<span class="STYLE1">必选</span>) <input disabled type="checkbox" checked name="email" /></p>
    <p>密码 (<span class="STYLE1">必选</span>) <input disabled type="checkbox" checked name="email" /></p>
    <p>确认密码(<span class="STYLE1">必选</span>) <input disabled type="checkbox" checked name="email" /></p>
    <p> 用户分类(<span class="STYLE1">必选</span>) <input disabled type="checkbox" checked name="email" /></p>
    <p> 密码找回问题(<span class="STYLE1">必选</span>)  <input  disabled type="checkbox" checked name="email" /></p>
    <p>会员性别 <input type="checkbox" name="email" /> </p>
    <p>真实名称 <input type="checkbox" name="email" />  </p>
    <p>身份证号 
      <input type="checkbox" name="email" /> </p>
    <p>联系手机 
      <input type="checkbox" name="email" /></p>
    <p>会员邮箱 <input type="checkbox" name="email" />  </p>
    <p>会员地址 <input type="checkbox" name="email" /> </p>
    <p>联系电话 <input type="checkbox" name="email" /></p>    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
    <input type="submit" value="保存设置信息" />
    </td>
  </tr>
</table>

  
  
  
<s:include value="button.jsp"/>
</body>
</html>
