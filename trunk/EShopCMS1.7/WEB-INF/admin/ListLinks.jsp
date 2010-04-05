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
        <th>编号</th>
        <th>链接</th>
       <th>网站名称</th>
        <th>站长名称</th>
         <th>站长邮箱</th>
         <th>星级</th>
         <th>是否推荐</th>
        <th>是否通过</th>
        <th>删除</th>
        <th>修改</th>
      </tr>
      </thead>
      
     <tbody>
      <s:iterator value="listLinks" status="jeLinks">
        <tr>
          <td align="center" valign="middle" bgcolor="#ececec"><s:property  value="%{getId()}"/></td>
          <td align="center" valign="middle" bgcolor="#ececec"> <s:set name="linkType" value="%{getLinkType()}"/>
          <s:if test="#linkType==1">图片链接</s:if>
          <s:else>文字链接</s:else>          </td>
          <td align="center" valign="middle" bgcolor="#ececec"> <s:property  value="%{getSiteName()}"/>           </td>
          <td align="center" valign="middle" bgcolor="#ececec"> <s:property  value="%{getSiteAdmin()}"/></td>
          <td align="center" valign="middle" bgcolor="#ececec"> <s:property  value="%{getSiteEmail()}"/></td>
          <td align="center" valign="middle" bgcolor="#ececec"> <s:set name="stars" value="%{getStars()}"/>
           <s:if test="#stars==0">0级</s:if>
           <s:if test="#stars==1">1级</s:if>
           <s:if test="#stars==2">2级</s:if>
           <s:if test="#stars==3">3级</s:if>
           <s:if test="#stars==4">4级</s:if>
           <s:if test="#stars==5">5级</s:if>          </td>
          <td align="center" valign="middle" bgcolor="#ececec"> <s:set name="elite" value="%{getElite()}"/>
           <s:if test="#elite==0">不推荐</s:if>
           <s:else>推荐</s:else>          </td>
          <td align="center" valign="middle" bgcolor="#ececec"><s:set name="passed" value="%{getPassed()}"/>
           <s:if test="#passed==0">不通过</s:if>
           <s:else>通过</s:else>          </td>
      
         <!--删除标签-->
         <s:url id="deleurl" value="/admin/deleLinks.jspx">
            <s:param name="Id"><s:property  value="%{getId()}"/></s:param>
        </s:url>
        <s:url id="seturl" value="/admin/initModLinks.jspx">
            <s:param name="Id"><s:property  value="%{getId()}"/></s:param>
        </s:url>
          
          
          <td align="center" valign="middle" bgcolor="#ececec"><s:a href="%{deleurl}"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td align="center" valign="middle" bgcolor="#ececec"><s:a href="%{seturl}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
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
