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
<s:include value="top.jsp"/>
<table  cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
    <thead> 
      <tr>
        <th width="56" >编号</th>
        <th width="111" >会员名称</th>
        <th width="111" >详细信息</th>
        <th width="116" ><strong>开通会员</strong></th>
         <th width="158" >移动会员组</th>
         <th >【推荐会员】</th>
         <th width="123" >删除</th>
        <th width="139">会员设置</th>
      </tr>
      </thead>
      <tbody>
     
      <s:iterator value="listUser" status="jeUser">
        <tr>
          <td class="top_announce"><s:property  value="%{getUserId()}"/></td>
          <td class="top_announce">
          
          <b>
          <s:property  value="%{getUserName()}"/>
          <s:set name="gname" value="getGroupId()"/>
          <s:set name="gn" value="getGroupName(#gname)"/>
          (<s:if test="#gn!=null">
          <s:property value="#gn.typeName"/>
          </s:if>)
          
          </b>          </td>
           <td class="top_announce"><a href="UserDetail.jspx?UserId=<s:property  value="%{getUserId()}"/>">查看</a>
           
           <a onClick="window.showModalDialog('SendUserMsg.jspx?spUserId=<s:property  value="%{getUserId()}"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:450px');return false;" href="#">发送消息</a>
           </td>
           <td class="top_announce"><s:set name="islocked" value="%{getIsLocked()}"/>
           <s:if test="#islocked==0"><font color="#FF0000">没有开通</font></s:if>
           <s:else><font color="#00CC00">已经开通</font></s:else>          </td>
          
           <td class="top_announce">
            <form action="movUserTo.jspx" method="post">  
           <input type="hidden" name="srcUid" value="<s:property value="getUserId()"/>"/>
           <select  name="tarGid"> 
           <option  value="0">选择会员组</option>
           <s:iterator value="listUserType()">
           <option value="<s:property value="getUserTypeId()"/>"> <s:property value="getTypeName()"/></option>
           </s:iterator>
           
           </select>
           <input type="submit" value="移动"/></form>
           
           
           </td>
           <td class="top_announce"><s:set name="privacy" value="%{getUserType()}"/>      
           <s:if test="#privacy==1">是</s:if>
           <s:else>否</s:else>          </td>


      
         <!--删除标签-->
         <s:url id="deleurl" value="/admin/deleUser.jspx">
            <s:param name="UserId"><s:property  value="%{getUserId()}"/></s:param>
        </s:url>
        <s:url id="seturl" value="/admin/initModUser.jspx">
            <s:param name="UserId"><s:property  value="%{getUserId()}"/></s:param>
        </s:url>
          
          
          <td class="top_announce"><s:a href="%{deleurl}" onclick="return confirm('您确定要删除该会员吗！删除后数据不可以恢复')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td class="top_announce"><s:a href="%{seturl}">
         会员管理
          
          </s:a></td>
        </tr>
      </s:iterator>
     </tbody> 
    </table>
    
<div id="controls">
		<div id="perpage">
			<select onChange="sorter.size(this.value)">
			<option value="5">5</option>
            <option value="1">1</option>
				<option value="10" selected="selected">10</option>
<option value="2" >2</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
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
