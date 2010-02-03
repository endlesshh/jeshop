
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script type='text/javascript' src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" >  
function update()
{  
    $.post("../common/server.jsp", {}, function(data){ 
        $("#screen").val(data);
        textareaHeight();
    });  
    setTimeout('update()', 1000);
}
$(document).ready(function(){ 
	update();
	$("#button").click(function(){ 		    
		 $.post("../common/server.jsp", {
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
<!--
//可以打包为js文件;
var x0=0,y0=0,x1=0,y1=0;
var offx=6,offy=6;
var moveable=false;
var hover='orange',normal='#336699';//color;
var index=10000;//z-index;
//开始拖动;
function startDrag(obj)
{
if(event.button==1)
{
//锁定标题栏;
obj.setCapture();
//定义对象;
var win = obj.parentNode;
var sha = win.nextSibling;
//记录鼠标和层位置;
x0 = event.clientX;
y0 = event.clientY;
x1 = parseInt(win.style.left);
y1 = parseInt(win.style.top);
//记录颜色;
normal = obj.style.backgroundColor;
//改变风格;
obj.style.backgroundColor = hover;
win.style.borderColor = hover;
obj.nextSibling.style.color = hover;
sha.style.left = x1 + offx;
sha.style.top = y1 + offy;
moveable = true;
}
}
//拖动;
function drag(obj)
{
if(moveable)
{
var win = obj.parentNode;
var sha = win.nextSibling;
win.style.left = x1 + event.clientX - x0;
win.style.top = y1 + event.clientY - y0;
sha.style.left = parseInt(win.style.left) + offx;
sha.style.top = parseInt(win.style.top) + offy;
}
}
//停止拖动;
function stopDrag(obj)
{
if(moveable)
{
var win = obj.parentNode;
var sha = win.nextSibling;
var msg = obj.nextSibling;
win.style.borderColor = normal;
obj.style.backgroundColor = normal;
msg.style.color = normal;
sha.style.left = obj.parentNode.style.left;
sha.style.top = obj.parentNode.style.top;
obj.releaseCapture();
moveable = false;
}
}
//获得焦点;
function getFocus(obj)
{
if(obj.style.zIndex!=index)
{
index = index + 2;
var idx = index;
obj.style.zIndex=idx;
obj.nextSibling.style.zIndex=idx-1;
}
}
//最小化;
function min(obj)
{
var win = obj.parentNode.parentNode;
var sha = win.nextSibling;
var tit = obj.parentNode;
var msg = tit.nextSibling;
var flg = msg.style.display=="none";
if(flg)
{
win.style.height = parseInt(msg.style.height) + parseInt(tit.style.height) + 2*2;
sha.style.height = win.style.height;
msg.style.display = "block";
obj.innerHTML = "0";
}
else
{
win.style.height = parseInt(tit.style.height) + 2*2;
sha.style.height = win.style.height;
obj.innerHTML = "2";
msg.style.display = "none";
}
}
//创建一个对象;
function xWin(id,w,h,l,t,tit,msg)
{
index = index+2;
this.id = id;
this.width = w;
this.height = h;
this.left = l;
this.top = t;
this.zIndex = index;
this.title = tit;
this.message = msg;
this.obj = null;
this.bulid = bulid;
this.bulid();
}
//初始化;
function bulid()
{
var str = ""
+ "<div id=xMsg" + this.id + " "
+ "style='"
+ "z-index:" + this.zIndex + ";"
+ "width:" + this.width + ";"
+ "height:" + this.height + ";"
+ "left:" + this.left + ";"
+ "top:" + this.top + ";"
+ "background-color:" + normal + ";"
+ "color:" + normal + ";"
+ "font-size:8pt;"
+ "font-family:Tahoma;"
+ "position:absolute;"
+ "cursor:default;"
+ "border:2px solid " + normal + ";"
+ "' "
+ "onmousedown='getFocus(this)'>"
+ "<div "
+ "style='"
+ "background-color:" + normal + ";"
+ "width:" + (this.width-2*2) + ";"
+ "height:20;"
+ "color:white;"
+ "' "
+ "onmousedown='startDrag(this)' "
+ "onmouseup='stopDrag(this)' "
+ "onmousemove='drag(this)' "
+ "ondblclick='min(this.childNodes[1])'"
+ ">"
+ "<span style='width:" + (this.width-2*12-4) + ";padding-left:3px;'>" + this.title + "</span>"
+ "<span style='width:12;border-width:0px;color:white;font-family:webdings;' onclick='min(this)'>0</span>"
+ "<span style='width:12;border-width:0px;color:white;font-family:webdings;' onclick='ShowHide(\""+this.id+"\",null)'>r</span>"
+ "</div>"
+ "<div style='"
+ "width:100%;"
+ "height:" + (this.height-20-4) + ";"
+ "background-color:white;"
+ "line-height:14px;"
+ "word-break:break-all;"
+ "padding:3px;"
+ "'>" + this.message + "</div>"
+ "</div>"
+ "<div id=xMsg" + this.id + "bg style='"
+ "width:" + this.width + ";"
+ "height:" + this.height + ";"
+ "top:" + this.top + ";"
+ "left:" + this.left + ";"
+ "z-index:" + (this.zIndex-1) + ";"
+ "position:absolute;"
+ "background-color:black;"
+ "filter:alpha(opacity=40);"
+ "'></div>";
document.body.insertAdjacentHTML("beforeEnd",str);
}
//显示隐藏窗口
function ShowHide(id,dis){
var bdisplay = (dis==null)?((document.getElementById("xMsg"+id).style.display=="")?"none":""):dis
document.getElementById("xMsg"+id).style.display = bdisplay;
document.getElementById("xMsg"+id+"bg").style.display = bdisplay;
}

</script>
<script type="text/javascript">
function initialize()
{
var a = new xWin("1",160,200,10,10,"站内交流","<div class='' style='height:406px; width:188px; background-image:url(../common/user_gui.gif); background-repeat:no-repeat;'><div id='userN' style='position:relative; left:15px; width:88px; height:20px; top:30px;'><s:set name="user" value="#session.user"/><s:if test="#user!=null"><input id='username' style='border:0px;' value='<s:property value="#session.user.getUserName()"/>' size='8'></s:if><s:else><input id='username' style='border:0px;' value='游客' size='8'></s:else></div><div id='userCon' style='position:relative; left:0px; width:152px; height:250px; top:43px;'><textarea id='screen' style='width:100%; height:250px; border-bottom:0px; border-left:0px; border-top:0px;'> </textarea></div><div id='userNs' style='position:relative; left:5px; width:157px; height:25px; top:62px;'><input style='border:0px;' id='message' ></div><div id='userN' style='position:relative; left:13px; width:157px; height:25px; top:75px;'><input id='button' class=''type='button'/></div></div>");
}
window.onload = initialize;
</script>




</body>
</html>
