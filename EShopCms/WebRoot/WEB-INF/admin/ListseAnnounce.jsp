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

      
     <tr>
     <td><form action="serchAn.jspx" method="post">
     <input type="text" name="keyWord" value="<s:property value="getKeyWord()"/>" />
     <input type="submit" value="快速搜索" />
          <a href="adminAnnounce.jspx">返回列表</a>
     </form></td>
     </tr></table>
搜索结果：
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

      
      <thead>  <tr>
        <th  class="date_title">编号</th>
        <th >公告状态</th>
        <th >公告题目</th>
        <th >启用禁用公告</th>
        <th >删除公告</th>
       <th >修改公告</th>
      </tr></thead>
     
      <s:iterator value="lans" status="listjeannounce">
        <tr style="border:1px #CCCCCC thin;">
          <td class="channel_title"><s:property  value="%{getId()}"/></td>
        <td class="channel_title"><s:set name="isab" value="%{getIsSelected()}"></s:set>
                <s:if test="#isab==1"> <font color="#FF0000">公告关闭</font> </s:if>
                <s:if test="#isab==0">  <font color="#009900">公告开通</font></s:if>          </td>
          <td class="channel_title">
          
          <a href="#" onClick="return false;" title="header=[公告内容] body=[<s:property  value="%{getContent()}"/>]">
          <s:property  value="%{getTitle()}"/>
          </a>
          
          <font color="#009933">
           <s:date name="%{getDateAndTime()}" format="yyyy年MM月dd日停止公告" />     
           </font>
                </td>
          <td class="channel_title">
          
          <select onChange="window.location.href=this.value">
          <option> 公告快速启用禁止</option>
           <s:if test="#isab==0"><option value="enableAnnounce.jspx?id=<s:property  value="%{getId()}"/>&enable=1">启用公告</option></s:if>
           
                <s:if test="#isab==1"><option value="enableAnnounce.jspx?id=<s:property  value="%{getId()}"/>&enable=0">禁用公告</option></s:if>         
          
          
          </select>
          
          </td>
          <!--删除标签-->
         <s:url id="deleurl" value="/admin/deleAnnounce.jspx">
            <s:param name="id"><s:property  value="%{getId()}"/></s:param>
        </s:url>
        <s:url id="seturl" value="/admin/findAnnouce.jspx">
            <s:param name="id"><s:property  value="%{getId()}"/></s:param>
        </s:url>
          
          
          <td class="channel_title" ><s:a href="%{deleurl}"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a>            <a href="%{seturl}"></a></td>
          <td class="channel_title"><s:a href="%{seturl}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
        </tr>
      </s:iterator>
  
      <tr>
        <td colspan="6" align=center>
        
         
        共<s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/adminAnnounce.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/adminAnnounce.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/adminAnnounce.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/adminAnnounce.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/admin/adminAnnounce.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">最后一页</s:a>
        </s:if>
        <s:else>
            下一页 最后一页        </s:else>        </td>
        </tr>
    </table>
<s:include value="button.jsp"/>
</body>
</html>
