<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />  <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#mede').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>
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
    </style>
    <style type="text/css">


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


</head>

<body>


  <s:form action="/admin/AddProducter.jspx" method="post">
  <s:hidden name="channelId" value="%{getJechannel()}"></s:hidden>
  <s:hidden name="producter.channelId" value="0"></s:hidden>
  <s:hidden name="producter.channelID" value="0"></s:hidden>
         <!--
                	<tr><td align="right">选择前台用户</td><td height=20>
                    <input type="text" size="4" id="userId" name="userId" /><input title="选择关联用户" onClick="var rval=window.showModalDialog('ListAllUserSelect.jspx',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:450px');if(rval!=null){document.getElementById('userId').value=rval}" type="button" value="选择用户..." />选择关联后，供货商可以登录系统查询信息财务状况
</td></tr>
         
         -->
         
         <s:textfield 
            label="请填写厂商（店家）的名称(标题请保持在50字以内)" 
            name="producter.producerName"
            tooltip=""
            required="true"
            size="40"/>
            <s:textfield 
            label="请填写厂商（店家）的名称简写(标题请保持在50字以内)" 
            name="producter.producerShortName"
            tooltip=""
            required="true"
            size="40"/>
           
            
             <s:textfield 
   			label="商家缩略图"
   			id="filename"
   			name="filename"

   			required="true"
   			
   			size="40"/>
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
             <s:datetimepicker name="producter.birthDay"
              label="厂家店家建立的时间" 
              value="today">
            </s:datetimepicker>
            <s:textfield 
            label="请填写厂家（店家）的地址" 
            name="producter.address"
            tooltip=""
            required="true"
            size="40"/>
            
            
            <s:textfield 
            label="请填写厂家（店家）的邮编地址" 
            name="producter.postcode"
            tooltip=""
            required="true"
            size="40"/>
            <s:textfield 
            label="请填写厂家（店家）的电话" 
            name="producter.phone"
            tooltip="填写频道的名称"
            required="true"
            size="40"/>
            <s:textfield 
            label="请填写厂家（店家）的传真" 
            name="producter.fax"
            tooltip="填写频道的名称"
            required="true"
            size="40"/>
            
             <s:textfield 
            label="请填写厂家（店家）的邮件" 
            name="producter.email"
            tooltip="填写频道的名称"
            required="true"
            size="40"/>
            <s:textfield 
            label="请填写厂家（店家）的主页地址" 
            name="producter.homepage"
            tooltip="填写频道的名称"
            required="true"
            size="40"
            value="http://"/>
             <s:textarea
             id="mede"
            label="添加厂商店家简介"
            name="producter.producerIntro" 
            tooltip="请添加内容" 
            cols="40"
            rows="15"/>
            <s:radio
            tooltip="是否将改文章新闻置顶"
            label="是否将改文章新闻置顶"
            list="#{'0':'不要置顶，正常显示', '1':'置顶显示该篇'}"
            name="producter.onTop"
            listKey="key"
            listValue="value" 
            value="0"/>
            <s:radio
            tooltip="是否推荐显示该篇"
            label="是否推荐显示该篇"
            list="#{'0':'推荐显示&nbsp', '1':'不推荐显示该篇'}"
            name="producter.isElite"
            listKey="key"
            listValue="value" 
            value="0"/>
             <s:radio
            tooltip="请选择厂家和店家的类型"
            label="请选择厂家和店家的类型"
            list="#{'0':'国内厂家店家', '1':'国外厂家店家'}"
            name="producter.producerType"
            listKey="key"
            listValue="value" 
            value="0"/>
         
            <s:submit  value="添加新的厂商"></s:submit>
            
            
            
            
            
            
            </s:form>

<s:include value="button.jsp"/>

</body>
</html>
