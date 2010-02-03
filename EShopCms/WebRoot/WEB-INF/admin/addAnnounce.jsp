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


   <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
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
var editor;
$(pageInit);

function pageInit()
{
	editor = $('#content').xheditor(true,{tools:'simple',upImgUrl:"uptofile.jspx",upFlashUrl:"uptofile.jspx",uploadUrl:"uptofile.jspx",uploadExt:"swf,jpg,jpeg,gif,png"})[0].xheditor;
	}
	

</script>
     
        <style type="text/css">
<!--
.STYLE4 {color: #FFFFFF}
-->
        </style>
</head>

<body>

  <script language="javascript">
    function checksub()
    {
    if(document.getElementById("title").value.length<=0)
    {
    alert('公告的题目不可以为空');
    document.getElementById("title").focus();
    return false;
    }
    if(document.getElementById("pass").value.length<=0)
    {
    alert('密码不可以为空');
    document.getElementById("pass").focus();
    return false;
    }
    }
    
    </script>
  
  <s:form action="/admin/addAnnounce.jspx" method="post">
  
     <s:textfield 
            label="填写公告的名称)" 
            name="title"
            size="60"
            tooltip="填写公告的名称"
            required="true" requiredposition="left"/>
       
            <s:select
            tooltip="请选择公告显示的频道"
            label="您的公告要在那个页面显示"
            list="chanMap"
           
            name="channelId"
            emptyOption="false"
            headerKey="0"
            headerValue="======默认在首页位置显示您的公告======"/>
          
          
     
               <s:textfield 
               size="60"
            label="填写公告的作者)" 
            name="author"
            tooltip="填写公告的作者（发布公告者）"
            required="true" requiredposition="left"
            value="管理员"/>
            
            <s:datetimepicker name="dateAndTime" label="显示您的公告到期的时间" value="today">
            </s:datetimepicker>
       
            <s:radio
            
            tooltip="是否开通当前公告"
            label="当前公告是否！"
            list="#{'1':'开通当前公告', '0':'关闭当前公告'}"
            name="isSelected"
            listKey="key"
            listValue="value" 
            value="0"/>
     
         <s:textarea
            label="添加公告的内容"
            id="content"
            name="content" 
            tooltip="请添加公告的内容" 
            cols="40"
            rows="15"/>
          
       
   
   
   
      
            <s:submit  value="添加公告"></s:submit>
            
            
            </s:form>


<s:include value="button.jsp"/>

</body>
</html>
