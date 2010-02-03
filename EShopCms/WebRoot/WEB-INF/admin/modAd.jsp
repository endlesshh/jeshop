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
</style>
</head>

<body>

  <s:form action="/admin/modAd.jspx" method="post">
  
  <s:hidden name="channelId" value="%{#request.channelID}"></s:hidden>
  <s:hidden name="jead.channelId" value="%{#request.channelID}"></s:hidden>
  <s:hidden name="jead.Id" value="%{#request.Id}"></s:hidden>
  
  <s:textfield 
            label="填写广告的名称" 
            name="jead.ShowName"
            tooltip="填写广告的名称"
            required="true"
            value="%{jead.getName()}"/>
            
  <s:textfield 
            label="广告宽" 
            name="jead.wide"
            tooltip="广告宽" 
            value="%{jead.getWide()}"/>
            
            <s:textfield 
            label="广告高" 
            name="jead.high"
            tooltip="广告高" 
            value="%{jead.getHigh()}"/>
          
         
           
             <s:textfield 
            label="地址" 
            name="jead.url"
            tooltip="填写广告地址" 
            value="%{jead.getUrl()}"/>
          <tr><td colspan="2" align="center">
               
        
           <s:textfield 
            label="链接" 
            name="jead.linkUrl"
            tooltip="链接" 
            value="%{jead.getLinkUrl()}"/>
              <s:textfield 
   id="filename"
   			label="广告的的形象图片"
   			name="filename"
   			required="true"
   			value="%{jead.getUrl()}"
   			size="40"
           />
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>    
         
            <s:radio
            tooltip="时候显示广告"
            label="当前广告时候显示！显示选择0，否则选择1"
            list="#{'0':'显示广告', '1':'不显示广告'}"
            name="jead.shows"
            listKey="key"
            listValue="value" 
             value="%{jead.getShow()}"
            />
            

            
         
            <s:submit  value="更新频道设置"></s:submit>
            
            
            </s:form>

<s:include value="button.jsp"/>

</body>
</html>
