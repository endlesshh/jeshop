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



<div class="menu1">
  <div style="height:25px;" onclick="document.all.child4334.style.display=(document.all.child4334.style.display =='none')?'':'none'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">&nbsp;用户管理</span></div>
<div id="child4334" style="display:none;">
<s:url id="hjhj" value="/admin/addAdmin.jsp"></s:url>
<s:url id="hjhj1" value="/admin/listAdmin.jspx"></s:url>
<div class="menu2" > <a href=<s:property value="%{hjhj}"/> target="BoardList">管理员添加</a>  <a href=<s:property value="%{hjhj1}"/> target="BoardList">管理</a></div>


<s:url id="MaUser" value="/admin/ListAllUser.jspx"></s:url>
  <div class="menu2"><a href=<s:property value="%{MaUser}"/> target="BoardList">会员管理</a></div>
  
 
 
<s:url id="MaUserGroup" value="/admin/ListUserGroup.jspx"></s:url>
  <div class="menu2"><a href=<s:property value="%{MaUserGroup}"/> target="BoardList">会员组管理</a></div>
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