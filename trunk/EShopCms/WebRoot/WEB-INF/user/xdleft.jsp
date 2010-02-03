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

background-color:#ffffff;

width:158px;
cursor:hand;
color:#000000;

}

.menu2{
text-align:center;
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








<div  class="menu1">


<s:url id="adchan" value="/admin/addChannel.jspx"/>
<s:url id="mdchan" value="/admin/adminChannel.jspx"/>

<SCRIPT LANGUAGE="JavaScript" src="treeMenu.js"></Script>
<SCRIPT LANGUAGE="JavaScript">
var myTime = new Date();
var timeNow = myTime.getTime();
ImgDir = "image/menu/";
SetFolderIcon("desktop.gif");
treeMenuAddItem(0, "会员管理系统");


        
		treeMenuAddItem(1, '个人信息管理');	
		treeMenuAddItem(2, '用户管理首页', 'userMain.jspx', 'BoardList');
		treeMenuAddItem(2, '收藏夹管理', 'ListFav.jspx?user.userId=<s:property value="%{#session.user.getUserId()}"/>', '_blank');	
		treeMenuAddItem(2, '购物车管理', '../front/buycart.jsp', '_blank');
		treeMenuAddItem(2, '订单查询', 'lookUpOrderForm.jspx','BoardList');
		treeMenuAddItem(2, '修改会员头像', 'modMyMsg.jspx?user.userId=<s:property value="%{#session.user.getUserId()}"/>', 'BoardList');
		treeMenuAddItem(2, '修改密码', 'setPassword.jsp', 'BoardList');
		treeMenuAddItem(2, '积分查阅转化', 'sonsum.jsp','BoardList');
		treeMenuAddItem(2, '卡号充值', 'addSonsum.jsp', 'BoardList');
		
		treeMenuAddItem(1, '网站管理');
		
		treeMenuAddItem(2, '启动建站向导', 'initSetup.jspx', 'BoardList');
		treeMenuAddItem(2, '网站简单配置', 'initSetup.jspx', 'BoardList');
		treeMenuAddItem(2, '网站留言管理', 'listUserBook.jspx', 'BoardList');
		treeMenuAddItem(2, '网站订单管理', 'listUserOrder.jspx', 'BoardList');	
		treeMenuAddItem(2, '标志形象管理', 'initindexLogo.jspx', 'BoardList');	
		treeMenuAddItem(2, '网站频道管理', 'setUserchan.jspx', 'BoardList');	
		treeMenuAddItem(2, '商品分类管理', 'listUserClass.jspx', 'BoardList');	
		treeMenuAddItem(2, '首页左栏修改', 'initindexLeft.jspx', 'BoardList');
		treeMenuAddItem(2, '首页促销修改', 'initindexMain.jspx', 'BoardList');
		treeMenuAddItem(2, '自定义首页广告', 'initindexTop.jspx', 'BoardList');
		treeMenuAddItem(2, '自定义页面管理', 'listPage.jspx', 'BoardList');
		treeMenuAddItem(2, '网站素材管理', 'initSucai.jspx', 'BoardList');
		
		treeMenuAddItem(2, '网站模板选择', 'getStyleName.jspx','BoardList');
		treeMenuAddItem(2, '网站简介管理', 'initJianjieUs.jspx','BoardList');
		treeMenuAddItem(2, '发布网站公告', 'initAnnounce.jspx', 'BoardList');
		treeMenuAddItem(2, '网站联系我们', 'initLinkUs.jspx', 'BoardList');
		treeMenuAddItem(2, '送货说明', 'initsetsongHuo.jspx', 'BoardList');
		treeMenuAddItem(2, '售后服务', 'initshouHouUs.jspx', 'BoardList');
		treeMenuAddItem(2, '付款说明', 'initShowMoney.jspx', 'BoardList');
		</Script>



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


<SCRIPT LANGUAGE="JavaScript" >

        SetFolderIcon("my.gif");
		treeMenuAddItem(1,"<s:property value="%{#chn.getChannelName()}"/>信息");
		treeMenuAddItem(2, '添加资料', '<s:property value="%{MaUser}"/>', 'BoardList');
		treeMenuAddItem(2, '管理资料', '<s:property escape="false" value="%{linews}"/>', 'BoardList');	
</script></s:if>




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



<SCRIPT LANGUAGE="JavaScript" >
        SetFolderIcon("my.gif");
		treeMenuAddItem(1,"<s:property value="%{#chn.getChannelName()}"/>");
		treeMenuAddItem(2, '添加商品', '<s:property value="%{MaUser}"/>', 'BoardList');
		treeMenuAddItem(2, '管理商品', '<s:property escape="false" value="%{linews}"/>', 'BoardList');	
</script>
</s:if>
</s:if>
</s:iterator>

<SCRIPT LANGUAGE="JavaScript" >
       
		treeMenuAddItem(1,"返回网站首页");
		treeMenuAddItem(2, '退出系统', 'index.jsp', '_top');
		treeMenuAddItem(2, '网站首页', '../front/index.html', '_top');	
</script>







<SCRIPT LANGUAGE="JavaScript">
var MenuColor=top.MenuColor;
var MenuTextColor=top.MenuTextColor;
var UserName = top.UserName;
document.writeln('</head><body topmargin=0  >');
var nowdate=new Date();
var datestring;
doc.yPos=30;
//-->
</script>
<SCRIPT LANGUAGE="JavaScript">
<!--
initializeDocument();
//-->
</script>








</div>




<div >
<div style="height:30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="STYLE2">网站版权信息</span></div>
</div>
<a href="../front/index.html" target="_blank"><span style="font-size:12px;">返回首页</span></a>



</body>
</html>