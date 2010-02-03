<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title><s:property value="#session.recode" /></title>
    
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
    
    <script language="javascript" >

function check()
{
if(document.getElementById('photoName').value.length<=1)
{
 alert('请填写组图名称');
 document.getElementById('photoName').focus();
 return false;
}
if(document.getElementById('inputer').value.length<=1)
{
 alert('请填写录入者');
 document.getElementById('inputer').focus();
 return false;
}
}
</script>

</head>

<body>
<div style="border:1px #0099FF inset; text-align:center;" align="center">

<div style="border:1px #0099FF inset; background-image:url(images/color.jpg)"> 
&gt;添加管理<s:property value="%{getChannelName()}"/>页面
</div>

<div style="border:0px #0099FF inset; width:80%; text-align:left; height:400px;">
  <s:form name="form" action="/user/addPhoto.jspx" method="post" onsubmit="return check()">
  <s:hidden name="channelId" value="%{#request.channelId}"></s:hidden>
  <s:hidden name="jephoto.templateId" value="%{product.getProductId()}"></s:hidden>
   <s:textfield 
            label="请填写组图标题(标题请保持在50字以内)" 
            id="photoName"
            name="jephoto.photoName"
            tooltip="请填写组图的名称"
            required="true"
            size="60"
            value="%{product.getProductName()}"/>
    

       
        
            
   <s:textfield 
            label="请填写组图的来源" 
            name="jephoto.copyFrom"
            tooltip="填写频道的名称"
            required="true"
            size="60"
            value="%{product.getProductName()}"/>  
            
            
                
            <s:textfield 
            label="请填写作者" 
            name="jephoto.author"
            tooltip="填写文章作者" 
            value="%{product.getProductName()}"/>
               <s:textfield 
            label="请填写录入者" 
            id="inputer"
            name="jephoto.inputer"
            tooltip="填写文章作者" 
            value="添加录入者"/>   
            <s:textfield 
            label="请填写关键词方便搜索" 
            name="jephoto.keyword"
            tooltip="填写文章作者" 
            value="%{product.getProductName()}"/>  
            
            
            
              
           <!-- 开始查找栏目子栏目 -->
          
            <s:hidden name="jephoto.classId" value="%{product.getClassId()}"></s:hidden>
            <!-- 结束查找子栏目 -->
             
             
      <tr><td>上传组图图片</td><td >
         
 <input type="text" size="20" name="filename" /><font color=#ff0000>组图默认显示图片</font><br>
   <textarea name="showimg" rows="8" cols="40"></textarea>
 <iframe align=left width="400" height="150" src="upfile.jsp" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe>
      
      </td></tr>
          
            
          
            
            
        
             
             <s:textarea
            label="请填写组图的简介说明"
            name="jephoto.photoIntro" 
            tooltip="请添加内容" 
            cols="40"
            rows="3"
            value="%{product.getProductIntro()}"/>

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
</div>



<div style="border:1px #0099FF inset; background-image:url(images/color.jpg); height:25px;">

</div>

</div>


</body>
</html>
