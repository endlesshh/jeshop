<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <s:head/>
</head>

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
<font color=#ff0000>注意：上传单一图片请选择其中一个就可以了</font>
<table width="100%" border="00" cellspacing="1" cellpadding="0" style="border:0px #0099FF inset">
  <tr>
    <td width="31%"><table width="100%" border="0" cellspacing="1" cellpadding="0" style="border:0px #0099FF doble;">
      <tr>
        <td width="100%" height="25" align="center"  >
        <s:form method="post" name="uploadForm" action="upfile.jspx"
        enctype="multipart/form-data" onsubmit="return check();"
        theme="simple">
        选择文件:<input type="file" name="uploadFile" /><br>选择文件:<input type="file" name="uploadFile" /><br>选择文件:<input type="file" name="uploadFile" /><br>选择文件:<input type="file" name="uploadFile" /><br>
      选择文件:<input type="file" name="uploadFile" /><br><s:submit value="上传组图" />
    </s:form>
        
        
       </td>
      </tr>
     
        <!--显示二级栏目的地方-->
        <tr>
          <td align=center >      </td>
        </tr>

    </table></td>
  </tr>
  <tr>
    <td colspan="10" bgcolor="#0099FF"></td>
  </tr>
</table>
</body>
</html>
