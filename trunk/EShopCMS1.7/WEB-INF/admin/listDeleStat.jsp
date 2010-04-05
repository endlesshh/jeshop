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

<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:100%; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
.sortable th {background:url(images/header-bg.gif); height:25px; text-align:left; color:#cfdce7; border:1px solid #fff; border-right:none; font-size:12px;
text-align:center; vertical-align:middle;}
.sortable th h3 {font-size:10px; padding:6px 8px 8px}
.sortable td {padding:1px 1px 1px; border-bottom:1px solid #c6d5e1; border-right:1px solid #c6d5e1}
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
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>
</head>

<body >

<table  cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
    <thead>
      <tr>
        <th class="nosort">ID </th>
        <th class="nosort">订单编号</th>
        <th class="nosort">发货日期</th>
        <th class="nosort">经手人</th>
        <th class="nosort">货运方式</th>
        <th class="nosort">付款方式</th>
        <th class="nosort">填单员</th>
        <th class="nosort">备注</th>
        <th class="nosort">客户是否收货</th>
        <th class="nosort">其他</th>
      </tr>
    </thead>
    
    
    <tbody>
      <s:iterator value="getAllDeDiv()" status="de">
        <s:set name="pid" value="%{getOrderFormId()}"></s:set>
      <s:set name="orderform" value="getById(#pid)"/>
        
        <tr title="header=[] body=[ <li>订单收货人：<s:property value="#orderform.getUserName()" />  </li>
          <li>订单代理收件人：<s:property value="#orderform.getAgentName()" /> </li>
          <li>订单总金额：<s:property value="#orderform.getMoneyTotal()" /> </li>
          <li>订单收件人地址：<s:property value="#orderform.getAddress()" /> </li>
          <li>邮政编码：<s:property value="#orderform.getZipCode()" /> </li>
          <li>手机号码：<s:property value="#orderform.getMobile()" /> </li>
          <li>电子邮件：<s:property value="#orderform.getEmail()" /> </li>]">
    
        <td >&nbsp;<s:property value="getDeliverId()"/></td>
        <td class="nosort">
      
        &nbsp; <s:property value="#orderform.getOrderFormNum()" />  
        
             </td>
        <td class="nosort">&nbsp;<s:property value="getDeliverDate()"/></td>
        <td class="nosort">&nbsp;<s:property value="getHandlerName()"/></td>
        <td class="nosort">&nbsp;<s:set name="psed" value="getDeliverDirection()"/>
        
        <s:property value="getDeleName(#psed)"/>        </td>
        <td class="nosort">&nbsp;<s:property value="getExpressCompany()"/></td>
        <td class="nosort">&nbsp;<s:property value="getInputer()"/></td>
        <td class="nosort">&nbsp;<s:property value="getRemark()"/></td>
        <td class="nosort">
       &nbsp; <s:if test="getReceived()==0">
        货未收到
        </s:if>
         <s:if test="getReceived()==1">
        货已收到
        </s:if>
        
        </td>
        <td class="nosort">
     &nbsp;  <a onClick="return confirm('您确定是否要删除该条目')" href="delListDelevelproduct.jspx?delevePid=<s:property value="getDeliverId()"/>">
        <img border="0" src="imgs/openpro_10.jpg">
        </a>
        </td>
      
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
<s:include value="button.jsp"/>
</body>
</html>
