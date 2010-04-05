<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
<meta HTTP-EQUIV="Content-Type" content="text/html; charset=utf-8">
<link href=../css.css rel=STYLESHEET type=text/css>
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<style>
.navPoint
	{
	font-family: Webdings;
	font-size:9pt;
	color:white;
	cursor:hand;
	}
p{
	font-size:9pt;
}
</style>
<script>
function switchSysBar(){

$("#uname").html("<font color=#ff0000>zheshiwode xianshiwenti</font>");
	if (switchPoint.innerText==3){
		switchPoint.innerText=4
		document.all("frmTitle").style.display="none"
	}
	else{
		switchPoint.innerText=3
		document.all("frmTitle").style.display=""
	}
}
</script><title>领先网络科技CMS</title>

<style type="text/css">
<!--
.STYLE5 {color: #0066FF;
font-size:12px;}
body {
	font-size:12px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.channel{
float:left; 
padding-top:5px;}
li{
margin:4px;list-style:none;

list-style-image:url(image/menu/node.gif);
}
span{
height:25px; width:100px;
text-align:center;
padding-top:5px;
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
	color: #333333;
	text-decoration: none;
	background-image:url(images/channaelToptop_13.gif);
	text-align:center;
	padding-top:8px;
	width:130px;
	height:30px;
	color:#FFFFFF;
}
a:active {
	color: #333333;
	text-decoration: none;
}
a {
	font-size: 12px;
}
-->
</style>
</head>
<body scroll="no" >
<s:if test="#session.user==null">
<script language=javascript>
window.location.href="index.jspx";
</script>

</s:if>

<script language=javascript>

function showMenu11(objid)
{
  $("#div1").show();
  $("#div2").hide();
  $("#div3").hide();
  $("#div4").hide();
  $("#div22").hide();
  
}
function showMenu12(objid)
{

  $("#div1").hide();
  $("#div2").show();
  $("#div3").hide();
  $("#div4").hide();
  $("#div22").hide();
  $("#frmright").src='userMain.jspx';
}
function showMenu13(objid)
{

  $("#div1").hide();
  $("#div3").show();
  $("#div2").hide();
  $("#div4").hide();
  $("#div22").hide();
  
}
function showMenu14(objid)
{

  $("#div1").hide();
  $("#div3").hide();
  $("#div2").hide();
  $("#div22").hide();
  $("#div4").show();
  
  
}
function showMenu122(objid)
{

  $("#div1").hide();
  $("#div3").hide();
  $("#div2").hide();
  $("#div4").hide();
  $("#div22").show();
  
}



</script>




<div style=" width:100%; border-bottom:1px #FF0000   outset; vertical-align:bottom; ">
<div style="height:40px; padding-top:5px;">
&nbsp;&nbsp;&nbsp;<s:property value="#session.user.getUserName()"/>您好！欢迎登陆会员管理系统
<a href="userMain.jspx" target="BoardList">管理首页</a>
</div>
<li class="channel"  ><span title="header=[会员基本信息] body=[会员基本信息中包含您购物的基本信息，以及您的账号，充值等功能]"  onClick="showMenu11(1)" style="padding:3px; cursor:hand; border:1px #663300 outset; border-bottom:0xp;">会员信息管理 </span></li>

<li class="channel"  ><span title="header=[消息中心] body=[和管理员通讯基本功能]"  onClick="showMenu122(22)" style="padding:3px; cursor:hand; border:1px #663300 outset; border-bottom:0xp;">消息中心 </span></li>

<s:if test="#session.user.groupId>1">


<li class="channel" ><span title="header=[网站管理] body=[您的网站建设好以后，您可以及时的管理您的网站信息，包括留言和订单，以及您及时处理订单]" onClick="showMenu12(2)" style="padding:3px; cursor:hand;border:1px #663300 outset; border-bottom:0xp;">网站管理</span></li>
<li class="channel" ><span onClick="showMenu14(2)" title="header=[网站自定义功能] body=[网站自定义功能可以根据您的要求来自己定义网站，美化网站]" 


style="padding:3px;  cursor:hand;border:1px #663300 outset; border-bottom:0xp;">网站自定义</span></li>
<li class="channel"><span onClick="showMenu13(3)"title="header=[资料管理详细] body=[您的网站建成以后，您可以根据您的权限，上传商品等资料]"  style="padding:3px;cursor:hand; border:1px #663300 outset; border-bottom:0xp;">资料管理</span></li>
<li class="channel"><span onClick="window.location.href='index.jspx'" style="padding:3px;cursor:hand; border:1px #663300 outset; border-bottom:0xp;">注销登录</span></li>
</s:if>


</div>






<table width="100%" border="0" cellspacing="0" cellpadding="0">

      <tr>
        <td valign="top" width="26" height="141" align="left">&nbsp;</td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" height="100%" border="00" cellspacing="0" cellpadding="0">
  <tr>
   <td width="3" ></td>  <td width="160"  valign="top">
   <br>
   <div id="div1" >
   <div style="height:30px; padding-top:8px; color:#FFFFFF; padding-left:5px; background-image:url(images/channaelToptop_13.gif); background-repeat:no-repeat;">
   
   用户基本信息   </div>
   
 
    <li><a href="ListFav.jspx?user.userId=<s:property value="%{#session.user.getUserId()}"/>" target="BoardList">收藏夹管理</a></li> 
    <li><a href="../front/buycar.jspx" target="_blank">购物车管理</a></li>
     <li><a href="lookUpOrderForm.jspx" target="BoardList">订单查询</a></li>
      <li><a href="modMyMsg.jspx?id=<s:property value="%{#session.user.getUserId()}"/>" target="BoardList">修改会员头像</a></li>
      <li><a href="FindUserDetail.jspx?userId=<s:property value="%{#session.user.getUserId()}"/>" target="BoardList">修改会员详细信息</a></li>
       <li><a href="setPassword.jspx" target="BoardList">修改密码</a></li>
        <li><a href="sonsum.jspx" target="BoardList">积分查阅转化</a></li>
        <li><a href="addSonsum.jspx" target="BoardList">卡号充值</a></li>
        <li><a href="index.jspx" target="top">退出登录</a></li>
        
        
   </div>
   
   <div id="div22" style="display:none;" >
   <div style="height:30px; padding-top:8px; color:#FFFFFF; padding-left:5px; background-image:url(images/channaelToptop_13.gif); background-repeat:no-repeat;">
   
   信息中心   </div>
   
    
    <li><a href="ListReceveMsg.jspx" target="BoardList">收件箱</a></li> 
    <li><a href="SendMsg.jspx" target="BoardList">发送消息</a></li>
    <li><a href="listSendMsg.jspx" target="BoardList">发件箱</a></li>
    <li><a href="listDelMsg.jspx" target="BoardList">垃圾箱</a></li>
    
        
        
   </div>
   
   <div id="div2" style="display:none;">
    <div style="height:30px; padding-top:8px; color:#FFFFFF; padding-left:5px; background-image:url(images/channaelToptop_13.gif); background-repeat:no-repeat;">
   
   用户网站管理   </div>
   <li><a href="listUserBook.jspx" target="BoardList">网站留言管理</a></li>
   <li><a href="listUserOrder.jspx" target="BoardList" >网站订单管理</a></li>
    <li><a href="initJianjieUs.jspx" target="BoardList">网站简介管理</a></li>
   <li><a href="initAnnounce.jspx" target="BoardList">发布网站公告</a></li>
   <li><a href="initLinkUs.jspx" target="BoardList">网站联系我们</a></li>
   <li><a href="initsetsongHuo.jspx" target="BoardList">送货说明</a></li>
   <li><a href="initshouHouUs.jspx" target="BoardList">售后服务</a></li>
   <li><a href="initShowMoney.jspx" target="BoardList">付款说明</a></li>
   </div>
   
   <div id="div4" style="display:none;">
     <div style="height:30px; padding-top:8px; color:#FFFFFF; padding-left:5px; background-image:url(images/channaelToptop_13.gif); background-repeat:no-repeat;">
   
   自定义网站   </div>
   <li><a href="MainWeb.jspx" target="BoardList">启动建站向导</a></li>
   <li><a href="initSetup.jspx" target="BoardList">网站简单配置</a></li>
   <li><a href="initindexLogo.jspx" target="BoardList">标志形象管理</a></li>
   <li><a href="setUserchan.jspx" target="BoardList">网站频道管理</a></li>
   <li><a href="listUserClass.jspx" target="BoardList">商品分类管理</a></li>
   <li><a href="initindexLeft.jspx" target="BoardList">首页左栏修改</a></li>
   <li><a href="initindexMain.jspx" target="BoardList">首页促销修改</a></li>
   <li><a href="initindexTop.jspx" target="BoardList">自定义首页广告</a></li>
   <li><a href="listPage.jspx" target="BoardList">自定义页面管理</a></li>
   <li><a href="initSucai.jspx" target="BoardList">网站素材管理</a></li>
   <li><a href="getStyleName.jspx" target="BoardList">网站模板选择</a></li>
  
   </div>
   
   
   
   <div style="display:none;" id="div3">
  
   <IFRAME id="BoardTitle" name="main" style="HEIGHT: 800px; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 2" scrolling="no" frameborder="0" src="userLeft.jspx"></IFRAME>
   </div>
    







</td>
<td width="5" ></td>
    <td valign="top" >
   
    <iframe  align="center" id="frmright"  src="userMain.jspx" name="BoardList" style="HEIGHT: 650px; VISIBILITY: inherit; WIDTH: 100%;padding:10px 10px 10px 10px; Z-INDEX: 1" scrolling="auto" frameborder="0" allowtransparency="true" ></iframe>    </td>
  </tr>
</table></td>
  </tr>
</table>




</body>

</html>
