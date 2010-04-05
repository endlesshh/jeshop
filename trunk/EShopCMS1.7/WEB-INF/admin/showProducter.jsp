<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title><s:property value="#session.recode" /></title>
  <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>



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

<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#mede').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<body>

<a href="listProducter.jspx" >返回列表</a>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="modProducter.jspx?channelId=<s:property value="%{producter.channelId}"/>&producter.producerId=<s:property value="%{producter.producerId}"/>&channelID=<s:property value="%{producter.channelId}"/>" >修改信息</a>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
  <thead>
      <tr>
      <th colspan="2">
      <s:property value="%{producter.producerName}"/>      </th>
    </tr>
    </thead>
    <tr>
      <td width="50">简称</td>
      <td><s:property value="%{producter.producerShortName}"/></td>
    </tr>
    <tr>
      <td>形象图片</td>
      <td>
      <s:if test="producter.producerPhoto==null">
      暂无图像
      </s:if>
      <s:else>
      <img src="../upfile/<s:property value="%{producter.producerPhoto}"/>" />
      </s:else>
      
      </td>
    </tr>
    <tr>
      <td>成立日期</td>
      <td><s:property value="%{producter.birthDay}"/></td>
    </tr>
    <tr>
      <td>地址</td>
      <td><s:property value="%{producter.address}"/></td>
    </tr>
    <tr>
      <td>邮编</td>
      <td><s:property value="%{producter.postcode}"/></td>
    </tr>
    <tr>
      <td>联系电话</td>
      <td><s:property value="%{producter.phone}"/></td>
    </tr>
    <tr>
      <td>传真</td>
      <td><s:property value="%{producter.fax}"/></td>
    </tr>
    <tr>
      <td>电子邮件</td>
      <td><s:property value="%{producter.email}"/></td>
    </tr>
    <tr>
      <td>主页网站</td>
      <td><s:property value="%{producter.homepage}"/></td>
    </tr>
    <tr>
      <td>简单介绍</td>
      <td><s:property escape="false" value="%{producter.producerIntro}"/>
      
      </td>
    </tr>
   
  </table>

<s:include value="button.jsp"/>

</body>
</html>
