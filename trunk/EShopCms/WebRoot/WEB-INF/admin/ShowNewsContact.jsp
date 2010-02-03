<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head /><script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script>
var ColorHex=new Array('00','33','66','99','CC','FF')
var SpColorHex=new Array('FF0000','00FF00','0000FF','FFFF00','00FFFF','FF00FF')
var current=null

function intocolor()
{
var colorTable=''
for (i=0;i<2;i++)
 {
  for (j=0;j<6;j++)
   {
    colorTable=colorTable+'<tr height=12>'
    colorTable=colorTable+'<td width=11 style="background-color:#000000">'
    
    if (i==0){
    colorTable=colorTable+'<td width=11 style="background-color:#'+ColorHex[j]+ColorHex[j]+ColorHex[j]+'">'} 
    else{
    colorTable=colorTable+'<td width=11 style="background-color:#'+SpColorHex[j]+'">'} 

    
    colorTable=colorTable+'<td width=11 style="background-color:#000000">'
    for (k=0;k<3;k++)
     {
       for (l=0;l<6;l++)
       {
        colorTable=colorTable+'<td width=11 style="background-color:#'+ColorHex[k+i*3]+ColorHex[l]+ColorHex[j]+'">'
       }
     }
  }
}
colorTable='<table width=253 border="0" cellspacing="0" cellpadding="0" style="border:1px #000000 solid;border-bottom:none;border-collapse: collapse" bordercolor="000000">'
           +'<tr height=30><td colspan=21 bgcolor=#cccccc>'
           +'<table cellpadding="0" cellspacing="1" border="0" style="border-collapse: collapse">'
           +'<tr><td width="3"><td><input type="text" name="DisColor" size="6" disabled style="border:solid 1px #000000;background-color:#ffff00"></td>'
           +'<td width="3"><td><input type="text" name="HexColor" size="7" style="border:inset 1px;font-family:Arial;" value="#000000"></td></tr></table></td></table>'
           +'<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="000000" onmouseover="doOver()" onmouseout="doOut()" onclick="doclick()" style="cursor:hand;">'
           +colorTable+'</table>';          
colorpanel.innerHTML=colorTable
}

function doOver() {
      if ((event.srcElement.tagName=="TD") && (current!=event.srcElement)) {
        if (current!=null){current.style.backgroundColor = current._background}     
        event.srcElement._background = event.srcElement.style.backgroundColor
        DisColor.style.backgroundColor = event.srcElement.style.backgroundColor
        HexColor.value = event.srcElement.style.backgroundColor
        event.srcElement.style.backgroundColor = "white"
        current = event.srcElement
      }
}

function doOut() {

    if (current!=null) current.style.backgroundColor = current._background
}

function doclick(){
if (event.srcElement.tagName=="TD"){
//alert("选取颜色: "+event.srcElement._background)
$("#fcolor").val(event.srcElement._background);
document.getElementById("fcolor").style.backgroundColor=event.srcElement._background;
$("#colorpanel").hide();

return event.srcElement._background
}
}
</script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
var editor;
$(pageInit);
function pageInit()
{

	editor=$('#content').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"})[0].xheditor;;
	
	}
</script>

<title><s:property value="jenews" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

 <style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}
.label{font:12px Verdana,Arial;}
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
 <form action="setNewsContact.jspx" method="post">
  <s:set name="pid"  value="%{jenews.getArticleId()}"/>
    <input type="hidden" name="artId" value="<s:property  value="%{jenews.getArticleId()}"/>"/>
     <input type="hidden" name="channelID" value="<s:property value="jenews.channelId"/>"/>

<table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
    <thead>
      <tr>
    <th colspan="2">相关内容修改</th>
    </tr>
 <s:iterator value="getProductContact(#pid)">
  <tr>
    <td title="">
   <input type="text" value="<s:property value="getArticleId()"/>" size="3" />名称: <input style="width:60%;" type="text" value="<s:property value="getTitle()"/>" size="30" /> </td>
    <td>&nbsp;浏览次数：<s:property value="getHits()"/></td>
  </tr>
  </s:iterator>
 
  <tr>
    <td colspan="2">  <textarea onClick="var rval=window.showModalDialog('listSelectNews.jspx?channelID=<s:property value="getChannelID()"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:500px');if(rval!=null){
  
    var str = this.value;
    if(str.length<=0)
    {
    this.value=rval
    }else
    {
    this.value=this.value+','+rval;
    }

    }" name="contactStr" id="contactStr" cols="40" rows="5"><s:property value="jenews.getContactStr()"/></textarea>
   <br>
      <input type="button" value="选择相关内容" onClick="var rval=window.showModalDialog('listSelectNews.jspx?channelID=<s:property value="getChannelID()"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:500px');if(rval!=null){
  
    var str = document.getElementById('contactStr').value;
    if(str.length<=0)
    {
    document.getElementById('contactStr').value=rval
    }else
    {
    document.getElementById('contactStr').value=document.getElementById('contactStr').value+','+rval;
    }

    }"  /></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" value="保存" />    </td>
  </tr>
</table>


</form>

<s:include value="button.jsp"/>

</body>
</html>
