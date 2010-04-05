<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>聊天室</title>
<script type='text/javascript' src='../jQuery/jquery-latest.js'></script>
<script type="text/javascript">  
function update()
{  
    $.post("server.jsp", {}, function(data){ 
        $("#screen").val(data);
        textareaHeight();
    });  
    setTimeout('update()', 1000);
}
$(document).ready(function(){ 
	update();
	$("#button").click(function(){ 		    
		 $.post("server.jsp", {
		           	 	 message: $("#message").val(),
		          	  	 username: $("#username").val()
		             },function(data){	
				    	 $("#screen").val(data); 
				    	 $("#message").val("");
				         textareaHeight();
		 });
	});
	
	//回车自动提交内容
	$(document).keypress(function(e){
		if(e.keyCode == 13){
			$("#button").trigger("click");
		}
	})
	
	var dateNum = randomInt(10000);
	$("#username").val("游客"+dateNum);
});

//获取0-N之间的随机整数
function randomInt(num1){
	return Math.floor(Math.random()*num1);
}
//文本框滚动条始终在最下方
function textareaHeight(){
  $('#screen').get(0).scrollTop=$('#screen').get(0).scrollHeight;
}
</script>
</head>
<body>
  <h3>jQuery Chat --- 聊天室</h3>
<textarea id="screen" cols="40" rows="30"> </textarea> <br>  
姓名：<input id="username" value="游客" size="8">&nbsp;&nbsp;内容：<input id="message" size="40">
<button id="button"> 发送 </button>
<!-- 
转载请保留此行。
jQuery Chat --- 聊天室
code by CssRain.
转载请注明 ： http://www.cssrain.cn
-->
</body>
</html>
