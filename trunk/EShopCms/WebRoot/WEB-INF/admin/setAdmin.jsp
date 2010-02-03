<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:980px; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
.sortable th {background:url(images/header-bg.gif); height:25px; text-align:left; color:#cfdce7; border:1px solid #fff; border-right:none; font-size:12px;
text-align:center; vertical-align:middle;}
.sortable th h3 {font-size:10px; padding:6px 8px 8px}
.sortable td {padding:4px 6px 6px; border-bottom:1px solid #c6d5e1; border-right:1px solid #c6d5e1}
.sortable .head h3 {background:url(images/sort.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .desc, .sortable .asc {background:url(images/header-selected-bg.gif)}
.sortable .desc h3 {background:url(images/desc.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .asc h3 {background:url(images/asc.gif) 7px  center no-repeat; cursor:pointer; padding-left:18px}
.sortable .head:hover, .sortable .desc:hover, .sortable .asc:hover {color:#fff}
.sortable .evenrow td {background:#fff}
.sortable .oddrow td {background:#ecf2f6}
.sortable td.evenselected {background:#ecf2f6}
.sortable td.oddselected {background:#dce6ee}

#controls {width:980px; margin:0 auto; height:25px}
#perpage {float:left; width:200px}
#perpage select {float:left; font-size:11px}
#perpage span {float:left; margin:2px 0 0 5px}
#navigation {float:left; width:580px; text-align:center}
#navigation img {cursor:pointer}
#text {float:left; width:200px; text-align:right; margin-top:2px}


body,td,th {
	font-size: 12px;
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
</style>
</head>

  <body> 
  
  
  
  

  
  
  
 
 <font color="#FF0000"><b><s:property value="getErrMsg()"/></b></font>
 <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <form action="setAdmin.jspx" method="post">
     <tbody>
     <tr>
     <td width="156">管理员名称</td> 
     <td width="820"><s:set name="admin" value="getAdmin()"/>
     
     <s:property value="#admin.getUserName()"/>
     <input type="hidden" name="adminId" value="<s:property value="#admin.getAdminId()"/>"/>     </td>
     </tr>
      <tr>
     <td>管理首选项</td> <td>
     是否显示管理首页<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'index')==true">checked</s:if> value="index" name="muneName"/>
     
     总体管理<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'all')==true">checked</s:if> value="all" name="muneName"/>
      
     
     </td>
     </tr>
     
      <tr>
        <td>&nbsp;</td>
        <td>
        公告管理 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'anounce')==true">checked</s:if> value="anounce"  name="muneName"/>
        厂商管理 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'producter')==true">checked</s:if> value="producter"  name="muneName"/>
        商家品牌管理 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'tradmark')==true">checked</s:if> value="tradmark"  name="muneName"/>
        评论管理 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'pinglun')==true">checked</s:if> value="pinglun"  name="muneName"/>
        商品单位管理 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'unit')==true">checked</s:if> value="unit"  name="muneName"/>
        友情链接管理 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'linkurl')==true">checked</s:if> value="linkurl"  name="muneName"/>
        页面广告管理 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'adweb')==true">checked</s:if> value="adweb"  name="muneName"/>
        送货方式管理<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'sendGoods')==true">checked</s:if> value="sendGoods"  name="muneName"/>        </td>
      </tr>
      <tr>
        <td>系统配置</td>
        <td>系统配置<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'config')==true">checked</s:if> value="config"  name="muneName"/>      </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>管理频道<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'syschannel')==true">checked</s:if> value="syschannel"  name="muneName"/> 系统配置 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'sysconfig')==true">checked</s:if> value="sysconfig"  name="muneName"/>系统附加信息配置<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'sysothconfig')==true">checked</s:if> value="sysothconfig"  name="muneName"/>     </td>
      </tr>
      <tr>
        <td>财务订单方面</td>
        <td>财务订单<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'money')==true">checked</s:if> value="money" name="muneName"/>     </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>收款账号<input type="checkbox"  
          <s:if test="CheckAminLevel(#admin.adminId,null,'receiMoneyNum')==true">checked</s:if>
