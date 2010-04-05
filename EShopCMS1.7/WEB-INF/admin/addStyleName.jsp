<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <s:head />

<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		function slideToggle(){
$("#slidShow").slideToggle(500);
}

$(pageInit);
var editor;
function pageInit()
{
	
	$('#content').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
}

function check()
{
  if($("#pname").value.length==0)
  {
  alert('请填写自定义页面的名称');
  $("#pname").focus();
  return false;
  }
}
	
	


			

	
</script>
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
</style></head>

<body>
<form action="addStyleName.jspx" method="post">

<table width="100%" border="0" cellspacing="4" cellpadding="0">
  <tr>
    <td colspan="3" class="STYLE1">&nbsp;</td>
  </tr>
  
  <tr>
    <td colspan="3" align="center" class="title">添加会员模板样式</td>
  </tr>
  <tr>
    <td width="218">模板名称</td>
    <td width="1097"><input type="text" name="styleName" id="styleName"  /></td>
    <td width="63">&nbsp;</td>
  </tr>
  <tr>
    <td>模板显示名称</td>
    <td><input type="text" name="styleShowName" id="styleShowName" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>模板路径</td>
    <td><input type="text" name="stylePath" id="stylePath" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>模板级别</td>
    <td><select name="styleLevel">
    <option value="0">==大众模板==</option>
    <option value="1">==宽频模板==</option>
    <option value="2">==其他类型模板==</option>
    </select></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>收费价格:(免费则0.00元)</td>
    <td><input type="text" name="stylePrice" id="stylePrice" size="6" value="0.00" />元</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>模板缩略图片</td>
    <td><input type="text" name="filename" id="filename" size="40" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"> </td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><iframe align=left width="100%" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>是否定制模板（非定制模板无需选择）</td>
    <td><select name="userId">
    <option value="0"> 
    ==非定制模板==    </option>
    <s:set name="ulist" value="listuser()"/>
    <s:iterator value="#ulist">
     <option value="<s:property value="getUserId()"/>"> 
   <s:property value="getUserName()"/>
    </option>
    </s:iterator>
    
    </select>    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" value="保存模板样式"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</form>



</body>
</html>
