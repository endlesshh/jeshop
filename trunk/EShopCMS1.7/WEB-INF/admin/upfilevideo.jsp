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
<script language="javascript">
parent.document.getElementById("vedioname").value='<s:property value="getFileName()"/>';
function check()
{
if(document.getElementById("myFile").value==null)
{
return false;
}
return true;
}
</script>



<table width="100%" border="0" cellspacing="1" cellpadding="0" style="border:0px #0099FF doble;">
      <tr>
      <td><div id="showPic"></div><td>
        <td  height="25" align="left"  >
        
        <s:form method="post" id="fm" name="uploadForm" action="/admin/upfilevideo.jspx"
        enctype="multipart/form-data" onsubmit="return check();"
        theme="simple">
        <input type="file"  name="myFile" lable="选择后上传" />
        <s:submit value="选择文件后上传" />
    </s:form>
        
        
       </td>
      </tr>
     

    </table>
    
    <script language="javascript">
<s:set name="fn" value="getFileName()"></s:set>
<s:if test="#fn!=null">
parent.document.getElementById("filename").value='<s:property value="getFileName()"/>';
document.getElementById('showPic').innerHTML='<img width=120 height=60 src=../upfile/<s:property value="getFileName()"/>  >';
</s:if>
</script>
</body>
</html>
