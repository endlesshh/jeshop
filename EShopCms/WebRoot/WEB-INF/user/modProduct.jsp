<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		$(pageInit);
var editor;
function pageInit()
{
	
	$('#pin').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
	$('#pro').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	
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
.STYLE1 {color: #FFFFFF}
-->
    </style>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
    
<script language="javascript" >

function check()
{
if(document.getElementById('productName').value.length<=1)
{
 alert('请填写商品名称');
 document.getElementById('productName').focus();
 return false;
}
if(document.getElementById('barCode').value.length<=1)
{
 alert('请填写商品条形码');
 document.getElementById('barCode').focus();
 return false;
}
if(document.getElementById('unit').value.length<=0)
{
 alert('请填写商品单位');
 document.getElementById('unit').focus();
 return false;
}
if(document.getElementById('productNum').value.length<=1)
{
 alert('请填写商品库存量');
 document.getElementById('productNum').focus();
 return false;
}
if(document.getElementById('priceMarket').value.length<=1)
{
 alert('请填写商品零售价');
 document.getElementById('priceMarket').focus();
 return false;
}
if(document.getElementById('intr').value.length<=1)
{
 alert('请填写商品简介');
 document.getElementById('intr').focus();
 return false;
}


}
</script>
    
</head>

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;"><div style="border:0px #0099FF inset; width:80%; text-align:left; height:400px;">

  <s:form action="/user/updateProduct.jspx" method="post" onsubmit="return check()">
   <s:hidden name="channelId"  value="%{getChannelId()}"></s:hidden>
   <s:hidden name="product.userId" value="%{#session.user.getUserId()}"></s:hidden>
   
   <input type="hidden" theme="simple" name="product.productId" value="<s:property value="product.productId"/>"/>
   <s:hidden name="product.channelId"  value="%{getChannelId()}"></s:hidden>            
        <s:textfield 
            id="productName"
            label="商品名称" 
            name="product.productName"
            tooltip="商品名称" 
             size="40"/>
            
             <s:textfield 
            label="商品型号"
            id="productModel" 
            name="product.productModel"
            tooltip="商品型号" size="20"/>
             <s:textfield 
            label="商品条形码" 
            id="barCode"
            name="product.barCode"
            tooltip="商品规格填写" size="20"/>
              
           <!-- 开始查找栏目子栏目 -->
          
            <tr><td align="right">子栏目
            
  </td><td>
           <select name="product.classId">
           <!--  -->
           <option value="0">不属于任何栏目属于频道</option>
           
            <s:iterator value="%{ListAllClass(#request.channelId,0,1)}" status="ones">
            <!-- 一级栏目 -->
            <option  value="<s:property value="getClassId()"/>"><s:property value="getClassName()"/></option>
            
            
                    <!-- 二级栏目 -->
                     <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelId,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     
                      <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelId,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                 
                             <!-- 显示四级栏目 -->


											<s:set name="parID" value="getClassId()"></s:set>
											<s:set name="depth" value="getDepth()+1"></s:set>
											<s:iterator
												value="%{ListAllClass(#request.channelId,#parID,#depth)}"
												status="ones">
												<option value="<s:property value="getClassId()"/>">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<s:property value="getClassName()" />
												</option>
											</s:iterator>



											<!-- 显示四级栏目 -->
                     </s:iterator>
                     
                     
                     
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     </s:iterator>
                    <!-- 二级栏目结束 -->
            
            
            </s:iterator>
            </select>
            </td> </tr>
            <!-- 结束查找子栏目 -->
             
            
            
             <s:textfield 
            label="商品规格" 
            id="productStandard"
            name="product.productStandard"
            tooltip="商品规格填写" size="20"/>
           
            <s:radio
            tooltip="商品类别(0 实物商品)(2 虚拟点卡)(1 软件商品)"
            label="商品类别(0 实物商品)(2 虚拟点卡)(1 软件商品)"
            list="#{'0':'实物商品', '1':'虚拟点卡','2':'软件商品'}"
            name="product.productKind"
            listKey="key"
            listValue="value" 
            value="0"/>
            
            <s:select
            tooltip="Choose Your Favourite Color"
            label="生产厂家或者商品店家（可以是店家）"
            list="classMap"
            name="product.producerId"
            emptyOption="false"
            />
            
          
       
            <s:textfield 
            label="商品单位" 
            id="unit"
            name="product.unit"
            tooltip="商品规格填写" size="4"/>
            
            <s:textfield 
            label="选择商家品牌" 
            id="trademarkName"
            name="product.trademarkName"
            tooltip="商品规格填写" size="20"/>
             <s:textfield 
            label="商品库存数量" 
            id="productNum"
            name="product.productNum"
            tooltip="商品规格填写" size="20"/>
             
             <s:textfield 
   			label="商品缩略图"
   			name="filename"
   			id="filename"
   			required="true"
   			value="%{product.getProductThumb()}"
   			size="40"/>
 			<tr><td align="right"></td><td height=20>
 <iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td></tr>
             
             
              <s:textarea  tooltip="商品简介"
            label="商品简介"
   			id="pin"
   			name="product.productIntro"
   			rows="10"
   			>
             
             </s:textarea>
             
             
            <s:textarea
            tooltip="Enter your Biography"
            label="商品详细介绍"
            name="product.ProductExplain"
            cols="20"
            id="pro"
            rows="15"/>
            
            
           
            <s:textfield 
            label="商品原始零售价" 
            id="priceMarket"
            name="product.priceMarket"
            tooltip="商品规格填写" size="5"/>
            <s:textfield 
            label="商品网站会员价" 
            name="product.priceMember"
            tooltip="商品规格填写" size="5"/>
            <s:textfield 
            label="商品团购会员价" 
            name="product.priceTuangou"
            tooltip="商品规格填写" size="5"/>
             <s:textfield 
            label="该商品限定团购优惠价人数" 
            name="product.tuangouNumer"
            tooltip="商品规格填写" size="5"/>
            
            <s:radio
            tooltip="是否推荐商品"
            label="是否推荐商品"
            list="#{'1':'推荐商品&nbsp', '0':'不推荐该商品'}"
            name="product.isElite"
            listKey="key"
            listValue="value" 
            />
            <s:radio
            tooltip="是否是热卖产品"
            label="是否是热销产品"
            list="#{'1':'热卖产品&nbsp', '0':'非热卖该商品'}"
            name="product.isHot"
            listKey="key"
            listValue="value" 
           />
            
            
             <s:submit value="更新商品信息"/>
            
            

            
            </s:form><br><br>
</div>&nbsp;</td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif"></td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
</table>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
</body>
</html>
