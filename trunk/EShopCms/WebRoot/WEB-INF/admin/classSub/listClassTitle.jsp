<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:980px; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
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
<div><a href="listSubClassType.jspx">返回分类</a></div>

<div >
<s:set name="cid" value="getClassId()"/>
<s:property value="#cid"/>
<s:set name="jetype" value="getClassTitle(#cid)"/>

<b>
调查主题：
<font color="#FF0000"><s:property value="%{#jetype.getClassName()}"/>
<s:set name="classType" value="%{#jetype.getClassType()}"/>
</font></b> 
<a  href="#" onClick="document.getElementById('addSubTitle').style.display='block';return false;" >
添加题目</a>

</div>
<form method="post" action="addSubClassTitle.jspx">
<table  border="0" cellpadding="0" cellspacing="0" id="addSubTitle" class="sortable" style="display:none;">
   
<input type="hidden" name="ClassId" value="<s:property value="#cid"/>" />
      <tr>
      <td>题目名称：<input type="text" size="30" name="title" /> 
      单选<input type="radio" checked name="type" value="0" />
      多选<input type="radio" name="type" value="1" />
      单选附带简答<input type="radio" name="type" value="2" />
      多选附带简单<input type="radio" name="type" value="3" />
      简答<input type="radio" name="type" value="4" />
      
      
      总分值：<input type="text" name="allNum" size="8"  value="0.00"/> 
      
      <input type="submit" value="确认添加" />
      
      <a  href="#" onClick="document.getElementById('addSubTitle').style.display='none';return false;" >
关闭</a>
      </td> 
      </tr>
      </table>
</form>




