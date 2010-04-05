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
	 <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">

var editor;
$(pageInit);

function pageInit()
{
	editor = $('#content').xheditor(true,{tools:'full',upImgUrl:"uptofile.jspx",upFlashUrl:"uptofile.jspx",uploadUrl:"uptofile.jspx",uploadExt:"swf,jpg,jpeg,gif,png"})[0].xheditor;
	}
	

		function slideToggle(){
$("#slidShow").slideToggle(500);
}

		function ShowLayers(tit,con,n,m)
{
 for(i=1;i<=m;i++)
 {
  eval(con + i).style.display="none";
  eval(tit+i).style.background="#ffffff";;
 }
 eval(tit+n).style.background="#cccccc";
 eval(con + n).style.display="";
 urlUpdate();
}		

	
</script>
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
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <thead> 
      
      <tr>
        <th colspan="2" class="nosort" >新增自定义页面</th>
    </tr>
  </thead><form action="modUserDefindPage.jspx" method="post">
     <tbody>
      <tr>
       <input type="hidden" name="id" value="<s:property value="defindPage.getId()"/>"/>
        <td class="nosort" >自定义页面名称</td>
        <td ><input type="text" name="title" value="<s:property value="defindPage.getTitle()"/>"/></td>
      </tr>
      <tr>
        <td class="nosort" >显示名称</td>
        <td ><input type="text" name="showName" value="<s:property value="defindPage.getShowName()"/>"/></td>
      </tr>
      <tr>
        <td class="nosort" >选择分类</td>
        <td >
        
        <select name="classId">
        <s:iterator value="listPageClass()">
        <option  <s:if test="getId()==defindPage.getClassId()">selected</s:if> value="<s:property value="getId()"/>"><s:property value="getName()"/></option>
        </s:iterator>
        </select>        </td>
      </tr>
      <tr>
        <td class="nosort" >页面内容</td>
        <td ><textarea id="content" name="content" cols="80" style="width:100%;" rows="20">
        
        <s:property value="defindPage.getContent()"/>
        </textarea></td>
      </tr>
      <tr>
        <td colspan="2" align="center" class="nosort" >
        
        <input type="submit" value="新增页面" />
        &nbsp;</td>
       </tr>
     </tbody>
      
      
      </form>
      </table>
<s:include value="button.jsp"/>
</body>
</html>
