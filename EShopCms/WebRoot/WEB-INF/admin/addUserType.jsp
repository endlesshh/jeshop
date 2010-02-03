<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 00px;
	margin-bottom: 0px;
}
-->
</style>
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
</head>

<body>

<table width="960" border="0" cellspacing="4" cellpadding="0" style="border:1px #0099FF outset;">
  <tr>
    <td>
   
    <table width="960" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>会员类别会员组管理</td>
  </tr>
   <tr>
    <td><table width="100%" bordercolor="#ececec" bgcolor="#ececec">
    <s:iterator value="listadmin" status="ad">
    <tr><td width="20%">管理员名称：<font color=#ff0000><s:property value="getUserName()"/></font></td><td width="22%">上次登陆时间：
      <s:property value="getUserName()"/> </td><td width="44%">是否高级管理员：
        <s:property value="getUserName()"/><td width="14%">
        <s:url id="duser" value="/admin/deleAdmin.jspx">
        <s:param name="admin.adminId">
        <s:property value="getAdminId()"/>
        </s:param>
        </s:url>
        
      <s:a href="%{duser}" onclick="return confirm('确定要删除吗?删除以后数据将无法回复')"> 删除</s:a> 
        
        
         </td> 
    </tr>
    
    </s:iterator>
    </table>
    </td>
  </tr>
</table>

    
    
    
    </td>
  </tr>
  <tr>
    <td><script language="javascript">
    function checksub()
    {
    if(document.getElementById("user").value.length<=0)
    {
    alert('用户名不可以为空');
    document.getElementById("user").focus();
    return false;
    }
    if(document.getElementById("pass").value.length<=0)
    {
    alert('密码不可以为空');
    document.getElementById("pass").focus();
    return false;
    }
    }
    
    </script>
    <s:form action="addAdmin.jspx" method="post" onsubmit="return checksub()">
    <s:label  value="添加会员组"></s:label>
    <s:textfield tooltip="名称" id="user" label="显示管理员名称" name="admin.userName"></s:textfield>
    <s:textfield  tooltip="密码" id="pass" label="显示管理员密码" name="admin.passWord"></s:textfield>
    <s:radio
            tooltip="是否包含图片"
            label="是否多人登陆"
            list="#{'0':'可以多人登陆管理', '1':'不可以多人登陆管理'}"
            name="admin.enableMultiLogin"
            listKey="key"
            listValue="value" 
            value="0"/>
            
            
             <s:submit  value="添加管理员"></s:submit>
    </s:form>
    
    
    
    </td>
  </tr>
  <tr>
    <td>&nbsp;
    
    
    
    </td>
  </tr>
</table>
<s:include value="button.jsp"/>
</body>
</html>
