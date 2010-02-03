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



<div  class="menu1">
<s:url id="adchan" value="/admin/addChannel.jspx"/>
<s:url id="mdchan" value="/admin/adminChannel.jspx"/>


<div style="height:25px;" onclick="document.all.child1.style.display=(document.all.child1.style.display =='none')?'':'none'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">&nbsp;<span class="STYLE1 STYLE3">频道管理</span></span></div>
<div id="child1" style="display:none;">
<div class="menu2" ><a href="<s:property value="#adchan"/>" target="BoardList">添加频道</a></div>
<div class="menu2"> <a href="<s:property value="#mdchan"/>" target="BoardList">管理频道</a></div>
</div>


</div>




<div class="menu1" >
<div style="height:25px;" onclick="document.all.child2.style.display=(document.all.child2.style.display =='none')?'':'none'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">&nbsp;<span class="STYLE1 STYLE3">网站配置</span></span></div>
<div id="child2" style="display:none;">
<s:url id="Listconfig" value="/admin/Listconfig.jspx"/>
<div class="menu2" ><a href="<s:property value="%{Listconfig}"/>" target="BoardList">系统配置管理</a></div>
<s:url id="adminAnnounce" value="/admin/adminAnnounce.jspx"/>
<s:url id="addAnnounce" value="/admin/addAnnounceList.jspx"/>
<div class="menu2" ><a href="<s:property value="%{adminAnnounce}"/>" target="BoardList">管理公告</a> | <a target="BoardList" href="<s:property value="%{addAnnounce}"/>">添加公告</a></div>

<s:url id="initAddProducter" value="/admin/initAddProducter.jspx"/>
<s:url id="listProducter" value="/admin/listProducter.jspx"/>
<s:url id="listProducter" value="/admin/listProducter.jspx"/>
<s:url id="addPingPai" value="/admin/addTrade.jspx"/>
<s:url id="listPingPai" value="/admin/ListTradMark.jspx"/>

<div class="menu2" ><a href="<s:property value="%{initAddProducter}"/>" target="BoardList">添加厂商店家</a> | <a target="BoardList" href="<s:property value="%{listProducter}"/>">管理</a></div>
<div class="menu2"><a href="<s:property value="%{listPingPai}"/>" target="BoardList">品牌管理</a> | <a href="<s:property value="%{addPingPai}"/>" target="BoardList">品牌添加 </a></div>
<s:url id="ListAllorder" value="/admin/ListAllorder.jspx"/>
<div class="menu2" ><a href="<s:property value="%{ListAllorder}"/>" target="BoardList">网站订单管理</a></div>
<s:url id="ListAllComment" value="/admin/ListAllComment.jspx"/>
<div class="menu2" ><a href="<s:property value="%{ListAllComment}"/>" target="BoardList">网站评论管理</a></div>

<s:url id="ListAllbook" value="/admin/ListAllBook.jspx"/>
<!--  div class="menu2"><a href="<s:property value="%{ListAllbook}"/>" target="BoardList">网站留言管理</a></div>-->
<s:url id="ListAlllinks" value="/admin/ListAllLinks.jspx"/>
<div class="menu2"><a href="<s:property value="%{ListAlllinks}"/>" target="BoardList">友情链接管理</a></div>



<s:url id="adminAd" value="/admin/ListAll.jspx"/>
<div class="menu2" ><a href="<s:property value="%{adminAd}"/>" target="BoardList">页面广告管理</a></div>

<s:url id="adminAd" value="/admin/listUserCard.jspx"/>
<div class="menu2" ><a href="<s:property value="%{adminAd}"/>" target="BoardList">会员卡管理</a></div>






</div>
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

<div class="menu2"><a href=<s:property value="%{addNews}"/> target="BoardList"><s:property value="%{getChannelName()}" />添加</a> | <a href=<s:property value="%{ListNews}"/> target="BoardList">管理</a></div>
<div class="menu2"><a href=<s:property value="%{ListClass}"/> target="BoardList">栏目管理</a> | <a href=<s:property value="%{addClass}"/> target="BoardList">添加栏目</a></div>
<div class="menu2"><a href=<s:property value="%{setChannel}"/> target="BoardList"><s:property value="%{getChannelName()}" />频道设置</a></div>
<!--  <div class="menu2" href="123.htm"> 评论管理</div>-->
<div class="menu2" ><a href=<s:property value="%{addPhoto}"/> target="BoardList">图片添加</a> | <a href=<s:property value="%{adminPhoto}"/> target="BoardList">图片管理</a></div>


 <s:set name="cid"  value="%{getModuleType()}"/>
          <s:if test="#cid==2">  
<s:url id="addProduct" value="/admin/initAddProduct.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>  
<s:url id="ListPro" value="ListProduct.jspx">
<s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
</s:url>      
<div class="menu2"><a href=<s:property value="%{addProduct}"/> target="BoardList">添加商品</a></div>
<div class="menu2"><a href=<s:property value="%{ListPro}"/> target="BoardList">管理商品</a></div>
          </s:if>
          <s:else>     
          </s:else>

</div>

</div>

</s:iterator>
<div class="menu1">
  <div style="height:25px;" onclick="document.all.child4334.style.display=(document.all.child4334.style.display =='none')?'':'none'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">&nbsp;用户管理</span></div>
<div id="child4334" style="display:none;">
<s:url id="hjhj" value="/admin/addAdmin.jsp"></s:url>
<s:url id="hjhj1" value="/admin/listAdmin.jspx"></s:url>
<div class="menu2" > <a href=<s:property value="%{hjhj}"/> target="BoardList">管理员添加</a>  <a href=<s:property value="%{hjhj1}"/> target="BoardList">管理</a></div>


<s:url id="MaUser" value="/admin/ListAllUser.jspx"></s:url>
  <div class="menu2"><a href=<s:property value="%{MaUser}"/> target="BoardList">会员管理</a></div>
 <s:url id="MaUser1" value="/admin/ListUser.jspx"></s:url>
  
 
 

  <div class="menu2">会员组管理</div>
</div>
</div>



<div class="menu1">
<div style="height:25px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">网站版权信息</span></div>
<div class="cy" >
领先网络科技CMS</div>
<div class="cy">版权所有


</div>
</div>




</body>
</html>