<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理导航</title>

<link href="skins/css/style_left.css" rel="stylesheet" type="text/css" />
<style>
.menu1{
font-size:12px;
border:0px #ffffff double;
background:url(images/pics/title_bg_hide.gif);
background-repeat:no-repeat;
width:158px;
cursor:hand;
color:#000000;
}

.menu2{
text-align:left;
vertical-align:middle;
padding-top:10px;

border:1px #ececec double;
color:#000000;
height:18px;


font-size:12px;

}
.cy{
text-align:left;
vertical-align:middle;
padding-top:10px;
background-color : #ffffff;
border:1px #ececec double;
background-image:url(images/pics/title_bg_quit.gif);
color:#000000;
height:18px;

font-size:12px;

}


</style>



<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>

<style type="text/css">
<!--
.STYLE2 {font-size: 12px}
.STYLE5 {font-size: 12px; color: #999999; }
-->
</style>
</head>

<body>

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" style="padding-top:10px; ">
		<table width="180" class="alpha">
		  <tr>
			<td valign="top" class="menu" id="menubar">

<!-- 添加的频道客户自己添加的频道列表 -->

<table border="0" cellspacing="0" cellpadding="0">
<s:iterator value="chanList" status="chan">
<s:set name="pcid"  value="getChannelId()"/>
 <s:if test="CheckAminLevel(#session.admin.adminId,#pcid,null)==true">


<tr><td>

<div class="menu1" style="height:25px; padding-top:2px;"  onclick=$("#child0005<s:property value="#chan.index"/>").slideToggle("slow");>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font color="#ffffff"><s:property value="%{getChannelName()}" />管理</font></div>
<!--收缩函数-->
</td></tr>
<tr><td id="child0005<s:property value="#chan.index"/>" style="display:none;padding:5px;" >
<div style="padding-left:5px;">
<s:url id="addNews"  value="/admin/addListNews.jspx">
<s:param name="channelID"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<s:url id="ListNews" value="/admin/ListNews.jspx">
<s:param name="channelID"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<s:url id="addNewsPass" value="/admin/ListNewsUpass.jspx">
<s:param name="channelID"><s:property  value="%{getChannelId()}"/></s:param>
<s:param name="passtypeNum">0</s:param>
</s:url>
<s:url id="addNewsPassOne" value="/admin/ListNewsUpass.jspx">
<s:param name="channelID"><s:property  value="%{getChannelId()}"/></s:param>
<s:param name="passtypeNum">1</s:param>
</s:url>
<s:url id="addNewsPassTwo" value="/admin/ListNewsUpass.jspx">
<s:param name="channelID"><s:property  value="%{getChannelId()}"/></s:param>
<s:param name="passtypeNum">2</s:param>
</s:url>
<s:url id="ListNews" value="/admin/ListNews.jspx">
<s:param name="channelID"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<s:url id="setChannel" value="/admin/findChannel.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<s:url id="ListClass" value="/admin/adminClass.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<s:url id="addPhoto" value="/admin/photoIndex.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<s:url id="adminPhoto" value="/admin/adminPhoto.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<s:url id="addClass" value="/admin/findClass.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>
<ul style="padding-left:15px;">
 <s:if test="CheckAminLevel(#session.admin.adminId,null,'isMchannel')==true">
<li><a href=<s:property value="%{ListClass}"/> target="frmright">栏目管理</a> </li><li><a href=<s:property value="%{addClass}"/> target="frmright">添加栏目</a></li>
</s:if>
 <s:if test="CheckAminLevel(#session.admin.adminId,null,'isMmetel')==true">
<s:set name="cid"  value="%{getModuleType()}"/>
<!--  div class="menu2"><a href=<s:property value="%{setChannel}"/> target="BoardList"><s:property value="%{getChannelName()}" />频道设置</a></div>
-->
 <s:if test="#cid==1">  

<li><a href=<s:property value="%{addNews}"/> target="frmright"><s:property value="%{getChannelName()}" />添加</a> </li>

<li> <a href=<s:property value="%{ListNews}"/> target="frmright">管理</a></li>
<li><a href=ListNewsUpass.jspx?channelID=<s:property  value="%{getChannelId()}"/>&passtypeNum=0 target="frmright">未审核信息</a> </li>
<li><a href=ListNewsUpass.jspx?channelID=<s:property  value="%{getChannelId()}"/>&passtypeNum=1 target="frmright">通过一审</a> </li>
<li><a href=ListNewsUpass.jspx?channelID=<s:property  value="%{getChannelId()}"/>&passtypeNum=2 target="frmright">通过二审</a> </li>
<li><a href=<s:property value="%{addPhoto}"/> target="frmright">图片添加</a> </li><li><a href=<s:property value="%{adminPhoto}"/> target="frmright">图片管理</a></li>

</s:if>
 
          <s:if test="#cid==2">  
<s:url id="addProduct" value="/admin/initAddProduct.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>  
<s:url id="ListPro" value="ListProduct.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>  
<s:url id="toXLS" value="ShowProXls.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>       
<li><a href=<s:property value="%{addProduct}"/> target="frmright">添加商品</a></li>
<li><a href=<s:property value="%{ListPro}"/> target="frmright">管理商品</a></li>
         
  <li>     <a href=<s:property value="%{adminPhoto}"/> target="frmright">商品组图管理</a></li>
   
   
   <li>     <a href=listOtherProduct.jspx?actionID=1&channelId=<s:property  value="%{getChannelId()}"/> target="frmright">推荐商品</a></li>
  
  <li>     <a href=listOtherProduct.jspx?actionID=2&channelId=<s:property  value="%{getChannelId()}"/> target="frmright">热卖商品</a></li>
  <li>     <a href=listOtherProduct.jspx?actionID=3&channelId=<s:property  value="%{getChannelId()}"/> target="frmright">过期商品</a></li>
  <li>     <a href=listOtherProduct.jspx?actionID=4&channelId=<s:property  value="%{getChannelId()}"/> target="frmright">库存报警商品</a></li>
  
   <li>      <a href=<s:property value="%{toXLS}"/> target="frmright">导出该频道商品到EXCEL</a></li>
         
          </s:if>

          
          
          
         
          <s:if test="#cid==3">
          
                  
            <li>     <a href=ListSoft.jspx?channelId=<s:property  value="%{getChannelId()}"/>  target="frmright">管理软件</a></li>
   
           <li>     <a href=InitAddSoft.jspx?channelId=<s:property  value="%{getChannelId()}"/>  target="frmright">添加新软件</a></li>

           <li><a href=ListsoftUpassOne.jspx?channelId=<s:property  value="%{getChannelId()}"/>&passtypeNum=0 target="frmright">未审核信息</a> </li>
<li><a href=ListsoftUpassOne.jspx?channelId=<s:property  value="%{getChannelId()}"/>&passtypeNum=1 target="frmright">通过一审</a> </li>
<li><a href=ListsoftUpassOne.jspx?channelId=<s:property  value="%{getChannelId()}"/>&passtypeNum=2 target="frmright">通过二审</a> </li>
          </s:if> 
          
          
          
          
          
          </s:if>
</ul>
</div>

</td></tr>

</s:if>

</s:iterator>
</table>


</td>
		  </tr>
		</table>
	</td>
  </tr>
 
</table>
</body>
</html>