<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:if test="#session.admin==null">
<script language=javascript>
window.location.href="Login.jspx";
</script>
</s:if>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<TITLE><s:property value="configBean.getSiteName()"/>管理员管理</TITLE>
<link href="skins/css/style.css" rel="stylesheet" type="text/css" />

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


<style>
.main_left {table-layout:auto; background:url(skins/images/left_bg.gif)}
.main_left_top{ background:url(skins/images/left_menu_bg.gif); padding-top:2px !important; padding-top:5px;}
.main_left_title{text-align:left; padding-left:15px; font-size:14px; font-weight:bold; color:#fff;}
.left_iframe{HEIGHT: 92%; VISIBILITY: inherit;WIDTH: 180px; background:transparent;}
.main_iframe{HEIGHT: 92%; VISIBILITY: inherit; WIDTH:100%; Z-INDEX: 1}
table { font-size:12px; font-family : tahoma, 宋体, fantasy; }
td { font-size:12px; font-family : tahoma, 宋体, fantasy;}
</style>
<script src="skins/inc/admin.js" type="text/javascript"></script>
<SCRIPT>
var status = 1;
var Menus = new DvMenuCls;
document.onclick=Menus.Clear;
function switchSysBar(){
     if (1 == window.status){
		  window.status = 0;
          switchPoint.innerHTML = '<img src="skins/images/left.gif">';
          document.all("frmTitle").style.display="none"
     }
     else{
		  window.status = 1;
          switchPoint.innerHTML = '<img src="skins/images/right.gif">';
          document.all("frmTitle").style.display=""
     }
}
</SCRIPT>
<BODY style="MARGIN: 0px">
<!--导航部分-->
<div class="top_table">
<div class="top_table_leftbg">
	<div class="system_logo">
   <span style="font-size:20px; padding-top:5px; color:#FFFFFF;">管理中心</span>

    </div>
    
    
    
    
    
	<div class="menu">
		<ul>



                   <s:set name="admin" value="#session.admin"/>
                   <s:if test="CheckAminLevel(#admin.adminId,null,'index')==true">
                   
                      
			<li id="menu_0" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);">
            
            <s:if test="checkDefaultAdmin(#admin.adminId)==true">
            <a href=subAll.jspx target='frmright'>管理首页</a>
            </s:if>
            <s:else>
            <a href=adminInfo.jspx target='frmright'>管理首页</a>
            </s:else>
            
			
            <div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
                
                
                
                
 <s:if test="CheckAminLevel(#admin.adminId,null,'anounce')==true">               
<li><a href=adminAnnounce.jspx target='frmright'>公告管理</a></li>
<li><a href=addAnnounceList.jspx target='frmright'>公告添加</a></li>
</s:if>

 <s:if test="CheckAminLevel(#admin.adminId,null,'producter')==true"> 
<li><a href=listProducter.jspx target='frmright'>厂商管理</a></li>
<li><a href=initAddProducter.jspx target='frmright'>厂商添加</a></li>
</s:if>

<s:if test="CheckAminLevel(#admin.adminId,null,'tradmark')==true"> 
<li><a href=ListTradMark.jspx target='frmright'>商家品牌管理</a></li>
<li><a href=addTradeinit.jspx target='frmright'>商家品牌添加</a></li></s:if>

<s:if test="CheckAminLevel(#admin.adminId,null,'pinglun')==true"> 
<li><a href=ListAllComment.jspx target='frmright'>评论管理</a></li>
<li><a href=listUnit.jspx target='frmright'>商品单位管理</a></li>
</s:if>

<s:if test="CheckAminLevel(#admin.adminId,null,'linkurl')==true"> 
<li><a href=ListAllLinks.jspx target='frmright'>友情链接管理</a></li>
<li><a href=ListLinks.jspx target='frmright'>友情链接添加</a></li>
</s:if>
<s:if test="CheckAminLevel(#admin.adminId,null,'adweb')==true"> 
<li><a href=ListAll.jspx target='frmright'>页面广告管理</a></li>
</s:if>
<s:if test="CheckAminLevel(#admin.adminId,null,'sendGoods')==true"> 
<li><a href=SendGoodsTypeinit.jspx target='frmright'>送货方式添加</a></li>
<li><a href=adminGoodsType.jspx target='frmright'>送货方式管理</a></li>
</s:if>


				</ul>
			</div>
                   
                   
                   
                   
                   
                   
                   </s:if>
           
            
            
            
            
            <s:if test="CheckAminLevel(#admin.adminId,null,'config')==true">
            
			<div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>
            <s:if test="checkDefaultAdmin(#admin.adminId)==true">
			<li id="menu_1" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=Listconfig.jspx target='frmright'>系统配置</a>
            </s:if>
            <s:else>
            <li id="menu_1" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=adminInfo.jspx target='frmright'>系统配置</a>
            </s:else>
			<div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
                <s:if test="CheckAminLevel(#admin.adminId,null,'syschannel')==true">
