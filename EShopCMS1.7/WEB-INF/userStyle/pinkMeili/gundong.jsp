<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::::::::::欢迎来到<s:property value="eUserInfo.SiteName"/>网站：：：：：：</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
	});
</script>
<style type="text/css">
<!--
a:link {
	text-decoration: none;
	color: #FFFFFF;
}
a:visited {
	text-decoration: none;
	color: #006600;
}
a:hover {
	text-decoration: none;
	color: #CC9900;
}
a:active {
	text-decoration: none;
	color: #006633;
}

-->
</style>
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
padding-top:5px;
height:30px;
color:#FFFFFF;}
.proclassList{
width:194px;
height:42px;
margin:3px;

background-image:url(<s:property value="getStyleName()"/>/images/fenlei_03.gif);}
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
#featured{ 
	width:400px; 
	padding-right:250px; 
	position:relative; 
	border:5px solid #ccc; 
	height:250px; 
	background:#fff;
}
#featured ul.ui-tabs-nav{ 
	position:absolute; 
	top:0; left:400px; 
	list-style:none; 
	padding:0; margin:0; 
	width:250px; 
}
#featured ul.ui-tabs-nav li{ 
	padding:1px 0; padding-left:13px;  
	font-size:12px; 
	color:#666; 
}
#featured ul.ui-tabs-nav li img{ 
	float:left; margin:2px 5px; 
	background:#fff; 
	padding:2px; 
	border:1px solid #eee;
}
#featured ul.ui-tabs-nav li span{ 
	font-size:11px; font-family:Verdana; 
	line-height:18px; 
}
#featured li.ui-tabs-nav-item a{ 
	display:block; 
	height:60px; 
	color:#333;  background:#fff; 
	line-height:20px;
}
#featured li.ui-tabs-nav-item a:hover{ 
	background:#f2f2f2; 
}
#featured li.ui-tabs-selected{ 
	background:url('images/selected-item.gif') top left no-repeat;  
}
#featured ul.ui-tabs-nav li.ui-tabs-selected a{ 
	background:#ccc; 
}
#featured .ui-tabs-panel{ 
	width:400px; height:250px; 
	background:#999; position:relative;
}
#featured .ui-tabs-panel .info{ 
	position:absolute; 
	top:180px; left:0; 
	height:70px; 
	background: url('images/transparent-bg.png'); 
}
#featured .info h2{ 
	font-size:18px; font-family:Georgia, serif; 
	color:#fff; padding:5px; margin:0;
	overflow:hidden; 
}
#featured .info p{ 
	margin:0 5px; 
	font-family:Verdana; font-size:11px; 
	line-height:15px; color:#f0f0f0;
}
#featured .info a{ 
	text-decoration:none; 
	color:#fff; 
}
#featured .info a:hover{ 
	text-decoration:underline; 
}
#featured .ui-tabs-hide{ 
	display:none; 
}
-->
</style>
<link href="<s:property value="getStyleName()"/>/css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div id="featured" >
    
        <s:set name="pro" value="getUserPro(1059,0,0,10).list"/>
商品列表



		  <ul class="ui-tabs-nav">
	        <li class="ui-tabs-nav-item ui-tabs-selected" id="nav-fragment-1"><a href="#fragment-1"><img src="<s:property value="getStyleName()"/>/images/image1-small.jpg" alt="" /><span>女士精品服饰演示\童装精品服饰演示</span></a></li>
	        <li class="ui-tabs-nav-item" id="nav-fragment-2"><a href="#fragment-2"><img src="<s:property value="getStyleName()"/>/images/image2-small.jpg" alt="" /><span>女士精品服饰演示\童装精品服饰演示</span></a></li>
	        <li class="ui-tabs-nav-item" id="nav-fragment-3"><a href="#fragment-3"><img src="<s:property value="getStyleName()"/>/images/image3-small.jpg" alt="" /><span>女士精品服饰演示\童装精品服饰演示</span></a></li>
	        <li class="ui-tabs-nav-item" id="nav-fragment-4"><a href="#fragment-4"><img src="<s:property value="getStyleName()"/>/images/image4-small.jpg" alt="" /><span>女士精品服饰演示\童装精品服饰演示</span></a></li>
	      </ul>




	    <!-- First Content -->
	    <div id="fragment-1" class="ui-tabs-panel" style="">
			<img src="<s:property value="getStyleName()"/>/images/image1.jpg" alt="" />
			 <div class="info" >
				<h2><a href="#" >15+ Excellent High Speed Photographs</a></h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt condimentum lacus. Pellentesque ut diam....<a href="#" >read more</a></p>
			 </div>
	    </div>

	    <!-- Second Content -->
	    <div id="fragment-2" class="ui-tabs-panel ui-tabs-hide" style="">
			<img src="<s:property value="getStyleName()"/>/images/image2.jpg" alt="" />
			 <div class="info" >
				<h2><a href="#" >20 Beautiful Long Exposure Photographs</a></h2>
				<p>Vestibulum leo quam, accumsan nec porttitor a, euismod ac tortor. Sed ipsum lorem, sagittis non egestas id, suscipit....<a href="#" >read more</a></p>
			 </div>
	    </div>

	    <!-- Third Content -->
	    <div id="fragment-3" class="ui-tabs-panel ui-tabs-hide" style="">
			<img src="<s:property value="getStyleName()"/>/images/image3.jpg" alt="" />
			 <div class="info" >
				<h2><a href="#" >35 Amazing Logo Designs</a></h2>
				<p>liquam erat volutpat. Proin id volutpat nisi. Nulla facilisi. Curabitur facilisis sollicitudin ornare....<a href="#" >read more</a></p>
	         </div>
	    </div>

	    <!-- Fourth Content -->
	    <div id="fragment-4" class="ui-tabs-panel ui-tabs-hide" style="">
			<img src="<s:property value="getStyleName()"/>/images/image4.jpg" alt="" />
			 <div class="info" >
				<h2><a href="#" >Create a Vintage Photograph in Photoshop</a></h2>
				<p>Quisque sed orci ut lacus viverra interdum ornare sed est. Donec porta, erat eu pretium luctus, leo augue sodales....<a href="#" >read more</a></p>
	         </div>
	    </div>

		</div>
	</div>


</body>
</html>