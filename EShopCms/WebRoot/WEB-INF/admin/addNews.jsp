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
body {font:10px Verdana,Arial; margin:0px;  color:#091f30}

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
document.getElementById("Ntitle").style.color=event.srcElement._background;
$("#colorpanel").hide();

return event.srcElement._background
}
}
</script>

</head>

<body>
<div id="colorpanel" style="position: absolute;">
　</div>

  <form action="addNews.jspx" method="post">
  <div id="showMsgTop">
<span id="showTitle1" class="spanTitle" style="background-color:#CCCCCC;" onClick="javascript:ShowLayers('showTitle','content',1,4);">基本信息</span><span class="spanTitle" id="showTitle2" onClick="javascript:ShowLayers('showTitle','content',2,4);" >附加信息</span><span class="spanTitle" id="showTitle4" onClick="javascript:ShowLayers('showTitle','content',4,4);" >审核相关</span><span class="spanTitle" id="showTitle3" onClick="javascript:ShowLayers('showTitle','content',3,4);" >附加字段排列</span>
<div style="background-color:#CCCCCC; border-top:1px #CCCCCC outset;"></div>
  
   <table class="sortable" id="content1"  width="100%" border="0" cellspacing="4" cellpadding="0">
   <tr>
    
    <th colspan="2" >
   基础信息
    
    </th>
  </tr>
  <s:hidden name="channelID" value="%{#request.channelID}"></s:hidden>
  <s:hidden name="newsbean.channelId" value="%{#request.channelID}"></s:hidden>

            <tr><td align="right">请填写您的标题</td><td><input id="Ntitle"  style=" width:70%; border:0px; height:25px;border-bottom:1px #333333 outset; font-weight:bold;" name="newsbean.title" type="text" size="60"/><span id="showNum"></span></td></tr>
            
            <tr><td align="right">请选择您的题目的颜色</td><td><input  value="#000000" onFocus="$('#colorpanel').show();intocolor()" type="text" id="fcolor" name="fontColor" /></td></tr>
             <tr><td align="right">选择字体的大小</td><td>
             <select onChange="document.getElementById("Ntitle").style.fontsize=this.value"  name="newsbean.titleFontType">
            
             <option value="10">10</option>
             <option value="11">11</option>
             <option selected value="12">12</option>
             <option value="13">13</option>
             <option value="14">14</option>
             <option value="15">15</option>
             <option value="16">16</option>
             <option value="17">17</option>
             <option value="18">18</option>
             <option value="19">19</option>
             </select>
             
             
             
             </td></tr>
             
              <tr><td align="right">内容来源</td><td>
              <select name="newsbean.copyFrom">
     <option value="本站原创">本站原创</option>
     <option value="其他转载">其他转载</option>
  
     </select>
             
             
             </td></tr>
           
            
            
   <s:textfield 
            label="请填写副标题" 
            name="newsbean.subheading"
            tooltip="请填写副标题"
            required="true"
            size="60"/>      
          <s:textfield 
            label="请填写作者" 
            name="newsbean.author"
            tooltip="填写文章作者" />
        
           <s:textfield 
            label="当前录入" 
            name="newsbean.inputer"
            tooltip="当前录入者"
            value="%{#session.admin.userName}"/>
            
            <!-- 开始查找栏目子栏目 -->
            <s:set name="channelID" value="%{#request.channelID}"/>
            <tr><td align="right">请选择子栏目
            
  </td><td>
           <select name="newsbean.classId">
           <!--  -->
           <option value="0">不属于任何栏目属于频道</option>
           
            <s:iterator value="%{ListAllClass(#request.channelID,0,1)}" status="ones">
            <!-- 一级栏目 -->
            <option value="<s:property value="getClassId()"/>"><s:property value="getClassName()"/></option>
            
            
                    <!-- 二级栏目 -->
                     <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelID,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     
                      <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelID,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                 
                             <!-- 显示四级栏目 -->


											<s:set name="parID" value="getClassId()"></s:set>
											<s:set name="depth" value="getDepth()+1"></s:set>
											<s:iterator
												value="%{ListAllClass(#request.channelID,#parID,#depth)}"
												status="ones">
												<option value="<s:property value="getClassId()"/>">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<s:property value="getClassName()" />
												</option>
											</s:iterator>



											<!-- 显示四级栏目 -->
                     </s:iterator>
                     
                     
                     
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     </s:iterator>
                    <!-- 二级栏目结束 -->
            
            
            </s:iterator>
        </select>
            </td> </tr>
            <!-- 结束查找子栏目 -->
             
     
             
              <tr><td align="right">选择模板</td><td>  <select name="newsbean.templateFile" >
              <s:iterator value="ml_ShowNews">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
        
              </s:iterator>
           </select></td></tr>
             
           <s:textfield 
            label="请填写该文章的关键词" 
            name="newsbean.keyword"
            tooltip="关键词" 

            size="60"/>
         
             <s:textarea
            label="添加显示的内容"
            name="newsbean.content" 
            tooltip="请添加内容" 
            cols="40"
            id="content"
            rows="10"/>
            
             <tr><td align="right">&nbsp;</td><td>
           
      <input type="button" onClick="editor.focus();editor.pasteHTML('{page}')" value="插入分页"/>
            <input type="button" value="qvod视频" onClick="$('#showqvod').slideToggle('slow')" />
            
            <div id="showqvod" style="display:none;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>视频地址：</td>
    <td><input type="text" id="vurl" name="vurl"  size="30" style="width:100%;"/></td>
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
           
           
          
           <tr><td  align="right"></td><td>
            <div id="slidShow" style="display:none;"> 
          <iframe align=left width="400" height="60" src="localPic.jsp" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe>   </div>
           </td></tr>
         
          
          
          
             <s:datetimepicker name="newsbean.updateTime" label="文章添加更新的时候" value="today">
            </s:datetimepicker>
            
             <s:textfield 
   id="filename"
   			label="显示文章索引图图"
   			name="filename"
   			required="true"
   			
   			size="60"/>
 			<tr>
 			  <td align="right">&nbsp;</td><td height=20>
 <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
 
  <s:textfield 
   id="vedioname"
   			label="请上传文章的显示视频地址"
   			name="vedioname"
   			required="true"
   			
   			size="60"/>
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="60" src="upfilevideo.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
             
            
             
            
     <!--   <s:radio
            tooltip="是否包含图片"
            label="是否包含图片！当前包含图片"
            list="#{'1':'包含图片', '0':'不包含图片'}"
            name="newsbean.includePic"
            listKey="key"
            listValue="value" 
            value="0"/>
         -->
    </table>
            
            
