<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
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
.STYLE1 {font-weight: bold}
</style>
</head>

<body>

   <s:url id="uporder" value="/admin/updateOrder.jspx">
    </s:url>
    <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
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



    
      <table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
    <thead>
      <tr>
        <th  align="center" bgcolor="#CCCCCC" class="comment_title">选择</th>
        <th  align="center" bgcolor="#CCCCCC" class="comment_title">编号</th>
        <th align="center"  bgcolor="#CCCCCC" class="comment_title">付款状态</th>
        <th  align="center"  bgcolor="#CCCCCC" class="comment_title">用户名称</th>
        <th align="center"  bgcolor="#CCCCCC" class="comment_title">货款总金额</th>
        <th align="center" bgcolor="#CCCCCC" class="comment_title">日期</th>
        <!-- <td width="57%" bgcolor="#CCCCCC" class="comment_title">&nbsp;</td>-->
        <th align="center" bgcolor="#CCCCCC" class="comment_title">发货状态</th>
        <th  align="center" bgcolor="#CCCCCC" class="comment_title">订单处理</th>
      </tr>
      </thead>
     <tbody>
        <s:url id="deleurl1" value="/admin/deleOrder.jspx">        </s:url>
      <form name="subs" action="<s:property value="%{deleurl1}"/>" method="post"  onSubmit="return confirm('您是否要确定删除这些订单！删除后不可以回复')"/>
      
      <s:iterator value="pagebean.list" status="listjeannounce">
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
      <tr>
        <td colspan="9" align=center height=20>
        
       全选 <input onClick="selectAllCheck(this.id,'orderID')"  type="checkbox" id="seleall"/>
        &nbsp;&nbsp;&nbsp;&nbsp;反选 
        <input onClick="selectreCheck(this.id,'orderID')"  type="checkbox" id="reseleall"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="删除后数据不可以恢复 请慎重操作" /></td></tr>
        
        
        </form>
     <tr>
        <td colspan="9" align=center height=20>
        
           共<s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
      
    
        
   <s:url id="ListNews" value="/admin/ListAllorder.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/ListAllorder.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/ListAllorder.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/ListAllorder.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/admin/ListAllorder.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">最后一页</s:a>
        </s:if>
        <s:else>
            下一页 最后一页        </s:else>        </td>
        </tr>
       
     </tbody>
    </table>
<s:include value="button.jsp"/>
</body>
</html>
