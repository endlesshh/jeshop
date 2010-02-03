    <%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="../jQuery/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="skin/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/boxover.js"></script>

<script type="text/javascript">
		function slideToggle(){
$("#divObj").slideToggle(500);
}
		</script>
<div class="toptopbeader">

   <s:url id="uservlogin"  value="/user/userviplogin.jspx"/>
   
   <form name="uform" action="<s:property value="%{uservlogin}"/>" method="post"> 
   
<span class="STYLE4">用户名</span>：
 <input size="20" id="uu" type="text" jVal="{valid:function (val) { if (val.length <2) return false; else return true; }, message:'名称长度错误', styleType:'cover'}" style="width:120px;height:20px; font-size:12px;" name="userName" >

    <span class="STYLE4">密 码</span> ：
<input  size="15" jVal="{valid:function (val) { if (val.length <2) return false; else return true; }, message:'密码长度错误', styleType:'cover'}" id="up" type="password" style="width:120px;height:20px; font-size:12px; " name="passWord" >

     <span class="STYLE4">验证码</span>：
     <input jVal="{valid:function (val) { if (val.length <6) return false; else return true; }, message:'请正确输入您的验证码', styleType:'cover'}" type="password" name="safecode" id="sp" size="4" style="width:80px;height:20px; font-size:12px; ">
      
    

       <s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
     <span style="vertical-align:middle"> <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:hand; padding:1px; border:0px #CCCCCC outset;18px;" src="
      <s:property value="%{imgsoft}"/>" />   </span>
   
     <input type="submit" name="button" id="button" value="提交">
        <input type="reset" name="button" id="button" value="重置">
        
<s:url id="imgsoft1" value="/user/regeUser.jspx"/>
      <a title="fade=[on] header=[欢迎注册为本站会员] body=[<p align='center'><ul><li>为了您的安全起见，注册后您的购物收藏信息将保留，便于为您售后</li><li>通过会员卡您将获得更多的优惠信息</li><li>本站为您提供及时的信息服务，请将您的信息准确填写</li></ul>]"  href="<s:property value="%{imgsoft1}"/>"><font color="#ff0000">会员注册</font></a> | <a href="../user/FindPass.jspx"><font color="#FF000000">找回密码</font></a> 
   
   </form>


</div>
<div align="center">
<div class="head-logon"><img src="images/images/youa-logo_03.jpg" /><img src="images/images/12.gif" width="512" height="118" /></div>

</div>

<div align="center">
<div class="head-channel-bg">
<ul class="channelull-list">
 <s:property escape="false" value="showChannelEx(6,'ShowChannelCss',0)"/>
</ul>


</div>
</div>

<div align="center">
<div class="proserche">
 <form action="../user/lookuporder.jspx" id="sc" method="post" name="from">订单查询：<input type="text" name="Showordercode"  size="15" style="height:20px;"/> <input type="submit"  value="查询" />
           &nbsp;
              商品数：<span class="simpleCart_quantity" style="color:#FF0000">
          <input type="hidden" name="linkurl" value="result.jsp" />
          </span>
        &nbsp; &nbsp;总金额：<span style="color:#FF0000;" class="simpleCart_total"></span>      
      <a href="buyCart.html">进入购物车</a> <a href="../user/userManer.jspx">会员中心 </a> <a href="ShopEx.html">街道旺铺</a>
      
      <a href="ShowAskAbout.html">投诉建议</a>
      
      <a href="ShowPage.html?script.jsp">在线充值</a>
    </form>
</div>
</div>

  
    
  
   