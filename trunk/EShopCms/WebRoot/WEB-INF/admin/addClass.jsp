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

<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#cmeta').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<script type="text/javascript">
function check()
{
if(document.getElementById('cname').value.length==0)
{
alert('您的栏目名称为空');
document.getElementById('cname').focus();
return false;
}
if(document.getElementById('clink').value.length==0)
{
alert('您的栏目模板的路径为空，请填写模板路径');
document.getElementById('clink').focus();
return false;
}
if(document.getElementById('cmeta').value.length==0)
{
alert('您的栏目描述为空，请填写');
document.getElementById('cmeta').focus();
return false;
}
}
</script>


</head>

<body>

  
  <s:form  action="/admin/addClass.jspx" method="post" onsubmit="return check()">
  <s:hidden name="jeclass.channelId" value="%{jechan.getChannelId()}"></s:hidden>
  <s:hidden name="jeclass.checkComment" value="0"/>
   
  
  <s:set name="pid" value="%{jeclass.getParentId()}"></s:set>
  <s:if test="#pid!=null">
  <s:hidden name="jeclass.parentId" value="%{jeclass.getParentId()}" />
  </s:if>
  <s:else>
  <s:hidden name="jeclass.parentId" value="0" />
  </s:else>
  
  <s:set name="depth" value="%{jeclass.getDepth()}"></s:set>
  <s:if test="#depth!=null">
  <s:hidden name="jeclass.depth" value="%{jeclass.getDepth()+1}" />
  </s:if>
  
  
  
  
  
  <s:textfield 
            label="填写栏目的名称(填写标记栏目的显示名称)" 
            id="cname"
            name="jeclass.className"

            tooltip="填写栏目的名称"
            required="true"
            size="40"/>
  <tr><td colspan="2" align="center"><font color=#ff0000>栏目的名称是您在导航栏目中显示您的栏目的名称</font></td></tr>           
                      
   			
   			
   	<tr><td  align="right">
   	栏目的排序优先级：
   	
   	</td><td  align="left">
   	
   	<select name="jeclass.priority">
   	<option>1</option>
   	<option>2</option>
   	<option>3</option>
   	<option>4</option>
   	<option>5</option>
   	<option>6</option>
   	<option>7</option>
   	<option>8</option>
   	<option>9</option>
   	<option>10</option>
   	<option>11</option>
   	<option>12</option>
   	<option>13</option>
   	<option>14</option>
   	<option>15</option>
   	<option>16</option>
   	
   	
   	</select>
   	</td></tr>        
                  
   		
    <tr><td colspan="2" align="center"><font color=#ff0000>栏目优先级使您选择的栏目靠前</font></td></tr>        
                 <s:set name="mid" value="getmodul()"/>  
     
     <s:textfield 
   			label="栏目模板名称"
   			name="jeclass.linkUrl"
   			tooltip="模板名称"
   			required="true"
   			size="40"
            value="%{getClassFilePath()}"
             id="clink"/>
 			  <tr><td align="right"> 选择您的模板</td><td  align="left">

             <s:set name="#mid" value="getmodul()"/>
             
     
              <s:if test="#mid==1">
              
              <select onChange="document.getElementById('clink').value=this.value" >
              <s:iterator value="ml_NewsClassTemp">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
              <script>document.getElementById('clink').value='<s:property value="toString()"/>'</script>
              </s:iterator>
              </select>
              
              
              </s:if>
               <s:if test="#mid==2">
             <select onChange="document.getElementById('clink').value=this.value">
              <s:iterator value="ml_ShopClassTemp">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
               <script>document.getElementById('clink').value='<s:property value="toString()"/>'</script>
              </s:iterator>
              </select>
              </s:if>
               <s:if test="#mid==3">
              <select onChange="document.getElementById('clink').value=this.value">
              <s:iterator value="ml_listSoftClass">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
               <script>document.getElementById('clink').value='<s:property value="toString()"/>'</script>
              </s:iterator>
              </select>
              </s:if>
              </td></tr>        
  
 			 <s:textfield 
   			label="栏目标志图片！在下面选择后上传显示"
   			name="filename"
   			tooltip="填写栏目的优先级"
   			required="true"
  
   			size="40"/>
 			
 			
 			  <tr><td></td><td align="right">
          <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;"> </iframe>
        </font></td>
      </tr>       
 			
                              
            <s:textarea
            tooltip="填写栏目描述"
            label="填写栏目描述！栏目的简述(保持50字以内)"
            name="jeclass.metaDescription"
            cols="40"
            id="cmeta"
                      rows="13"/>
       
   
            <s:textarea
            tooltip="填写栏目关键词"
            label="填写栏目关键词！关键词(保持50字以内)"
            name="jeclass.metaKeywords"
            cols="40"
            rows="3"/>
            
              <tr><td colspan="2" align="center"><font color=#ff0000>栏目的关键词！栏目搜索中</font></td></tr>       
   
            
            
            
            <s:radio
            tooltip="栏目类型"
            label="如果是外部栏目请选择1，否则选择0"
            list="#{'0':'内部栏目', '1':'外部栏目'}"
            listKey="key"
            listValue="value"
            name="jeclass.classType"
            value="0"/>
  
            <s:radio
            tooltip="Choose your Friends"
            label="当前栏目显示名称！开通当前栏目选择0，否则选择1"
            list="#{'0':'开通当前栏目', '1':'关闭当前栏目'}"
            name="showName"
            listKey="key"
            listValue="value"
            value="0" />
             
             
             <s:radio
            tooltip="当前栏目是否收费"
            label="当前栏目是否收费！当前栏目收费选择0，否则选择1"
            list="#{'0':'当前栏目收费', '1':'当前栏目不收费'}"
            listKey="key"
            listValue="value"
            name="jeclass.costs"
            value="0"/>
            
            <s:radio
            tooltip="当前栏目是否开通"
            label="当前栏目是否开通！当前栏目开通选择0，否则选择1"
            list="#{'0':'当前栏目开通', '1':'当前栏目不开通'}"
            listKey="key"
            listValue="value"
            name="jeclass.openType"
            value="0"/>
            
            <s:radio
            tooltip="当前栏目是否开通"
            label="当前栏目是否需要评论"
            list="#{'0':'当前栏目是否开通评论', '1':'当前栏目不开通评论'}"
            listKey="key"
            listValue="value"
            name="jeclass.enableComment"
            value="0"/>
           
            
            
	
				
        
            <s:submit  value="更新栏目设置"></s:submit>
            
            
    </s:form>

<s:include value="button.jsp"/>
</body>
</html>
