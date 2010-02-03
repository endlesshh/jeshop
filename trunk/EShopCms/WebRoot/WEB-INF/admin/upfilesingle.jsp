<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <s:head/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
<style>
body{
font-size:12px;
}
</style>



<table><tr><td><div id="showPic"></div></td><td> <s:form method="post" id="fm"  name="uploadForm" action="/admin/upfilesingle.jspx"
        enctype="multipart/form-data" onsubmit="return check();"
        theme="simple">
        <input type="file" name="myFile" onChange="document.getElementById('fm').submit()" lable="选择后上传" onSelect=""/>
    
    </s:form></td></tr></table>
       
<script language="javascript">
<s:set name="fn" value="getFileName()"></s:set>
<s:if test="#fn!=null">
parent.document.getElementById("filename").value='<s:property value="getFileName()"/>';
document.getElementById('showPic').innerHTML='<img width=120 height=60 src=../upfile/<s:property value="getFileName()"/>  >';
</s:if>



function check()
{
if(document.getElementById("myFile").value==null)
{
return false;
}
return true;
}
</script>
</body>
</html>
