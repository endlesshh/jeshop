 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
  显示结果： <s:property value="getSurvey(1).getClassName()"/>
    <s:iterator value="getServeryList(1)" status="ls">
  <li>  <s:property value="getTitle()" escape="false"/><br>
         
        <s:set name="id" value="getId()"/>
       <s:set name="ctype"  value="%{getType()}"/>   
       <s:if test="#ctype==4">

         <textarea cols="40" style="border:1px #999999 outset;" rows="5"></textarea>

       </s:if>    
       <s:else>
         <s:iterator value="getListAnswer(#id)" status="ans">
          <s:if test="#ctype==0">   <input  type="radio" name="Servey_<s:property value="#id"/>" /></s:if>
          <s:if test="#ctype==1">   <input  type="checkbox" name="Servey_<s:property value="#id"/>" /></s:if>
          <s:if test="#ctype==2">   <input type="radio" name="Servey_<s:property value="#id"/>" /></s:if> 
          <s:if test="#ctype==3">   <input type="checkbox" name="Servey_<s:property value="#id"/>" /></s:if> 
  </s:iterator>
       </s:else> 
  </li>
      
    </s:iterator>