<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<s:head/>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
</head>

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

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;"><div style="border:0px #0099FF outset; width:100%; text-align:left; height:400px;">
 
 <script language="javascript">
 function checkSub()
 {
 if(document.getElementById("pname").value==null||document.getElementById("pname").value.length<=1)
 {
 alert('商品名称填写有误 请检查后重新填写');
 document.getElementById("pname").focus();
 return false;
 }
  if(document.getElementById("pmod").value==null||document.getElementById("pmod").value.length<=1)
 {
 alert('商品的型号填写有误 请填写商品的型号');
 document.getElementById("pmod").focus();
 return false;
 }
  if(document.getElementById("barcode").value==null||document.getElementById("barcode").value.length<=1)
 {
 alert('商品的条形码为空');
 document.getElementById("barcode").focus();
 return false;
 }
 if(document.getElementById("psd").value==null||document.getElementById("psd").value.length<=1)
 {
 alert('商品的规格为空！如果没有请填写暂无规格');
 document.getElementById("psd").focus();
 return false;
 }
 if(document.getElementById("put").value==null)
 {
 alert('商品的单位为空！请仔细填写商品的单位');
 document.getElementById("put").focus();
 return false;
 }
 if(document.getElementById("ptname").value==null||document.getElementById("ptname").value.length<=1)
 {
 alert('商品的单位为空！请仔细填写商品的单位');
 document.getElementById("ptname").focus();
 return false;
 }
 if(document.getElementById("pnum").value==null)
 {
 alert('商品的数量为空！请填写商品的数量');
 document.getElementById("pnum").focus();
 return false;
 }
 if(document.getElementById("filename").value==null||document.getElementById("filename").value.length<=1)
 {
 alert('商品的缩略图为空，请在下面的选择中上传商品的缩略图');
 document.getElementById("filename").focus();
 return false;
 }
 if(document.getElementById("pro").value==null||document.getElementById("pro").value.length<=15)
 {
 alert('商品的详细介绍为空或者字数太少');
 return false;
 }
 if(document.getElementById("pin").value==null||document.getElementById("pin").value.length<=15)
 {
 alert('商品的简单介绍为空或者字数太少');
 document.getElementById("pin").focus();
 return false;
 }
 if(document.getElementById("pmark").value==null)
 {
 alert('商品的市场价为空！');
 document.getElementById("pmark").focus();
 return false;
 }
 
 return true;
 }
 
</script>
  <s:form action="/user/addProduct.jspx" method="post" onsubmit="return checkSub()">
   <s:hidden name="channelId"  value="%{getChannelId()}"></s:hidden>
    <s:hidden name="product.userId" value="%{#session.user.getUserId()}"></s:hidden>
   <s:hidden name="product.channelId"  value="%{getChannelId()}"></s:hidden>            <s:textfield 
            label="商品名称" 
            id="pname"
            name="product.productName"
            tooltip="商品名称"  size="40"/>
             <s:textfield 
            label="商品型号" 
            name="product.productModel"
            id="pmod"
            tooltip="商品型号" size="20"/>
             <s:textfield 
            label="商品条形码" 
            id="barcode"
            name="product.barCode"
            value="%{getEcode()}"
            tooltip="商品规格填写" size="20"/>
            
          
            
             
            
              
           <!-- 开始查找栏目子栏目 -->
          
            <tr><td align="right">子栏目
            
  </td><td>
           <select name="product.classId">
           <!--  -->
           <option value="0">不属于任何栏目属于频道</option>
           
            <s:iterator value="%{ListAllClass(#request.channelId,0,1)}" status="ones">
            <!-- 一级栏目 -->
            <option value="<s:property value="getClassId()"/>"><s:property value="getClassName()"/></option>
            
            
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
            id="psd"
            name="product.productStandard"
            tooltip="商品规格填写" size="20"/>
           
            <s:radio
            tooltip="商品类别"
            label="商品类别"
            list="#{'0':'实物商品', '1':'虚拟点卡','2':'软件商品'}"
            name="product.productKind"
            listKey="key"
            listValue="value" 
            value="0"/>
            
            <s:select
            tooltip="Choose Your Favourite Color"
            label="生产厂家(可以是店家）"
            list="classMap"
            
            name="product.producerId"
            emptyOption="false"
            />
            
          
       
            <s:textfield 
            label="商品单位" 
            name="product.unit"
            id="put"
            tooltip="商品规格填写" size="4"/>
            
            <s:textfield 
            label="选择商家品牌" 
            id="ptname"
            name="product.trademarkName"
            tooltip="商品规格填写" size="20"/>
             <s:textfield 
            label="商品库存数量" 
            id="pnum"
            name="product.productNum"
            tooltip="商品规格填写" size="5"/>
              <s:textfield 
   			label="商品缩略图"
   			id="filename"
   			name="filename"
   		
   			required="true"
   			
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
   			/>

            <s:textarea
            tooltip="Enter your Biography"
            label="商品详细介绍"
            id="pro"
            name="product.ProductExplain"
            cols="20"
            rows="13"/>
            
           
           
            <s:textfield
            value="0" 
            label="商品原始零售价" 
            id="pmark"
            name="product.priceMarket"
            tooltip="商品规格填写" size="5"/>
            <s:textfield
            value="0" 
            label="商品网站会员价" 
            name="product.priceMember"
            tooltip="商品规格填写" size="5"/>
            <s:textfield
            value="0" 
            label="商品团购会员价" 
            name="product.priceTuangou"
            tooltip="商品规格填写" size="5"/>
             <s:textfield 
            label="该商品限定团购优惠价人数" 
            name="product.tuangouNumer"
            value="0"
            tooltip="商品规格填写" size="5"/>
            
             <s:radio
            tooltip="是否推荐商品"
            label="是否推荐商品"
            list="#{'1':'推荐商品&nbsp', '0':'不推荐该商品'}"
            name="product.isElite"
            listKey="key"
            listValue="value" 
            value="0"/>
            <s:radio
            tooltip="是否是热卖产品"
            label="是否是热销产品"
            list="#{'1':'热卖产品&nbsp', '0':'非热卖该商品'}"
            name="product.isHot"
            listKey="key"
            listValue="value" 
            value="0"/>
           
            
             <s:submit value="添加该商品"/>
            
            

            
          </s:form><br><br>
</div></td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif"></td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
</table>

</body>
</html>
