<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

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
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	//$('#mede').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
	
function showOption(id)
{
if(id==2)
{
ml_shop();
}
if(id==1)
{
ml_news();
}

if(id==3)
{
ml_soft();
}

}

function ml_shop()
{
document.getElementById("sfile").options.length=0;
<s:iterator value="ml_ShopchannelTemp">
document.getElementById("sfile").options.add(new Option('<s:property value="toString()"/>','<s:property value="toString()"/>'));
</s:iterator>
}
function ml_news()
{
document.getElementById("sfile").options.length=0;
<s:iterator value="ml_NewschannelTemp">
document.getElementById("sfile").options.add(new Option('<s:property value="toString()"/>','<s:property value="toString()"/>'));
</s:iterator>
}
function ml_soft()
{
document.getElementById("sfile").options.length=0;
<s:iterator value="ml_listSoftChannel">
document.getElementById("sfile").options.add(new Option('<s:property value="toString()"/>','<s:property value="toString()"/>'));
</s:iterator>
}
	
	
	
</script>

</head>

<body>

  <s:form action="/admin/addChannel.jspx" method="post">
  <s:textfield 
            label="填写频道的名称(填写标记频道的显示名称)" 
            name="channelName"
            tooltip="填写频道的名称"
            required="true"/>
  <tr><td colspan="2" align="center"><font color=#ff0000>频道的名称是您在导航栏目中显示您的频道的名称</font></td></tr>           
            <s:textfield 
            label="填写频道的简短名称(在导航位置显示)" 
            name="channelShortName"
            tooltip="填写频道的名称" />
 <tr><td colspan="2" align="center"><font color=#ff0000>导航名称的简短缩写！如果该处为空！将和频道名称相同</font></td></tr>            
            
            <s:select
            tooltip="请选择频道的类型"
            label="请选择您的频道的类型！以什么类型显示您的频道"
            list="chanclassmap"
            name="moduleType"
            emptyOption="false" onchange="showOption(this.value)"/>
            
               <tr><td colspan="2" align="center"><font color=#ff0000>请您确认您的频道是属于何种类别，方便与您的管理</font></td></tr>
          
            <s:textfield 
            label="填写频道的英文名称(标记频道)" 
            name="channelDir"
            tooltip="填写频道的名称" size="40" />
             <tr><td colspan="2" align="center"
             ><font color=#ff0000>频道的英文名称</font></td></tr>
             
      
             <tr><td align="right">选择模板</td><td  align="left"> 
             <select name="LinkUrl" id="sfile" >
             <s:iterator value="ml_ShopchannelTemp">
             <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
             </s:iterator>
             <option value=""></option>
             </select>
             
              </td></tr>
             
             
             <s:textfield 
            label="显示频道中信息的单位(如：条，个等)" 
            name="channelItemUnit"
            tooltip="填写频道的名称" />
      <tr><td colspan="2" align="center"><font color=#ff0000>该处是频道的记录单位，例如您的商品有15件！“件” 就是该处填写的单位</font></td></tr>       
            <s:textarea
            tooltip="填写频道描述"
            label="填写频道描述！频道的简述(保持50字以内)"
            name="metaDescription"
            id="mede"
            cols="40"
            rows="13"/>
        <tr><td colspan="2" align="center"><font color=#ff0000>频道的描述！可以用在频道的搜索</font></td></tr>       
   
            <s:textarea
            tooltip="填写频道关键词"
            label="填写频道关键词！关键词(保持50字以内)"
            name="metaKeywords"
            cols="40"
            rows="3"/>
            
              <tr><td colspan="2" align="center"><font color=#ff0000>频道的关键词！频道搜索中</font></td></tr>       
   
            
  
            <s:radio
            tooltip="Choose your Friends"
            label="当前频道显示名称！开通当前频道选择0，否则选择1"
            list="#{'0':'开通当前频道', '1':'关闭当前频道'}"
            name="showName"
            listKey="key"
            listValue="value"
            value="0" />
  
  
            <s:radio
            tooltip="当前频道的使用"
            label="是否开通当前频道！开通当前频道选择0，否则选择1"
            list="#{'0':'当前频道公开显示', '1':'当前频道禁止使用'}"
            listKey="key"
            listValue="value"
            name="disabled"
             value="0"/>
            
            <s:radio
            tooltip="频道打开方式"
            label="是否在新窗口打开频道！开通当前频道选择0，否则选择1"
            list="#{'1':'在新的窗口打开频道', '0':'在本窗口打开频道'}"
            listKey="key"
            listValue="value"
            name="openType"
             value="1"/>
            
            
            <s:radio
            tooltip="是否显示频道名称"
            label="是否显示频道名称在导航位置！频道选择0，否则选择1"
            list="#{'1':'在导航位置显示本窗口', '0':'在当行位置不显示本窗口'}"
            name="showNameOnPath"
             value="0"/>

            
         
            <s:submit  value="更新频道设置"></s:submit>
            
            
            </s:form>
<s:include value="button.jsp"/>
</body>
</html>
