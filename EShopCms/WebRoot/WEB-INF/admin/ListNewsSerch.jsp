<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
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
<s:include value="listNewsSerchTop.jsp"/>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

      
      <thead>  <tr>
        <th align="center" class="guest_title">编号</th>
        <th align="center" class="guest_title">添加人【编辑】</th>
        <th align="center" class="guest_title">【栏目】题目</th>
        <th align="center" class="guest_title">添加时间</th>
        <th align="center" class="guest_title">&nbsp;</th>
        <th align="center" class="guest_title">删除</th>
        <th align="center" class="guest_title">修改</th>
  </tr></thead><tbody>
     
     <s:set name="pagebean" value="sListNews"/>
      <s:iterator value="sListNews.list" status="listjeannounce">
        <tr>
          <td class="channel_title">【
          <s:property  value="%{getArticleId()}"/>】</td>
          <td class="channel_title"> <s:set name="cid" value="getClassId()"/>
          
          <s:if test="#cid==0">【频道栏目】 </s:if><s:else>【<s:property value="getClassName(#cid)"/>】 </s:else>
          
          
          </td>
          <td align="left" class="channel_title">
         
          <s:property  value="%{getTitle()}"/></td>
          <td class="channel_title">
           <s:date name="%{getUpdateTime()}" format="yyyy年MM月dd日" />          </td>
          <td class="channel_title"><s:property  value="%{getAuthor()}"/></td>
          
         <!--删除标签-->
         <s:url id="deleurl" value="/admin/deleNews.jspx">
            <s:param name="newsbean.articleId"><s:property  value="%{getArticleId()}"/></s:param>
        </s:url>
        <s:url id="seturl" value="/admin/findNews.jspx">
            <s:param name="newsbean.articleId"><s:property  value="%{getArticleId()}"/></s:param>
            <s:param name="channelID"><s:property value="%{#request.channelID}"/></s:param>       
        </s:url>
          
          
          <td class="channel_title"><s:a href="%{deleurl}" onclick="return confirm('确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td class="channel_title"><s:a href="%{seturl}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
        </tr>
        </tbody>
      </s:iterator>
     
      
</table>
<div id="controls">
		<div id="perpage">
			<select onChange="sorter.size(this.value)">
			<option value="5">5</option>
            <option value="1">1</option>
				<option value="10" selected="selected">10</option>
<option value="2" >2</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>选择您的每页的列表数目</span>
		</div>
		<div id="navigation">
			<img src="images/first.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="First Page" onClick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="Last Page" onClick="sorter.move(1,true)" />
		</div>
		<div id="text">当前页：<span id="currentpage"></span> 总页之<span id="pagelimit"></span></div>
	</div>


<div align="center">

     
        
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/SerchNews.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  <s:if test="getSNewsTitle()!=null">
  <s:param name="sNewsTitle"><s:property value="getSNewsTitle()"/></s:param>
  </s:if>
  <s:if test="getSNewsWord()!=null">
  <s:param name="sNewsWord"><s:property value="getSNewsWord()"/></s:param>
  </s:if>
  <s:if test="getSNewsauthor()!=null">
  <s:param name="sNewsauthor"><s:property value="getSNewsauthor()"/></s:param>
  </s:if>
  <s:if test="getSNewscopyFrom()!=null">
  <s:param name="sNewscopyFrom"><s:property value="getSNewscopyFrom()"/></s:param>
  </s:if>
   <s:if test="getSNewsinputer()!=null">
  <s:param name="sNewsinputer"><s:property value="getSNewsinputer()"/></s:param>
  </s:if>
  
  
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/SerchNews.jspx">
           <s:param name="page">1</s:param>
            <s:if test="getSNewsTitle()!=null">
  <s:param name="sNewsTitle"><s:property value="getSNewsTitle()"/></s:param>
  </s:if>
  <s:if test="getSNewsWord()!=null">
  <s:param name="sNewsWord"><s:property value="getSNewsWord()"/></s:param>
  </s:if>
  <s:if test="getSNewsauthor()!=null">
  <s:param name="sNewsauthor"><s:property value="getSNewsauthor()"/></s:param>
  </s:if>
  <s:if test="getSNewscopyFrom()!=null">
  <s:param name="sNewscopyFrom"><s:property value="getSNewscopyFrom()"/></s:param>
  </s:if>
   <s:if test="getSNewsinputer()!=null">
  <s:param name="sNewsinputer"><s:property value="getSNewsinputer()"/></s:param>
  </s:if>
  
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/SerchNews.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/SerchNews.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
            <s:if test="getSNewsTitle()!=null">
  <s:param name="sNewsTitle"><s:property value="getSNewsTitle()"/></s:param>
  </s:if>
  <s:if test="getSNewsWord()!=null">
  <s:param name="sNewsWord"><s:property value="getSNewsWord()"/></s:param>
  </s:if>
  <s:if test="getSNewsauthor()!=null">
  <s:param name="sNewsauthor"><s:property value="getSNewsauthor()"/></s:param>
  </s:if>
  <s:if test="getSNewscopyFrom()!=null">
  <s:param name="sNewscopyFrom"><s:property value="getSNewscopyFrom()"/></s:param>
  </s:if>
   <s:if test="getSNewsinputer()!=null">
  <s:param name="sNewsinputer"><s:property value="getSNewsinputer()"/></s:param>
  </s:if>
  
          </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/admin/SerchNews.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
            <s:if test="getSNewsTitle()!=null">
  <s:param name="sNewsTitle"><s:property value="getSNewsTitle()"/></s:param>
  </s:if>
  <s:if test="getSNewsWord()!=null">
  <s:param name="sNewsWord"><s:property value="getSNewsWord()"/></s:param>
  </s:if>
  <s:if test="getSNewsauthor()!=null">
  <s:param name="sNewsauthor"><s:property value="getSNewsauthor()"/></s:param>
  </s:if>
  <s:if test="getSNewscopyFrom()!=null">
  <s:param name="sNewscopyFrom"><s:property value="getSNewscopyFrom()"/></s:param>
  </s:if>
   <s:if test="getSNewsinputer()!=null">
  <s:param name="sNewsinputer"><s:property value="getSNewsinputer()"/></s:param>
  </s:if>
  
           </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
        </s:if>
        <s:else>
        下一页 最后一页        </s:else>

</div>
<s:include value="button.jsp"/>
</body>
</html>
