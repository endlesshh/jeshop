<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<s:head/>
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#trademarkIntro').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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

    </style>
   
</head>

<body>

  <script language="javascript">
function check()
{
 if(document.getElementById('tradmark.trademarkName').value.length==0)
 {
 alert('填写您的品牌名称');
 document.getElementById('tradmark.trademarkName').focus();
 document.getElementById('tradmark.trademarkName').style.background="#ececec";
 return false;
 }
 if(document.getElementById('filename').value.length==0)
 {
 alert('请上传您的名牌的图片');
 document.getElementById('filename').focus();
 document.getElementById('filename').style.background="#ececec";
 return false;
 }
 if(document.getElementById('tradmark.trademarkIntro').value.length<=10)
 {
 alert('您的品牌介绍太少！请您仔细填写');
 return false;
 }

} 

</script>
  <s:form name="asub" action="/admin/updateTrad.jspx" method="post" onsubmit="return check()">
  <s:hidden name="channelID" value="%{#request.channelID}"></s:hidden>
  <s:hidden name="newsbean.channelId" value="%{#request.channelID}"></s:hidden>
 <s:hidden name="tradmark.trademarkId" value="%{tradmark.getTrademarkId()}"></s:hidden>
  <s:textfield id="tradmark.trademarkName"
            label="请填写品牌的名称" 
            name="tradmark.trademarkName"
            tooltip="填写频道的名称"
            required="true"
            size="60"/>
              <s:select
            tooltip="Choose Your Favourite Color"
            label="生产厂家或者商品店家（可以是店家）"
            list="classMap"
            name="tradmark.producerId"
            emptyOption="false"
            />
            
   <s:textfield 
   id="filename"
   			label="商品品牌的形象图片"
   			name="filename"
   			required="true"
   			size="40"/>
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
            <!-- 开始查找栏目子栏目 -->
                <s:textarea
                id="trademarkIntro"
            label="品牌简单介绍"
            name="tradmark.trademarkIntro" 
            tooltip="简单介绍" 
            cols="40"
            rows="20"/>

             <s:datetimepicker name="newsbean.updateTime" label="品牌添加时间" value="today">
            </s:datetimepicker>
             
             <s:radio
            tooltip="品牌类型"
            label="品牌类型"
            list="#{'1':'国内品牌', '2':'国际品牌','3':'地方品牌'}"
            name="tradmark.trademarkType"
       
            value="1"/>
           
            <s:submit  value="更新频道设置"></s:submit>
            
            
            </s:form>

<s:include value="button.jsp"/>
</body>
</html>
