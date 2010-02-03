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
	color:#0066FF;
	font-weight:bold;
	text-decoration: none;
}
a:visited {
	color: #666666;
	font-weight:bold;
	text-decoration: none;
}
a:hover {
	color: #666666;
	font-weight:bold;
	text-decoration: none;
}
a:active {
	color: #666666;
	font-weight:bold;
	text-decoration: none;
}
</style>
</head>


<body>



  <!--文章类型审批审核任务处理-->
   <s:set name="news"  value="listObject"/>
   <s:set name="news"  value="listObject"/>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <thead> 
      
      <tr>
        <th colspan="2" class="nosort" ><s:property value="#news.getTitle()"/> (审核)</th>
      </tr>
  </thead>

  
  
     <tbody>
      <tr>
        <td  width="15%" >题目：</td>
        <td ><s:property value="#news.getTitle()"/></td>
      </tr>
          <tr>
        <td  width="15%" >发布时间：</td>
        <td ><s:property value="#news.getTitle()"/></td>
      </tr>
          <tr>
        <td  width="15%" >内容：</td>
        <td ><s:property value="#news.getTitle()"/></td>
      </tr>
          <tr>
        <td  width="15%" >目前状态：</td>
        <td ><s:property value="#news.getTitle()"/></td>
      </tr>
          <tr>
        <td  width="15%" >前台预览：</td>
        <td ><s:property value="#news.getTitle()"/></td>
      </tr>
          <tr>
        <td  width="15%" >审核：</td>
        <td ><s:property value="#news.getTitle()"/></td>
      </tr>
         <tr><td align="right">选择流转审核人</td><td>
    <select name="adminId">
    <s:iterator value="listAdmin()">
    <option value="<s:property value="getAdminId()"/>"><s:property value="getUserName()"/></option>
    </s:iterator>
    
    
    </select>
    
    
    </td></tr>
    <input type="hidden" name="typeString" value="jobadminarticle"/>
    <input type="hidden" name="jobType" value="jobadminType"/>
    <input type="hidden" name="sendId" value="<s:property value="#session.admin.adminId"/>"/>
  </tr>
    <s:radio
            tooltip="需要审核"
            label="需要审核"
            list="#{'0':'移交他人', '3':'回退修改','1':'本审通过','2':'终审通过','4':'结束流程'}"
            name="status"
            listKey="key"
            listValue="value" 
            value="1"/>
            
              <tr>
        <td  width="15%" >&nbsp;</td>
        <td > <input type="submit" value="提交审核结果"/></td>
      </tr>
     </tbody>
</table>
 <!--审批审核处理结束-->
<s:include value="button.jsp"/>
</body>
</html>
