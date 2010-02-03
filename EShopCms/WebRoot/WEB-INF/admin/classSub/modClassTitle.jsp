<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

 <script type="text/javascript" src="js/keyS.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
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


<div><a href="listSubClassTitle.jspx?classId=<s:property value="getClassId()"/>">返回题目列表</a></div>        
       
<form method="post" action="modSubClassTitle.jspx">
<table  border="0" cellpadding="0" cellspacing="0" id="addSubTitle" class="sortable" >

<input type="hidden" name="Id" value="<s:property value="getId()"/>" />  
<input type="hidden" name="ClassId" value="<s:property value="getClassId()"/>" />
      <tr>
      <td>题目名称：<input type="text" size="30" name="title" value="<s:property value="%{jet.getTitle()}"/>" /> 
      
      <s:set name="tp" value="%{jet.getType()}"/>
      
      单选<input type="radio" <s:if test="#tp==0">checked</s:if> name="type" value="0" />
      多选<input type="radio" <s:if test="#tp==1">checked</s:if> name="type" value="1" />
      单选附带简答<input type="radio" <s:if test="#tp==2">checked</s:if> name="type" value="2" />
      多选附带简单<input type="radio" <s:if test="#tp==3">checked</s:if> name="type" value="3" />
      简答<input type="radio" <s:if test="#tp==4">checked</s:if> name="type" value="4" />
      
      
      总分值：<input type="text" name="allNum" size="8"  value="<s:property value="%{jet.getAllNum()}"/>"/> 
      
      <input type="submit" value="确认修改" />
   
      </td> 
      </tr>
      </table>
</form>


        
        
      
<s:include value="button.jsp"/>
</body>
</html>
