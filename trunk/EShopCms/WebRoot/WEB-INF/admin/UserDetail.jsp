<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="%{jeuser.getUserName()}"/>详细信息</title>   
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
<s:set name="detail" value="udetail"/>
<s:set name="userinfo" value="userinfo"/>


<table width="100%" border="0" cellspacing="3" cellpadding="0" style="margin:5px;">
  <tr>
    <td colspan="2">会员详细信息查询</td>
  </tr>
  <tr>
    <td width="13%">会员名称：<s:property value="%{jeuser.getUserName()}"/></td>
    <td width="87%" rowspan="2">
    
    <s:if test="jeuser.getUserFace()==null">
    <img style="padding:1px; border:1px #CCCCCC outset;" width="120" height="120" src="images/null.gif" /></td>

    </s:if>
    <s:else>
     <img style="padding:1px; border:1px #CCCCCC outset;" width="120" height="120" src="../upfile/<s:property value="%{jeuser.getUserFace()}"/>" /></td>
    </s:else>
    </tr>
  <tr>
    <td>真实名称：<s:property value="#detail.getName"/></td>
  </tr>
  <tr>
    <td>注册时间：</td>
    <td><s:property value="%{jeuser.getRegTime()}"/>&nbsp;</td>
  </tr>
  <tr>
    <td>会员电子邮件：</td>
    <td> <s:property value="%{jeuser.getEmail()}"/>&nbsp;</td>
  </tr>
  <tr>
    <td>推荐会员：</td>
    <td>
    <s:if test="jeuser.getUserType()==0">
    非推荐会员    </s:if>
    
     <s:if test="jeuser.getUserType()==1">
    推荐会员    </s:if>    </td>
  </tr>
  <tr>
    <td>消费点数：</td>
    <td>  <s:set name="ups1" value="%{jeuser.getConsumePoint()}"></s:set>
            <s:if test="#ups1!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getConsumePoint()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font><font color=#004400>该会员目前消费的点卡</font>            </s:else></td>
  </tr>
  <tr>
    <td>点卡余额：</td>
    <td> <s:set name="ups" value="%{jeuser.getuserPoint()}"></s:set>
            <s:if test="#ups!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getuserPoint()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font><font color=#004400>为了安全起见，余额不足时请到充值中心充值</font>            </s:else></td>
  </tr>
  <tr>
    <td>会员积分：</td>
    <td> <s:set name="ups3" value="%{jeuser.getUserExp()}"></s:set>
            <s:if test="#ups3!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getUserExp()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;<font color=#004400>该会员目前所积累的积分</font>            </s:else></td>
  </tr>
  <tr>
    <td height="25">资金余额：</td>
    <td> <s:set name="ups4" value="%{jeuser.getBalance()}"></s:set>
            <s:if test="#ups4!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getBalance()}"/></b>  </font>            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font><font color=#004400>当前会员的资金余额</font>            </s:else></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>年龄：</td>
    <td>&nbsp;<s:property value="%{#detail.getAge()}"/>
    
  
    
    </td>
  </tr>
  <tr>
    <td>性别：</td>
    <td>  <s:if test="#detail.getSex()==1">男</s:if> <s:if test="#detail.getSex()==0">女</s:if> <s:if test="#detail.getSex()==2">保密</s:if></td>
  </tr>
  <tr>
    <td>身份证号：</td>
    <td><s:property value="%{#detail.getIdentify()}"/></td>
  </tr>
  <tr>
    <td>地址：</td>
    <td><s:property value="%{#detail.getPri()}"/>-<s:property value="%{#detail.getCity()}"/>-<s:property value="%{#detail.getXian()}"/>-<s:property value="%{#detail.getAddress()}"/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
    <s:checkboxlist list="jechan" label="会员录入频道列表"  name="userInput"
            listKey="channelId"
            listValue="channelName" 
             />
              <s:checkboxlist list="jechan" label="会员录入频道列表"  name="userView"
            listKey="channelId"
            listValue="channelName" 
             />
  
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
