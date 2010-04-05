 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
 <script type="text/javascript" src="<s:property value="getRootPath()"/>/jQuery/jquery.min.js" ></script>
<script type="text/javascript" src="<s:property value="getRootPath()"/>/jQuery/jquery-ui.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
	});
</script>
<style>
#featured{ 
	width:390px; 
	padding-right:250px; 
	position:relative; 
	border:3px solid #ccc; 
	height:250px; 
	background:#fff;
}
#featured ul.ui-tabs-nav{ 
	position:absolute; 
	top:0; left:370px; 
	list-style:none; 
	padding:0; margin:0; 
	width:260px; 
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
	width:360px; height:250px; 
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


</style>

		<div id="featured" >
		  <ul class="ui-tabs-nav">
	
            
<s:iterator value="getShowIndexLid()" status="clist">
 <s:set name="pname" value="getPicUrl()"/>
  <s:if test="#pname!=null">
    <li class="ui-tabs-nav-item ui-tabs-selected" id="nav-fragment-<s:property value="#clist.index+1"/>"><a onmouseover="window.status=''" onclick="window.status=''" href="#fragment-<s:property value="#clist.index+1"/>"><img width="80" height="50" src="../upfile/<s:property value="getPicUrl()"/>" alt="" /><span>
    
    <s:property value="getName()"/>
    </span></a></li>
  </s:if>
</s:iterator>
  </ul>

<s:iterator value="getShowIndexLid()" status="clist">
 <s:set name="pname" value="getPicUrl()"/>
  <s:if test="#pname!=null">
	    <div id="fragment-<s:property value="#clist.index+1"/>" class="ui-tabs-panel" style="">
		<a target="_blank" href="<s:property value="getLinkUrl()"/>" >	<img border="0" width="370" height="250" src="../upfile/<s:property value="getPicUrl()"/>" alt="" /></a>
			 <div class="info" >
				<h2><a target="_blank" href="<s:property value="getLinkUrl()"/>" ><s:property value="getName()"/></a></h2>
				<p><a target="_blank" href="<s:property value="getLinkUrl()"/>" ><s:property value="getText()"/></a></p>
			 </div>
	    </div>
        </s:if>
        </s:iterator>


	</div>