<li><a href=addChannel.jspx target='frmright'>添加频道</a></li>
<li><a href=adminChannel.jspx target='frmright'>管理频道</a></li>
</s:if>
<s:if test="CheckAminLevel(#admin.adminId,null,'sysconfig')==true">
<li><a href=Listconfig.jspx target='frmright'>系统配置信息</a></li>
<li><a href=ListconfigWater.jspx target='frmright'>水印信息配置</a></li>
</s:if>
<s:if test="CheckAminLevel(#admin.adminId,null,'sysothconfig')==true">
<li><a href=ListconfigFujia.jspx target='frmright'>网站附加信息配置</a></li>
</s:if>
				</ul>
			</div>
            
            </s:if>
            
            
            <s:if test="CheckAminLevel(#admin.adminId,null,'money')==true">
            
            <div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>

<s:if test="checkDefaultAdmin(#admin.adminId)==true">
			<li id="menu_18" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=ListAllorder.jspx target='frmright'>订单财务</a>
            </s:if>
            <s:else>
            <li id="menu_18" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=adminInfo.jspx target='frmright'>订单财务</a>
            </s:else>
			<div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
                
                 <s:if test="CheckAminLevel(#admin.adminId,null,'receiMoneyNum')==true">
                <li><a href=ListBank.jspx target='frmright'>收款账号管理</a></li>
                </s:if>
                 <li><a href=listYeePay.jspx target='frmright'>在线付款设置</a></li>
                
                <li><a href="getDelediver.jspx" target='frmright'>发货查看</a></li>
                <s:if test="CheckAminLevel(#admin.adminId,null,'sysorder')==true">
<li><a href=ListAllorder.jspx target='frmright'>订单管理</a></li>
<li><a href="ListOrderByClass.jspx?actionID=0" target='frmright'>未付款订单

            </a></li>
            
            
            <li><a href="ListOrderByClass.jspx?actionID=1" target='frmright'>付部分款订单
           
            </a> </li><li><a href="ListOrderByClass.jspx?actionID=3" target='frmright'>已付款订单
             
            </a> </li><li><a href="ListOrderByClass.jspx?actionID=0" target='frmright'>未付款订单

            </a></li><li><a href="ListOrderByClass.jspx?actionID=0" target='frmright'>未付款订单

            </a></li>
<li><a href="ListOrderByClass.jspx?actionID=5" target='frmright'>已发货订单
            </a></li>
<li><a href="ListOrderByClass.jspx?actionID=4" target='frmright'> 未发货订单
            </a> </li>
<li><a href="ListOrderByClass.jspx?actionID=6" target='frmright'>客户退货订单</a>   </li>
                <li><a href="ListOrderByClass.jspx?actionID=7" target='frmright'>客户收货订单  </a>    </li>
				</s:if>
                </ul>
			</div>
            </s:if>
            
            
             <s:if test="CheckAminLevel(#admin.adminId,null,'card')==true">
             <div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>
<s:if test="checkDefaultAdmin(#admin.adminId)==true">
			<li id="menu_19" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=listUserCard.jspx  target='frmright'>充值卡功能</a>
			</s:if>
            <s:else>
            <li id="menu_19" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=adminInfo.jspx  target='frmright'>充值卡功能</a>
            </s:else>
              <s:url id="sk" value="/admin/ausercard.jspx">
  </s:url>
  <s:url id="sk1" value="/admin/listUserCard.jspx">
  </s:url>
  <s:url id="sk2" value="/admin/listSalUserCard.jspx">
  </s:url>
  <s:url id="sk3" value="/admin/listMoneyCard.jspx">
  </s:url>
            <div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
                <s:if test="CheckAminLevel(#admin.adminId,null,'mdcard')==true">
                <li><a href=listUserCard.jspx target='frmright'>会员卡管理</a></li>
                
                <li><a href=<s:property value="%{sk}"/> target='frmright'>生成充值卡</a></li>
                </s:if>
                <s:if test="CheckAminLevel(#admin.adminId,null,'syscard')==true">
                <li><a href=<s:property value="%{sk2}"/> target='frmright'>已经销售充值卡</a></li>
                <li><a href=<s:property value="%{sk3}"/> target='frmright'>已经充值充值卡</a></li>
                <li><a href=ShowXls.jspx target='frmright'>导出充值卡</a></li>
                  <li><a href=UserMoneylogBean.jspx target='frmright'>会员卡充值卡记录</a></li>     
                  </s:if>         
				</ul>
			</div>
            
            
            </s:if>
            
             <s:if test="CheckAminLevel(#admin.adminId,null,'metel')==true">
            
			<div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>

        
	    <li id="menu_2" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=ListLeft.jspx target='frmleft'>资料管理</a>
			  <div class="menu_childs" onMouseOut="Menus.Hide(0);">
				
                
               
                
                
                
                
			</div>
            </s:if>
             <s:if test="CheckAminLevel(#admin.adminId,null,'skin')==true">
			<div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>

			<li id="menu_3" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);">
             <s:if test="checkDefaultAdmin(#admin.adminId)==true">
            <a href=listtempletClass.jspx target='frmright'>风格界面</a>
			</s:if>
            <s:else>
            <a href=adminInfo.jspx target='frmright'>风格界面</a>
            </s:else>
            <div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
 <s:if test="CheckAminLevel(#admin.adminId,null,'Mainskin')==true">
 
 
 <li><a href=listtempletClass.jspx target='frmright'>默认模板分类</a></li>
