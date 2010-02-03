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
	<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
    </style>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
.STYLE2 {color: #FF0000}
-->
    </style>
</head>

<body>

<table width="100%" border="00" cellspacing="1" cellpadding="0" style="border:1px #0099FF inset">
  <tr>
    <td width="31%"><table width="100%" border="00" cellspacing="1" cellpadding="0" style="border:1px #0099FF inset">
      <tr>
        <td height="25" colspan="8" align="center" background="images/color.jpg" bgcolor="#0099FF" style="border:1px #0099FF inset"><span class="STYLE1"><s:property value="%{getChannelName()}"/>管理</span></td>
      </tr>
      <tr>
        <td width="2%">编号</td>
        <td width="5%">留言类别</td>
        <td width="5%">留言者</td>
        <td width="5%">最后回复内容</td>
        <td width="5%">最后回复时间</td>
         <td width="5%">是否通过</td>
         <td width="5%">是否有被客户浏览的权限</td>
         <td width="5%">是否置顶</td>
         <td width="5%">是否具有可以回复</td>
        <td width="5%">删除</td>
        <td width="5%">修改</td>
         
      </tr>
      <tr>
       
        <td height="25" colspan="8"><span class="STYLE2">请在删除和修改操作前确认您是否要修改或者删除！该操作会引起数据的变动！</span></td>
        </tr>
      <s:iterator value="listbook" status="je">
        <tr>
          <td><s:property  value="%{getGuestId()}"/></td>
          <td> <s:set name="guestType" value="%{getGuestType()}"/>
          <s:if test="#guestType==0">游客</s:if>
          <s:else>会员</s:else>
          <s:set name="isRe" value="%{getLastReplyTime()}"/>
          <s:if test="#isRe!=null">【<font color=#00ff00>已经回复</font>】【<font color=#00ff00><span onClick="document.all.child0005<s:property value="#jecomment.index"/>.style.display=(document.all.child0005<s:property value="#jecomment.index"/>
          .style.display =='none')?'':'none'" style="cursor:hand; ">查看</span></font>】</s:if>
          <s:else>【<font color=#ff0000>没有回复</font>】</s:else>
          </td>
          <td><s:date name="%{getLastWriteTime()}" format="yyyy年MM月dd日"/> </td>
          <td> <s:property  value="%{getGuestName()}"/></td>
          <td> <s:property  value="%{getLastReplyConetent()}"/></td>
         
          <td> <s:set name="guestIsPrivate" value="%{getGuestIsPrivate()}"/>
           <s:if test="#guestIsPrivate==0">否</s:if>
           <s:else>是</s:else>
          </td>
          <td><s:set name="guestIsPassed" value="%{getGuestIsPassed()}"/>
           <s:if test="#guestIsPassed==0">不通过</s:if>
           <s:else>通过</s:else>
          </td>
          
          <td><s:set name="ontop" value="%{getOnTop()}"/>
           <s:if test="#ontop==0">不置顶</s:if>
           <s:else>置顶</s:else>
          </td>
          
          <td><s:set name="replyIsPrivate" value="%{getReplyIsPrivate()}"/>
           <s:if test="#replyIsPrivate==0">不能回复</s:if>
           <s:else>能回复</s:else>
          </td>
      
         <!--删除标签-->
         <s:url id="deleurl" value="/admin/deleBook.jspx">
            <s:param name="GuestId"><s:property  value="%{getGuestId()}"/></s:param>
        </s:url>
        <s:url id="seturl" value="/admin/initModBook.jspx">
            <s:param name="GuestId"><s:property  value="%{getGuestId()}"/></s:param>
                   
        </s:url>
          
          
          <td><s:a href="%{deleurl}"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a><span class="STYLE2">删除前请确认</span></td>
          <td><s:a href="%{seturl}">回复</s:a></td>
        </tr>
      </s:iterator>
      <tr>
        <td colspan="8" align=center height=20></td></tr>
      <tr>
        <td colspan="8" align=center>共<s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListAd" value="/admin/ListAd.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页
        </s:if>
        <s:else>
            <s:url id="firstAd" value="/admin/ListAd.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstAd}">第一页</s:a>
              <s:url id="preAd" value="/admin/ListAd.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preAd}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextAd" value="/admin/ListAd.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           </s:url>
            <s:a href="%{ListAd}">下一页</s:a>
            <s:url id="nextAd" value="/admin/ListAd.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{ListAd}">最后一页</s:a>
            
        </s:if>
        <s:else>
            下一页 最后一页
        </s:else></td>
        </tr>
        <tr>
        <td colspan="8" align=center height=20></td></tr>
      <tr>
      <tr>
        <td height="25" colspan="8" background="images/color.jpg">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<s:include value="button.jsp"/>
</body>
</html>
