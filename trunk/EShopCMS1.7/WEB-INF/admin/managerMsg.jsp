<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
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
	editor = $('#content').xheditor(true,{tools:'simple',upImgUrl:"uptofile.jspx",upFlashUrl:"uptofile.jspx",uploadUrl:"uptofile.jspx",uploadExt:"swf,jpg,jpeg,gif,png"})[0].xheditor;
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
function urlUpdate()
{
  //document.getElementById(idName).src=url;
 // document.frames('ifrmname').location.reload();
}
			

	
</script>
<title><s:property value="#session.recode" /></title>
 <style>
* {margin:0; padding:0; outline:none}


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
	text-decoration: none;
}
a:visited {
	color: #666666;
	text-decoration: none;
}
a:hover {
	color: #666666;
	text-decoration: none;
}
a:active {
	color: #666666;
	text-decoration: none;
}
#showMsgTop span{ width:80px; height:25px; padding:3px; margin:1px;
text-align:center; border:1px #CCCCCC outset; border-bottom:0px; cursor:hand; padding-top:5px;}
#showMsgTop div{ height:25px;
text-align:center; border-top:1px #CCCCCC outset; padding-top:5px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><body>


<div id="showMsgTop">
<span id="showTitle1" onClick="javascript:ShowLayers('showTitle','content',1,5);"><a href="SendMsg.jspx" target="ifrmname1">发送消息</a></span><span id="showTitle2" onClick="javascript:ShowLayers('showTitle','content',2,5);" style="background-color:#CCCCCC;"><a href="ListReceveMsg.jspx" target="ifrmname2">收件箱</a></span><span id="showTitle3" onClick="javascript:ShowLayers('showTitle','content',3,5);"><a href="listSendMsg.jspx" target="ifrmname3">发件箱</a></span><span id="showTitle4" onClick="javascript:ShowLayers('showTitle','content',4,5);"><a href="listConMsg.jspx" target="ifrmname4">公共消息</a></span><span id="showTitle5" onClick="javascript:ShowLayers('showTitle','content',5,5);"><a href="listDelMsg.jspx" target="ifrmname5">垃圾箱</a></span>
<div id="content1" style="display:none;">
<iframe src="SendMsg.jspx" scrolling="no" name="ifrmname1" width="100%" height="500px;" ></iframe>
</div>
<div id="content2">
<iframe src="ListReceveMsg.jspx" name="ifrmname2" id="scon2" scrolling="no"  width="100%" height="500px;" ></iframe>
</div>



<!--style="display:none;"-->
<div id="content3" style="text-align:left; display:none;" >
<iframe src="listSendMsg.jspx" name="ifrmname3" scrolling="no"  width="100%" height="500px;" ></iframe>


</div>
<div id="content4" style="display:none;"><iframe name="ifrmname4" src="listConMsg.jspx" scrolling="no"  width="100%" height="500px;" ></iframe></div>


<div id="content5" style="display:none;">
<iframe src="listDelMsg.jspx" scrolling="no"  name="ifrmname5" width="100%" height="500px;" ></iframe>


</div>



</div>


</div>



<s:include value="button.jsp"/>
</body>
</html>
