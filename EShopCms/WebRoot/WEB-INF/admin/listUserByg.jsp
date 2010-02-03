
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员列表</title>
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
<s:set name="getGroupId" value="getGroupId()"/>
<s:set name="user" value="listUserBygroup(#getGroupId)"/>

	<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
			<tr>
				<th class="nosort">用户编号</th>
				<th>用户名称</th>
				<th>注册时间</th>
				<th>消费点数</th>
				<th>点卡点数</th>
				<th>当前积分</th>
				<th>资金余额</th>
				<th>查看详细</th>
				
			</tr>
		</thead>
		<tbody>
        <s:iterator value="#user" status="luser">
        
			<tr>
				<td><s:property value="getUserId()"/></td>
				<td><s:property value="getUserName()"/></td>
				<td><s:property value="getRegTime()"/></td>
				<td>
                 <s:set name="ups1" value="%{getConsumePoint()}"></s:set>
            <s:if test="#ups1!=null">
             <font color=#ff0000> <b> <s:property value="%{getConsumePoint()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font><font color=#004400></font>            </s:else>
                
                </td>
				<td> <s:set name="ups" value="%{getuserPoint()}"></s:set>
            <s:if test="#ups!=null">
             <font color=#ff0000> <b> <s:property value="%{getuserPoint()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font><font color=#004400></font>            </s:else></td>
				<td><s:set name="ups3" value="%{getUserExp()}"></s:set>
            <s:if test="#ups3!=null">
             <font color=#ff0000> <b> <s:property value="%{getUserExp()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;<font color=#004400></font>            </s:else></td>
				<td> <s:set name="ups4" value="%{getBalance()}"></s:set>
            <s:if test="#ups4!=null">
             <font color=#ff0000> <b> <s:property value="%{getBalance()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font><font color=#004400></font>            </s:else></td>
				<td>  <a onClick="window.showModalDialog('SendUserMsg.jspx?spUserId=<s:property  value="%{getUserId()}"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:450px');return false;" href="#">发送消息</a></td>
			</tr>
			</s:iterator>
		</tbody>
  </table>
	<div id="controls">
		<div id="perpage">
			<select onchange="sorter.size(this.value)">
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
			<img src="images/first.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)" />
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
</body>
</html>