<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
	
	$('#content').xheditor(true,{tools:'simple',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
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
.STYLE5 {color: #FF0000}
-->
</style></head>

<body>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <s:set name="pagebean" value="queryPageBean(#session.user.userId)"/>
    <s:set name="uinfo"  value="getuUserInfo()"/>
    <s:set name="tbid" value="getUserbookId()"/>
    <s:set name="ub" value="getOneUserBook(#tbid)"/>
<tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
    <td align="center" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td height="30" colspan="6" align="center"><span class="STYLE4"><strong>管理员留言回复（留言编号：<s:property value="#ub.getBookId()"/>）</strong></span></td>
        </tr>
       
        
        
        
      <tr>
        <td width="10%" align="center"><span class="STYLE4"><img src="images/list.gif" width="10" height="12">留言主题</span></td>
        <td align="center"><span class="STYLE4">时间</span></td>
        <td width="18%" align="center"><span class="STYLE4">IP地址</span></td>
        <td width="18%" align="center"><span class="STYLE4">eMail</span></td>
        <td width="18%" align="center"><span class="STYLE4">QQ</span></td>
        <td width="24%" align="center"><span class="STYLE4">用户名称</span></td>
        </tr>
      
      <tr>
        <td height="25" align="center"><s:property value="#ub.getBookTitle()"/></td>
        <td align="center"><s:date name="#ub.getSubDate()"/></td>
        <td align="center"><s:property value="#ub.getIp()"/></td>
        <td align="center"><s:property value="#ub.getEmail()"/></td>
        <td align="center"><s:property value="#ub.getQq()"/></td>
        <td align="center"><s:property value="#ub.getNickName()"/></td>
      </tr> 
    
      <tr>
        <td>内容</td>
        <td colspan="5" style="padding:5px;"><s:property escape="false" value="#ub.getContent()"/></td>
        </tr>
       
          <tr>
            <td >管理员回复</td>
            <td colspan="5">&nbsp;</td>
          </tr>
          <tr>
        <td colspan="6">&nbsp;</td>
        </tr>
         <tr>
        <td colspan="6"><hr></td>
        </tr>
    
      
      
      
      <tr>
        <td colspan="6"><form action="reUserBook.jspx" method="post">
          <textarea id="content" name="reContent" cols="30" rows="15"></textarea>
        
        <input type="submit" value="回复留言"/>
        <input type="hidden" name="userbookId" value="<s:property value="getUserbookId()"/>"/><span class="STYLE5">管理员回复后 可以在前台位置显示回复内容
        </span>
        </form></td>
      </tr>
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

