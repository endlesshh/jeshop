<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		$(pageInit);
var editor;
function pageInit()
{
	
	$('#addNews_newsbean_content').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	
}
</script>
<title><s:property value="jenews" /></title>
    
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
    
    <script language="javascript" >

function check()
{
if(document.getElementById('title').value.length<=1)
{
 alert('请填写标题');
 document.getElementById('title').focus();
 return false;
}
if(document.getElementById('subheading').value.length<=1)
{
 alert('请填写副标题');
 document.getElementById('subheading').focus();
 return false;
}
if(document.getElementById('author').value.length<=1)
{
 alert('请填写新闻作者！');
 document.getElementById('author').focus();
 return false;
}
}
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
        <td width="26" height="19" align="left" valign="top"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" align="left" valign="top" ><img src="images/images/leftSerch_03.gif" width="24" height="19" /></td>
  </tr>
      <tr>
        <td valign="top" width="26" height="141" align="left"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <form id="addNews" onSubmit="return check(); return true;" action="modNews.jspx" method="post">
         <s:hidden name="channelID" value="%{#request.channelID}"></s:hidden>
  <s:hidden name="newsbean.channelId" value="%{#request.channelID}"></s:hidden>
    <s:hidden name="newsbean.articleId" value="%{jenews.getArticleId()}"></s:hidden>
<s:hidden name="newsbean.userId" value="%{#session.user.getUserId()}"></s:hidden>
        
          <tr>
            <td>填写标题</td>
            <td><input type="text" name="newsbean.title" size="60" value="<s:property value="%{jenews.getTitle()}"/>" id="title"/></td>
          </tr>
          <tr>
            <td>填写副标题</td>
            <td><input type="text" name="newsbean.subheading" size="60" value="<s:property value="%{jenews.getSubheading()}"/>" id="subheading"/></td>
          </tr>
          <tr>
            <td>填写作者</td>
            <td><input type="text" name="newsbean.author" value="<s:property value="%{jenews.getAuthor()}"/>" id="author"/></td>
          </tr>
          <tr>
            <td>选择栏目</td>
            <td><s:select
            theme="simple"
            tooltip="请选择该频道的子类栏目"
            label="请选择的该处的子栏目"
            list="classMap"
            name="newsbean.classId"
            emptyOption="false"
            value="%{jenews.getClassId()}"/></td>
          </tr>
          <tr>
            <td>添加关键词</td>
            <td> <s:textfield 
            label="请填写关键词" 
            name="newsbean.keyword"
            tooltip="填写文章关键词" 
            theme="simple"
            value="%{jenews.getKeyword()}"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><textarea name="newsbean.content2"   cols="60" rows="20" id="addNews_newsbean_content">
            <s:property value="%{jenews.getContent()}"/>
            
            </textarea></td>
          </tr>
          <tr>
            <td>文章添加时间</td>
            <td> <s:datetimepicker theme="simple" name="newsbean.updateTime" label="文章添加更新的时候" value="today">
            </s:datetimepicker></td>
          </tr>
          <tr>
            <td>包含首页图片</td>
            <td><input type="text" name="filename" size="60" value="<s:property value="%{jenews.getDefaultPicUrl()}"/>" id="filename"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
          </tr>
          <tr>
            <td>是否包含图片</td>
            <td> <s:radio
            tooltip="是否包含图片"
            label="是否包含图片！当前包含图片"
            list="#{'0':'不包含图片', '1':'包含图片'}"
            name="newsbean.includePic"
            listKey="key"
            listValue="value" 
            value="0" theme="simple"/></td>
          </tr>
          <tr>
            <td>是否包含视频</td>
            <td><input type="text" name="vedioname" size="60"  value="<s:property value="%{jenews.getVideoUrl()}"/>" id="vedioname"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><iframe align=left width="400" height="60" src="upfilevideo.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>  <s:radio
            tooltip="是否将改文章新闻置顶"
            label="是否将改文章新闻置顶"
            list="#{'0':'不要置顶，正常显示', '1':'置顶显示该篇'}"
            name="newsbean.onTop"
            listKey="key"
            theme="simple"
            listValue="value" 
            value="%{jenews.getOnTop()}"/>         </td>
          </tr>
           <tr>
            <td>&nbsp;</td>
            <td>  <s:radio
            tooltip="是否做为收费文章"
            label="如果收费！请选择收费，否则请选择不收费"
            list="#{'1':'选择收费', '0':'不选择收费'}"
            name="newsbean.isPayed"
            listKey="key"
            listValue="value" 
             theme="simple"
            value="%{jenews.getIsPayed()}"/>
             <s:textfield 
             theme="simple"
            label="如果收费，请填写该文章收费的点数" 
            name="newsbean.infoPoint"
            tooltip="如果收费，请填写该文章收费的点数" 
            value="%{jenews.getInfoPoint()}"
            
           
            size="2"/>
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td></td>
          </tr>
         
          <tr>
            <td>&nbsp;</td>
            <td> <s:radio
            tooltip="是否推荐显示该篇"
            label="是否推荐显示该篇"
            list="#{'0':'推荐显示&nbsp', '1':'不推荐显示该篇'}"
            name="newsbean.elite"
            listKey="key"
            listValue="value" 
            theme="simple"
            value="%{jenews.getElite()}"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td> <s:radio
            tooltip="是否显示评论"
            label="是否显示评论！如果显示评论,选择显示评论"
            list="#{'0':'不显示显示评论', '1':'显示评论'}"
            name="newsbean.showCommentLink"
            listKey="key"
            listValue="value" 
            theme="simple"
            value="0"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="提交保存"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr></form>
        </table></td>
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