value="receiMoneyNum"  name="muneName"/>
          订单管理 <input type="checkbox"  
          <s:if test="CheckAminLevel(#admin.adminId,null,'sysorder')==true">checked</s:if>
value="sysorder"  name="muneName"/> </td>
      </tr>
      <tr>
        <td>充值卡管理</td>
        <td>充值卡<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'card')==true">checked</s:if> value="card" name="muneName"/></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>生成充值卡 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'mdcard')==true">checked</s:if> value="mdcard"  name="muneName"/>
        管理充值卡 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'syscard')==true">checked</s:if> value="syscard"  name="muneName"/>        </td>
      </tr>
      <tr>
        <td>资料管理</td>
        <td>
        资料管理<input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'metel')==true">checked</s:if> value="metel" name="muneName"/>         </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>栏目添加修改权限 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'isMchannel')==true">checked</s:if> value="isMchannel" name="muneName"/>  
        资料添加修改权限 <input type="checkbox"  <s:if test="CheckAminLevel(#admin.adminId,null,'isMmetel')==true">checked</s:if> value="isMmetel" name="muneName"/>  
        </td>
      </tr>
      <tr>
        <td>风格界面管理</td>
        <td>风格界面 <input type="checkbox" <s:if test="CheckAminLevel(#admin.adminId,null,'skin')==true">checked</s:if> value="skin"  name="muneName"/></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
        
        主站模板管理修改权限 <input type="checkbox" <s:if test="CheckAminLevel(#admin.adminId,null,'Mainskin')==true">checked</s:if> value="Mainskin"  name="muneName"/>
        
         会员网站模板管理修改权限 <input type="checkbox" <s:if test="CheckAminLevel(#admin.adminId,null,'userskin')==true">checked</s:if> value="userskin"  name="muneName"/>
        
        
        
        </td>
      </tr>
      <tr>
        <td>用户管理</td>
        <td>用户管理<input type="checkbox"  
          <s:if test="CheckAminLevel(#admin.adminId,null,'user')==true">checked</s:if>
value="user"  name="muneName"/></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>管理员管理<input type="checkbox"  
          <s:if test="CheckAminLevel(#admin.adminId,null,'sysadmin')==true">checked</s:if>
value="sysadmin"  name="muneName"/>
会员管理<input type="checkbox"  
          <s:if test="CheckAminLevel(#admin.adminId,null,'sysuser')==true">checked</s:if>
value="sysuser"  name="muneName"/>
会员组管理<input type="checkbox"  
          <s:if test="CheckAminLevel(#admin.adminId,null,'sysusergrp')==true">checked</s:if>
value="sysusergrp"  name="muneName"/>

</td>
      </tr>
      <tr>
        <td>系统相关</td>
        <td>系统相关 <input type="checkbox"  
          
          <s:if test="CheckAminLevel(#admin.adminId,null,'system')==true">checked</s:if>
value="system"  name="muneName"/></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>操作日志 <input type="checkbox"  
          
          
          <s:if test="CheckAminLevel(#admin.adminId,null,'syslog')==true">checked</s:if>
value="syslog"  name="muneName"/></td>
      </tr>
      <tr>
     <td>频道管理权限</td> <td>
     <s:iterator value="getListChannel()">
     <s:set name="cid" value="getChannelId()"/>
     <s:set name="revalue" value="CheckAminLevel(#admin.adminId,#cid,null)"/>
   
    <s:property value="getChannelName()"/>: <input    <s:if test="#revalue==true">
     checked
     </s:if> type="checkbox" name="chanName" value="<s:property value="getChannelId()"/>" />&nbsp;     </s:iterator>
     
     </td>
     </tr>
      <tr>
     <td>&nbsp;</td> 
     <td>
     <input type="submit" value="提交数据" />     </td>
     </tr>
     </tbody>
     </form>
     </table>
</body>
</html>
