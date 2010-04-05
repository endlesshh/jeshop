<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
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

	$('#my1').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#my2').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#my3').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#my4').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#my5').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#my6').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>

 <script language="javascript">
 function testisNum(object)
                       {
          
                        var s =document.getElementById(object.id).value;
              
                            if(s!="")
                            {
                                 if(isNaN(s))
                                {
                                 alert("请请正确输入数字");
                                 object.value="";
                                 object.focus();
								 return false;
                                }
                            }
                        }
 
 
 function checkSub()
 {
 if(document.getElementById("pname").value==null||document.getElementById("pname").value.length<=1)
 {
 alert('商品名称填写有误 请检查后重新填写');
 document.getElementById("pname").focus();
 return false;
 }
  if(document.getElementById("pmod").value==null||document.getElementById("pmod").value.length<=1)
 {
 alert('商品的型号填写有误 请填写商品的型号');
 document.getElementById("pmod").focus();
 return false;
 }
  if(document.getElementById("barcode").value==null||document.getElementById("barcode").value.length<=1)
 {
 alert('商品的条形码为空');
 document.getElementById("barcode").focus();
 return false;
 }
 if(document.getElementById("psd").value==null||document.getElementById("psd").value.length<=1)
 {
 alert('商品的规格为空！如果没有请填写暂无规格');
 document.getElementById("psd").focus();
 return false;
 }
 if(document.getElementById("put").value==null)
 {
 alert('商品的单位为空！请仔细填写商品的单位');
 document.getElementById("put").focus();
 return false;
 }
 if(document.getElementById("ptname").value==null||document.getElementById("ptname").value.length<=1)
 {
 alert('品牌为空！请仔细填写商品的单位');
 document.getElementById("ptname").focus();
 return false;
 }
 if(document.getElementById("pnum").value==null)
 {
 alert('商品的数量为空！请填写商品的数量');
 
 document.getElementById("pnum").focus();
 return false;
 }
 testisNum(document.getElementById("pnum"));
 
 
 if(document.getElementById("filename").value==null||document.getElementById("filename").value.length<=1)
 {
 alert('商品的缩略图为空，请在下面的选择中上传商品的缩略图');
 document.getElementById("filename").focus();
 return false;
 }
 if(document.getElementById("pro").value==null||document.getElementById("pro").value.length<=15)
 {
 alert('商品的详细介绍为空或者字数太少');
 return false;
 }
 if(document.getElementById("pin").value==null||document.getElementById("pin").value.length<=15)
 {
 alert('商品的简单介绍为空或者字数太少');
 document.getElementById("pin").focus();
 return false;
 }
 if(document.getElementById("pmark").value==null)
 {
 alert('商品的市场价为空！');
 document.getElementById("pmark").focus();
 return false;
 }
 
 return true;
 }
 
</script>
</head>

<body>

 
<table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
    <thead>
    <tr>
    <th colspan="3">文章类显示自定义字段扩展</th>
   </tr></thead>
    <tr>
      <td colspan="3">已经存在的字段显示</td>
    </tr>
    
    <s:iterator value="listFiles">
    

    <tr>
    <td width="19%">自定义字段：<font color="#FF0000"><b><s:property value="toString()"/> </b> </font>  </td>
    <td width="40%">值：<a href="showDetailNewsEx.jspx?channelID=<s:property value="getChannelID()"/>&artId=<s:property value="getArtId()"/>&varname=<s:property value="toString()"/>">    修改字段值</a></td>
    <td width="41%"><a href="deletNewsExtend.jspx?channelID=<s:property value="%{#request.channelID}"/>&varname=<s:property value="toString()"/>&artId=<s:property value="getArtId()"/>">删除字段</a></td>
  </tr>
      </s:iterator>
  </table>

<form action="setextendNews.jspx" method="post">
<input type="hidden" name="channelID" value="<s:property value="getChannelID()"/>" />
<input type="hidden" name="artId" value="<s:property value="getArtId()"/>" />
 <table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
    <thead>
    <tr>
    <th colspan="3">文章自定义字段拓展信息</th>
   </tr></thead>
    <tr>
      <td colspan="3">字段名称必须采用英文名称 </td>
    </tr>
  
   <tr>
     <td >&nbsp;自定义字段：      </td>
     
    <td ><input type="text" size="10" name="keyName" /></td>
    </tr>
   <tr>
     <td >显示名称：</td>
     <td ><input type="text" size="10" name="showName" /></td>
    </tr>
   <tr>
     <td >字段内容：</td>
     <td ><textarea name="keyValue" id="my1" cols="80" rows="12">
      
     
      </textarea></td>
    </tr>
 
  <tr>
    <td colspan="3" align="center"><input type="submit" value="添加商品自定义字段" /></td>
   </tr>
</table>
</form>
<s:include value="button.jsp"/>
</body>
</html>