<li><a href=UserStyleFile.jspx target='frmright'>主站模板总体管理</a></li>

</s:if>
 <s:if test="CheckAminLevel(#admin.adminId,null,'userskin')==true">
<li><a href=listStyleName.jspx target='frmright'>会员网站模版管理</a></li>
<li><a href=initStyleName.jspx target='frmright'>会员网站模版添加</a></li>
</s:if>

				</ul>
			</div>
            
            </s:if>
             <s:if test="CheckAminLevel(#admin.adminId,null,'user')==true">
			<div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>

			<li id="menu_4" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);">
            
            
            <s:if test="checkDefaultAdmin(#admin.adminId)==true">
            <a href=ListAllUser.jspx target='frmright'>用户管理</a>
            </s:if>
            <s:else>
            <a href=ListAllUser.jspx target='frmright'>用户管理</a>
            </s:else>
			  <div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
                 <s:if test="CheckAminLevel(#admin.adminId,null,'sysadmin')==true">
<li><a href=listAdmin.jspx target='frmright'>管理员管理</a></li>
</s:if>
<li><a href=setAdminPass.jspx target='frmright'>修改管理员密码</a></li>

<s:if test="CheckAminLevel(#admin.adminId,null,'sysuser')==true">
<li><a href=ListAllUser.jspx target='frmright'>会员管理</a></li>
</s:if>
<s:if test="CheckAminLevel(#admin.adminId,null,'sysusergrp')==true">
<li><a href=ListUserGroup.jspx target='frmright'>会员组管理</a></li>

<li><a href=addUserGroup.jspx target='frmright'>添加新会员组</a></li></s:if>
				</ul>
			</div>
			
			</s:if>
            
            
            
             <s:if test="CheckAminLevel(#admin.adminId,null,'system')==true">
			
			<div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>

			<li id="menu_8" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=listSubClassType.jspx target='frmright'>调查问卷</a>
			<div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
                <s:if test="CheckAminLevel(#admin.adminId,null,'syslog')==true">
                
                <li>
                <a href=listSubClassType.jspx target='frmright'>管理调查</a></li>
                 <li><a href=addSubClassTypeinit.jspx target='frmright'>添加新的调查</a></li></s:if>

				</ul>
			</div>
            </s:if>
            
            
            
            
            
            
            
             <s:if test="CheckAminLevel(#admin.adminId,null,'system')==true">
			
			<div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>

			<li id="menu_8" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"><a href=serverinfo.jspx target='frmright'>系统相关</a>
			<div class="menu_childs" onMouseOut="Menus.Hide(0);">
				<ul>
                <s:if test="CheckAminLevel(#admin.adminId,null,'syslog')==true">
                
                <li>
                
                <a href=logBean.jspx target='frmright'>系统操作日志查看</a></li></s:if>
<li><a href=serverinfo.jspx target='frmright'>系统信息检测</a></li>

<li><a href=InterfaceFile.jspx target='frmright'>系统开发文档</a></li>
<li><a href=Interface.jspx target='frmright'>系统调用接口</a></li>
<li><a href=http://www.j-eshop.cn target='_blank'>官方网站</a></li>

<li><a href=http://www.j-eshop.cn target='frmright'>版权信息</a></li>
				</ul>
			</div>
            </s:if>
            
			<div class="menu_div"><img src="skins/images/menu01_right.gif" style="vertical-align:bottom;"></div></li>

		</ul>
	</div>
