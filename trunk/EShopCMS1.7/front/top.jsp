<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="../jQuery/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen"/>
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

<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="right" class="tdContent"><span>设为首页  | 加入收藏 | 广告投放  | 联系我们 | 企业文化 | 版权说明 | 帮助信息</span></td>
  </tr>
</table>
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" class="tdContent" width="220" height="62"><img src="images/logo.jpg"  /></td>
    <td align="center" class="tdContent" width="428" height="124"><img src="images/banner.jpg" /></td>
    <td align="center" class="tdContent"><table  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td  class="top_button">会员充值</td>
        <td class="top_button">商铺中心</td>
      </tr>
      <tr>
        <td class="top_button">购物车</td>
        <td class="top_button">投诉建议</td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="920" class="bigbord" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td  class="top_channel" ><s:property escape="false" value="showChannelEx(6,'ShowChannelCss',0)"/>  </td>
  </tr>
</table>