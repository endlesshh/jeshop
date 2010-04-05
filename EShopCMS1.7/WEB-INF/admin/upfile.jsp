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
body,td,th {
	font-size: 12px;
}
-->
</style></head>

<body>
<style>
body{
font-size:12px;
}
</style>
<s:iterator id="files" value="filemap" status="file">
<script language="javascript">
parent.document.form.filename.value='<s:property value="#files.value"/>';
parent.document.getElementById("showimg").value =parent.document.getElementById("showimg").value + '<s:property value="#files.value"/>|';
//document.parent.title='<s:property value="#files.value"/>';
</script>
</s:iterator>

        <s:form method="post" name="uploadForm" action="upfile.jspx"
        enctype="multipart/form-data" onsubmit="return check();"
        theme="simple">
        选择文件:<input type="file" name="uploadFile" /><s:submit value="上传组图" />
    </s:form>
        
     
</body>
</html>
