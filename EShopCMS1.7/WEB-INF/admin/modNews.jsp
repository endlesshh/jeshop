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
<div id="colorpanel" style="position: absolute;">
　</div>
  <s:form action="/admin/modNews.jspx" method="post">
  <s:hidden name="channelID" value="%{#request.channelID}"></s:hidden>
  <s:hidden name="newsbean.channelId" value="%{#request.channelID}"></s:hidden>
    <s:hidden name="newsbean.articleId" value="%{jenews.getArticleId()}"></s:hidden>
  <s:textfield 
            label="请填写标题(标题请保持在50字以内)" 
            name="newsbean.title"
            tooltip="填写频道的名称"
            required="true"
            size="60"
            value="%{jenews.getTitle()}"/>
            <tr><td>请选择您的题目的颜色</td><td><input value="<s:property value="jenews.getTitleFontColor()"/>" onFocus="$('#colorpanel').show();intocolor()" type="text" id="fcolor" name="fontColor" /></td></tr>
             <tr><td>选择字体的大小</td><td>
             <select  name="fontsize">
             <option value="<s:property value="jenews.getTitleFontType()"/>"><s:property value="jenews.getTitleFontType()"/></option>
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
             </select>
             
             
             </td></tr>
            
        
            
   <s:textfield 
            label="请填写副标题(副标题请保持在50字以内)" 
            name="newsbean.subheading"
            tooltip="填写频道的名称"
            required="true"
            size="60"
            value="%{jenews.getSubheading()}"/>      
            <s:textfield 
            label="请填写作者" 
            name="newsbean.author"
            tooltip="填写文章作者" 
            value="%{jenews.getAuthor()}"/>
       <s:select
            tooltip="请选择该频道的子类栏目"
            label="请选择的该处的子栏目"
            list="classMap"
            name="newsbean.classId"
            emptyOption="false"
            value="%{jenews.getClassId()}"/>
            
             <s:textfield 
             id="tfile"
            label="请您选择新闻的模板" 
            name="newsbean.templateFile"
            tooltip="请您选择新闻的模板" 
           value="%{jenews.getTemplateFile()}"
            size="60"/>
            
             
              <tr><td align="right">选择模板</td><td>  <select onChange="document.getElementById('tfile').value=this.value">
              <option>选择模板</option>
              <s:iterator value="ml_ShowNews">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
        
              </s:iterator>
           </select></td></tr>
            
          
           <s:textfield 
            label="请填写作者" 
            name="newsbean.keyword"
            tooltip="填写文章作者" 
            
            value="%{jenews.getKeyword()}"/>
            <s:textfield 
   id="filename"
   			label="显示文章索引图图"
   			name="filename"
   			required="true"
   			size="60"
            value="%{jenews.getDefaultPicUrl()}"
            />
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
 
 
 
             <s:textarea
            label="添加内容"
            name="newsbean.content" 
            tooltip="请添加内容" 
            cols="40"
            rows="30"
            id="content"
            value="%{jenews.getContent()}"/>

               <tr><td></td><td>
               
      <input type="button" onClick="editor.focus();editor.pasteHTML('{page}')" value="插入分页"/>
            <input type="button" value="qvod视频" onClick="$('#showqvod').slideToggle('slow')" />
            
            <div id="showqvod" style="display:none;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>视频地址：</td>
    <td><input type="text" id="vurl" name="vurl"  size="30"/></td>
  </tr>
  <tr>
    <td>视频属性</td>
    <td>高：<input type="text"  id="wid" value="400" size="4" />宽：<input value="450" type="text" id="hei"  size="4" />是否自动播放<input type="checkbox" checked="checked" /></td>
  </tr>
   <tr>
    <td></td>
    
    <script language="javascript">
    function insert()
	{
	var qurl = $("#vurl").val();
	var wid  = $("#wid").val();
	var hei  = $("#hei").val();
	InsertQvod(qurl,wid,hei);
	}
    </script>
    <td><input  type="button" value="插入qvod视频" onClick="insert()" /></td>
  </tr>
</table>
            
            </div>
           
           
               
               </td></tr>

             <s:datetimepicker name="newsbean.updateTime" label="文章添加更新的时候"
             value="today">
            </s:datetimepicker>
               <s:radio
            tooltip="修改需要审核"
            label="修改后需要审核"
            list="#{'0':'需要审核', '1':'一审通过','2':'二审通过'}"
            name="newsbean.status"
            listKey="key"
            listValue="value" 
            value="0"/>
             
             <s:radio
            tooltip="是否将改文章新闻置顶"
            label="是否将改文章新闻置顶"
            list="#{'0':'不要置顶，正常显示', '1':'置顶显示该篇'}"
            name="newsbean.onTop"
            listKey="key"
            listValue="value" 
            value="%{jenews.getOnTop()}"/>
            <s:radio
            tooltip="是否推荐显示该篇"
            label="是否推荐显示该篇"
            list="#{'0':'推荐显示&nbsp', '1':'不推荐显示该篇'}"
            name="newsbean.elite"
            listKey="key"
            listValue="value" 
            value="%{jenews.getElite()}"/>
            <s:radio
            tooltip="是否显示评论"
            label="是否显示评论！如果显示评论,选择显示评论"
            list="#{'0':'显示评论', '1':'不显示评论'}"
            name="newsbean.showCommentLink"
            listKey="key"
            listValue="value" 
            value="%{jenews.getShowCommentLink()}"/>
              <s:radio
            tooltip="是否做为收费文章"
            label="如果收费！请选择收费，否则请选择不收费"
            list="#{'0':'选择收费', '1':'不选择收费'}"
            name="newsbean.isPayed"
            listKey="key"
            listValue="value" 
            value="%{jenews.getIsPayed()}"/>
             
             <s:radio
            tooltip="是否包含图片"
            label="是否包含图片！当前包含图片"
            list="#{'0':'包含图片', '1':'不包含图片'}"
            name="newsbean.includePic"
            listKey="key"
            listValue="value" 
            value="%{jenews.getIncludePic()}"/>
            
           <tr><td align="right">选择审核人</td><td>
    <select name="adminId">
    <s:iterator value="getAdminList()">
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
            list="#{'0':'需要审核', '1':'一审通过','2':'二审通过'}"
            name="newsbean.status"
            listKey="key"
            listValue="value" 
            value="1"/>

            
            
         
            <s:submit  value="更新频道设置"></s:submit>
            
            
            </s:form>

<s:include value="button.jsp"/>

</body>
</html>
