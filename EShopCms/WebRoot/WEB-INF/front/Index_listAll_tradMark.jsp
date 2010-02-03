 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
   <s:iterator value="listTrad()">

   <!--Æ·ÅÆ×¨Çø-->
   <div >
   <a href="ShowTrad_<s:property value="getTrademarkId()"/>.html?ShowTrad.jsp">
   <img width="160" border=0 height="70" style="border:1px #ececec outset; margin:2px;" src="../upfile/<s:property value="getTrademarkPhoto()"/>"/>
   </a>
   </div>
   <div >
   <s:property value="getTrademarkName()"/>
   </div>
</s:iterator>

