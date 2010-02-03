
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#pro').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#pin').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
	
	function preview()
{
window.document.body.innerHTML=$("#showprint").html();
window.print();

}

</script>
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
<!--
-->

<!--
-->
td{ padding:3px;}
    </style>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
</head>

<body>
          <s:url id="deleurl" value="/admin/deleProduct.jspx">
            <s:param name="product.productId">
              <s:property  value="product.productId"/>
            </s:param>
          </s:url>
          <s:url id="seturl" value="/admin/initMod.jspx">
            <s:param name="product.productId">
              <s:property  value="product.productId"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="product.channelId"/>
            </s:param>
          </s:url>
<table width="95%" border="0" cellspacing="2" cellpadding="0" style="margin:15px; border:1px #CCCCCC outset;">
  <tr>
    <td colspan="5" align="center" style="border:1px  #CCCCCC outset; background-color:#ececec;">
      <input type="button" value="返回商品列表" onClick="window.location.href='ListProduct.jspx?channelId=<s:property value="product.channelId"/>'" /> <input onClick="window.location.href='initMod.jspx?product.productId=<s:property value="product.productId"/>&channelId=<s:property value="product.channelId"/>'"  type="button" value="修改商品" /><input onClick="window.location.href='deleProduct.jspx?product.productId=<s:property value="product.productId"/>&channelId=<s:property value="product.channelId"/>'" type="button" value="删除商品" /><input  onClick="window.location.href='initSetProduct.jspx?productId=<s:property  value="%{product.getProductId()}"/>&channelId=<s:property value="%{product.getChannelId()}"/>'" type="button" value="商品设置" /><input type="button" value="打印商品信息" onClick="preview()" />
      
      <input type="button" value="商品统计信息" onClick="preview()" />
      <input type="button" value="相关商品管理" onClick="preview()" />
    
    </td>
  </tr></table>
  
  <div id="showprint">
<table width="95%" border="0" cellspacing="2" cellpadding="0" style="margin:15px; border:1px #CCCCCC outset;">
  <tr>
    <td colspan="5" align="center" style="border:1px  #CCCCCC outset; background-color:#ececec;"><s:property value="product.productName"/>商品信息</td>
  </tr>
  <tr>
    <td colspan="5">&nbsp;</td>
  </tr>
  <tr>
    <td width="33%"><strong>商品编号</strong>：<s:property value="product.barCode"/></td>
    <td width="29%"><strong>商品型号</strong>：<s:property value="product.productModel"/></td>
    <td width="20%"><strong>商品规格</strong>：<s:property value="product.productStandard"/></td>
    <td colspan="2"><strong>所属类别</strong>：
    
    <s:set name="tcid" value="product.classId"/>
    <s:if test="#tcid!=null&&#tcid!=0">
    <property value="getClassName(#tcid)"/></s:if>  
    <s:else>
    【频道商品】
    </s:else>  </td>
  </tr>
  <tr>
    <td><strong>商家（或厂家）</strong>：<s:if test="product.producerId!=null"><s:set name="tpid" value="product.producerId"/><s:property value="getProducerName(#tpid)"/></s:if></td>
    <td colspan="4"><strong>品牌名称</strong>:<s:property value="product.trademarkName"/></td>
  </tr>
  <tr>
    <td><strong>当前库存：
      <s:property value="product.productNum"/>
      单位：</strong>
    <s:property value="product.unit"/></td>
    <td colspan="4"><strong>库存报警量</strong>：<s:property value="product.limitNum"/></td>
  </tr>
  <tr>
    <td colspan="2"><strong>质保日期开始</strong>：<s:property value="product.beginDate"/> <strong>结束日期</strong>：<s:property value="product.endDate"/></td>
    <td></td>
    <td width="9%"><strong>是否热卖</strong>：<s:property value="product.isHot"/></td>
    <td width="9%"><strong>是否推荐</strong>：<s:property value="product.isElite"/></td>
  </tr>
  <tr>
    <td colspan="5"><strong>市场价</strong>：<s:property value="product.priceMarket"/> <strong>会员价</strong>：<s:property value="product.priceMember"/> <strong>网站价</strong>：<s:property value="product.priceMember"/> <strong>团购价</strong>：<s:property value="product.priceTuangou"/> <strong>设定团购人数</strong>：<s:property value="product.tuangouNumer"/></td>
  </tr>
  <tr>
    <td colspan="5" style="border:1px  #CCCCCC outset; background-color:#ececec;"><strong>商品简介</strong>：</td>
  </tr>
  <tr>
    <td colspan="5"><s:property escape="false" value="product.productIntro"/></td>
  </tr>
  <tr>
    <td colspan="5" style="border:1px  #CCCCCC outset; background-color:#ececec;"><strong>商品详细信息</strong>：</td>
  </tr>
  <tr>
    <td colspan="5"><s:property escape="false" value="product.ProductExplain"/></td>
  </tr>
  <tr>
    <td colspan="5" style="border:1px  #CCCCCC outset; background-color:#ececec;"><strong>客户浏览信息</strong>：</td>
  </tr>
  <tr>
    <td><strong>商品点击率</strong>：<s:property value="product.hits"/></td>
    <td>&nbsp;</td>
    <td><strong>商品购买量</strong>：<s:property value="product.buyTimes"/></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>



</div>



<s:include value="button.jsp"/>

</body>
</html>
