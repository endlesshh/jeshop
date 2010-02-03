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

  <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
  <thead>  <tr>
    <th >【栏目名称】</th>
    <th >添加时间</th>
    <th >浏览量</th>
    <th >组图作者</th>
    <th >组图预览 </th>
    <th>修改 </th>
    <th >删除 </th>
    </tr></thead>
  <!--数量循环的开始-->
  <tbody>
  <s:iterator value="pagebean.list" status="jephoto">
  
  
  <tr>
    <td align="center"><s:property value="%{getPhotoName()}"/></td>
    <td align="center"><s:date name="%{getCreateTime()}" format="yyyy年MM月dd日"/></td>
    <td align="center">&nbsp;<s:property value="%{getHits()}"/></td>
    <td align="center"><s:property value="%{getAuthor()}"/></td>
    <td align="center">
    <s:set name="url" value="%{getPhotoUrl()}"/>
    <s:if test="#url!=null">
    <img alt="<s:property value="%{getPhotoName()}"/><s:property value="%{getAuthor()}"/>" src="../upfile/<s:property value="#url"/>" width="60" height="60"/>    </s:if>
    <s:else>
    目前无显示
    </s:else>    </td>
    <s:url id="modUrl" value="/admin/modIndex.jspx">
     <s:param name="jephoto.photoId"><s:property value="%{getPhotoId()}"/></s:param>
    </s:url>
    
    <td align="center"><s:a href="%{modUrl}"><img border="0" src="imgs/openpro_09.jpg"></s:a></td>
    <s:url id="deleUrl" value="/admin/delePhoto.jspx">
     <s:param name="jephoto.photoId"><s:property value="%{getPhotoId()}"/></s:param>
    </s:url>
    
    <td align="center"><s:a href="%{deleUrl}"><img border="0" src="imgs/openpro_10.jpg"></s:a></td>
    </tr>
  </s:iterator>
  <!--数量循环的结束-->
  </tbody>
  
 
    
  <tr>
    <td colspan="7" align="center">共
      <s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/adminPhoto.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/adminPhoto.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/adminPhoto.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/adminPhoto.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/admin/adminPhoto.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
        </s:if>
        <s:else>
    下一页 最后一页        </s:else></td>
    </tr>
</table>

 
<s:include value="button.jsp"/>

</body>
</html>
