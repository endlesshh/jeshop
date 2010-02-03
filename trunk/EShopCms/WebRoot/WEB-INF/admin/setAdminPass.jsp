<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<s:head/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
<script language="javascript">
    function checksub()
    {
    if(document.getElementById("user").value.length<=0)
    {
    alert('管理员旧密码不可以为空');
    document.getElementById("user").focus();
    return false;
    }
    if(document.getElementById("pass").value.length<=0)
    {
    alert('新密码不可以为空');
    document.getElementById("pass").focus();
    return false;
    }
    if(document.getElementById("pass").value!=document.getElementById("pass1").value)
    {
    alert('您两次输入的密码不相同');
    document.getElementById("pass").focus();
    return false;
    }
    }
    
    </script>

   <font color=#ff0000>
    <s:property value="getErrMsg()"/>
    
    </font>
      <s:form action="setAdminPass.jspx" method="post" onsubmit="return checksub()">
    <s:label  value="修改管理员密码"></s:label>
    <s:textfield tooltip="输入管理员旧密码称" id="user" label="输入管理员旧密码" name="oldPass"></s:textfield>
    <s:textfield tooltip="输入管理员新密码" id="pass" label="输入管理员新密码" name="newPass"></s:textfield>
    <s:textfield  tooltip="再次输入管理员新密码" id="pass1" label="再次输入管理员新密码" name="newPass1"></s:textfield>
    
            
            
             <s:submit  value="确认修改密码"></s:submit>
    </s:form>
<s:include value="button.jsp"/>
</body>
</html>
