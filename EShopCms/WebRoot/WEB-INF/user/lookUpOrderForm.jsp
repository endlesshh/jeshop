<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.util.*,java.sql.*" %>  
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
  <title>订单查询</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>
  
  <body>
     <table width="81%" border="0" cellspacing="1" cellpadding="0" >

          <tr>
            <td>  
             <s:set name="orders" value="%{getOrders()}"></s:set>
        <s:if test="#orders!=null">
    <table width="100%" border="0" cellspacing="1" cellpadding="0" >
       <tr>
            <td height="20" colspan="7" class="guest_title_760" ><strong>订单管理</strong></td>
      </tr>
      <tr>      
        <td width="18%" class="guest_title">编号</td>
        <td width="14%" class="guest_title" >日期</td>
        <td width="13%" class="guest_title">订单状态</td>
        <td width="13%" class="guest_title">用户名称</td>
        <td width="13%" class="guest_title">总金额</td>
        <td width="21%" class="guest_title">收货人地址</td>
        <td width="8%" class="guest_title" ></td>
      </tr>
     
      <s:iterator value="orders" status="order">
        <tr style="border:1px #CCCCCC thin;">
          
          <td height="30" align="center" bgcolor="#ececec" class="tdbgmouseover"><s:property  value="%{getOrderFormNum()}"/></td>
          <td height="30" align="center" bgcolor="#ececec" class="tdbgmouseover"><s:date name="%{getInputTime()}" format="yyyy年MM月dd日" /></td>
          <td height="30" align="center" bgcolor="#ececec" class="tdbgmouseover">
          
          <s:set name="isab" value="%{getStatus()}"></s:set>
          
          
                <s:if test="#isab==0"> <font color="#FF0000">未付款</font> </s:if>
                <s:else> <font color="#009900">已经付款</font> </s:else>          </td>
          <td height="30" align="center" bgcolor="#ececec" class="tdbgmouseover"><s:property  value="%{getUserName()}"/></td>
          <td height="30" align="center" bgcolor="#ececec" class="tdbgmouseover">
           总金额： 
             <s:property  value="%{getMoneyTotal()}"/>元</td>
         
          <td height="30" align="center" bgcolor="#ececec" class="tdbgmouseover"><s:property  value="%{getAddress()}"/></td>
           <td height="30" align="center" bgcolor="#ececec" class="tdbgmouseover"><a href="lookUpItem.jspx?orderFormId=<s:property  value='%{getOrderFormId()}'/>&orderNumber=<s:property  value='%{getOrderFormNum()}'/>" >查看详细</a></td>
        </tr>
      </s:iterator>
             <tr>
            <td height="20" colspan="7" class="guest_title_760" >&nbsp;</td>
      </tr>
    </table>
    </s:if>
       </td>
          </tr>
     <tr>
       <td>
        <s:set name="its" value="%{getItems()}"></s:set>
        <s:if test="#its!=null">

     <table width="100%" border="00" cellspacing="1" cellpadding="0" >
      
<tr>
            <td height="20"  colspan="5" class="guest_title_760" ><strong>详细条目</strong></td>
      </tr>
      <tr>      
        <td width="21%" class="guest_title">编号</td>
        <td width="26%" class="guest_title" >商品名称</td>
        <td width="14%" class="guest_title">商品数量</td>
        <td width="18%" class="guest_title">商品单价</td>
        <td width="21%" class="guest_title">总金额</td>
      </tr>
     
      <s:iterator value="items" status="item">
        <tr style="border:1px #CCCCCC thin;">
          
          <td height="30" bgcolor="#ececec" class="tdbgmouseover"><s:property  value="%{getItemId()}"/></td>
          <td height="30" bgcolor="#ececec" class="tdbgmouseover"><s:property  value="%{getProductName()}"/></td>
          <td height="30" bgcolor="#ececec" class="tdbgmouseover"><s:property  value="%{getNumber()}"/></td>
          <td height="30" bgcolor="#ececec" class="tdbgmouseover">单价：
            <s:property  value="%{getPrice()}"/>元</td>
          <td height="30" bgcolor="#ececec" class="tdbgmouseover">
           总金额： 
          <s:property  value="%{getAllPrice()}"/>元</td>
        </tr>
      </s:iterator>
          <tr>
            <td height="20" colspan="7" class="guest_title_760" ></td>
      </tr>   
    </table>
    </s:if>
       </td>
     </tr>        
        </table>
    
       
</body>
</html>
