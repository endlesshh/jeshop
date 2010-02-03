<%@ page contentType="text/html; charset=UTF-8" %>
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
<title><s:property value="#session.recode" /></title>
 <style>
* {margin:0; padding:0; outline:none}
body { margin:5px;font:10px Verdana,Arial; margin:0px;  color:#091f30}

.sortable {width:70%; margin:15px;  border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
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
.spanTitle{ width:80px; height:25px; padding:3px; margin:1px;
text-align:center; border:1px #CCCCCC outset; border-bottom:0px; cursor:hand; padding-top:5px;}
</style>
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

</head>

<body>
<div id="colorpanel" style="position: absolute;">
　</div>


<form action="updateListconfigWater.jspx" method="post">
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

      <thead>  
        <tr>
          <td colspan="2" align="center"><img onClick="this.submit" src="imgs/WaterLogon_03.jpg" width="155" height="34"></td>
        </tr>
        <tr>
          <td>启用图片水印效果
          
          </td>
          
          <td>不启用水印效果<input <s:if test="%{jeconfig.getWatermarkType()==0}">checked</s:if> name="watermarkType" value="0" type="radio">&nbsp;&nbsp;&nbsp;启用图片水印效果&nbsp;&nbsp;&nbsp;<input name="watermarkType" <s:if test="%{jeconfig.getWatermarkType()==1}">checked</s:if> value="1" type="radio"> &nbsp;&nbsp;&nbsp;启用文字水印效果<input value="2" name="watermarkType" <s:if test="%{jeconfig.getWatermarkType()==2}">checked</s:if> type="radio"></td>
        </tr>
        <tr>
          <td>水印图片(<span class="STYLE2">请上传，设置图片水印则无效</span>)</td>
          <td><input type="text" size="40" id="filename" <s:if test="%{jeconfig.watermarkImagesFileName!=null}">value="<s:property value="jeconfig.watermarkImagesFileName"/>"</s:if>  name="watermarkImagesFileName" />
          
          
          
          </td>
        </tr>
        <tr>
          <td>上传水印图片</td>
          <td><iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
        </tr>
        <tr>
    <td width="49%">水印文字(设置图片水印则无效)</td>
    <td width="51%"><input type="text"  <s:if test="%{jeconfig.watermarkText!=null}">value="<s:property value="jeconfig.watermarkText"/>"</s:if> size="40" name="watermarkText" /></td>
    </tr>
        <tr>
          <td>文字加粗</td>
          <td>加粗<input type="radio" <s:if test="%{jeconfig.watermarkTextBold==1}"> checked</s:if> name="watermarkTextBold" value="1"> 不加粗<input name="watermarkTextBold" <s:if test="%{jeconfig.watermarkTextBold==0}"> checked</s:if> type="radio"  value="0"></td>
        </tr>
        <tr>
          <td>文字类型</td>
          <td><select  name="watermarkTextFontName">
          <s:if test="%{jeconfig.watermarkTextFontName!=null}"><option value="<s:property value="jeconfig.watermarkTextFontName"/>"><s:property value="jeconfig.watermarkTextFontName"/></option></s:if>
            <option value="宋体">宋体</option>
            <option value="黑体">黑体</option>
            <option value="隶书">隶书</option>
          </select></td>
        </tr>
        <tr>
          <td>文字大小</td>
          <td><select  name="watermarkTextFontSize">
           <s:if test="%{jeconfig.watermarkTextFontSize!=null}"><option value="<s:property value="jeconfig.watermarkTextFontSize"/>"><s:property value="jeconfig.watermarkTextFontSize"/></option></s:if>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
          <option value="17">17</option>
          <option value="18">18</option>
          <option value="19">19</option>
          <option value="20">20</option>
          <option value="21">21</option>
          <option value="22">22</option>
          <option value="23">23</option>
          <option value="24">24</option>
          <option value="25">25</option>
          <option value="26">26</option>
          <option value="27">27</option>
          </select></td>
        </tr>
        <tr>
          <td>水印位置</td>
          <td><select name="watermarkPosition">
           <s:if test="%{jeconfig.watermarkPosition!=null}"><option value="<s:property value="jeconfig.watermarkPosition"/>">
           <s:if test="%{jeconfig.watermarkPosition==1}">
           左上角
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==2}">
           右上角
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==3}">
           左下角
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==4}">
           右下角
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==5}">
           中间
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==6}">
          上中
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==7}">
           左中
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==8}">
           右中
           </s:if>
            <s:if test="%{jeconfig.watermarkPosition==9}">
           下中
           </s:if>
           
           
           
           
           
           </option></s:if>
          <option value="1">左上角</option>
          <option value="2">右上角</option>
          <option value="3">左下角</option>
          <option value="4">右下角</option>
          <option value="5">居中</option>
          <option value="6">中上</option>
          <option value="7">中左</option>
          <option value="8">中右</option>
          <option value="9">中底</option>
          </select></td>
        </tr>
        <tr>
          <td>字体颜色</td>
          <td><input type="text" <s:if test="%{jeconfig.watermarkTextFontColor!=null}">value="<s:property value="jeconfig.watermarkTextFontColor"/>"</s:if> name="watermarkTextFontColor" onFocus="$('#colorpanel').show();intocolor()" id="fcolor"/></td>
        </tr>
    </thead>
  <tr>
    <td colspan="2" align="center"><input type="submit" value="保存设置" /></td>
  </tr>
</table>
</form>
<s:include value="button.jsp"/>
</body>
</html>
