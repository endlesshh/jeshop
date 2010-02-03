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
 <s:url id="uporder" value="/admin/updateOrder.jspx">
    </s:url>
<script language="javascript">
function subMoney(ID)
{
if(!confirm('您确定该条订单要结款了吗？以及结款金额正确'))
{
return false;
}
document.subs.action='<s:property value="%{uporder}"/>'
//开始结款款项
//window.location.href='';
document.subs.submit();

}

</script>


  
   <form name="subs" action="<s:property value="%{deleurl1}"/>" method="post"  onSubmit="return confirm('您是否要确定删除这些订单！删除后不可以回复')"/>
 
    
      <table  border="0" cellpadding="0" cellspacing="0" id="table" class="sortable">
    <thead>
      <tr>
        <th>&nbsp;</th>
        <th>编号</th>
        <th>付款状态</th>
        <th>用户名称</th>
        <th>货款总金额</th>
        <th>&nbsp;</th>
        <!-- <td width="57%" bgcolor="#CCCCCC" class="comment_title">&nbsp;</td>-->
        <th>发货状态</th>
        <th>&nbsp;</th>
      </tr>
      </thead>
     
     
     
        <s:url id="deleurl1" value="/admin/deleOrder.jspx">        </s:url>
        
        
        
        
        
        <tbody>
      
     
        
        <s:set name="acid" value="actionID"/>
        
        <s:if test="#acid==0||#acid==null">
        <s:set name="formlist" value="allOrderForm()"/>
        </s:if>
        <s:if test="#acid==1">
        <s:set value="noSomeMoney()" name="formlist"/>
        </s:if>
        <s:if test="#acid==2">
        <s:set value="listSomeMoney()" name="formlist"/>
        </s:if>
         <s:if test="#acid==3">
        <s:set value="listAllSomeMoney()" name="formlist"/>
        </s:if>
         <s:if test="#acid==4">
        <s:set value="listNoSends()" name="formlist"/>
        </s:if>
         <s:if test="#acid==5">
        <s:set value="listNowSends()" name="formlist"/>
        </s:if>
          <s:if test="#acid==6">
        <s:set value="listreSends()" name="formlist"/>
        </s:if>
        <s:if test="#acid==7">
        <s:set value="listOverSends()" name="formlist"/>
        </s:if>
        
       <s:iterator value="formlist" status="listjeannounce">
        <tr style="border:1px #CCCCCC thin;">
          <td bgcolor="#ececec" class="channel_title"><input  type="checkbox"  name="orderID" value="<s:property value="%{getOrderFormId()}"/>"/></td>
          <td height="30" bgcolor="#ececec" class="channel_title"><s:property  value="%{getOrderFormNum()}"/></td>
          <td bgcolor="#ececec" class="channel_title">
          
        <s:set name="isab" value="%{getReMoneyStat()}"></s:set>
          
          
                <s:if test="#isab==0"> <font color="#FF0000">未付款</font> </s:if>
                <s:if test="#isab==null"> <font color="#FF0000">未付款</font> </s:if>
                <s:if test="#isab==1"><font color="#009900">支付部分款</font> </s:if>
                 <s:if test="#isab==2"><font color="#009900">全额付款</font> </s:if>                                   </td>
          <td bgcolor="#ececec" class="channel_title"><s:property  value="%{getUserName()}"/></td>
          <td bgcolor="#ececec" class="channel_title">
            <s:property  value="%{getMoneyTotal()}"/>元</td>
          <td bgcolor="#ececec" class="channel_title">
           <s:date name="%{getInputTime()}" format="yyyy/MM/dd" />          </td>
    
          <!--删除标签-->
          <s:url id="seturl" value="/admin/findorder.jspx">
            <s:param name="orderform.orderFormId"><s:property  value="%{getOrderFormId()}"/></s:param>
        </s:url>
        
        <s:url id="deleurl" value="/admin/deleOrder.jspx">
            <s:param name="orderform.orderFormId"><s:property  value="%{getOrderFormId()}"/></s:param>
        </s:url>
       
          <td bgcolor="#ececec" class="channel_title">
          
           <s:set name="isaba" value="%{getStatus()}"/>
          
        
                <s:if test="#isaba==0||#isaba==null"> <font color="#FF0000">没有发货</font> </s:if>
    
                 <s:if test="#isaba==10"><font color="#009900">已经发货</font> </s:if>
                 <s:if test="#isaba==11"><font color="#009900">客户退货</font> </s:if>
                  <s:if test="#isaba==20"><font color="#009900">客户已经收货</font> </s:if>           </td>
          <td bgcolor="#ececec" class="channel_title"><s:a href="%{seturl}">订单处理</s:a></td>
        </tr>
      </s:iterator>
     
        
         </tbody>
        

    
    </table>
    

  </form>
  <div align="center">
     全选 <input onClick="selectAllCheck(this.id,'orderID')"  type="checkbox" id="seleall"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;反选 
        <input onClick="selectreCheck(this.id,'orderID')"  type="checkbox" id="reseleall"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="删除后数据不可以恢复 请慎重操作" /></div>
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
