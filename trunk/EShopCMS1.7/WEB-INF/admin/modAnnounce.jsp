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

   

<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#content').xheditor(true,{tools:'simple',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>
  
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
<div >
  <s:set name="jean" scope="request" value="jeannounce" />
  
  <s:form action="/admin/setAnnounce.jspx" method="post">
  
     <s:textfield 
            label="填写公告的名称)" 
            name="title"
            tooltip="填写公告的名称"
            required="true" requiredposition="left"
            value="%{jean.getTitle()}"/>
            <tr><td colspan="2" align="center"><font color=#ff0000>显示关于公告的一些信息!标识公告</font></td></tr>
            
         
            <s:select
            tooltip="请选择公告显示的频道"
            label="您的公告要在那个页面显示"
            list="chanMap"
            name="channelId"
            emptyOption="false"
            headerKey="0"
            headerValue="======默认在首页位置显示您的公告======"
            />
          
          
         
            <tr><td colspan="2" align="center"><font color=#ff0000>选择公告显示的位置！如果没有选择任何选项！将在首页位置显示公告</font></td></tr>
            
               <s:textfield 
            label="填写公告的作者)" 
            name="author"
            tooltip="填写公告的作者（发布公告者）"
            required="true" requiredposition="left"
            value="%{jean.getAuthot()}"/>
            
            <s:datetimepicker name="dateAndTime" label="显示您的公告到期的时间" value="today">
            </s:datetimepicker>
             <tr><td colspan="2" align="center"><font color=#ff0000>选择公告到期的时间！如果公告到期！会自动关闭</font></td></tr>
            
            
            <s:radio
            tooltip="是否开通当前公告"
            label="当前公告是否！开通当前公告选择0，否则选择1"
            list="#{'1':'开通当前公告', '0':'关闭当前公告'}"
            name="isSelected"
            listKey="key"
            listValue="value" 
            value="jean.getIsSelectted()"/>
          <tr><td colspan="2" align="center"><font color=#ff0000>您可以选择是否将公告开通或者关闭！如果选择关闭,公告将不显示！您可以在管理中开通</font></td></tr>
            
         <s:textarea
         id="content"
            label="添加公告的内容"
            name="content" 
            tooltip="请添加公告的内容" 
            cols="40"
            rows="15"
            value="jean.getContent()"/>
            
             <tr><td colspan="2" align="center"><font color=#ff0000>
             请添加公告的内容 您可以使用编辑器编辑公告的内容！编辑好以后可以直接点击添加公告将公告添加到内
             
             </font></td></tr>
   
      
            <s:submit  value="添加公告"></s:submit>
            
            
            </s:form>
</div>


<s:include value="button.jsp"/>

</body>
</html>
