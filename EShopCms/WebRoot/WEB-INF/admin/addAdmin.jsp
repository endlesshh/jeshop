<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
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
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <thead> 
      
      <tr>
        <th class="nosort" >管理员编号</th>
        <th >管理员级别</th>
        <th >管理员类型</th>
        <th >管理员权限设置</th>
        <th >【删除管理员】</th>
      </tr>
  </thead>
     <tbody>
      
     
    <s:iterator value="listalladmin()" status="ad">
    <tr><td><font color=#ff0000><s:property value="getAdminId()"/></font></td><td ><font color=#ff0000><s:property value="getUserName()"/></font></td>
      <td align="center" >
      
      <s:if test="getPurview()==0">
      普通管理员
      </s:if>
      <s:if test="getPurview()==1">
      超级管理员
      </s:if>
      </td>
      <td align="center" >
      <s:if test="getAdminId()==1">
      <font color="#FF0000">该管理员系统默认</font>      </s:if>
      <s:else>
       <a href="findAdmin.jspx?adminId=<s:property value="getAdminId()"/>">设置权限</a>      </s:else>     </td>
      <td align="center" >
    
        <s:url id="duser" value="/admin/deleAdmin.jspx">
        <s:param name="admin.adminId">
        <s:property value="getAdminId()"/>
        </s:param>
        </s:url>
        
        <s:if test="getAdminId()==1">
      <font color="#FF0000">系统默认</font>      </s:if>
      <s:else>
      <s:a href="%{duser}" onclick="return confirm('确定要删除吗?删除以后数据将无法回复')"> 删除</s:a> 
      </s:else>              </td> 
    </tr>
    </s:iterator>
    </tbody>
</table>
<script language="javascript">
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
    <div align="center">
    <font color="#FF0000"><b><s:property value="getErrMsg()"/></b></font> 
    <s:form action="/admin/addNewAdmin.jspx" method="post">
    <s:label  value="添加管理员管理"></s:label>
    <s:textfield tooltip="名称" id="userName" label="管理员名称" name="userName"></s:textfield>
    <s:textfield  tooltip="密码" id="userName" label="管理员密码" name="passWord"></s:textfield>
      <s:radio
            tooltip="是否包含图片"
            label="是否多人登陆"
            list="#{'0':'可以多人登陆管理', '1':'不可以多人登陆管理'}"
            name="enableMultiLogin"
            listKey="key"
            listValue="value" 
            value="0"/>
      <s:radio
            tooltip="是否高级管理员"
            label="是否高级管理员"
            list="#{'0':'普通管理员(资料管理)', '1':'超级管理员'}"
            name="purview"
            listKey="key"
            listValue="value" 
            value="0"/>
      
      

    <s:submit  value="添加管理员"></s:submit>
    </s:form>
    
    </div>
 
<div align="center">讯息：新版本系统中增加财务独立管理 将资料管理 系统管理 财务管理分开
    </div>
<s:include value="button.jsp"/>
</body>
</html>
