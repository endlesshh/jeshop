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
	
	$('#content').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
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
.STYLE1 {
	color: #663300;
	font-weight: bold;
	font-size: 14px;
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
    <td align="center" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
    <s:set name="stylist" value="getStyleNameList(10)"/>
    <s:set name="uinfo"  value="getuUserInfo()"/>
    
     <s:set name="pagebean" value="getStyleNameList(10)"/>
    <form action="setStyleName.jspx" method="post" onSubmit="return check()">
      <table width="100%" border="0" cellspacing="3" cellpadding="0">
      
        <tr>
          <td colspan="3" align="center"><span class="STYLE1">模板样式选择</span></td>
        </tr>
          <tr>
          <td colspan="3" align="center">
          当前用户选择模板样式为：
          <s:set name="st" value="getuUserInfo()"/>
          <s:property value="#st.getStyleName()"/>
          <s:property value="getStyleShowNames(#st.getStyleName())"/>
          
          </td>
          </tr>
        <tr>
          <td colspan="3" align="center"><hr></td>
          </tr>
      
       <s:iterator  value="#stylist.list" status="style" >
       
       
      <s:if test="#style.index%3==0">
      
       <tr>      </s:if>
       
          <td align="center">
         
          
        
           
           <div>
           <br>
          <img style="padding:15px;" src="../upfile/<s:property value="getStylePic()"/>" width="120" height="120" />          </div>
          
           <div style="background-image:url(images/indexChannelRight_06.gif); height:30px;padding-top:5px;">
         编号：<s:property value="getStyleId()"/>:<s:property value="getStyleShowName()"/>
          <div>
        
          <s:set name="tinfoId" value="getStyleName()"/>
     
          <s:property value="#infoId"/>
           选择：<input 
           <s:if test="#uinfo.styleName.equals(tinfoId)">
           checked
           </s:if>
           
            type="radio" name="styleName" value="<s:property value="getStyleName()"/>"/> 路径：<s:property value="getStylePath()"/>
          </div>      
          </div>
              </td>
       <s:if test="#style.index%3==2">
       
       </tr>
      
      </s:if>
        </s:iterator>
      </table>
      
      <br><br>
      <input type="submit" value="保存选择模板" />
      
      <br><br>
      <div>
       
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/user/getStyleName.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="/user/getStyleName.jspx">
           <s:param name="page">1</s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/user/getStyleName.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="/user/getStyleName.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/user/getStyleName.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">最后一页</s:a>
        </s:if>
        <s:else>
          下一页 最后一页        </s:else>
      </div>
      
    
    
    
    
    </form>
    </td>
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

