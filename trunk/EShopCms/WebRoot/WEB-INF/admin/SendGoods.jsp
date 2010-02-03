<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<title>给客户发货通知</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	 <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
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
<!--  
<s:iterator value="jechanclassdao.findAll()" status="chan">
<s:property value="%{getChanName()}" /><s:property value="%{getChanClassId()}" />

</s:iterator>-->
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




      <s:set name="oid" value="orderformId"/>
      <s:set name="orderForm" value="getById(#oid)"/>
      <div style=" color:#FF0000"><b><s:property escape="false" value="getErrMsg()"/></b></div>
     <input type="button" value="返回订单详细" onClick="window.location.href='findorder.jspx?orderform.orderFormId=<s:property value="orderformId"/>'"/>
 
    <form action="SendGoodsupdate.jspx" method="post" onSubmit=" return confirm('您确认要发货吗？请确认后点击确定')">
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
     <thead> <tr>
        <th height="25" colspan="11" align="center">订单发货</th>
      </tr>
</thead>
    
      <tr>
        <td height="25" colspan="11">订单编号：<s:property value="#orderForm.orderFormNum"/></td>
        </tr>

      <tr>
        <td align=left height=20>发货通知：
          <input type="hidden" name="orderformId" value="<s:property value="#orderForm.orderFormId"/>" />
          <input type="hidden" name="orderValue" value="10" /></td>
        <td  height=20 align=left><textarea cols="40" name="SendGoods" rows="5">
          订单编号：<s:property value="#orderForm.orderFormNum"/> 已经发货
          
          </textarea></td>
      </tr>
        <tr>
          <td align="left">选择运货方式：</td>
          <td align="left"><select name="sendType">
          <s:iterator value="getDeliverType()">
          <option value="<s:property value="getTypeId()"/>"><s:property value="getTypeName()"/></option>
          </s:iterator>
          
          </select>          </td>
        </tr>
        <tr>
          <td align="left">付款方式：</td>
          <td align="left"><select name="moneyType">
         
          <option value="在线支付">在线支付</option>
          <option value="货到付款">货到付款</option>
          <option value="邮局汇款">邮局汇款</option>
          <option value="其他付款方式">其他付款方式</option>
          
        
          
          </select></td>
        </tr>
        <tr>
          <td align="left">收货人名称：</td>
          <td align="left"><input type="text" name="handlName" value="<s:property value="#orderForm.agentName"/>" /></td>
        </tr>
        <tr>
          <td align="left">发货人签名：</td>
          <td align="left"><input type="text" name="inputer" value="<s:property value="#session.admin.getUserName()"/>"/></td>
        </tr>
        <tr>
          <td align="left">货运公司名称：</td>
          <td align="left"><input name="expressCompany" type="text" /></td>
        </tr>
        <tr>
          <td align="left" onMouseOut=$("#showFei").hide() onMouseMove=$("#showFei").show()>查询货运费用</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2" id="showFei" style="display:none;" align="left">
        
          <s:iterator value="getDeliverType()">
           <div style="color:#663300; font-size:14px;" ><s:property value="getTypeName()"/></div>
          <ul style=" padding-left:20px;">
             <li>最小费用：<s:property value="getChargeMin()"/></li>
             <li>最大费用：<s:property value="getChargeMax()"/></li>
          </ul>
          </s:iterator>          </td>
        </tr>
        <tr>
          <td align="left">货运费用：</td>
          <td align="left"><input name="expressNumber" type="text" /></td>
        </tr><input name="remark" type="hidden" value="管理员发货" />
        <!--
        <tr>
          <td align="left">备注标签：</td>
          <td align="left"></td>
        </tr>
       -->
        <tr>
          <td align="left">商品库存中提货</td>
          <td align="left"><input type="checkbox" name="inKunCun" checked value="1" /> </td>
        </tr>
        <tr>
          <td width="13%" align="left">&nbsp;</td>
        
            <td width="59%" align="left"><input type="submit" name="button" id="button" value="确认已经发货">       </td>
        </tr>
    </table>
</form>
  
    
	订单列表刷新后显示状态
    <input type="button" value="返回订单详细" onClick="window.location.href='findorder.jspx?orderform.orderFormId=<s:property value="getOrderformId()"/>'"/>
 

</body>
</html>
