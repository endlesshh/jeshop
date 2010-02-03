<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
    <style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:0px; color:#091f30}

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
.spanTitle{ width:80px; height:25px; padding:3px; margin:1px;
text-align:center; border:1px #CCCCCC outset; border-bottom:0px; cursor:hand; padding-top:5px;}

</style>
  <script type="text/javascript" src="js/keyS.js"></script>
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
	
	function ShowLayers(tit,con,n,m)
{
 for(i=1;i<=m;i++)
 {
  eval(con + i).style.display="none";
  eval(tit+i).style.background="#ffffff";;
 }
 eval(tit+n).style.background="#cccccc";
 eval(con + n).style.display="";
 urlUpdate();
}
</script>

</head>

<body>

 <script language="javascript">
 function testisNum(object)
                       {
          
                        var s =document.getElementById(object.id).value;
              
                            if(s!="")
                            {
                                 if(isNaN(s))
                                {
                                 alert("请请正确输入数字");
                                 object.value="";
                                 object.focus();
								 return false;
                                }
                            }
                        }
 
 
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
 alert('品牌为空！请仔细填写商品的单位');
 document.getElementById("ptname").focus();
 return false;
 }
 if(document.getElementById("pnum").value==null)
 {
 alert('商品的数量为空！请填写商品的数量');
 
 document.getElementById("pnum").focus();
 return false;
 }
 testisNum(document.getElementById("pnum"));
 
 
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


  <form action="addProduct.jspx" method="post" onSubmit="return checkSub()">

<div id="showMsgTop">
<span id="showTitle1" class="spanTitle" style="background-color:#CCCCCC;" onClick="javascript:ShowLayers('showTitle','content',1,5);">基本信息</span><span class="spanTitle" id="showTitle4" onClick="javascript:ShowLayers('showTitle','content',4,5);" >日期库存</span><span class="spanTitle" id="showTitle2" onClick="javascript:ShowLayers('showTitle','content',2,5);" >附加信息</span><span class="spanTitle" id="showTitle5" onClick="javascript:ShowLayers('showTitle','content',5,5);" >审核功能</span><span class="spanTitle" id="showTitle3" onClick="javascript:ShowLayers('showTitle','content',3,5);" >附加字段排列</span>
<div style="background-color:#CCCCCC; border-top:1px #CCCCCC outset;"></div>





  

  
  <table class="sortable" id="content1"  width="100%" border="0" cellspacing="4" cellpadding="0">
   <tr>
    
    <th colspan="2" >
   基础信息
    
    </th>
  </tr>
   <s:hidden name="channelId"  value="%{getChannelId()}"></s:hidden>
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
            label="商品编码" 
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
          <tr><td align="right">选择模板</td><td> 
           <select name="product.tempfile" >
              <s:iterator value="ml_ShowProduct">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
        
              </s:iterator>
           </select></td></tr>
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
            value="件"
            tooltip="商品规格填写" size="4"/>
         
            <s:select onchange="document.getElementById('put').value=this.value" label="下拉选择商品单位" listKey="name" listValue="name" list="lu">
            
            </s:select>
            
          
            <s:textfield 
            label="选择商家品牌(可以下面下拉选择)" 
            id="ptname"
            name="product.trademarkName"
            tooltip="商品规格填写" size="20"/>
           
             <s:select onchange="document.getElementById('ptname').value=this.value" label="下拉选择商品品牌" listKey="trademarkName" listValue="trademarkName" list="listMark()">
            
            </s:select>
            
            
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
 
 
 <s:textarea
          
           label="商品简介"
            id="pin"
            name="product.productIntro"
            cols="20"
            rows="13"/>

 
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
            <s:hidden name="product.isHot" value="0"></s:hidden>
            
            
            
            
           
            
            

            
           </table>


 

<!--内容审核方面-->
         <table class="sortable" style="display:none;" id="content5"  width="100%" border="0" cellspacing="4" cellpadding="0">
 <tr>
    
    <th colspan="2" >
    内容审核方面
    
    </th>
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

  

</table>   

