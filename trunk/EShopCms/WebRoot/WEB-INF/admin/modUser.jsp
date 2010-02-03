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

  <s:form action="/admin/modUser.jspx" method="post">

  <s:hidden name="jeuser.UserId" value="%{#request.UserId}"></s:hidden>
   <s:hidden name="userId" value="%{#request.userId}"></s:hidden>
  
   <tr><td>会员名称：</td><td>
    <s:property value="%{jeuser.getUserName()}"/>
            </td></tr>
        <tr><td>会员电子邮件：</td><td>
    <s:property value="%{jeuser.getEmail()}"/>
            </td></tr>
           
           <s:radio
            tooltip="是否"
            label="是否为推荐会员！"
            list="#{'0':'不推荐当前会员', '1':'推荐当前会员'}"
            name="jeuser.userType"
            listKey="key"
            listValue="value" 
            value="%{jeuser.getUserType()}"/> 
            
            <s:radio
            tooltip="是否"
            label="是否开通会员审核通过会员！"
            list="#{'0':'关闭本会员', '1':'开通会员功能'}"
            name="jeuser.isLocked"
            listKey="key"
            listValue="value" 
            value="%{jeuser.getIsLocked()}"/> 
 
               <tr><td><font color=#ff0000>该会员当前的消费点数</font></td><td>
            <s:set name="ups1" value="%{jeuser.getConsumePoint()}"></s:set>
            <s:if test="#ups1!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getConsumePoint()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>该会员目前消费的点卡</font>
            </s:else>
            </td></tr>
           
            <tr><td><font color=#ff0000>该会员当前的点卡点数</font></td><td>
            <s:set name="ups" value="%{jeuser.getuserPoint()}"></s:set>
            <s:if test="#ups!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getuserPoint()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>为了安全起见，余额不足时请到充值中心充值</font>
            </s:else>
            </td></tr>
                  
                  
              <tr><td><font color=#ff0000>该会员当前的积分数</font></td><td>
            <s:set name="ups3" value="%{jeuser.getUserExp()}"></s:set>
            <s:if test="#ups3!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getUserExp()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>该会员目前所积累的积分</font>
            </s:else>
            </td></tr>    
                  
                       
            <tr><td><font color=#ff0000>该会员当前的资金余额</font></td><td>
            <s:set name="ups4" value="%{jeuser.getBalance()}"></s:set>
            <s:if test="#ups4!=null">
             <font color=#ff0000> <b> <s:property value="%{jeuser.getBalance()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>当前会员的资金余额</font>
            </s:else>
            </td></tr>    
                     
                     
                     
             <s:checkboxlist list="jechan" label="会员录入频道列表"  name="userInput"
            listKey="channelId"
            listValue="channelName" 
             />
              <s:checkboxlist list="jechan" label="会员录入频道列表"  name="userView"
            listKey="channelId"
            listValue="channelName" 
             />
             
             
             
                      
                      
                      
            <s:submit  value="更新会员设置"></s:submit>
            </s:form>

<s:include value="button.jsp"/>
</body>
</html>
