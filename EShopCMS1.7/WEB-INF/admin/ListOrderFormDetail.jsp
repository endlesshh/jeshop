<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    
<title>网站收款发货订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--
-->
.bofer
{border:1px #CCCCCC thin;}
td{
padding:3px;}
    .STYLE3 {
	color: #999999;
	font-weight: bold;
}
.STYLE4 {
	color: #333333;
	font-weight: bold;
}
    .STYLE5 {
	font-size: 12px;
	font-weight: bold;
}
</style>
</head>
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>
<object ID='WebBrowser' WIDTH=0 HEIGHT=0 CLASSID='CLSID:8856F961-340A-11D0-A96B-00C04FD705A2'></object>
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

 
function preview()
{
window.document.body.innerHTML=$("#showprint").html();
window.print();

}




</script>

<!--startprint-->
<div id="showprint" style="background-color:#FFFFFF;">
<table  width="90%" border="0" cellspacing="2" cellpadding="0" style="margin:15px; border:1px #CCCCCC outset;">
  <tr>
    <td colspan="7" align="center" bgcolor="#CCCCCC" style="border:1px  #CCCCCC outset; background-color:#ececec;"><strong>商品订单</strong></td>
  </tr>
  <tr>
    <td colspan="7" style="border:1px  #CCCCCC outset; background-color:#ececec;"><strong>订单信息</strong></td>
  </tr>
  <tr>
    <td colspan="2"><span class="STYLE4">订单编号</span>：
    <s:property  value="%{orderform.getOrderFormNum()}"/></td>
    <td colspan="2"><strong>日期</strong>
    <s:property value="orderform.getInputTime()"/>    </td>
    <td colspan="3"><strong>货款金额</strong>:(人民币)<font color=#ff0000><s:property value="%{orderform.getMoneyTotal()}"/></font>元 &nbsp;&nbsp;&nbsp;<strong>需要发票</strong>
    ：
      <s:set name="invo" value="orderform.getNeedInvoice()"/>
      <s:if test="invo==0">
        是      </s:if>
      <s:if test="invo!=0">
        否      </s:if>    </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
    <td colspan="5"><strong>应收金额</strong>：(人民币)<font color=#ff0000><s:property value="%{orderform.getMoneyTotal()}"/>
    </font>元 &nbsp;&nbsp;&nbsp;<strong>实收金额</strong>：
    <s:set name="ymon" value="%{orderform.getMoneyReceipt()}"/>
    <s:if test="#ymon==null">
      0.00 元   &nbsp;&nbsp;<strong>&nbsp;款项差额</strong>：(人民币)<font color=#ff0000><s:property value="%{orderform.getMoneyTotal()}"/>
      </font>元    </s:if>
    <s:else>
    <s:property value="#ymon"/>
    元&nbsp;&nbsp;<strong>&nbsp;款项差额</strong>：(人民币)<font color=#ff0000>
    <s:property value="%{orderform.getMoneyTotal()-orderform.getMoneyReceipt()}"/>元</font>    </s:else>    </td>
  </tr>
 
  <tr>
    <td colspan="7" bgcolor="#CCCCCC" style="border:1px  #CCCCCC outset; background-color:#ececec;"><strong>订单商品</strong></td>
  </tr>
  
  
  <!--订单商品信息-->
   <tr>
    <td width="10%" bgcolor="#FFFFFF"><span class="STYLE3">商品编号</span></td>
    <td width="18%" bgcolor="#FFFFFF"><span class="STYLE3">名称</span></td>
    <td width="11%" bgcolor="#FFFFFF"><span class="STYLE3">数量</span></td>
    <td width="17%" bgcolor="#FFFFFF"><span class="STYLE3">单位</span></td>
    <td width="9%" bgcolor="#FFFFFF"><span class="STYLE3">单价</span></td>
    <td width="26%" bgcolor="#FFFFFF"><span class="STYLE3">型号</span></td>
    <td width="9%" bgcolor="#FFFFFF"><span class="STYLE3">合计</span></td>
  </tr>
   <s:iterator value="getListitem()" >     
      <s:set name="iid" value="getProductId()"/>
  
     <s:set name="jep" value="getProductbyId(#iid)"/>
     
    
     
      
  
  <tr>
    <td bgcolor="#FFFFFF"><s:property value="#jep.getBarCode()"/></td>
    <td bgcolor="#FFFFFF"><s:property value="#jep.getProductName()"/></td>
    <td bgcolor="#FFFFFF"><s:property value="getAmount()"/></td>
    <td bgcolor="#FFFFFF"><s:property value="#jep.getUnit()"/></td>
    <td bgcolor="#FFFFFF"><s:property value="#jep.getPriceMember()"/>元</td>
    <td bgcolor="#FFFFFF"><s:property value="#jep.getProductModel()"/></td>
    <td bgcolor="#FFFFFF"><s:property value="getTruePrice()"/>元</td>
  </tr>
   </s:iterator> 
   
   
   <tr>
     <td colspan="7" bgcolor="#CCCCCC" style="border:1px  #CCCCCC outset; background-color:#ececec;"><strong>收件人信息</strong></td>
   </tr>
   <tr>
     <td><strong>联系人</strong>：</td>
     <td><s:property  value="%{orderform.getUserName()}"/></td>
     <td><strong>代理收件人</strong></td>
     <td><s:property  value="%{orderform.getAgentName()}"/></td>
     <td><strong>地址</strong>：</td>
     <td colspan="2"><s:property value="%{orderform.getAddress()}"/></td>
   </tr>
  <tr>
    <td><strong>邮编</strong></td>
    <td><s:property value="%{orderform.getZipCode()}"/></td>
    <td><strong>联系电话</strong></td>
    <td><s:property value="%{orderform.getMobile()}"/></td>
    <td><strong>联系电话</strong>：</td>
    <td colspan="2"><s:property value="%{orderform.getPhone()}"/></td>
  </tr>
  <tr>
    <td colspan="2"><strong>付款方式</strong>：货到付款</td>
    <td colspan="2"><strong>送货方式</strong>：邮政快递</td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><span class="STYLE5">备注：</span></td>
    <td colspan="2">&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7" align="right"><span class="STYLE5">签字：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
  </tr>
</table>
</div>
<!--endprint-->
<table width="90%" border="0" cellspacing="2" cellpadding="0" style="background-color:#FFFFFF;margin:15px; border:1px #CCCCCC outset;">
  <tr>
    <td colspan="7" align="left" bgcolor="#CCCCCC" style="border:1px  #CCCCCC outset; background-color:#ececec;">
    <input type="button" value="返回订单列表"  onClick="window.location.href='ListAllorder.jspx'"/>
     <input type="button" onClick="onclick=preview(1)" value="打印订单" />
      <s:set name="isab" value="%{orderform.getStatus()}"></s:set>
          
          
                <s:if test="#isab==0"> <font color="#FF0000">未付款</font> </s:if>
                <s:if test="#isab==1"><font color="#009900">已经付款</font> </s:if>
                 <s:if test="#isab==10"><font color="#009900">已经发货</font> 
                 
                  <input type="button" value="客户退货" onClick="if(confirm('确认您是否要退货')){window.location.href='SendReGoods.jspx?orderformId=<s:property value="%{orderform.getOrderFormId()}"/>&orderId=<s:property value="%{orderform.getOrderFormId()}"/>&code=<s:property  value="%{orderform.getOrderFormNum()}"/>&name=<s:property  value="%{orderform.getUserName()}"/>'}else{return false}" />
                 
                 </s:if>
                  <s:if test="#isab==20"><font color="#009900">货已经收到</font> </s:if>
     <s:if test="#isab==11"><font color="#009900">订单退货</font> 
          
      </s:if>
      <s:if test="#isab!=10"><font color="#009900">没有发货</font> 
             <a title="<s:property  value="%{getOrderFormNum()}"/>发货通知"  href="SendGoods.jsp?orderId=<s:property value="%{orderform.getOrderFormId()}"/>&code=<s:property  value="%{orderform.getOrderFormNum()}"/>&name=<s:property  value="%{orderform.getUserName()}"/>" rel="gb_page_center[500, 400]"></a>
             
             <input type="button" value="发货" onClick="if(confirm('确认是否已经发货')){window.location.href='SendGoods.jspx?orderformId=<s:property value="%{orderform.getOrderFormId()}"/>&orderId=<s:property value="%{orderform.getOrderFormId()}"/>&code=<s:property  value="%{orderform.getOrderFormNum()}"/>&name=<s:property  value="%{orderform.getUserName()}"/>'}else{return false}" />
      </s:if>
          
           <s:url id="deleurl" value="/admin/deleOrder.jspx">
            <s:param name="orderform.orderFormId"><s:property  value="%{orderform.getOrderFormId()}"/></s:param>
        </s:url>
      <input type="button" value="删除订单" onClick="if(confirm('确认是否要删除该条订单！删除后不可以恢复')){window.location.href='<s:property value="%{deleurl}"/>'}else{return false;}" />
          
           
    </td>
  </tr></table>
<table width="90%" border="0" cellspacing="2" cellpadding="0"style="margin:15px;background-color:#FFFFFF; border:1px #CCCCCC outset;">
  <tr>
    <td colspan="7" align="left" bgcolor="#CCCCCC" style="border:1px  #CCCCCC outset; background-color:#ececec;">
    
    
    
    
         <s:set name="remoney" value="orderform.getReMoneyStat()"/>  
        
    
 

         
         
       
         <s:if test="#remoney==null||#remoney==0">
        
          <table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
 <form name="re" action="getReCepMoney.jspx" method="post" style="float:left;">  <td>&nbsp; 目前未收款 <input type="hidden" name="orderformId" value="<s:property  value="%{orderform.getOrderFormId()}"/>" /><input type="text" name="reMoney" value="0.00"  size="6"/> <select name="restat" ><option value="1">全额款项</option> <option value="1">部分款项</option></select><input type="submit" value="确认收款" />
        </td>
  </tr>

        
         </form>
         
       
         
         
         
         </s:if>
         
      
          <s:if test="#remoney==1">
          
          
            <tr>
  <form name="re"   action="getReCepMoney.jspx" method="post"> <td>&nbsp; 收到部分款 <input type="hidden" name="orderformId" value="<s:property  value="%{orderform.getOrderFormId()}"/>" />
         <input type="text" name="reMoney" value="0.00"  size="6"/><select name="restat" ><option value="2">全额收款</option> <option value="1">部分收款</option></select><input type="submit" value="确认收款" /></td></form>
   <form name="ret" action="getRetCepMoney.jspx" method="post"> <td>&nbsp;<input type="hidden" name="orderformId" value="<s:property  value="%{orderform.getOrderFormId()}"/>" />
         <input type="text" name="reMoney" value="0.00"  size="6"/><select name="restat" ><option value="0">全额退款</option> <option value="1">部分退款</option></select><input type="submit" value="确认退款" /></td> </form>
    </tr>
          
       
         
         
         
         
           
         
        
         </s:if>
          <s:if test="#remoney==2">
          
          
         <form name="ret" action="getRetCepMoney.jspx" method="post">
         <tr><td>已经全额收款:<input type="hidden" name="orderformId" value="<s:property  value="%{orderform.getOrderFormId()}"/>" />
         <input type="text" name="reMoney" value="0.00"  size="6"/><select name="restat" ><option value="0">全额退款</option> <option value="1">部分退款</option></select><input type="submit" value="确认退款" />
         </td></tr></form>
         </s:if>
         
    
</table>


    </td></tr></table>

<s:include value="button.jsp"/>
</body>
</html>
