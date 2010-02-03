<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
<s:head />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		function slideToggle(){
$("#slidShow").slideToggle(500);
}

$(pageInit);
var editor;
function pageInit()
{
	
	$('#strcontent').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
}

function check()
{
  if($("#pname").value.length==0)
  {
  alert('请填写自定义页面的名称');
  $("#pname").focus();
  return false;
  }
}
	
	


			

	
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
	padding:

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
.STYLE4 {color: #663300}
-->
</style></head>

<body>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

<tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
    <td align="center" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td height="30" colspan="6" align="center" class="guest_title_760"><span class="STYLE4"><strong>客户留言管理</strong></span></td>
        </tr>
         <s:set name="pagebean" value="queryPageBean(#session.user.userId)"/>
    <s:set name="uinfo"  value="getuUserInfo()"/>
    
    <s:set name="ub" value="queryPageBean(#session.user.userId)"/>
        
        
        <s:iterator value="#ub.list">
      <tr>
        <td width="10%" align="center" class="guest_title"><span class="STYLE4"><img src="images/list.gif" width="10" height="12">留言主题</span></td>
        <td align="center" class="guest_title"><span class="STYLE4">时间</span></td>
        <td width="18%" align="center" class="guest_title"><span class="STYLE4">IP地址</span></td>
        <td width="18%" align="center" class="guest_title"><span class="STYLE4">eMail</span></td>
        <td width="18%" align="center" class="guest_title"><span class="STYLE4">QQ</span></td>
        <td width="24%" align="center" class="guest_title"><span class="STYLE4">用户名称</span></td>
        </tr>
      
      <tr>
        <td height="25" align="center" class="guest_tdbg_1px"><s:property value="getBookTitle()"/></td>
        <td align="center"><s:date name="getSubDate()"/></td>
        <td align="center"><s:property value="getIp()"/></td>
        <td align="center"><s:property value="getEmail()"/></td>
        <td align="center"><s:property value="getQq()"/></td>
        <td align="center"><s:property value="getNickName()"/></td>
      </tr> 
    
      <tr>
        <td class="guest_tdbg_1px"><strong>内容</strong></td>
        <td colspan="5" style="padding:5px;"><s:property escape="false" value="getContent()"/></td>
        </tr>
       
          <tr>
            <td class="guest_tdbg_1px" ><strong>管理员回复</strong></td>
            <td colspan="5"><s:property escape="false" value="getReContent()"/></td>
          </tr>
          <tr>
        <td colspan="6" class="guest_title">【<a href="initreUserBook.jspx?userbookId=<s:property value="getBookId()"/>"><font color="#00CC00">回复留言</font></a>】【<a href="DeleUserBook.jspx?userbookId=<s:property value="getBookId()"/>" onClick="return confirm('您确定要删除留言吗？删除后不可以恢复!')"><font color="#FF0000">删除留言</font></a>】</td>
        </tr>
        
      </s:iterator>
      
      
      
      <tr>
        <td colspan="6"><div class="guest_title_760">
       
        共
            <s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/user/listUserBook.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/user/listUserBook.jspx">
           <s:param name="page">1</s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/user/listUserBook.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="/user/listUserBook.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/user/listUserBook.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
        </s:if>
        <s:else>
          下一页 最后一页        </s:else>
      </div>    </td>
        </tr><form action="ShowMoney.jspx" method="post"></form>
    </table>
    <s:set name="stylist" value="getStyleNameList(10)"/>
    <s:set name="uinfo"  value="getuUserInfo()"/>
    
     <s:set name="pagebean" value="getStyleNameList(10)"/></td>
    <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
  </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif"></td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>

</body>

