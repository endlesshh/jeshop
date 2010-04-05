<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
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

function chCss(idName,cnum,anum)
{

for(var i=1;i<=anum;i++)
{
if(i==cnum)
{
//document.getElementById(idName+i).style.display='block';
$("#"+idName+i).removeClass("tableChannelSelect");
$("#"+idName+i).addClass("tableChannelSelecton");
}else
{
//document.getElementById(idName+i).style.display='none';
$("#"+idName+i).removeClass("tableChannelSelecton");
$("#"+idName+i).addClass("tableChannelSelect");
}

}

}

function ShowTablediv(idName,cnum,anum)
{
for(var i=1;i<=anum;i++)
{
if(i==cnum)
{
document.getElementById(idName+i).style.display='block';

}else
{
document.getElementById(idName+i).style.display='none';
}

}

}

function SubUserTP()
{

}

</script>
		

<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
   <form action="../user/lookuporder.jspx" id="sc" method="post" name="from"> <td align="right" class="tdContent">订单查询：<input type="text" name="Showordercode"  size="15" style="height:15px; border:1px #666666 outset;"/>
       <input type="submit" style="height:20px; border:1px #666666 outset;"  value="查询" />
       &nbsp;
            <input type="hidden" name="linkurl" value="result.jsp" />  商品数：<span class="simpleCart_quantity" style="color:#FF0000">
          
          </span>
        &nbsp; &nbsp;总金额：<span style="color:#FF0000;" class="simpleCart_total"></span>      
      <a href="buyCart.html">进入购物车</a> 
     &nbsp;<span>设为首页  | 加入收藏</span></td></form>
  </tr>
</table>
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" class="tdContent" width="220" height="62"><img src="images/logo.jpg"  /></td>
    <td align="center" class="tdContent" width="428" height="124"><img src="images/banner.jpg" /></td>
    <td align="center" class="tdContent"><table  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td  class="top_button"><a href="ShowPage.html?script.jsp">会员充值</a></td>
        <td class="top_button"><a href="ShopEx.html">商铺中心</a></td>
      </tr>
      <tr>
        <td class="top_button"> <a href="../user/userManer.jspx">会员中心</a></td>
        <td class="top_button"><a href="ShowAskAbout.html">站内导航</a></td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="920" class="bigbord" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td  class="top_channel" ><s:property escape="false" value="showChannelEx(6,'ShowChannelCss',0)"/>  </td>
  </tr>
</table>
