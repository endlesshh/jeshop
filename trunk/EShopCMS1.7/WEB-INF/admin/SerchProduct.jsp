<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %><style type="text/css">
<!--
input {
height:20px;
border:1px #666666 outset;
text-align:left;
vertical-align:middle;
color:#FF0000;
}
-->
</style>

<table  cellpadding="0" cellspacing="0" border="0" class="sortable">

      <tr>

      <td>
         <form action="serProductList.jspx" method="post">   
     
           <select name="product.classId" onchange=window.location.href='ListClassProduct.jspx?channelId=<s:property value="getChannelId()"/>&classId='+this.value+''>
           <!--  -->
           <option value="0">不属于任何栏目属于频道</option>
           
            <s:iterator value="%{ListAllClass(#request.channelId,0,1)}" status="ones">
            <!-- 一级栏目 -->
            <option value="<s:property value="getClassId()"/>"><s:property value="getClassName()"/></option>
            
            
                    <!-- 二级栏目 -->
                     <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelId,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     
                      <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelId,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                 
                             <!-- 显示四级栏目 -->


											<s:set name="parID" value="getClassId()"></s:set>
											<s:set name="depth" value="getDepth()+1"></s:set>
											<s:iterator
												value="%{ListAllClass(#request.channelId,#parID,#depth)}"
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
            </select> 商品名称：<input name="sproductName" size="15" value="<s:property value="getSproductName()"/>" type="text"  />
       商品编号：<input name="sproductCode" size="15" value="<s:property value="getSproductCode()"/>" type="text" />品牌名称：
       <input size="15" name="sprodcutTrad" value="<s:property value="getSprodcutTrad()"/>" type="text"  />
      推荐商品: <input type="checkbox" value="1" style="border:0px" name="sisSet" /> 热卖商品: <input style="border:0px" type="checkbox" value="1" name="sisHot" />
      价格排序:<select name="primin"><option value="1"> 市场价</option>
      <option value="2"> 会员价</option>
      <option value="3"> 团购价</option>
      </select>
      <select name="priasc"><option value="1">倒序</option>
      <option value="2">顺序</option></select>
      <input type="submit" value="快速搜索" />
      <input type="hidden" name="actionID" value="100" />
      <input type="hidden" name="channelId" value="<s:property value="getChannelId()"/>" />
      </form>
      </td>
      
       </tr>
        
        
     </table>
   