<table style="display:none;" class="sortable" id="content2" width="100%" border="0" cellspacing="4" cellpadding="0">
 <tr>
    
    <th colspan="2" >
    附加信息
    
    </th>
  </tr>
  <tr>
    <td width="30%">是否开通内容评论</td>
    <td >
    开通内容评论<input type="radio" value="0" checked="checked" name="product.isCommont" />
    关闭内容评论 <input type="radio" value="1" checked="checked" name="product.isCommont" />
    
    </td>
  </tr>
  
   <tr>
    <td width="30%">选择商品的下载地址</td>
    <td >
   <input type="text" name="product.downloadUrl" size="40" value="http://" />
    
    </td>
  </tr>
  
   <tr>
    <td width="30%">商品的浏览次数</td>
    <td >
    
    
   <input type="text" size="6" name="product.hits" value="0" />
    
    </td>
  </tr>
  
   <tr>
    <td width="30%">商品的购买次数</td>
    <td >
    
    
   <input type="text" size="6"  name="product.buyTimes" value="0" />
    
    </td>
  </tr>
  
   <tr>
    <td width="30%">商品推荐星级</td>
    <td >
    
    
   一星级<input type="radio" value="1"  name="product.stars" />二星级<input type="radio" value="2" checked="checked" name="product.stars" />三星级<input type="radio" value="3" name="product.stars" />四星级<input type="radio" value="4"  name="product.stars" />五星级<input type="radio" value="5" name="product.stars" />
    
    </td>
  </tr>
  
  
  <tr>
    <td>选择相关商品</td>
    <td>
      <textarea onClick="var rval=window.showModalDialog('ListProductSimple.jspx?channelId=<s:property value="getChannelId()"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:800px');if(rval!=null){
  
    var str = this.value;
    if(str.length<=0)
    {
    this.value=rval
    }else
    {
    this.value=this.value+','+rval;
    }

    }" name="product.contactStr" id="contactStr" cols="40" rows="5"></textarea>
   <br>
      <input type="button" value="选择相关内容" onClick="var rval=window.showModalDialog('ListProductSimple.jspx?channelId=<s:property value="getChannelId()"/>',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:800px');if(rval!=null){
  
    var str = document.getElementById('contactStr').value;
    if(str.length<=0)
    {
    document.getElementById('contactStr').value=rval
    }else
    {
    document.getElementById('contactStr').value=document.getElementById('contactStr').value+','+rval;
    }

    }"  /></td>
  </tr>
  <tr>
    <td>内容调查选项</td>
    <td>
    <ul style="list-style-type:disc;">
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    <li><input type="text" name="votes" />&nbsp;&nbsp;票数<input type="text" name="voteIds" size="4" value="0" /></li>
    
    </ul>
    
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

</table>


<table class="sortable" id="content3" style="display:none;" width="100%" border="0" cellspacing="4" cellpadding="0">
 <tr>
    
    <th colspan="2" >
    附加字段显示方式
    
    </th>
  </tr>
  <tr>
    <td width="30%">附加字段显示方式</td>
    <td >
    商品图片上部<input type="radio" value="0" checked="checked" name="isShow" />
    商品图片底部<input type="radio" value="1" checked="checked" name="isShow" />
    
    
    </td>
  </tr>
  
  

</table>

 <table id="content4" style="display:none;" border="00" cellspacing="1" cellpadding="0"  class="sortable">

  <thead>
         <tr>
       
            <th colspan="2" bgcolor="#3BA9FE">商品生产日期和到期日期</th>
            </tr></thead>
          <tr>
            <td width="23%">出产日期</td>
            <td width="77%">
            <input type="text"  name="product.beginDate"  value="<s:date  name="%{product.getBeginDate()}"/>" readOnly onClick="setDay(this);">
            点击选择日期</td>
          </tr>
         
          <tr>
            <td>到期日期</td>
            <td> 
              <input type="text"  name="product.endDate" value="<s:date name="%{product.getEndDate()}"/>" readOnly onClick="setDay(this);">
              点击选择日期              </td>
          </tr>
          
           <tr>
            <td width="23%">库存量盘点</td>
            <td width="77%">
            <input  name="product.productNum" value="<s:property  value="%{product.getProductNum()}"/>" type="text" size="10"  >
            当前库存</td>
          </tr>
         
          <tr>
            <td>库存量报警</td>
            <td> 
              <input  name="product.limitNum" type="text" value="<s:property  value="%{product.getLimitNum()"/>" size="10" >
              库存量小于该值时候，系统提示进货</td>
          </tr>
         
          
          
         
        </table>




<div align="center"> <input type="submit" value="提交商品信息"></div>

</div>
</form>



</body>
</html>
