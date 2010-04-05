<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>My JSP 'ListAdmin.jsp' starting page</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
.STYLE2 {
	color: #FF0000;
	font-size: 12pt;
}
.STYLE3 {color: #666666}
-->
    </style>
</head>

<body>
<!--  
<s:iterator value="jechanclassdao.findAll()" status="chan">
<s:property value="%{getChanName()}" /><s:property value="%{getChanClassId()}" />

</s:iterator>-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
        <td width="26" height="19" align="left" valign="top"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" align="left" valign="top" ><img src="images/images/leftSerch_03.gif" width="24" height="19" /></td>
  </tr>
      <tr>
        <td valign="top" width="26" height="141" align="left"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
        <table width="100%" border="00" cellspacing="1" cellpadding="0">
      <tr>
        <td height="25" colspan="6" align="center" ><span class="STYLE3">
          <s:property value="%{getChannelName()}"/>
          管理</span></td>
      </tr>
      <tr>
        <td width="4%" class="guest_title">编号</td>
        <td width="16%" class="guest_title">添加人【编辑】</td>
        <td width="32%" class="guest_title">【栏目】题目</td>
        <td class="guest_title">添加时间</td>
        <td class="guest_title">删除</td>
        <td width="14%" class="guest_title">修改</td>
      </tr>
      <tr>
        <td height="25" colspan="6"><span class="STYLE2">请在删除和修改操作前确认您是否要修改或者删除！该操作会引起数据的变动！</span></td>
        </tr>
        
         <s:set name="temchannelId" value="getChannelID()"/>
         <s:set name="prlist" value="ListAllNews(#temchannelId,#session.user.getUserId())"/>
      <s:iterator value="#prlist" status="listjeannounce">
        <tr>
          <td class="tdbgmouseover">【
            <s:property  value="%{getArticleId()}"/>】</td>
          <td class="tdbgmouseover"> <s:property  value="%{getAuthor()}"/>【<s:property  value="%{getEditor()}"/>】</td>
          <td class="tdbgmouseover"><s:property  value="%{getTitle()}"/></td>
          <td class="tdbgmouseover">
           <s:date name="%{getUpdateTime()}" format="yyyy年MM月dd日" />          </td>
          <!--删除标签-->
         <s:url id="deleurl" value="/user/deleNews.jspx">
            <s:param name="newsbean.articleId"><s:property  value="%{getArticleId()}"/></s:param>
        </s:url>
        <s:url id="seturl" value="/user/findNews.jspx">
            <s:param name="newsbean.articleId"><s:property  value="%{getArticleId()}"/></s:param>
            <s:param name="channelID"><s:property value="%{#request.channelID}"/></s:param>       
        </s:url>
          
          
          <td align="center" class="tdbgmouseover"><s:a href="%{deleurl}" onclick="return confirm('确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td align="center" class="tdbgmouseover"><s:a href="%{seturl}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
        </tr>
      </s:iterator>
      <tr>
        <td colspan="6" align=center height=20></td></tr>
      <tr>
        <td colspan="6" align=center class="guest_title">
        
        共
          <s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/user/ListNews.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/user/ListNews.jspx">
           <s:param name="page">1</s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/user/ListNews.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextNews" value="/user/ListNews.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/user/ListNews.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">最后一页</s:a>
        </s:if>
        <s:else>
          下一页 最后一页        </s:else></td>
        </tr>
        <tr>
        <td colspan="6" align=center height=20></td></tr>
      <tr>
        <td height="25" colspan="6">&nbsp;</td>
      </tr>
    </table>
        
        </td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
      </tr>
      <tr>
        <td width="26" height="16"><img src="images/images/cenerbutton_03.gif"  /></td>
        <td background="images/images/heibut_03.gif"></td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>

</body>
</html>
