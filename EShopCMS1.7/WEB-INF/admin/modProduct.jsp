
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#pro').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	$('#pin').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:100%; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
.sortable th {background:url(images/header-bg.gif); height:25px; text-align:left; color:#cfdce7; border:1px solid #fff; border-right:none; font-size:12px;
text-align:center; vertical-align:middle;}
.sortable th h3 {font-size:10px; padding:6px 8px 8px}
.sortable td {padding:4px 6px 6px; border-bottom:1px solid #c6d5e1; border-right:1px solid #c6d5e1}
.sortable .head h3 {background:url(images/sort.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .desc, .sortable .asc {background:url(images/header-selected-bg.gif)}
.sortable .desc h3 {background:url(images/desc.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .asc h3 {background:url(images/asc.gif) 7px  center no-repeat; cursor:pointer; padding-left:18px}
.sortable .head:hover, .sortable .desc:hover, .sortable .asc:hover {color:#fff}
.sortable .evenrow td {background:#fff}
.sortable .oddrow td {background:#ecf2f6}
.sortable td.evenselected {background:#ecf2f6}
.sortable td.oddselected {background:#dce6ee}

#controls {width:980px; margin:0 auto; height:25px}
#perpage {float:left; width:200px}
#perpage select {float:left; font-size:11px}
#perpage span {float:left; margin:2px 0 0 5px}
#navigation {float:left; width:580px; text-align:center}
#navigation img {cursor:pointer}
#text {float:left; width:200px; text-align:right; margin-top:2px}


body,td,th {
	font-size: 12px;
}
a:link {
	color: #666666;
}
a:visited {
	color: #666666;
}
a:hover {
	color: #666666;
}
a:active {
	color: #666666;
}
</style>

</head>

<body>

  <s:form action="/admin/modProduct.jspx" method="post">
   <s:set name="uID" value="product.getUserId()"></s:set>
   <s:if test="#uID!=null">
   <s:hidden name="product.userId" value="%{#uID}"></s:hidden>
   </s:if>
   <s:else>
   <s:hidden name="product.userId" value="0"></s:hidden>
   </s:else>
   <s:hidden name="channelId"  value="%{getChannelId()}"></s:hidden>
   <s:hidden name="product.productId" value="%{#request.product.productId}"></s:hidden>
   <s:hidden name="product.channelId"  value="%{getChannelId()}"></s:hidden>            <s:textfield 
            label="商品名称" 
            name="product.productName"
            tooltip="商品名称"  size="40"
            
            />
             <s:textfield 
            label="商品型号" 
            name="product.productModel"
            tooltip="商品型号" size="20"/>
             <s:textfield 
            label="商品条形码" 
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

             <tr><td align="right">选择模板</td><td>  <select name="product.tempfile" >
             <option value="<s:property value="product.tempfile"/>">已选择：<s:property value="product.tempfile"/></option>
              <s:iterator value="ml_ShowProduct">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>   
              </s:iterator>
           </select></td></tr>
            
             <s:textfield 
            label="商品规格" 
            name="product.productStandard"
            tooltip="商品规格填写" size="20"/>
           
            <s:radio
            tooltip="商品类别(0 实物商品)(2 虚拟点卡)(1 软件商品)"
            label="商品类别"
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
            name="product.unit"
            tooltip="商品规格填写" size="4"/>
            
            <s:textfield 
            label="选择商家品牌" 
            name="product.trademarkName"
            tooltip="商品规格填写" size="20"/>
             <s:textfield 
            label="商品库存数量" 
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
              
             <s:textarea
          
           label="商品简介"
            id="pin"
            name="product.productIntro"
            cols="20"
            rows="13"/>

            <s:textarea
            tooltip="Enter your Biography"
            label="商品详细介绍"
            name="product.ProductExplain"
            cols="20"
            id="pro"
            rows="13"/>
            
            
            
            <s:textfield 
            label="商品原始零售价" 
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
            
           
            
             <tr><td align="right">选择审核人</td><td>
    <select name="adminId">
    <s:iterator value="getAdminList()">
    <option value="<s:property value="getAdminId()"/>"><s:property value="getUserName()"/></option>
    </s:iterator>
    
    
    </select>
    
    
    </td></tr>
    <input type="hidden" name="typeString" value="jobadminoductlist"/>
    <input type="hidden" name="jobType" value="jobadminType"/>
    <input type="hidden" name="sendId" value="<s:property value="#session.admin.adminId"/>"/>
  </tr>
    <s:radio
            tooltip="需要审核"
            label="需要审核"
            list="#{'0':'需要审核', '1':'一审通过','2':'二审通过'}"
            name="status"
            listKey="key"
            listValue="value" 
            value="1"/>
            
            
             <s:submit value="更新商品信息"/>
            
            

            
            </s:form><br><br>

<s:include value="button.jsp"/>

</body>
</html>