<table style="display:none;"  class="sortable" id="content2" width="100%" border="0" cellspacing="4" cellpadding="0">
 <tr>
    
    <th colspan="2" >
    附加信息    </th>
  </tr>
 <s:radio
            tooltip="是否将改文章新闻置顶"
            label="是否将改文章新闻置顶"
            list="#{'0':'不要置顶，正常显示', '1':'置顶显示该篇'}"
            name="newsbean.onTop"
            listKey="key"
            listValue="value" 
            value="0"/>
            <s:radio
            tooltip="是否推荐显示该篇"
            label="是否推荐显示该篇"
            list="#{'1':'推荐显示&nbsp', '0':'不推荐显示该篇'}"
            name="newsbean.elite"
            listKey="key"
            listValue="value" 
            value="0"/>
            <s:radio
            tooltip="是否显示评论"
            label="是否显示评论！如果显示评论,选择显示评论"
            list="#{'1':'显示评论', '0':'不显示评论'}"
            name="newsbean.showCommentLink"
            listKey="key"
            listValue="value" 
            value="0"/>
              <s:radio
            tooltip="是否做为收费文章"
            label="如果收费！请选择收费，否则请选择不收费"
            list="#{'0':'不选择收费', '1':'选择收费'}"
            name="newsbean.isPayed"
            listKey="key"
            listValue="value" 
            value="0"/>
              
           <s:textfield 
            label="如果收费，请填写该文章收费的点数" 
            name="newsbean.infoPoint"
            tooltip="如果收费，请填写该文章收费的点数" 
            value="0"
            size="2"/>
 <tr><td colspan="2" align="center"><font color=#ff0000>
  选择收费以后，请在这个地方书写收费的点数，该文章阅读以后，将收取相应的点数。

</font></td></tr>
 
  
   <tr>
    <td width="30%">设定浏览次数</td>
    <td >
    
    
   <input type="text" size="6" name="newsbean.hits" value="0" />    </td>
  </tr>
  
  
  
   <tr>
     <td>原始题目</td>
     <td >
     
     <input type="text" size="60" />     </td>
   </tr>
   <tr>
     <td>编辑</td>
     <td >
    <input name="newsbean.editor" type="text" />     </td>
   </tr>
 
   <tr>
    <td width="30%">推荐星级</td>
    <td >
    
    
   一星级<input type="radio" value="1"  name="newsbean.stars" />二星级<input type="radio" value="2" checked="checked" name="newsbean.stars" />三星级<input type="radio" value="3" name="newsbean.stars" />四星级<input type="radio" value="4"  name="newsbean.stars" />五星级<input type="radio" value="5" name="newsbean.stars" />    </td>
  </tr>
  
  
  <tr>
    <td>选择相关</td>
    <td>
      <textarea onClick="var rval=window.showModalDialog('listSelectNews.jspx?channelID=<s:property value="getChannelID()"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:500px');if(rval!=null){
  
    var str = this.value;
    if(str.length<=0)
    {
    this.value=rval
    }else
    {
    this.value=this.value+','+rval;
    }

    }" name="newsbean.contactStr" id="contactStr" cols="40" rows="5"></textarea>
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
    <td>内容调查选项</td>
    <td>
    <ul style="list-style-type:disc;">
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    </ul>    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>




<!--内容审核方面-->
         <table class="sortable" style="display:none;" id="content4"  width="100%" border="0" cellspacing="4" cellpadding="0">
 <tr>
    
    <th colspan="2" >
    内容审核方面
    
    </th></tr>
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

  

</table>   
        
<table class="sortable" id="content3" style="display:none;" width="100%" border="0" cellspacing="4" cellpadding="0">
 <tr>
    
    <th colspan="2" >
    附加字段显示方式
    
    </th>
  </tr>
  <tr>
    <td width="30%">附加字段显示方式</td>
    <td >
    上部<input type="radio" value="0" name="isShow" />
    底部<input type="radio" value="1" checked="checked" name="isShow" />
    
    
    </td>
  </tr>
  
  

</table>
    <input type="submit" value="提交信息数据" />
            
</form>
            
            

<br><br>
<s:include value="button.jsp"/>
</body>
</html>
