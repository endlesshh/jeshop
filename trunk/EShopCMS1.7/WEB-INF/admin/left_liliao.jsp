<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理导航</title>

<style>
.menu1{
background-image:
font-size:12px;
border:0px #ffffff double;

background:url(images/pics/title_bg_hide.gif);
background-color:#ffffff;
width:158px;
cursor:hand;
color:#000000;

}

.menu2{
text-align:left;
vertical-align:middle;
padding-top:10px;
background-color : #ffffff;
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
<style type=text/css>
td {
font-size: 12px;
color: #000000;
line-height: 150%;
}
.sec1 {
background-color: #EEEEEE;
color: #000000;
border-left: 1px solid #FFFFFF;
border-top: 1px solid #FFFFFF;
border-right: 1px solid gray;
border-bottom: 1px solid #FFFFFF
}
.sec2 {
background-color: #D4D0C8;
color: #000000;
border-left: 1px solid #FFFFFF;
border-top: 1px solid #FFFFFF;
border-right: 1px solid gray;
font-weight: bold;
}
.main_tab {
background-color: #f5f5f5;
color: #000000;
border-left:1px solid #FFFFFF;
border-right: 1px solid gray;
border-bottom: 1px solid gray;
}
input.button{width:100%;border:0px;cursor: hand;}
input.button_light{background-color:#eeeeee;}
</style>



<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>


<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE2 {font-size: 12px}
.STYLE5 {font-size: 12px; color: #999999; }
-->
</style>
</head>

<body>




<div class="menu1">
<div style="height:25px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE5"><a href="ListLeft.jspx" >刷新</a>  <a href="index.jsp" target="_top">退出</a></span></div>


</div>



<!-- 添加的频道客户自己添加的频道列表 -->
<s:iterator value="chanList" status="chan">

<div class="menu1">
<div style="height:25px;" onclick="document.all.child0005<s:property value="#chan.index"/>.style.display=(document.all.child0005<s:property value="#chan.index"/>.style.display =='none')?'':'none'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">&nbsp;<span class="STYLE1 STYLE3">
<s:property value="%{getChannelName()}" />管理
</span></span></div>


<div id="child0005<s:property value="#chan.index"/>" style="display:none;">
<s:url id="addNews" value="/admin/addListNews.jspx">
<s:param name="channelID"><s:property  value="%{getChannelId()}"/></s:param>
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

<div class="menu2"><a href=<s:property value="%{ListClass}"/> target="BoardList">栏目管理</a> | <a href=<s:property value="%{addClass}"/> target="BoardList">添加栏目</a></div>
<s:set name="cid"  value="%{getModuleType()}"/>
<!--  div class="menu2"><a href=<s:property value="%{setChannel}"/> target="BoardList"><s:property value="%{getChannelName()}" />频道设置</a></div>
-->
 <s:if test="#cid==1">  
<!--  <div class="menu2" href="123.htm"> 评论管理</div>-->
<div class="menu2"><a href=<s:property value="%{addNews}"/> target="BoardList"><s:property value="%{getChannelName()}" />添加</a> | <a href=<s:property value="%{ListNews}"/> target="BoardList">管理</a></div>

<div class="menu2" ><a href=<s:property value="%{addPhoto}"/> target="BoardList">图片添加</a> | <a href=<s:property value="%{adminPhoto}"/> target="BoardList">图片管理</a></div>

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
<div class="menu2"><a href=<s:property value="%{addProduct}"/> target="BoardList">添加商品</a></div>
<div class="menu2"><a href=<s:property value="%{ListPro}"/> target="BoardList">管理商品</a></div>
         
   <div class="menu2">      <a href=<s:property value="%{adminPhoto}"/> target="BoardList">商品组图管理</a></div>
    <div class="menu2">      <a href=<s:property value="%{toXLS}"/> target="BoardList">导出该频道商品到EXCEL</a></div>
         
          </s:if>
          <s:else>     
          </s:else>

</div>

</div>

</s:iterator>

<div class="menu1">
<div style="height:25px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">网站版权信息</span></div>
<div class="cy" >
领先网络科技CMS</div>
<div class="cy">版权所有


</div>
</div>




</body>
</html>