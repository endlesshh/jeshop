<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:980px; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
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
<table  border="0" cellpadding="0" cellspacing="0" id="table" class="sortable">
   
     <thead>
      <tr>
        <th>ID</th>
        <th>名称</th>
        <th>启用</th>
        <th>类型</th>
        <th>操作</th>
       </tr>
      </thead>
      
     <tbody>
      <s:iterator value="listclassType" status="ly">
        <tr>
          <td align="center" valign="middle" bgcolor="#ececec"><s:property  value="#ly.index+1"/></td>
          <td align="left" valign="middle" bgcolor="#ececec"> <s:set name="linkType" value="%{getLinkType()}"/>
         
         <s:property  value="getClassName()"/>    <a target="_blank" href="<s:property value="getRootPath()"/>/front/ViewServ_<s:property  value="%{getId()}"/>.html?Index_listAll_SeverySimple.jsp">预览效果</a>      </td>
          <td align="center" valign="middle" bgcolor="#ececec"><s:set name="enable"  value="%{getEnable()}"/>
          <s:if test="#enable==0"><font color="#006600">启用</font>
          <select onChange="window.location.href=this.value">
          <option value="modSubClassTypeenb.jspx?id=<s:property  value="%{getId()}"/>&enable=1">选择操作</option>
          <option value="modSubClassTypeenb.jspx?id=<s:property  value="%{getId()}"/>&enable=1">禁用</option>
          </select>
          
          </s:if>
          <s:if test="#enable==1"><font color="#FF0000">禁用</font>
          
          <select onChange="window.location.href=this.value">
          <option value="listSubClassType.jspx?id=<s:property  value="%{getId()}"/>&enable=1">选择操作</option>
          <option value="modSubClassTypeenb.jspx?id=<s:property  value="%{getId()}"/>&enable=0">启用</option>
          </select>
          
          </s:if>
          
          
           </td>
          <td align="center" valign="middle" bgcolor="#ececec">  <s:set name="ctype"  value="%{getClassType()}"/> 
          
          <s:if test="#ctype==0">一般调查投票</s:if>
          <s:if test="#ctype==10">调查问卷</s:if>
          <s:if test="#ctype==100">题库题卷</s:if>
          
             </td>
          <td align="center" valign="middle" bgcolor="#ececec">
          <a href="listSubClassAmount.jspx?subClassId=<s:property  value="%{getId()}"/>">统计结果</a>
          
          
           <a href="listSubClassTitle.jspx?classId=<s:property  value="%{getId()}"/>">选项题目</a>
          
          
          <a href="modSubClassTypeinit.jspx?id=<s:property  value="%{getId()}"/>">修改本项</a>   <a onClick="return confirm('确认您是否要删除本项')" href="deleSubClassType.jspx?id=<s:property  value="%{getId()}"/>" >删除本项</a>          </td>
          <!--删除标签-->

        </tr>
      </s:iterator>
      </tbody>
    </table>
<div id="controls">
		<div id="perpage">
			<select onChange="sorter.size(this.value)">
			<option value="5">5</option>
				<option value="10" selected="selected">10</option>
<option value="2" >2</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>选择每页显示的条数</span>
		</div>
		<div id="navigation">
			<img src="images/first.gif" width="16" height="16" alt="第一页" onClick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="上一页" onClick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="下一页" onClick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="最后一页" onClick="sorter.move(1,true)" />
		</div>
		<div id="text">显示页信息： <span id="currentpage">1</span> / <span id="pagelimit">1</span></div>
	</div>
         <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
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
  </script>
    
    
<s:include value="button.jsp"/>
</body>
</html>
