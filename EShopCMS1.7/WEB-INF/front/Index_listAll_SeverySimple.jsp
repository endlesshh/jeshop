   <%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><s:property value="configBean.getSiteName()"/></title>

</head>

<body>
<s:include value="top.jsp"/>
<table width="920" align="center"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="middle" height="50"  >
 <div id="showServerResult">
    <form action="ShowServery.jspx" method="post" onsubmit="return subServey(2)">
    <s:set name="subClassId" value="getSubClassId()"/>
    
    <input type="hidden" name="subClassId" value="2"/>
    <s:iterator value="getServeryList(#subClassId)" status="ls">
    
    
    
    <br> <s:property value="#ls.index+1"/>.<s:property value="getTitle()" escape="false"/><br>
         
        <s:set name="id" value="getId()"/>
       <s:set name="ctype"  value="%{getType()}"/>  
       <s:if test="#ctype==4">
       <s:property value="getContent()" escape="false"/>
         <input type="hidden" name="ansList[<s:property value="#ls.index"/>].titId" value="<s:property value="#id"/>"/>
         <textarea cols="40" name="ansList[<s:property value="#ls.index"/>].content"  style="border:1px #999999 outset;" rows="5"></textarea>
       </s:if>
       <s:else>
         <s:set name="clist" value="#ls.index"/>
        <ul >
         <s:iterator value="getListAnswer(#id)" status="ans">
         
         <li style=" list-style-type:disc;">
          <s:if test="#ctype==0">   <input  type="radio"  value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].ansId" />
           <s:property value="getContent()" escape="false"/>
          </s:if>
          <s:if test="#ctype==1">   <input  type="checkbox" value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].mitId" />
           <s:property value="getContent()" escape="false"/>
          </s:if>
          <s:if test="#ctype==2"> 
          
             <s:if test="getType()==0">
             <input type="radio" value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].ansId" />
              <s:property value="getContent()" escape="false"/>
             </s:if>
              <s:if test="getType()==4">
               <s:property value="getContent()" escape="false"/>
               <input type="hidden" name="ansList[<s:property value="#ls.index"/>].id" value="<s:property value="getId()"/>"/>
             <textarea cols="40" name="ansList[<s:property value="#ls.index"/>].content"  style="border:1px #999999 outset;" rows="5">
             
             </textarea>
             </s:if>
            
          
          
          </s:if> 
          <s:if test="#ctype==3">  
          <s:if test="getType()==0">
             <input type="checkbox" value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].mitId" />
              <s:property value="getContent()" escape="false"/>
             </s:if>
              <s:if test="getType()==4">
               <s:property value="getContent()" escape="false"/>
               <input type="hidden" name="ansList[<s:property value="#ls.index"/>].id" value="<s:property value="getId()"/>"/>
             <textarea cols="40" name="ansList[<s:property value="#ls.index"/>].content"  style="border:1px #999999 outset;" rows="5">
             
             </textarea>
             </s:if>
          
          
          </s:if> 
         
          </li>
     </s:iterator>
     </ul>
       </s:else> 
    </s:iterator>
    <br>
<input type="submit" value="提交投票结果" />
    </form>
    </div>
    </td></tr></table>
    <s:include value="buttom.jsp"/>