<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    
<title>给客户发货通知</title>
    
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
.STYLE1 {color: #FFFFFF}
-->
    </style>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
.STYLE2 {color: #FF0000}
-->
.bofer
{border:1px #CCCCCC thin;}
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



<table width="100%" border="00" cellspacing="1" cellpadding="0" >
  <tr>
    <td width="31%">
    
      <% if (request.getParameter("msg")==null){%>
       <s:set name="oid" value="orderformId"/>
      <s:set name="orderForm" value="getById(#oid)"/>
     <input type="button" value="返回订单详细" onClick="window.location.href='findorder.jspx?orderform.orderFormId=<s:property value="orderformId"/>'"/>
 
    <form action="SendreGoods.jspx" method="post" onSubmit=" return confirm('您确认退货吗？请确认后点击确定')">
    <table width="100%" border="00" cellspacing="1" cellpadding="0" style="border:1px #0099FF outset;">
      <tr>
        <td width="98%" height="25" colspan="10" align="center" background="images/color.jpg" bgcolor="#0099FF" >客户退货单</td>
      </tr>

     
      <tr>
        <td height="25" colspan="10">
   </td>
      </tr>
      <tr>
        <td height="25" colspan="10">订单编号：<s:property value="orderForm.orderFormNum"/></td>
        </tr>

      <tr>
        <td colspan="10" align=left height=20>退货成功通知：
          <input type="hidden" name="orderformId" value="<s:property value="orderformId"/>" />
          <input type="hidden" name="orderValue" value="11" />
          <textarea cols="40" name="SendGoods" rows="5">
          订单编号：<s:property value="orderForm.orderFormNum"/>已经退货；
          
          </textarea></td>
      </tr>
        
        
            <td width="2%" align="left"><input type="submit" name="button" id="button" value="确认本订单已经退货">
        <tr>
        <td colspan="10" align=left>&nbsp;</td>
        </tr>
        <tr>
        <td colspan="10" align=left height=20></td></tr>
      <tr>
        <td height="25" colspan="10" background="images/color.jpg">&nbsp;</td>
      </tr>
    </table>
    </form>
    <%
	}else{
	
	%>
	<br>
    <s:property value="getErrMsg()"/>
	订单列表刷新后显示状态
    <input type="button" value="返回订单详细" onClick="window.location.href='findorder.jspx?orderform.orderFormId=<s:property value="getOrderformId()"/>'"/>
 
    
	<%
	}
	%>
    </td>
  </tr>
</table>

</body>
</html>
