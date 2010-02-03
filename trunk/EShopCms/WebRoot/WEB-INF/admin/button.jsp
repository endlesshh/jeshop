<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.util.*,java.sql.*" %>  
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:if test="#session.admin==null">
<script language=javascript>
parent.location.href="Login.jspx";
</script>
</s:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
.label{font:12px Verdana,Arial;}
-->
</style></head>

<body>
<div align="center">
系统版本：Beta<s:property value="getVision()"/>

</div>

<script type="text/javascript" src="../jQuery/boxover.js"></script>
<script type="text/javascript" src="../jsFunction/admin.js"></script>
<script>
parent.title="高安全电子商务平台";
var arr = new Array();
arr[0] = '高安全电子商务平台,丰富的接口和您的其他应用结合，将会员充值和支付结合，构建更加实用的系统平台';
arr[1] = '会员具有独立的建站功能，更加丰富系统平台和盈利模式';
arr[2] = '建立电子商务平台的最佳选择';
arr[3] = '为您提供最新的软件版本，是您的系统永远保持最新';
arr[4] = '系统自身提供的网络检测，随时为您检测系统情况，随时捕捉非法信息';
arr[5] = '丰富的订单功能和支付功能';
arr[6] = '及时的安全记录功能，随时记录非法攻击选项，方便管理员查看管理';
function showStat()
{
var iNum = parseInt(7*Math.random());
window.status=arr[iNum];
//$.messager.show('<font color=red>管理员提示</font>', '系统目前运行正常！无非法信息进入');
$.ajax({
		type: "get",
		url: "getNewMsg.jspx",
		beforeSend: function(XMLHttpRequest){
			//ShowLoading();
		},
		success: function(data, textStatus){
			//alert(data.toString());
			parent.document.getElementById("havaSomeMsg").innerHTML=data.toString();
		},
		complete: function(XMLHttpRequest, textStatus){
			//alert(textStatus);
		},
		error: function(){
			//请求出错处理
		}
});
		
}

function InsertQvod(vodurl,width,height)
{
if(vodurl.length<=0)
{
alert('视频地址不能为空');
return;
}
if(width.length<=0)
{
alert('视频宽度不能为空');
return;
}

if(height.length<=0)
{
alert('视频高度不能为空');
return;
}
var str ="";
str = str + "<object classid='clsid:F3D0D36F-23F8-4682-A195-74C92B03D4AF' width='"+width+"' height='"+height+"' id='QvodPlayer' name='QvodPlayer'";
str = str + " onError=if(window.confirm('请您先安装QvodPlayer软件,然后刷新本页才可以正常播放')){window.open('http://www.qvod.com/download.htm')}else{self.location='http://www.qvod.com/'}>";
str = str + "<PARAM NAME='URL' VALUE="+vodurl+">";
str = str + "<PARAM NAME='Autoplay' VALUE='0'>";
str = str + "<PARAM NAME='QvodAdUrl' VALUE='http://www.j-eshop.cn'>";
str = str + "</object>"
editor.focus();
editor.pasteHTML(str);
}

setInterval("showStat()",500);



</script>


</body>
</html>
