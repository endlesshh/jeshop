 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
 <div id="showServerResult">
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/boxover.js"></script>




<a href="ViewServ_<s:property value="getSubClassId()"/>.html?Index_listAll_SeverySimple.jsp">调查</a>
总票数：<s:property value="allSubNum"/>


    <s:iterator value="resTitle" status="ls">
    <br>
    <s:property value="getTitle()" escape="false"/><br>
         
        <s:set name="id" value="getId()"/>
       <s:set name="ctype"  value="%{getType()}"/>   
       <s:if test="#ctype==4">
         
         <textarea cols="40" style="border:1px #999999 outset;" rows="2"></textarea>
       </s:if>    
       <s:else>
         <s:iterator value="getListAnswer(#id)" status="ans">
         
         <li style="list-style-type:none;">
          <s:if test="#ctype==0">   <input  type="radio" name="Servey_<s:property value="#id"/>" />
          <!--
          <s:property escape="false" value="getContent()"/>
          -->
          
           <div style="padding:3px; margin:3px;">
           <img src="<s:property  value="getDefaultPicUrl()"/>" width="120" height="120" border="0" style="border:1px #CCCCCC outset; padding:3px;" />
           <br>
           <input  type="radio"  value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].ansId" />&nbsp;<s:property value="getShortTitle()" />
           <br >
       
           <br>
           <input type="button" value="详细资料" onclick=""/><input type="submit" value="投票" onclick=""/>
           </div>
          
          
          
          </s:if>
          <s:if test="#ctype==1">   <input  type="checkbox" name="Servey_<s:property value="#id"/>" /><s:property escape="false" value="getContent()"/></s:if>
          <s:if test="#ctype==2">  
           <s:if test="getType()==0">
             <input type="radio" value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].ansId" />
              <s:property value="getContent()" escape="false"/>
             </s:if>
              <s:if test="getType()==4">
               <s:property value="getContent()" escape="false"/>
             <textarea cols="40" name="ansList[<s:property value="#ls.index"/>].content"  style="border:1px #999999 outset;" rows="5">
             
             </textarea>
             </s:if>
          
          
          
          </s:if> 
          <s:if test="#ctype==3">   <s:if test="getType()==0">
             <input type="checkbox" value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].mitId" />
              <s:property value="getContent()" escape="false"/>
             </s:if>
              <s:if test="getType()==4">
               <s:property value="getContent()" escape="false"/>
             <textarea cols="40" name="ansList[<s:property value="#ls.index"/>].content"  style="border:1px #999999 outset;" rows="5">
             
             </textarea>
             </s:if>
             
             </s:if> 
          <span style="height:22px; text-align:left; margin:3px; width:150px;background-image:url(images/servey-back.jpg); background-position:bottom; border: 1px #ececec outset;">
          <s:set name="tid" value="getId()"/>
          <span style=" background-image:url(images/servey-back.jpg);width:<s:property value="getSubAmount()"/>;  height:100%;">
          
          <s:property value="getSubAmount()"/>/<s:property value="allSubNum"/>
          </span>
          
          </span>
          
          
          </li>
     </s:iterator>
       </s:else> 
    </s:iterator>
    <br>


    </div>