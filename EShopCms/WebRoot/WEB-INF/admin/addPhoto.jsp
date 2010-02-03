<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title><s:property value="#session.recode" /></title>
  <style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:100%; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
.sortable th {background:url(images/header-bg.gif); height:25px; text-align:left; color:#cfdce7; border:1px solid #fff; border-right:none; font-size:12px;
text-align:center; vertical-align:middle;}
.sortable th h3 {font-size:10px; padding:6px 8px 8px}
.sortable td {padding:4px 6px 6px; border-bottom:1px solid #c6d5e1; border-right:1px solid #c6d5e1}
.sortable .head h3 {background:url(images/sort.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .desc, .sortable .asc {background:url(images/header-selected-bg.gif)}
.sortable .desc h3 {background:url(images/desc.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .asc h3 {background:url(images/asc.gif) 7px  center no-repeat; cursor:pointer; padding-left:18px}
.sortable .head:hover, .sortable .desc:hover, .sortable .asc:hover {color:#fff}
.sortable .evenrow td {background:#fff}
.sortable .oddrow td {background:#ecf2f6}
.sortable td.evenselected {background:#ecf2f6}
.sortable td.oddselected {background:#dce6ee}

#controls {width:980px; margin:0 auto; height:25px}
#perpage {float:left; width:200px}
#perpage select {float:left; font-size:11px}
#perpage span {float:left; margin:2px 0 0 5px}
#navigation {float:left; width:580px; text-align:center}
#navigation img {cursor:pointer}
#text {float:left; width:200px; text-align:right; margin-top:2px}


body,td,th {
	font-size: 12px;
}
a:link {
	color: #666666;
}
a:visited {
	color: #666666;
}
a:hover {
	color: #666666;
}
a:active {
	color: #666666;
}
</style>

</head>

<body>

    <s:set name="TemplateID" value="#product.productId"></s:set>
    <s:if test="#TemplateID!=null">
    <script>
    document.getElementsByName("jephoto.photoName").value="<s:property value="#jephoto.TemplateID"/>";
    </script>
    </s:if>
  
  <s:form name="form" action="/admin/addPhoto.jspx" method="post">
  <s:hidden name="channelId" value="%{#request.channelId}"></s:hidden>
   <s:textfield 
            label="请组图标题(标题请保持在50字以内)" 
            name="jephoto.photoName"
            tooltip="请填写组图的名称"
            required="true"
            size="60"/>
    

       
        
            
   <s:textfield 
            label="请填写组图的来源" 
            name="jephoto.copyFrom"
            tooltip="填写频道的名称"
            required="true"
            size="60"
            value="本站原创"/>      
            <s:textfield 
            label="请填写作者" 
            name="jephoto.author"
            tooltip="填写文章作者" />
               <s:textfield 
            label="请填写录入者" 
            name="jephoto.inputer"
            tooltip="填写文章作者" 
            value="添加录入者"/>   
            <s:textfield 
            label="请填写关键词方便搜索" 
            name="jephoto.keyword"
            tooltip="填写文章作者" 
            value="组图搜索"/>  
            
            
            
              
           <!-- 开始查找栏目子栏目 -->
          
            <tr><td align="right">子栏目
            
  </td><td>
           <select name="jephoto.classId">
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
            </select>
            </td> </tr>
            <!-- 结束查找子栏目 -->
              <tr><td align="right">选择模板</td><td>  <select name="jephoto.templetfile" >
              <s:iterator value="ml_ShowPhoto">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
        
              </s:iterator>
           </select></td></tr>
             
      <tr><td>上传组图图片</td><td >
         
 <input type="text" size="20" name="filename" /><font color=#ff0000>组图默认显示图片</font><br>
   <textarea name="showimg" rows="8" cols="40"></textarea>
 <iframe align=left width="400" height="150" src="upfile.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe>
      
      </td></tr>
          
            
          
            
            
        
             
             <s:textarea
            label="请填写组图的简介说明"
            name="jephoto.photoIntro" 
            tooltip="请添加内容" 
            cols="40"
            rows="3"/>

             <s:datetimepicker name="jephoto.createTime" label="图片添加的时间" value="today">
            </s:datetimepicker>
             
             <s:radio
            tooltip="是否置顶"
            label="是否将组图置顶"
            list="#{'0':'不要置顶，正常显示', '1':'置顶显示该篇'}"
            name="jephoto.onTop"
            listKey="key"
            listValue="value" 
            value="0"/>
            <s:radio
            tooltip="是否推荐显示该篇组图"
            label="是否推荐显示该篇组图"
            list="#{'0':'推荐显示&nbsp', '1':'不推荐显示该篇'}"
            name="jephoto.elite"
            listKey="key"
            listValue="value" 
            value="0"/>

            <s:submit  value="更新频道设置"></s:submit>
            
            
    </s:form>


<s:include value="button.jsp"/>
</body>
</html>
