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
	<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
    </style>
  



   <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
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
     <thead>
      <tr>
        <th width="43" align="center" valign="middle" bgcolor="#CCCCCC" class="comment_title">编号</th>
        <th width="200" align="center" valign="middle" bgcolor="#CCCCCC" class="comment_title">评论类型</th>
        <th align="center" valign="middle" bgcolor="#CCCCCC" class="comment_title">用户名称</th>
        <th width="56" align="center" valign="middle" bgcolor="#CCCCCC" class="comment_title">发表时间</th>
        <th width="156" align="center" valign="middle" bgcolor="#CCCCCC" class="comment_title">&nbsp;</th>
        <th width="130" align="center" valign="middle" bgcolor="#CCCCCC" class="comment_title">删除</th> 
        <th width="143" align="center" valign="middle" bgcolor="#CCCCCC" class="comment_title">回复</th>
      </tr></thead>
      <tr>
      
        <td height="25" colspan="7">&nbsp;</td>
        </tr>
      <s:iterator value="pagebean.list" status="jecomment">
        <tr>
          <td align="center" class="title"><s:property  value="%{getCommentId()}"/></td>
          <td width="273" align="center" class="title">
          <s:set name="usertype" value="%{getUserType()}"/>
          <s:if test="#usertype==1">会员评论</s:if>
          <s:else>游客评论</s:else>
            <s:set name="isRe" value="%{getReplyTime()}"/>
          <s:if test="#isRe!=null">【<font color=#00ff00>已经回复</font>】【<font color=#00ff00><span onClick="document.all.child0005<s:property value="#jecomment.index"/>.style.display=(document.all.child0005<s:property value="#jecomment.index"/>
          .style.display =='none')?'':'none'" style="cursor:hand; ">查看</span></font>】</s:if>
          <s:else>【<font color=#ff0000>没有回复</font>】</s:else>          </td>
          <td align="center" class="title"> <s:property  value="%{getUserName()}"/> <s:property  value="%{getEmail()}"/> <s:property  value="%{getIp()}"/></td>
          <td colspan="2" align="center" class="title">
          
          <s:date name="%{getWriteTime()}" format="yyyy年MM月dd日"/>           </td>
          <!--删除标签-->
         <s:url id="deleurl" value="/admin/deleComment.jspx">
            <s:param name="CommentId"><s:property  value="%{getCommentId()}"/></s:param>
        </s:url>
        <s:url id="seturl" value="/admin/ListComment.jspx">
            <s:param name="commentId"><s:property  value="%{getCommentId()}"/></s:param>
        </s:url>
          
          
          <td align="center" class="title"><s:a href="%{deleurl}"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a><span class="STYLE2">删除前请确认</span></td>
          <td align="center" class="title"><s:a href="%{seturl}">回复</s:a></td>
        </tr>
       <tr>
            <td colspan="7" bgcolor="#CCCCCC" style="padding:1px; ">
            <form method="post" action="updateComment.jspx" onSubmit="return confirm('确定要修改评论内容吗？')" name="updateForm<s:property  value="%{getCommentId()}"/>">
              <s:hidden name="commentId" value="%{getCommentId()}"></s:hidden>
            <textarea  name="content" style="width:65%; height:80px;">
            <s:property  value="%{getContent()}"/>
            </textarea>
            <input type="submit" value="修改评论内容" />
            </form>
            </td>
          </tr>
          <tbody id="child0005<s:property value="#jecomment.index"/>"  style="display:none; padding:15px; ">
          
          <td colspan="7">
        回复内容：  <s:property escape="false" value="%{getReplyContent()}"/>
         <br>管理员名称:<s:property  value="%{getReplyName()}"/><br>
          管理员回复时间:<strong>  <s:date name="%{getReplyTime()}" format="yyyy年MM月dd日"/></strong>          </td>
         
          </tr></tbody>
      </s:iterator>
     
      <tr>
        <td colspan="7" align=center>共<s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListAd" value="/admin/ListAllComment.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstAd" value="/admin/ListAllComment.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstAd}">第一页</s:a>
              <s:url id="preAd" value="/admin/ListAllComment.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preAd}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextAd" value="/admin/ListAllComment.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           </s:url>
            <s:a href="%{ListAd}">下一页</s:a>
            <s:url id="nextAd" value="/admin/ListAllComment.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{ListAd}">最后一页</s:a>
        </s:if>
        <s:else>
          下一页 最后一页        </s:else></td>
        </tr>
        <tr>
        <td colspan="7" align=center height=20></td></tr>
    
    </table>
<s:include value="button.jsp"/>
</body>
</html>