</div>
</div>
<div style="background:#337ABB; text-align:left; padding-left:30px; padding-top:4px;">
<b><font color="#FFFFFF"><s:property value="getVision()"/></font></b>
</div>
<!--导航部分结束-->

<TABLE border=0 cellPadding=0 cellSpacing=0 height="92%" width="100%" style="background:#337ABB;">
<TBODY>
<TR>
  <TD align=middle id=frmTitle vAlign=top name="fmTitle" class="main_left">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="main_left_top">
	  <tr height="32">
	    <td valign="top"></td>
	    <td class="main_left_title" id="leftmenu_title">资料快速管理</td>
	    <td valign="top" align="right"></td>
	  </tr>
	</table>
	<IFRAME frameBorder=0 id=frmleft name=frmleft src="ListLeft.jspx" class="left_iframe" scrolling="no" allowTransparency="true"></IFRAME>
    
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr height="32">
	    <td valign="top"></td>
	    <td valign="bottom" align="center"></td>
	    <td valign="top" align="right"></td>
	  </tr>
	</table>
  </td>
  <TD bgColor=#337ABB style="WIDTH: 10px">
	   <TABLE border=0 cellPadding=0 cellSpacing=0 height="100%">
	    <TBODY>
	    <TR>
	     <TD onclick=switchSysBar() style="HEIGHT: 100%">
	     <SPAN class=navPoint id=switchPoint title="关闭/打开左栏"><img src="skins/images/right.gif"></SPAN>
	     </TD>
	    </TR>
	    </TBODY>
	   </TABLE>
     </TD>
  <TD bgcolor="#337ABB" width="100%" vAlign=top>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#C4D8ED">
	  <tr height="32">
	    <td valign="top" width="32" background="skins/images/bg2.gif"><img src="skins/images/teble_top_left.gif" alt="" /></td>
	    <td background="skins/images/bg2.gif"width="32" ><img src="skins/images/arrow.gif" alt="" align="absmiddle" /></td>
	    <td width="312" background="skins/images/bg2.gif"><span style="color:#c00; font-weight:bold; float:left;width:100%;" id="dvbbsannounce">
        
       
        
        </span></td>
		<td width="526" align="left" background="skins/images/bg2.gif" style="text-align:right; color: #135294; ">
        <span id="menu_55" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"> <a href="adminJobList.jspx?adminId=<s:property value="#session.admin.adminId"/>&typeString=jobadminType" target='frmright'  >待办事项</a></span><span style="color:#FF0000;"><span id="havaSomejob" ></span></span>| 
        
        <span id="menu_52" onMouseOver="Menus.Show(this,0)" onClick="getleftbar(this);"> <a href="adminMsg.jspx?userId=<s:property value="#session.admin.adminId"/>" target='frmright'  >消息中心</a></span><span style="color:#FF0000;"><span id="havaSomeMsg" ></span></span>| 
        
        <s:if test="CheckAminLevel(#admin.adminId,null,'syslog')==true">
        <a href="logBean.jspx" target='frmright'>查看日志</a>  |        </s:if>
        
       
        
        管理员:<s:property value="#session.admin.userName"/> | 
        <s:if test="checkDefaultAdmin(#admin.adminId)==true">
        <a href="subAll.jspx" target='frmright'>后台首页</a> </s:if>
        <s:else> <a href="adminInfo.jspx" target='frmright'>后台首页</a></s:else>
        | <a href="../front/index.html" target="_blank">网站首页</a> | <a href="adminOut.jspx" target="_top">退出</a> | <a href="linkUs.jspx" target='frmright'>改进建议 </a>| </td>
	    <td align="right" valign="top" background="skins/images/bg2.gif" width="32" ><img src="skins/images/teble_top_right.gif" alt="" /></td>
	    <td align="right" width="16" bgcolor="#337ABB"></td>
	  </tr>
	</table>
    <s:if test="checkDefaultAdmin(#admin.adminId)==true">
    <IFRAME frameBorder=0 id=frmright name=frmright scrolling=yes src="subAll.jspx" class="main_iframe"></IFRAME>
    </s:if>
    <s:else>
    <IFRAME frameBorder=0 id=frmright name=frmright scrolling=yes src="adminInfo.jspx" class="main_iframe"></IFRAME>
    </s:else>
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="background:#C4D8ED;">
	<tr>
	<td><img src="skins/images/teble_bottom_left.gif" alt="" width="5" height="6" /></td>
	<td align="right"><img src="skins/images/teble_bottom_right.gif" alt="" width="5" height="6" /></td>
	<td align="right" width="16" bgcolor="#337ABB"></td>
	</tr>
	</table>
</TD>
</TR>
</TBODY>
</TABLE>

</body>
</html>