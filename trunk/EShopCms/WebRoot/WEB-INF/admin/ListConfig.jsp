<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
   <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#cp').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	}
</script>
<style>
* {margin:0; padding:0; outline:none}
input{
vertical-align:middle;
padding-top:3px;}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:100%; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
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
.STYLE2 {color: #000000}
.STYLE3 {color: #FF0000}
</style>
</head>


<body>
<script>
function ShowLayers(tit,con,n,m)
{ 
 for(i=1;i<=m;i++)
 {
  eval(con + i).style.display="none";
  eval(tit+i).style.background="#ffffff";;
 }
 //eval(tit+n).style.background="#cccccc";
 eval(con + n).style.display="";
}
</script>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

  <tr>
    <td height="20" id="title1" onClick="javascript:ShowLayers('title','content',1,2);">系统标准配置</td>
    <td id="title2" ><!--其他配置信息--></td>
  </tr>
  <tr>
    <td height="100" colspan="5" >
 <div  id="content1" style="display:;">
<form action="Updateconfig.jspx" method="post">
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
  <tr>
    <td>输入您的站点名称</td>
    <td><input type="text" name="siteName" style="height:25px;" size="40"  value="<s:property value="%{jeconfig.getSiteName()}"/>" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" id="Updateconfig_siteName" /></td>
    </tr>
  <tr>
    <td>输入网站的标题</td>
    <td><input type="text" style="height:25px;"name="siteTitle" size="40" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" value="<s:property value="%{jeconfig.getSiteTitle()}"/>" id="Updateconfig_siteTitle"/></td>
    </tr>
  <tr>
    <td>请输入网站的网址:</td>
    <td><input type="text"style="height:25px;" name="siteUrl" size="40" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" value="<s:property value="%{jeconfig.getSiteUrl()}"/>"  id="Updateconfig_siteUrl"/></td>
    </tr>
  <tr>
    <td>请输入网站的安装目录</td>
    <td><input readonly type="text"style="height:25px;" name="installDir" jVal="{valid:function (val) { if (val.length < 2) return false; else return true; }, message:'不能小于2的字符', styleType:'cover'}" size="40" value="<s:property value="%{getRootPath()}"/>"  id="Updateconfig_installDir"/>

    </td>
    </tr>
  <tr>
    <td>请输入网站的站长名称:</td>
    <td><input type="text" style="height:25px;"name="webmasterName" jVal="{valid:function (val) { if (val.length < 3) return false; else return true; }, message:'地址不能小于3的字符', styleType:'cover'}" size="40" value="<s:property value="%{jeconfig.getWebmasterName()}"/>" id="Updateconfig_webmasterName"/></td>
    </tr>
     <tr>
    <td>请输入网站的关键词，输入关键词:</td>
    <td><input type="text"style="height:25px;" name="metaKeywords" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" size="40" value="<s:property value="%{jeconfig.getMetaKeywords()}"/>" id="Updateconfig_metaKeywords"/></td>
    </tr>
  <tr>
    <td>请输入网站的网站描述:   </td>
    <td><input type="text"style="height:25px;" name="metaDescription" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" size="40" value="<s:property value="%{jeconfig.getMetaDescription()}"/>" id="Updateconfig_metaDescription"/></td>
    </tr>
    
     <tr>
    <td colspan="2" bgcolor="#CCCCCC">
      <span class="STYLE2">网站邮件发送设置    </span></td>
    </tr>
  <tr>
    <td>请输入本站发送邮件邮箱:     </td>
    <td><input type="text"style="height:25px;" name="webmasterEmail"jVal="{valid:/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/,message:'您的邮件格式不正确，请采用正确的邮件格式', styleType:'cover'}" jValKey="{valid:/[a-zA-Z0-9._%+-@]/, cFunc:'alert', cArgs:['Email Address: '+$(this).val()]}" size="40"  value="<s:property value="%{jeconfig.getWebmasterEmail()}"/>" id="Updateconfig_webmasterEmail"/></td>
    </tr>
  <tr>
    <td>请输入网站的邮箱账号:    </td>
    <td><input type="text" style="height:25px;"name="mailServerUserName" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" size="40" value="<s:property value="%{jeconfig.getMailServerUserName()}"/>" id="Updateconfig_mailServerUserName"/></td>
    </tr>
  <tr>
    <td>请输入网站的邮箱密码:</td>
    <td><input type="text"style="border:1px #FF0000 outset;height:25px;" name="mailServerPassWord" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" size="40" value="<s:property value="%{jeconfig.getMailServerPassWord()}"/>" id="Updateconfig_mailServerPassWord"/></td>
    </tr>
  <tr>
    <td>请输入邮箱SMTP服务器地址</td>
    <td><input type="text"style="height:25px;" name="mailServer" size="40" jVal="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'不能小于7的字符', styleType:'cover'}" value="<s:property value="%{jeconfig.getMailServer()}"/>
    "  id="Updateconfig_mailServer"/><span class="STYLE3">SMTP.qq.com(可以发送到QQ邮箱)</span></td>
    </tr>
 
  <tr>
    <td colspan="2" bgcolor="#CCCCCC">
      <span class="STYLE2">会员充值销售卡劵配置    </span></td>
    </tr>
  <tr>
    <td>充值币名称</td>
    <td><input type="text" style="height:25px;" name="pointName" size="10" jVal="{valid:function (val) { if (val.length < 2) return false; else return true; }, message:'不能小于2个字符', styleType:'cover'}" value="<s:property value="%{jeconfig.getPointName()}"/>"  id="Updateconfig_pointName"/></td>
    </tr>
  <tr>
    <td>会员点卷单位 币等 :</td>
    <td><input type="text" style="height:25px;" name="pointUnit" size="10" jVal="{valid:function (val) { if (val.length < 1) return false; else return true; }, message:'不能小1个字符', styleType:'cover'}" value="<s:property value="%{jeconfig.getPointUnit()}"/>" id="Updateconfig_pointUnit"/></td>
    </tr>
  <tr>
    <td>人名币可以兑换的点卷数:</td>
    <td><input type="text"style="height:25px;"  name="moneyExchangePoint" jVal="{valid:function (val) { if (val.length <1) return false; else return true; }, message:'请正确输入您的兑换点数', styleType:'cover'}" size="4" value="<s:property value="%{jeconfig.getMoneyExchangePoint()}"/>" id="Updateconfig_moneyExchangePoint"/></td>
    </tr>
  <tr>
    <td>会员注册赠送的点卷数:</td>
    <td><input type="text" style="height:25px;" name="presentPoint" jVal="{valid:function (val) { if (val.length <1) return false; else return true; }, message:'请正确输入您对话点数', styleType:'cover'}" size="4" value="<s:property value="%{jeconfig.getPresentPoint()}"/>" id="Updateconfig_presentPoint"/></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
    
    <input type="radio" name="emailOfRegCheck" id="Updateconfig_emailOfRegCheck0" value="0"/>禁止邮件重复注册
<input type="radio" name="emailOfRegCheck" id="Updateconfig_emailOfRegCheck1" checked="checked" value="1"/>容许邮件重复注册!</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" id="Updateconfig_0" value="更新网站配置信息"/></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
</table>

</form>
 </div>
 
 
 <div  id="content2" style="display:none;" >
<form action="Updateconfig.jspx" method="post">
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
  <tr>
    <td>站点点击率</td>
    <td><input type="text" name="hitsOfHot" style="height:25px;" size="6"  value="<s:property value="%{jeconfig.getHitsOfHot()}"/>" /></td>
    </tr>
   
      <tr>
    <td>网站标志</td>
    <td>
    <div><input type="text" size="80" id="filename"/></div>
   <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe> </td>
    </tr>
    
    
      <tr>
    <td>网站banner</td>
    <td>
    <div><input type="text"  size="80" id="vedioname"/></div>
   <iframe align=left width="400" height="60" src="upfilevideo.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
    </tr>
    
  
   <tr>
    <td>&nbsp;</td>
    <td><input type="submit" id="Updateconfig_0" value="更新网站配置信息"/></td>
    </tr>
</table>

</form>
 </div>


 </td>
  </tr>
</table>

<s:include value="button.jsp"/>
</body>

</html>
