<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>选择相关内容</title>   
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
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
</head>


<body>

<div align="center">
<font color="#FF0000"><b><s:property value="getErrorMsg()"/></b></font></div>
<form action="passAllNews.jspx" id="suball" method="post">
<input type="hidden" name="channelID" value="<s:property value="getChannelID()"/>" />
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

      
      <thead>  <tr>
        <th align="center" class="guest_title">编号</th>
        <th  align="center" class="guest_title">添加人【编辑】</th>
        <th  align="center" class="guest_title">【栏目】题目</th>
        <th  align="center" class="guest_title">添加时间</th>
     
  </tr></thead><tbody>
     
      <s:iterator value="pagebean.list" status="listjeannounce">
        <tr>
          <td class="channel_title">
          <input type="checkbox" name="deleID" onClick="window.returnValue='<s:property  value="%{getArticleId()}"/>';window.close();" value="<s:property  value="%{getArticleId()}"/>">&nbsp;
          <s:property  value="%{getArticleId()}"/></td>
          <td class="channel_title"> <s:set name="cid" value="getClassId()"/>
          
          <s:if test="#cid==0">【频道栏目】 </s:if><s:else>【<s:property value="getClassName(#cid)"/>】 </s:else>          </td>
          <td align="left" class="channel_title">
         <a target="_blank" href="../front/ShowArticle_<s:property  value="%{getArticleId()}"/>.html" >
          <s:property  value="%{getTitle()}"/>   </a>               </td>
          <td class="channel_title">
           <s:date name="%{getUpdateTime()}" format="yyyy-MM-dd" />          </td>
          
      </tr>
        </tbody>
      </s:iterator>
</table>
<div align="center">
 <script language='javascript'>
      function newsub()
      {
      if(confirm('删除数据后不可以恢复！确定要删除吗?')){return false;}else{return false;}
      }
      </script>
     
        <s:a href="#" onclick="return newsub()"></s:a>  
</div>

<div align="center">

     
        
        共<s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/ListNewsUpass.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  <s:param name="passtypeNum"><s:property value="getPasstypeNum()"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/ListNewsUpass.jspx">
           <s:param name="page">1</s:param>
           <s:param name="passtypeNum"><s:property value="getPasstypeNum()"/></s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/ListNewsUpass.jspx">
              <s:param name="passtypeNum"><s:property value="getPasstypeNum()"/></s:param>
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/ListNewsUpass.jspx">
          <s:param name="passtypeNum"><s:property value="getPasstypeNum()"/></s:param>
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
          </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/admin/ListNewsUpass.jspx">
            <s:param name="passtypeNum"><s:property value="getPasstypeNum()"/></s:param>
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
        </s:if>
        <s:else>
        下一页 最后一页        </s:else>

</div>
</form>

</body>
</html>
