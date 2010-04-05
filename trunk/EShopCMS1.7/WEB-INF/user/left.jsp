<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理导航</title>

<style>
ul{
padding:0px;}
li{
margin:2px;list-style:none;
list-style-image:url(image/menu/node.gif);
}
</style>




<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<style type="text/css">
<!--
span{
height:25px; width:100px;
text-align:left;
padding-top:1px;
cursor:hand;
}
a:link {
	color: #333333;
	text-decoration: none;
}
a:visited {
	color: #333333;
	text-decoration: none;
}
a:hover {

	text-decoration: none;

}
a:active {
	color: #333333;
	text-decoration: none;
}
a {
	font-size: 12px;
}
body,td,th {
	font-size: 12px;
	color:#000000;
}
-->
</style>
</head>

<body >
<div align="left">






<div style="height:30px; padding-top:8px; color:#FFFFFF; padding-left:5px; background-image:url(images/channaelToptop_13.gif); background-repeat:no-repeat;">
   
  资料添加管理 </div>

<s:url id="adchan" value="/admin/addChannel.jspx"/>
<s:url id="mdchan" value="/admin/adminChannel.jspx"/>


<s:iterator status="chan"  value="channelInput">
<s:set name="cid"></s:set>
<s:if test="#cid!=null">
<s:set name="chn" value="%{getChannel(#cid)}"></s:set>


<!-- 判断频道 -->
<s:set name="ctype" value="%{#chn.getModuleType()}"></s:set>

<s:if test="#ctype==1">
<!-- 图文频道 -->


<s:url id="MaUser" value="/user/addListNews.jspx">
<s:param name="channelID">
<s:property value="%{#chn.getChannelId()}"/>
</s:param>
</s:url>


<s:url id="linews" value="/user/ListNews.jspx">
<s:param name="channelID">
<s:property value="%{#chn.getChannelId()}"/>
</s:param>
<s:param name="userId">
<s:property value="%{#session.user.getUserId()}"/>
</s:param>
</s:url>


<div style=" background-color:#ececec;">
<img src="images/tree_folder4.gif"/><span onclick="$('#div<s:property value="%{#chn.getChannelId()}"/>').slideToggle('slow')"> <s:property value="%{#chn.getChannelName()}"/></span>
</div>
<ul id="div<s:property value="%{#chn.getChannelId()}"/>">


<li><span><a href="<s:property value="%{MaUser}"/>" target="BoardList">添加资料</a></span></li>
<li><span><a href="<s:property value="%{linews}"/>"  target="BoardList">管理资料</a></span></li>
</ul>


</s:if>
<s:if test="#ctype==2">
<!-- 商城频道 -->

<s:url id="MaUser" value="/user/initAddProduct.jspx">
<s:param name="channelId">
<s:property value="%{#chn.getChannelId()}"/>
</s:param>
</s:url>
<s:url id="linews" value="/user/ListProduct.jspx">
<s:param name="channelId">
<s:property value="%{#chn.getChannelId()}"/>
</s:param>
<s:param name="userId">
<s:property value="%{#session.user.getUserId()}"/>
</s:param>
</s:url>
<div style=" background-color:#ececec;">
<img src="images/tree_folder4.gif"/><span style="text-align:left; font-size:12px;" onclick="$('#div<s:property value="%{#chn.getChannelId()}"/>').slideToggle('slow')"> <s:property value="%{#chn.getChannelName()}"/></span>
</div>
<ul    id="div<s:property value="%{#chn.getChannelId()}"/>">
<li><a href="<s:property value="%{MaUser}"/>" target="BoardList">添加商品</a></li>
<li><a href="<s:property value="%{linews}"/>"  target="BoardList">管理商品</a></li>
</ul>
</s:if>
</s:if>
</s:iterator>
</div>
</body>
</html>