<table  border="0" cellpadding="0" cellspacing="0" id="table" class="sortable">
   
     <thead>
      <tr>
        <th class="nosort">ID</th>
        <th class="nosort">题目</th>
        <th class="nosort">启用</th>
        <th class="nosort">类型</th>
        <th class="nosort">排序</th>
        <th class="nosort">操作</th>
       </tr>
      </thead>
      
     <tbody>
      <s:iterator value="jetitle" status="temptit">
        <tr>
          <td align="center" valign="middle" bgcolor="#ececec"><s:property  value="%{getCorder()}"/></td>
          <td align="left" valign="middle" bgcolor="#ececec"> <s:set name="linkType" value="%{getLinkType()}"/>
         <font color="#FF0000"><b>
         <s:property  value="%{getTitle()}"/>  </b></font>  
         
         <s:if test="#classType==100">
         
           分值：<s:property  value="%{getAllNum()}"/>  
           
           </s:if>
           
             </td>
          <td align="center" valign="middle" bgcolor="#ececec"><s:set name="enable"  value="%{getEnable()}"/>
          <s:if test="#enable==0"><font color="#006600">启用</font>
          <select onChange="window.location.href=this.value">
          <option >选择操作</option>
          <option value="setSubClassTitle.jspx?id=<s:property  value="%{getId()}"/>&enable=1&classId=<s:property value="#cid"/>">禁用</option>
          </select>
          </s:if>
          <s:if test="#enable==1"><font color="#FF0000">禁用</font>
          
          <select onChange="window.location.href=this.value">
          <option>选择操作</option>
          <option value="setSubClassTitle.jspx?id=<s:property  value="%{getId()}"/>&enable=0&classId=<s:property value="#cid"/>">启用</option>
          </select>
          </s:if>           </td>
          <td align="center" valign="middle" bgcolor="#ececec">  <s:set name="ctype"  value="%{getType()}"/> 
          
          <s:if test="#ctype==0">单项选择</s:if>
          <s:if test="#ctype==1">多项选择</s:if>
          <s:if test="#ctype==2">单选附带简答</s:if> 
          <s:if test="#ctype==3">多选附带简答</s:if> 
          <s:if test="#ctype==4">简答</s:if>             </td>
          <td align="center" valign="middle" bgcolor="#ececec">
          
          <select onChange="window.location.href=this.value">
          <option >排序操作</option>
          <option value="paixunSubClassTitle.jspx?id=<s:property  value="%{getId()}"/>&num=1&classId=<s:property value="#cid"/>">往前排</option>
          <option value="paixunSubClassTitle.jspx?id=<s:property  value="%{getId()}"/>&num=-1&classId=<s:property value="#cid"/>">往后排</option>
          </select>          </td>
          <td align="center" valign="middle" bgcolor="#ececec"> 
          <s:if test="#ctype==4">简答</s:if><s:else>
            <a href="addAnserinit.jspx?classId=<s:property value="#cid"/>&id=<s:property  value="%{getId()}"/>">添加答案</a>
          </s:else>
          
         
          
          
          <a href="modSubClassTitleinit.jspx?classId=<s:property value="#cid"/>&id=<s:property  value="%{getId()}"/>">修改   <a onClick="return confirm('确认您是否要删除本项')" href="deleteClassTitle.jspx?classId=<s:property value="#cid"/>&id=<s:property  value="%{getId()}"/>" >删除</a>          </td>
          <!--删除标签-->
        </tr>
        
        <!--该问题所选的答案-->
        <s:set name="tid"  value="%{getId()}"/>
        <s:iterator value="getAllanswer(#tid)" status="las">
        <tr>
          <td align="center" valign="middle" bgcolor="#ececec">&nbsp;</td>
          <td align="left" valign="middle" bgcolor="#ececec">
          
          
           <s:if test="#ctype==0"><input type="radio" name="seleId" value="<s:property value="getId()"/>" /></s:if>
          <s:if test="#ctype==1"><input  type="checkbox" name="seleId" value="<s:property value="getId()"/>" /></s:if>
          <s:if test="#ctype==2">
          <s:if test="getType()==0">
          <input type="radio" name="seleId" value="<s:property value="getId()"/>" />
          </s:if>
          <s:if test="getType()==4||getType()==null">
          请您写入答案：_____________________________________
          </s:if>
          
          </s:if> 
          <s:if test="#ctype==3"> <s:if test="getType()==0">
          <input  type="checkbox" name="seleId" value="<s:property value="getId()"/>" />
          </s:if>
          <s:if test="getType()==4||getType()==null">
          请您写入答案：_____________________________________
          </s:if></s:if> 
          <s:if test="#ctype==4">
          
          
          请您写入答案：_____________________________________
          </s:if>      
          
          
          
          <s:property escape="false" value="getContent()"/></td>
          <td align="center" valign="middle" bgcolor="#ececec">&nbsp;</td>
          <td align="center" valign="middle" bgcolor="#ececec">&nbsp;</td>
          <td align="center" valign="middle" bgcolor="#ececec">&nbsp;</td>
          <td align="center" valign="middle" bgcolor="#ececec">
          
          <a href="deleAnserinit.jspx?classId=<s:property value="#cid"/>&titleId=<s:property value="#tid"/>&id=<s:property  value="getId()"/>" >
          删除答案</a></td>
        </tr>
        </s:iterator>
        <!--该问题所选的答案--->
      </s:iterator>
      </tbody>
    </table>
<div id="controls">
		<div id="perpage">
			<select onChange="sorter.size(this.value)">
			<option value="5">5</option>
				<option value="10" selected="selected">10</option>
<option value="2" >2</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>选择每页显示的条数</span>
		</div>
		<div id="navigation">
			<img src="images/first.gif" width="16" height="16" alt="第一页" onClick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="上一页" onClick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="下一页" onClick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="最后一页" onClick="sorter.move(1,true)" />
		</div>
		<div id="text">显示页信息： <span id="currentpage">1</span> / <span id="pagelimit">1</span></div>
	</div>
         <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
         <script type="text/javascript"  src="../jQuery/script.js">
		</script>
<script language="javascript">
/*
  var sorter = new TINY.table.sorter("sorter");
  sorter.pagesize = 100;
	sorter.head = "head";
	sorter.asc = "asc";
	sorter.desc = "desc";
	sorter.even = "evenrow";
	sorter.odd = "oddrow";
	sorter.evensel = "evenselected";
	sorter.oddsel = "oddselected";
	sorter.paginate = true;
	sorter.currentid = "currentpage";
	sorter.limitid = "pagelimit";
	sorter.init("table",1);
	*/
  </script>
    
    
<s:include value="button.jsp"/>
</body>
</html>
