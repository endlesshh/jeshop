<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
      <tr>
      <td>
       <form action="SerchNews.jspx" method="post">
        <select name="product.classId" onchange=window.location.href='ListNewsByClass.jspx?channelID=<s:property value="getChannelID()"/>&newsbean.classId='+this.value+''>
           <!--  -->
           <option value="0">不属于任何栏目属于频道</option>
           
            <s:iterator value="%{ListAllClass(#request.channelID,0,1)}" status="ones">
            <!-- 一级栏目 -->
            <option value="<s:property value="getClassId()"/>"><s:property value="getClassName()"/></option>
            
            
                    <!-- 二级栏目 -->
                     <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelID,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     
                      <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelID,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                 
                             <!-- 显示四级栏目 -->


											<s:set name="parID" value="getClassId()"></s:set>
											<s:set name="depth" value="getDepth()+1"></s:set>
											<s:iterator
												value="%{ListAllClass(#request.channelID,#parID,#depth)}"
												status="ones">
												<option value="<s:property value="getClassId()"/>">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<s:property value="getClassName()" />
												</option>
											</s:iterator>



											<!-- 显示四级栏目 -->
                     </s:iterator>
                     
                     
                     
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     </s:iterator>
                    <!-- 二级栏目结束 -->
            
            
            </s:iterator>
            </select> 
      
      
     
      题目&nbsp;<input type="text" name="sNewsTitle" value="<s:property value="getSNewsTitle()"/>" size="25" />&nbsp;&nbsp;关键字&nbsp;<input size="5"  value="<s:property value="getSNewsWord()"/>"  type="text" name="sNewsWord" />&nbsp;&nbsp;录入者&nbsp;<input size="5" value="<s:property value="getSNewsinputer()"/>"  type="text" name="sNewsinputer" />&nbsp;&nbsp;作者&nbsp;<input size="5" type="text" value="<s:property value="getSNewsauthor()"/>" name="sNewsauthor" /> &nbsp;&nbsp;来源&nbsp;<input size="5" value="<s:property value="getSNewscopyFrom()"/>" type="text" name="sNewscopyFrom" /> &nbsp;&nbsp;收费文章&nbsp; <input type="checkbox" value="1" name="sIsPay" /><input size="10" type="submit" value="搜索" />
      </form>
      </td>
      </tr>
      </table>
 