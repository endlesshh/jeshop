 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
    <s:iterator value="orderSendGoods()" status="ls">
    
    <s:if test="#ls.index<=5">
    <p align="center"><s:property value="getTitle()" escape="false"/>
    <li>
    <s:property value="getContent()" escape="false"/></li>
    <s:set name="orderid" value="getOrderFormId()"/>
    <s:set name="jeorder" value="getOrderForm(#orderid)"/>
    订单：<font color="#009933" ><b><s:property value="#jeorder.orderFormNum"/></b></font>已经发货
    </p>
    </s:if>
    </s:iterator>