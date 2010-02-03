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
.STYLE4 {
	color: #663300;
	font-weight: bold;
}
-->
</style></head>

<body>
<table width="850" border="0" align="center" cellpadding="0" cellspacing="0">

<tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
  </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
    <td align="center" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="3" cellpadding="0">
    
    
     <tr>
        <td colspan="3">&nbsp;
        
        <table width="100%" border="0" cellspacing="3" cellpadding="0">
  <tr>
    <td width="15%" height="25">素材名称</td>
    <td width="26%">路径</td>
    <td width="49%">复制路径</td>
    <td width="10%">删除</td>
  </tr>
  <script language="javascript">
 function copyToClipBoard(Str){
   var clipBoardContent=''; 
   clipBoardContent+="http://192.168.1.110:9888"+Str;
   window.clipboardData.setData("Text",clipBoardContent);
   alert('复制成功:路径：'+clipBoardContent);
  }
</script> 
<s:set name="pagebean" value="listMetel(#session.user.getUserId(),6)"/>
  <s:iterator value="listMetel(#session.user.getUserId(),6).list" status="mtis">
  
  <tr>
    <td><s:property value="getMname()"/></td>
    <td><img style="padding:5px;" id="img<s:property value="#mtis.index"/>" src="<%out.write(""+request.getContextPath()+"/upfile/");%><s:property value="getPath()"/>" width=150 height="50"/></td>
    <td><input type="text" value="<%out.write(""+request.getContextPath()+"/upfile/");%><s:property value="getPath()"/>"  onClick="this.select();copyToClipBoard(this.value)"  size=40 /></td>
    <td><input type="button" value="删除" onClick="if(confirm('是否确定删除？')){window.location.href='delSucai.jspx?MetId=<s:property value="getMid()"/>'}else{}" /></td>
  </tr>
  </s:iterator>
 
</table>    


  <br><br>
      <div align="center">
       
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/user/SetSucai.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/user/SetSucai.jspx">
           <s:param name="page">1</s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/user/SetSucai.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="/user/SetSucai.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/user/SetSucai.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">最后一页</s:a>
        </s:if>
        <s:else>
          下一页 最后一页        </s:else>
      </div>
      
    
    
    


    </td>
        </tr>
    
    
      <tr>
        <td colspan="2"><strong>网站素材管理</strong></td>
        <td>&nbsp;</td>
      </tr>
     <form action="SetSucai.jspx" method="post">
      <tr>
        <td colspan="3"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td><span class="STYLE4">填写简单名称</span></td>
            <td><input type="text" name="mName" /></td>
          </tr>
          <input type="hidden" name="UserId" value="<s:property value="#session.user.getUserId()"/>"/>
          <tr>
            <td width="25%"><span class="STYLE4">请上传素材</span></td>
            <s:set name="sloga" value="userInfo.getSiteBanner()"/>            <td width="75%"><input type="text" name="filename"  id="filename" size="40" /></td>
          </tr>
          <tr>
            <td>gif, png, jpg</td>
            <td><iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
          </tr>
         
        </table></td>
      </tr>
     
     
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" value="保存素材" /></td>
        <td>&nbsp;</td>
      </tr></form>
    </table>
    <s:set name="stylist" value="getStyleNameList(10)"/>
    <s:set name="uinfo"  value="getuUserInfo()"/>
    
     <s:set name="pagebean" value="getStyleNameList(10)"/></td>
    <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
  </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>






</body>

