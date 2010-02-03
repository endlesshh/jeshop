<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head /><script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>

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

</head>

<body>
<form>
<table  border="0" cellpadding="0" cellspacing="0" id="table" class="sortable">
     <thead>
  <tr>
    <th >&nbsp;</th>
    <th >ID</th>
    <th >软件名称</th>
    <th >软件版本</th>
    <th >软件分类</th>
    <th >作者</th>
    <th >软件语言</th>
    <th >添加时间</th>
    <th >更新时间</th>
    <th >审核状态</th>
    <th >修改 删除</th>
    </tr></thead>
    <tbody>
    <s:iterator value="listsoftByHql()" status="soft">
  <tr>
    <td align="center" valign="middle"><input type="checkbox" name="deleID" value="<s:property value="getSoftId()"/>" /></td>
    <td align="center" valign="middle">&nbsp;<s:property value="getSoftId()"/></td>
    <td align="center" valign="middle" >
    
    <a href="../front/ShowSoft_<s:property value="getSoftId()"/>.html" target="_blank">
    <s:property value="getSoftName()"/>&nbsp;
    </a>    </td>
    <td align="center" valign="middle" ><s:property value="getSoftVersion()"/>&nbsp;</td>
    <td align="center" valign="middle" ><s:set name="cid" value="getClassId()"/>
    
    <s:property value="getClassName(#cid)"/>    &nbsp;</td>
    <td align="center" valign="middle"><s:property value="getAuthor()"/>&nbsp;</td>
    <td align="center" valign="middle" ><s:property value="getSoftLanguage()"/>&nbsp;</td>
    <td align="center" valign="middle" ><s:property value="getCreateTime()"/>&nbsp;</td>
    <td align="center" valign="middle" ><s:property value="getUpdateTime()"/>&nbsp;</td>
    <td align="center" valign="middle" >&nbsp;
     <s:set name="status" value="%{getStatus()}"/>
          <s:if test="status==0||status==null">
          <font color="#FF0000">未审核</font>
          
          </s:if>
          <s:if test="status==1">
          <font color="#0066CC">一审通过</font>
          
          </s:if>
          <s:if test="status==2">
          <font color="#00CC00">二审通过</font>          </s:if>
          
       <a onClick="window.showModalDialog('LooksoftProcess.jspx?softId=<s:property  value="%{getSoftId()}"/>&typeString=jobadminsoft','title','scrollbars=no;resizable=no;help=no;status=no;dialogHeight=550px;dialogwidth=780px;');return false"  href="#">审核记录</a>
          
              </td>
    <td align="center" valign="middle" ><a href="extendSoft.jspx?softId=<s:property value="getSoftId()"/>&channelId=<s:property value="getChannelId()"/>"><img border="0" src="imgs/openpro_04.jpg"></a> <a href="findSoft.jspx?channelId=<s:property value="getChannelId()"/>&softId=<s:property value="getSoftId()"/>"><img border="0" src="imgs/openpro_09.jpg"></a> <a onClick="return confirm('是否确认删除本软件信息')" href="deleteSoft.jspx?softId=<s:property value="getSoftId()"/>" ><img border="0" src="imgs/openpro_10.jpg"></a></td>
  </tr>
  </s:iterator>
  </tbody>
</table>

<div align="center">  全选 </div>
<div id="controls">
		<div id="perpage">
		
			<span>选择您的每页的列表数目</span>
		</div>
		<div id="navigation">
			<img src="images/first.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="First Page" onClick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="Last Page" onClick="sorter.move(1,true)" />
		</div>
		<div id="text">当前页：<span id="currentpage"></span> 总页之<span id="pagelimit"></span></div>
	</div>
    
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>

<script language="javascript">
function setPassIt(id,isHot,isEs)
{
window.location.href='setProduct.jspx?productId='+id+'&channelId=<s:property value="getChannelId()"/>&isHot='+isHot+'&isEs='+isEs;
}

</script>
      <script type="text/javascript"  src="../jQuery/script.js">
		</script>   
<script language="javascript">


  var sorter = new TINY.table.sorter("sorter");
    
	sorter.head = "head";
	sorter.asc = "asc";
	sorter.desc = "desc";
	sorter.even = "evenrow";
	sorter.odd = "oddrow";
	sorter.evensel = "evenselected";
	sorter.oddsel = "oddselected";
	sorter.paginate = true;
	sorter.currentid = "currentpage";
	sorter.limitid = "pagelimit";
	sorter.init("table",1);
	sorter.size(8);
	 
	 
  </script>
</form>
<s:include value="button.jsp"/>
</body>
</html>
