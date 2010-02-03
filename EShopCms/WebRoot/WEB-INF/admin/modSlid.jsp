<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
</style><s:head/>

</head>

<body>
<input type="button" value="添加新的幻灯" onclick="window.location.href='addSlid.jsp'"><input type="button" value="管理首页幻灯图片" onclick="window.location.href='listSlid.jspx'">


  

    <script language="javascript">
    function checksub()
    {
   
    if(document.getElementById("user").value.length<=0)
    {
    alert('幻灯文件的名称不可以为空');
    document.getElementById("user").focus();
    return false;
    }
    if(document.getElementById("pass").value.length<=0)
    {
    alert('幻灯文件的地址不可以为空');
    document.getElementById("pass").focus();
    return false;
    }
    if(document.getElementById("link").value.length<=0)
    {
    alert('幻灯文件的链接地址不可以为空');
    document.getElementById("link").focus();
    return false;
    }
    if(document.getElementById("filename").value.length<=0)
    {
    alert('请您上传幻灯文件的图片！调整好比例');
    document.getElementById("filename").focus();
    return false;
    }
    }
    
    </script>
     <s:form action="update.jspx" method="post" onsubmit="return checksub()" >
    <s:label  value="添加首页幻灯图片"></s:label>
    
    <s:textfield tooltip="幻灯名称" id="user" value="%{slid.name}" label="显示幻灯的名称"  name="name">
    
    </s:textfield>
    <s:hidden name="slid.huanId" ></s:hidden>
    <s:textfield tooltip="幻灯显示文本文字" id="pass" label="幻灯显示文本文字" name="text" value="%{slid.text}"></s:textfield>
    <s:textfield tooltip="幻灯链接地址" id="link" label="幻灯显示图片链接地址" name="linkUrl" value="%{slid.linkUrl}"></s:textfield>
    <s:token></s:token>
    <s:textfield 
   id="filename"
   			label="请上传幻灯显示的图片"
   			name="filename"
   			required="true"
   			value="%{slid.getPicUrl()}"
   			size="60"/>
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
   
            
            
             <s:submit  value="确认添加"></s:submit>
    </s:form>
    
    
    
    
    
    
    
<s:include value="button.jsp"/>
</body>
</html>
