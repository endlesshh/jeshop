 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
 <div id="showServerResult">
    <form action="ShowServery.jspx" method="post" onsubmit="return subServey(2)">
    <s:if test="#request.subClassId!=null">
    </s:if>
    <s:else> 
    </s:else>  
    <input type="hidden" name="subClassId" value="2"/>
    <s:iterator value="getServeryList(2)" status="ls">
    
    
    
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