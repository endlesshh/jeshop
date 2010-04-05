<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
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
	editor = $('#content').xheditor(true,{tools:'simple',upImgUrl:"uptofile.jspx",upFlashUrl:"uptofile.jspx",uploadUrl:"uptofile.jspx",uploadExt:"swf,jpg,jpeg,gif,png"})[0].xheditor;
	}
	

		function slideToggle(){
$("#slidShow").slideToggle(500);
}

function ShowLayers(tit,con,n,m)
{
 for(i=1;i<=m;i++)
 {
  eval(con + i).style.display="none";
  eval(tit+i).style.background="#ffffff";;
 }
 eval(tit+n).style.background="#cccccc";
 eval(con + n).style.display="";
}

			

	
</script>
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

#controls {width:100%; margin:0 auto; height:25px}
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
#showMsgTop span{ width:80px; height:25px; padding:3px; margin:1px;
text-align:center; border:1px #CCCCCC outset; border-bottom:0px; cursor:hand; padding-top:5px;}
#showMsgTop div{ height:25px;
text-align:center; border-top:1px #CCCCCC outset; padding-top:5px;}
</style>
<body>
<table  border="00" cellspacing="1" cellpadding="0" class="sortable">
<thread><tr>
  <th width="4%"><input type="checkbox" name="deleID" value="0"></th>
  <th width="5%">消息状态</th><th width="11%">消息收件人</th><th width="24%">消息内容</th><th width="18%">发送时间</th><th>标记删除彻底删除</th></tr></thread>

  <s:set name="pagebean" value="pagedelreadMsg()"/>
<s:iterator value="pagedelreadMsg().getList()">
<tr>
  <td>
  <input type="checkbox" name="deleID" value="<s:property  value="getId()"/>">  </td>
  <td>
<s:if test="getStat()==0">未读</s:if>
<s:if test="getStat()==1">已读</s:if>
<s:if test="getStat()==10">垃圾箱消息</s:if>

</td><td>
<s:set name="rid" value="getReceivId()"/>

<s:if test="#rid==0">
公共消息</s:if>
<s:else>

<s:set name="tempuser" value="getUser(#rid)"/>
<s:property value="#tempuser.getUserName()"/>
</s:else>




</td>


<td title="header=[<s:property value="getsDate()"/>] body=[<s:property  value="getMsg()"/>]">阅读消息</td><td><s:property value="getsDate()"/></td>
<td>
<a href="relDelMsg.jspx?id=<s:property value="getId()"/>&linkUrl=listdelMsg.jsp">
<img  border="0" src="images/userop_10.jpg" ></a>
<a onClick="return confirm('是否确定删除！删除后不可恢复')" href="delOverMsg.jspx?id=<s:property value="getId()"/>&linkUrl=listdelMsg.jsp">
<img border="0" src="images/userop_05.jpg"> </a></td>
</tr>
</s:iterator>
</table>

<div align="center">

     
        
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/listDelMsg.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/listDelMsg.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/listDelMsg.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/listDelMsg.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
          </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/admin/listDelMsg.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
        </s:if>
        <s:else>
        下一页 最后一页        </s:else>

</div>
<s:include value="button.jsp"/>

</body>
</html>
