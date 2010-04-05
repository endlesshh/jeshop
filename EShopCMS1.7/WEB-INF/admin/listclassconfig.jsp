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

<body >

<input type="button" value="返回模板系列列表" onClick="window.location.href='listtempletClass.jspx'"/>
<table  cellpadding="0" cellspacing="0" border="0" class="sortable">

      <tr>
        <td class="nosort">添加新的模板到该分类下</td>
        <td class="nosort">
      <form action="addTempFile.jspx" method="post"> 
      <input type="hidden" name="classId" value="<s:property value="getClassId()"/>" />
       <select name="type" >
        <option selected value="1">首页模板</option>
        <option value="10">图文频道首页</option>
        <option value="11">图文频道分类</option>
        <option value="12">图文频道内页</option>
        
        <option value="31">商城频道首页</option>
        <option value="32">商城分类首页</option>
        <option value="33">商城展示内页</option>
        <option value="34">商城搜索页面</option>
        
        <option value="20">软件频道首页</option>
        <option value="21">软件频道分类</option>
        <option value="22">软件频道内页</option>
        <option value="62">图片显示页面模板</option>
        <option value="41">自定义网站模板</option>
          <option value="0">其他模板</option> 

        </select>
       显示名称 <input type="text" name="showName"  />
        模板路径<input type="text" name="filePath" onFocus="this.value=window.showModalDialog('listStringfiledia.jspx?parPath=front','dialogWidth:600px;dialogHeight:600px;help:no');"  />
      描述  <input type="text" name="script"  />
        <input type="submit" value="确认提交" />
        </form>
        </td>
       
      </tr>

</table>


<table  cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">

      <tr>
        <td>
        <a href="modMuban.jspx?fileName=top.jsp">修改网站头部</a>        <a href="modMuban.jspx?fileName=buttom.jsp">修改网站底部</a>        <a href="modMuban.jspx?fileName=slidPic.jsp">直接修改模板</a> </td>
        
      </tr>
</table>


<table  cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
<thead>
      <tr>
        <th width="26%" class="nosort">模板名称/模板说明</th>
        <th width="12%" class="nosort">模板文件夹名称</th>
        <th width="12%" class="nosort">更改分类</th>
        <th width="30%" class="nosort">模板文件</th>
         <th width="20%" class="nosort">删除 编辑</th>
      </tr>
  </thead>
<tbody>
      <s:iterator value="listtempconfig">
      
       <tr>
        <td align="left" class="nosort"><s:property value="getShowName()"/>
        (<s:property value="getScript()"/>)        </td>
        <s:set name="cid" value="getClassId()"/>
       
        <td align="center" class="nosort"><s:set name="jeclass" value="getClassName(#cid)"/>
        <s:property value="#jeclass.getClassName()"/>
         <s:property value="#jeclass"/>        </td>
        <td align="left" class="nosort"><select name="select">
          <option
            <s:if test="getType()==1">selected</s:if>
            value="1"> 首页模板</option>
          <option
            <s:if test="getType()==10">selected</s:if>
            value="10">图文频道首页</option>
          <option 
            <s:if test="getType()==11">selected</s:if>
            value="11">图文频道分类</option>
          <option             <s:if test="getType()==12">selected</s:if>
            value="12">图文频道内页</option>
          <option 
            <s:if test="getType()==31">selected</s:if>
            value="31">商城频道首页</option>
          <option 
            <s:if test="getType()==32">selected</s:if>
            value="32">商城分类首页</option>
          <option
            <s:if test="getType()==33">selected</s:if>
            value="33">商城展示内页</option>
          <option 
            <s:if test="getType()==34">selected</s:if>
            value="34">商城搜索页面</option>
          <option 
            <s:if test="getType()==20">selected</s:if>
            value="20">软件频道首页</option>
          <option  
            <s:if test="getType()==21">selected</s:if>
            value="21">软件频道分类</option>
          <option 
            <s:if test="getType()==22">selected</s:if>
            value="22">软件频道内页</option>
          <option 
            <s:if test="getType()==62">selected</s:if>
            value="62">图片显示内页</option>
          <option 
            <s:if test="getType()==41">selected</s:if>
            value="41">自定义网站模板</option>
          <option 
            <s:if test="getType()==0">selected</s:if>
            value="0">其他模板</option>
        </select></td>
        <td align="left" class="nosort">
        <input style="width:100%; border:1px  #e7e7e7 outset;" type="text"
        value='<s:property value="getFilePath()"/>'   onDblClick="this.value=window.showModalDialog('listStringfiledia.jspx?parPath=front','dialogWidth:600px;dialogHeight:600px;help:no');"  />        </td>
         <td align="center" class="nosort"><s:if test="getIsDefault()!=1"><a href="deleteTempFiledettail.jspx?id=<s:property value="getId()"/>&classId=<s:property value="#cid"/>">删除</a></s:if> <a href="modMuban.jspx?fileName=<s:property value="getFilePath()"/>&classId=<s:property value="getId()"/>">编辑</a></td>
      </tr>
  </s:iterator>
  </tbody>
</table>
<s:include value="button.jsp"/>
</body>
</html>
