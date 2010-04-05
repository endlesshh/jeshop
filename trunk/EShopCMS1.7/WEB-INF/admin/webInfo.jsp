<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>



   <script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript" src="jQuery/jquery.tab.js"></script>


<script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#cp').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp1').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp2').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp3').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp4').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp5').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp6').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});$('#cp9').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp7').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp8').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp10').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp11').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#cp20').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});$('#cp21').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<style>
* {margin:0; padding:0; outline:none}
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
</style></head>

<body>
<table width="620" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td colspan="2"><div align="center" class="STYLE1">网站附加信息管理</div></td>
  </tr>
  <tr>
    <td colspan="2">公司简介（调用标签：&lt;s:property value=&quot;configBean.messageOfCompy&quot;/&gt;）</td>
  </tr>
  <form action="UpdateconfigFujia.jspx" method="post" >
  <tr>
    <td colspan="2"><textarea name="messageOfCompy"cols="60" rows="15" id="cp">
    <s:property value="jeconfig.getMessageOfCompy()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">站长简介（调用标签：&lt;s:property value=&quot;configBean.messageOfwebManager&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea  name="messageOfwebManager" cols="60" rows="15" id="cp2">
     <s:property value="jeconfig.getMessageOfwebManager()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">联系我们（调用标签：&lt;s:property value=&quot;configBean.messageOflinkUs&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea  name="messageOflinkUs" cols="60" rows="15" id="cp3">
    <s:property value="jeconfig.getMessageOflinkUs()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">领导简介（调用标签：&lt;s:property value=&quot;configBean.messageOfManerintr&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" name="messageOfManerintr" rows="15" id="cp4">
     <s:property value="jeconfig.getMessageOfManerintr()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">公司业绩（调用标签：&lt;s:property value=&quot;configBean.messageOfcompyProduct&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" rows="15" name="messageOfcompyProduct" id="cp5">
    <s:property value="jeconfig.getMessageOfcompyProduct()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">企业文化（调用标签：&lt;s:property value=&quot;configBean.messageOfConmpyWebH&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" name="messageOfConmpyWebH" rows="15" id="cp6">
     <s:property value="jeconfig.getMessageOfConmpyWebH()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">附加信息1（调用标签：&lt;s:property value=&quot;configBean.messageOne&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" name="messageOne" rows="15" id="cp20">
    <s:property value="jeconfig.getMessageOne()"/>
    
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">附加信息2（调用标签：&lt;s:property value=&quot;configBean.messageTwo&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" name="messageTwo" rows="15" id="cp7">
    <s:property value="jeconfig.getMessageTwo()"/>
    </textarea></td>
  </tr>
   <tr>
     <td colspan="2">版权信息：（调用标签：&lt;s:property value=&quot;configBean.messageTwo&quot;/&gt;）</td>
   </tr>
   <tr>
    <td colspan="2"><textarea id="cp21" cols="60" name="copyright" rows="15" >
    <s:property value="jeconfig.getCopyright()"/>
    </textarea>    </td>
  </tr>
  
  
  <tr>
    <td colspan="2">附加信息3（调用标签：&lt;s:property value=&quot;configBean.messageThree&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" name="messageThree" rows="15" id="cp8">
      <s:property value="jeconfig.getMessageThree()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2">附加信息4（调用标签：&lt;s:property value=&quot;configBean.messageFour&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" rows="15" name="messageFour" id="cp9">
    <s:property value="jeconfig.getMessageFour()"/>
    </textarea><strong></strong></td>
  </tr>
  <tr>
    <td colspan="2">附加信息5（调用标签：&lt;s:property value=&quot;configBean.messagefive&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" rows="15" name="messagefive" id="cp10">
    <s:property value="jeconfig.getMessagefive()"/>
    </textarea></td>
  </tr>
  <tr>
    <td width="76">附加信息6</td>
    <td width="529">（调用标签：&lt;s:property value=&quot;configBean.messageSix&quot;/&gt;）</td>
  </tr>
  <tr>
    <td colspan="2"><textarea cols="60" rows="15" name="messageSix" id="cp11">
    <s:property value="jeconfig.getMessageSix()"/>
    </textarea></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" value="保存数据信息" /></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr></form>
</table>
</body>
</html>
