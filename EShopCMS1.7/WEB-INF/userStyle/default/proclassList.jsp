<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

    
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
.topbanner{
padding:3px;
height:20px;
text-align:right;}
.userLogon{
font-size:40px;
text-align:left;
height:80px;}
.channel
{
padding-top:10px;
height:30px;
color:#FFFFFF;}
.proclassList{
width:209px;
height:37px;
margin:3px;

background-image:url(<s:property value="getStyleName()"/>/images/classList_03.gif);
}
.anounce{
width:278px;
height:302px;

background-image:url(<s:property value="getStyleName()"/>/images/showAnounce_03.gif);}
a.chanenl:link {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenl:visited {
	text-decoration: none;
	color:#FFFFFF;
}
a.chanenl:hover {
	text-decoration: none;
	color: #CC9900;
}
a.chanenl:active {
	text-decoration: none;
	color: #006633;
}
.productPicClass{
float:inherit;}
.imgbg {
background-color: #F0F0F0;
color: #555;
border: 1px solid #CECFD0;
margin-bottom: 10px;
padding-bottom: 6px;
padding-top: 10px;
text-align: center;
}
.STYLE1 {font-size: 36px}
-->
</style>

    <!--商品分类开始-->
<s:set name="uid" value="getStyleUserId()"/>
<s:iterator value="getUserClassList(#uid)">
 <div class="proclassList"> 
 
 <div style="padding:8px; padding-left:30px; font-size:14px;">
 <a class="channel" href="ShowClass.jspx?StyleUserId=<s:property value="getStyleUserId()"/>&classId=<s:property value="getClassId()"/>"><b><s:property value="getClassName()"/></b></a>
   </div>
   
   </div> 
   
</s:iterator>


<!--商品分类结束-->