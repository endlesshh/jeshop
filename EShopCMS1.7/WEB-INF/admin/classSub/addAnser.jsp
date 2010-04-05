<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

 <script type="text/javascript" src="js/keyS.js"></script>

<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">

var editor;
$(pageInit);

function pageInit()
{
	editor = $('#content').xheditor(true,{tools:'full',upImgUrl:"uptofile.jspx",upFlashUrl:"uptofile.jspx",uploadUrl:"uptofile.jspx",uploadExt:"swf,jpg,jpeg,gif,png"})[0].xheditor;
	}
	

		function slideToggle(){
$("#show").hide();
}

			

	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
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




        <s:set name="cid"  value="getClassId()"/>
        <s:set name="title" value="getAnswer(#cid)"/>
        
        <div>

        <a href="listSubClassTitle.jspx?classId=<s:property value="#cid"/>" >返回所有题目列表</a>
        </div>
         <table  border="00" cellspacing="1" cellpadding="0"  class="sortable">
     
         <tr>
           <td colspan="2"  align="left">
           <font color="#FF0000"><b>
           <s:property value="#title.getTitle()"/></td>
    </b></font>     </tr> 
         <s:iterator value="getAllanswer(#title.getId())" status="las">
         <s:if test="getType()==4">
           <tr>
           <td   align="left">
           <a href="deleAnserinit.jspx?classId=<s:property value="#cid"/>&titleId=<s:property value="#title.getId()"/>&id=<s:property  value="getId()"/>" >删除</a>  简答： 
           </td><td   align="left">
           
           ______________________________________________</td>
         </tr> 
         
         </s:if>
         <s:else>
          <s:set name="ctype" value="#title.getType()"/>    
          <s:if test="#ctype==0">
           <tr>
           <td   align="left">
         <a href="deleAnserinit.jspx?classId=<s:property value="#cid"/>&titleId=<s:property value="#title.getId()"/>&id=<s:property  value="getId()"/>" >删除</a> <input type="radio" value="<s:property value="getId()"/>" name="answerid"/>
         
        
         
         
           </td><td   align="left">
         <s:if test="getRightAnser()==1">
        <font color="#FF0000">【ringht】</font>
         </s:if>
          <s:property escape="false" value="getContent()"/>
           
           </td>
         </tr> 
          </s:if>
          
          
          
          <s:else><tr>
           <td   align="left">
          <a href="deleAnserinit.jspx?classId=<s:property value="#cid"/>&titleId=<s:property value="#title.getId()"/>&id=<s:property  value="getId()"/>" >删除</a> <input  type="checkbox" value="<s:property value="getId()"/>" name="answerid"/>
           </td>
           <td   align="left">
           
          <s:property escape="false" value="getContent()"/>
           
           </td>
         </tr> </s:else>

         
        
         
         </s:else>
        
         
         
         
         </s:iterator>
         
          </table>
        
        
        
<form  action="addAnser.jspx" method="post">
          <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
<input type="hidden" name="titleId" value="<s:property value="#title.getId()"/>" />
<input type="hidden" name="classId" value="<s:property value="#cid"/>" />
  <thead>
         <tr>
           <th colspan="2" bgcolor="#3BA9FE">题目答案添加</th>
         </tr>   </thead>
         <tr>
           <td >题目：</td>
           <td ><s:property value="#title.getTitle()"/></td>
         </tr>
         <tr>
           <td >题目类型：</td>
           <td >
           
          <s:set name="ctype" value="#title.getType()"/>    
          <s:if test="#ctype==0">单项选择</s:if>
          <s:if test="#ctype==1">多项选择</s:if>
          <s:if test="#ctype==2">单选附带简答</s:if> 
          <s:if test="#ctype==3">多选附带简答</s:if> 
          <s:if test="#ctype==4">简答</s:if>           </td>
         </tr>
         <tr>
           <td >答案类型：</td>
           <td >选择：<input type="radio" checked name="type" value="0" />  简答：<input type="radio" onChange="slideToggle()" name="type" value="4" />
           
           (选择简答 无需填写答案内容)            </td>
         </tr>
        
         <tr>
         <div id="show">  <td >答案内容：</td>
           <td >
           
           <textarea name="content" id="content" cols="40" rows="15"></textarea></td> </div>
         </tr>
        
         <tr>
           <td >
         
           
           </td>
           <td >  
           
          非正确答案 <input type="radio" name="rightAnser" checked value="0" /> 正确答案<input type="radio" name="rightAnser" value="1" />
           </td>
         </tr>
         <tr>
           <td ></td>
           <td ><input type="submit" value="添加答案" /></td>
         </tr>
  </table>
        
</form>
        
        
        
        
        
        
      
<s:include value="button.jsp"/>
</body>
</html>
