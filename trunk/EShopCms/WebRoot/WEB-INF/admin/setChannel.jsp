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
 <!--  
显示指定频道:<s:property value="jechan" />:<s:property value="jechan.getChannelId()" />
-->


  
  <s:form action="/admin/setChannel.jspx" method="post">
  <s:hidden name="channelId" value="%{jechan.getChannelId()}"></s:hidden>
   <s:radio
            tooltip="频道是否使用"
            label="是否开通当前频道"
            list="#{'0':'使用开通当前频道', '1':'关闭当前频道不再使用'}"
            name="disabled"
            listKey="key"
            listValue="value" 
            value="%{jechan.getDisabled()}"
            />
           
            <s:radio
            tooltip="当前频道"
            label="是否需要在新的窗口打开链接"
            list="#{'0':'新窗口打开链接', '1':'原来的窗口打开链接'}"
            name="openType"
            listKey="key"
            listValue="value" 
            value="%{jechan.getOpenType()}"
           />
            
            
           <s:radio
            tooltip="当前频道"
            label="当前频道显示名称！开通当前频道选择0，否则选择1"
            list="#{'0':'开通当前频道', '1':'关闭当前频道'}"
            name="showName"
            listKey="key"
            listValue="value" 
            value="%{jechan.getShowName()}"
           />
            
             <s:radio
            tooltip="是否显示频道名称"
            label="是否显示频道名称在导航位置"
            list="#{'0':'开通当前频道', '1':'关闭当前频道'}"
            name="showNameOnPath"
            listKey="key"
            listValue="value" 
            value="%{jechan.getShowNameOnPath()}"
            />
            <s:submit  value="更新频道设置"></s:submit>
            </s:form>

<s:include value="button.jsp"/>

</body>
</html>
