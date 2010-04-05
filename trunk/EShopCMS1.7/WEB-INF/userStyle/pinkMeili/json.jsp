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
.proclassList{
width:194px;
height:42px;
margin:3px;

background-image:url(<s:property value="getStyleName()"/>/images/fenlei_03.gif);}
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
a.chanenllink:link {
	text-decoration: none;
	color:#333333;
}
a.chanenllink:visited {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenllink:hover {
	text-decoration: none;
	color: #CC9900;
}
a.chanenllink:active {
	text-decoration: none;
	color: #006633;
}
a {
	font-size: 12px;
	color: #006600;
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
-->
</style>
<link rel="stylesheet" type="text/css" href="../jQuery/grid/css/flexigrid/flexigrid.css" />
</head>

<body>

<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery.cookie.js"></script>
<script type="text/javascript" src="../jQuery/thickbox.js">
</script>
<script type="text/javascript" src="../jsFunction/usercart.js"></script>
<script type="text/javascript" src="../jQuery/grid/flexigrid.js"></script>

<script type="text/javascript">
function show(){
$.ajax({
		type: "get",
		url: "ShowProduct_Json.jspx?proID=452",
		beforeSend: function(XMLHttpRequest){
			
		},
		success: function(data, textStatus){
			
			$("#show").html(data);
		},
		complete: function(XMLHttpRequest, textStatus){
			
		},
		error: function(){
			
		}
});
}
</script>
<input type="button" value="获取数据"  onclick="show()"/>
<div id="show"></div>
<div>

<script type="text/javascript">
// 各种属性解释：都在 flexgrid.js里
			$("#flex1").flexigrid
			(
			
			{
			url: 'ShowProduct_Json.jspx?proID=452',
			dataType: 'json',
			colModel : [
				{display: '编号', name : 'id', width : 60, sortable : true, align: 'center'},
				{display: '姓名', name : 'name', width : 120, sortable : true, align: 'left'},
				{display: '密码', name : 'iso3', width : 120, sortable : true, align: 'left', hide: true},
				{display: '年龄', name : 'managename', width : 120, sortable : true, align: 'left'},
				{display: '住址', name : 'data', width : 120, sortable : true, align: 'left'},
				{display: '样式练习', name : 'data', width : 120, sortable : true, align: 'left'}
				],
			buttons : [
				{name: '增加', bclass: 'add', onpress : test},
				{name: '删除', bclass: 'delete', onpress : test},
				{separator: true}
				],
			searchitems : [
				{display: '姓名', name : 'username', isdefault: true},
				{display: '住址', name : 'address'}
				],
			sortname: "id",
			sortorder: "asc",
			usepager: true,
			title: '人员管理',
			useRp: true,
			rp: 10,
			showTableToggleBtn: true,
			width: 600,
			height: 300
			}
			);
			function test(com,grid)
			{
				if (com=='删除')
					{
					   	confirm('是否删除这 ' + $('.trSelected',grid).length + ' 条记录吗?')
					}
				else if (com=='增加')
					{
						alert('增加一条！');
					}			
			}
		/*
		$('b.top').click
		(function (){
			$(this).parent().toggleClass('fh');
				});
	    */
</script>
</div>
<div class="bborderx">
<table id="flex1" style="display:none"></table>
</div>
</body></html>