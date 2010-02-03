<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
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
<title><s:property value="#session.userName" /></title>
  
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
<style >
.wwFormTable{
width:100%;border:1px #CCCCCC inset;}
.tdLabel{
border:0px #CCCCCC outset;
background-color:ececec;}
td{
border:0px #CCCCCC outset;
background-color:ececec;}
.label{
font-size:12px;
font-style:normal;
}
input {
height:20px;}

</style>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body>



<div >
  <div style="border:0px #0099FF outset; width:100%; text-align:left; height:30px;">
  


  
 <s:form action="/admin/Updateconfig.jspx" method="post" >
 
 <s:textfield size="40" value="%{jeconfig.getSiteName()}" cssStyle="color:#ff0000;" name="siteName" label="请输入网站的名称" tooltip="输入网站的名称"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getSiteTitle()}" name="siteTitle" label="请输入网站的标题" tooltip="输入网站的标题"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getSiteUrl()}" name="siteUrl"  label="请输入网站的网址" tooltip="输入网站的网址"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getInstallDir()}" name="installDir" label="请输入网站的安装目录" tooltip="输入网站的安装目录"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getWebmasterName()}" name="webmasterName" label="请输入网站的站长名称" tooltip="输入网站的站长名称"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getWebmasterEmail()}" name="webmasterEmail" label="请输入网站的站长邮箱" tooltip="输入网站的站长邮箱"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getMailServerUserName()}" name="mailServerUserName" label="请输入网站的站长邮箱账号" tooltip="输入网站的站长邮箱"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getMailServerPassWord()}" name="mailServerPassWord" label="请输入网站的站长邮箱密码" tooltip="输入网站的站长邮箱"></s:textfield>
 <s:textfield  size="40" value="%{jeconfig.getMailServer()}" name="mailServer" label="请输入网站的站长邮箱服务器地址" tooltip="输入网站的站长邮箱"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getMetaKeywords()}" name="metaKeywords" label="请输入网站的关键词，输入关键词" tooltip="输入网站的站长邮箱"></s:textfield>
 <s:textfield size="40" value="%{jeconfig.getMetaDescription()}" name="metaDescription" label="请输入网站的网站描述" tooltip="输入网站的站长邮箱"></s:textfield>
 <s:textarea  id="cp" value="%{jeconfig.getCopyright()}" cols="40" rows="13" name="copyright" label="请输入网站的版权信息！网站归谁所有" tooltip="输入网站的站长邮箱"></s:textarea>
 
 
 
  <tr>
 <td colspan="2" height="30"></td>
 
 </tr>
 <tr>
 <td colspan="2"><span class="STYLE4">会员卡管理选项</span></td>
 
 </tr>
  <tr>
 <td colspan="2" height="30"></td>
 
 </tr>
 
 
 <s:textfield size="10" value="%{jeconfig.getPointName()}" name="pointName" label="会员点卷名称 如同 Q币 点卷 学币等" tooltip="会员点卷名称"></s:textfield>
 <s:textfield size="10" value="%{jeconfig.getPointUnit()}" name="pointUnit" label="会员点卷单位 币等 " tooltip="会员点卷单位"></s:textfield>
 <s:textfield size="4" value="%{jeconfig.getMoneyExchangePoint()}" name="moneyExchangePoint" label="1元人名币可以兑换的点卷数" tooltip="1元人名币可以兑换的点卷数"></s:textfield>
 
 <s:textfield size="4" value="%{jeconfig.getPresentPoint()}" name="presentPoint" label="会员注册赠送的点卷数" tooltip="会员注册赠送的点卷数"></s:textfield>
 
 
    <s:radio
            tooltip=""
            label="会员注册是否必须用邮件注册"
            list="#{'0':'不需要邮件注册', '1':'必须邮件注册'}"
            name="emailOfRegCheck"
            listKey="key"
            listValue="value" 
            value="%{jeconfig.getEmailOfRegCheck()}"/>
 
  
 

 
 
 
 
 <s:submit value="更新网站配置信息"/>
 </s:form>
</div>



<div style="border:1px #0099FF inset; background-image:url(images/color.jpg); height:25px;">

</div>

</div>
<br>
<br>
<s:include value="button.jsp"/>
</body>

</html>
