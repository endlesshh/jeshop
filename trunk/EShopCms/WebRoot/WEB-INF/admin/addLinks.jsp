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

  <s:form action="/admin/addLinks.jspx" method="post">

            <s:radio
            tooltip="友情链接的类型"
            label="选择友情链接的类型"
            list="#{'0':'文字链接（链接以文字的类型出现）', '1':'图片链接，该链接以图片类型出现'}"
            name="jelinks.linkType"
            listKey="key"
            listValue="value" 
            value="0"/>    
     
            <s:textfield 
            size="40"
            label="填写网站名称" 
            name="jelinks.siteName"
            tooltip="填写网站名称"
            required="true"
            value="网站的名称"
            onfocus="this.value=''"
            />  
            
            
            <s:textfield 
            label="填写网站地址" 
            name="jelinks.siteUrl"
            tooltip="填写网站地址"
            required="true"
            value="http://"
            size="60"/>   
            
            <s:textfield 
            label="填写网站介绍" 
            name="jelinks.siteIntro"
            tooltip="填写网站介绍"
            required="true"
            size="60"/>
            
            <s:textfield 
            label="填写网站标志" 
            name="jelinks.logoUrl"
            tooltip="填写网站标志"
            required="true"/>
            
            
            <!-- 请填写网站的标志 上传网站的标志 上传后的地方填入到filename中 -->
             <s:textfield 
            id="filename"
   			label="请上传网站标志显示的文件"
   			name="filename"
   			required="true"
   			
   			size="60"
   			/>
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="50" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
            
            
            
            <s:textfield 
            label="填写站长名称" 
            name="jelinks.siteAdmin"
            tooltip="填写站长名称"
            required="true"/>
            
            <s:textfield 
            label="填写站长邮箱" 
            name="jelinks.siteEmail"
            tooltip="填写站长邮箱"
            required="true"/>
            
            <s:textfield 
            label="初始密码" 
            name="jelinks.sitePassword"
            tooltip="初始密码"
            required="true"
            value="123456"/> 
            
            
            <s:radio
            tooltip="推荐星级"
            label="请选择推荐星级 星级是网站的推荐的热度"
            list="#{'0':'普通网站', '1':'一星级网站', '2':'二星级网站', '3':'三星级网站', '4':'四星级网站'}"
            name="jelinks.stars"
            listKey="key"
            listValue="value" 
            value="0"/>

            
            <s:textfield 
            label="排序" 
            name="jelinks.orderId"
            tooltip="排序"
            required="true"
            value="0"
            size="3"/>
            
            
            <s:radio
            tooltip="是否通过"
            label="是否通过！"
            list="#{'0':'不通过', '1':'通过'}"
            name="jelinks.passed"
            listKey="key"
            listValue="value" 
            value="0"/>
            
            
            
            
            <s:radio
            tooltip="是否推荐"
            label="是否推荐！"
            list="#{'0':'不推荐', '1':'推荐'}"
            name="jelinks.elite"
            listKey="key"
            listValue="value" 
            value="0"/>    
                      
            <s:submit  value="更新友情设置"></s:submit>
            </s:form>

<s:include value="button.jsp"/>

</body>
</html>
