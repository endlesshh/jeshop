<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
 <base target="_self"/>
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
	editor = $('#msg').xheditor(true,{tools:'simple',upImgUrl:"uptofile.jspx",upFlashUrl:"uptofile.jspx",uploadUrl:"uptofile.jspx",uploadExt:"swf,jpg,jpeg,gif,png"})[0].xheditor;
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
}

			

	
</script>
<title><s:property value="#session.recode" /></title>
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
#showMsgTop span{ width:80px; height:25px; padding:3px; margin:1px;
text-align:center; border:1px #CCCCCC outset; border-bottom:0px; cursor:hand; padding-top:5px;}
#showMsgTop div{ height:25px;
text-align:center; border-top:1px #CCCCCC outset; padding-top:5px;}
</style>
<body>


<form action="UpdateUserMsg.jspx" method="post">
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
     
     <input type="hidden" name="userId" value="<s:property value="#session.admin.adminId"/>"/> 
     <input type="hidden" name="types" value="1"/>
      <thead>  <tr>
    <th colspan="2">发送短消息给用户</th>
    </tr>
    </thead>
  <tr>
    <td width="17%">选择用户</td>
    <td width="83%">
 
    <input id="strReceiveId" name="strReceiveId"  readonly type="text" value="<s:property value="getSpUserId()"/>" />     </td>
    </tr>
  <tr>
    <td>多人发送</td>
    <td><input type="checkbox" value="mitele" id="mitSele" />
    &nbsp;&nbsp;&nbsp;是否公共消息<input type="checkbox" value="mitele" name="isCommon" /></td>
  </tr>
  <tr>
    <td>消息内容</td>
    <td><textarea name="msg" id="msg" cols="40"  rows="10">
   消息内容
    </textarea></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="开始发送" /></td>
    </tr>
</table>
</form>
</body>
</html>
