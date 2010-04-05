<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
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
        <th class="nosort" >编号</th>
        <th >会员组名称</th>
        <th >【录入】</th>
        
         
      </tr>
      
      </thead>
     <tbody>
      
     
 
   <s:iterator value="#request.users" status="user">
   <tr>
   <s:if test="(#user.index)%2==0">
   显示偶列的数值
   ${user.index}<br>
   </s:if>
   <s:else>
   显示奇列的数值
   ${user.index}
    hello:用户名：<s:property value="%{getUserName()}"/>  密码：<s:property value="%{getPassWord()}"/><br>
   </s:else>
   
   
  </tr>
   </s:iterator>
 </tbody></table>
   <s:bean name="com.jspx.ado.userinfo.userDao" id="userdao"></s:bean>
   
   <s:iterator value="#userdao.findAll()" status="users" >
   
   <table border=12><tr><td>
 
    <s:property value="%{display()}"/>
   <a href="<s:property value="%{getUserName()}"/>"><s:property value="%{getUserName()}"/></a> 
   </td></tr></table>
   <br>
   </s:iterator>
    显示迭代：
  </body>
</html>
