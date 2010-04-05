<%@ page contentType="text/html; charset=utf-8" %>
<%@ page buffer="none"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title></title>
    
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
    </style>
    
   

 <script   language="javascript"   type="text/javascript">
  //首先需要初始化
  var   xmlDoc;   
  var   nodeIndex; 
  function   getxmlDoc()   
  {   
      xmlDoc=new   ActiveXObject("Microsoft.XMLDOM");   
          var   currNode;   
          xmlDoc.async=false;   
          xmlDoc.load("Area.xml");   
          if(xmlDoc.parseError.errorCode!=0)   
          {   
                  var   myErr=xmlDoc.parseError;   
                  alert("出错！"+myErr.reason);   
          }           
  }
  function Init()
  {
    //打开xlmdocm文档
    getxmlDoc();
    var   dropElement1=document.getElementById("Select1"); 
    var   dropElement2=document.getElementById("Select2"); 
    var   dropElement3=document.getElementById("Select3");   
    RemoveDropDownList(dropElement1);
    RemoveDropDownList(dropElement2);
    RemoveDropDownList(dropElement3);
    var  TopnodeList=xmlDoc.selectSingleNode("address").childNodes;
    if(TopnodeList.length>0)
    {
        //省份列表
        var country;
        var province;
        var city;
        for(var   i=0; i<TopnodeList.length;   i++)
        {
              //添加列表项目
              country=TopnodeList[i];       
              var   eOption=document.createElement("option");   
              eOption.value=country.getAttribute("name");
              eOption.text=country.getAttribute("name");
              dropElement1.add(eOption);
        }
        if(TopnodeList[0].childNodes.length>0)
        {
            //城市列表
            for(var i=0;i<TopnodeList[0].childNodes.length;i++)
            {
               var   id=dropElement1.options[0].value;
               //默认为第一个省份的城市
               province=TopnodeList[0]; 
               var   eOption=document.createElement("option");  
               eOption.value=province.childNodes[i].getAttribute("name");   
               eOption.text=province.childNodes[i].getAttribute("name");   
               dropElement2.add(eOption);
            }
            if(TopnodeList[0].childNodes[0].childNodes.length>0)
            {
               //县列表
               for(var i=0;i<TopnodeList[0].childNodes[0].childNodes.length;i++)
               {
                  var   id=dropElement2.options[0].value;
                  //默认为第一个城市的第一个县列表
                  city=TopnodeList[0].childNodes[0];  
                  var   eOption=document.createElement("option");  
                  eOption.value=city.childNodes[i].getAttribute("name");   
                  eOption.text=city.childNodes[i].getAttribute("name");   
                  this.document.getElementById("Select3").add(eOption);
               }
            }
        }
    }
  }   
  function   selectCity()   
  {       var   dropElement1=document.getElementById("Select1"); 
          var   name=dropElement1.options[dropElement1.selectedIndex].value;
          //alert(id);
          var   countryNodes=xmlDoc.selectSingleNode('//address/province [@name="'+name+'"]');   
          //alert(countryNodes.childNodes.length); 
          var   province=document.getElementById("Select2");       
          var   city=document.getElementById("Select3");       
          RemoveDropDownList(province);   
          RemoveDropDownList(city);
          if(countryNodes.childNodes.length>0)
          {
               //填充城市          
               for(var   i=0;   i<countryNodes.childNodes.length;   i++)   
               {   
                  var   provinceNode=countryNodes.childNodes[i];     
                  var   eOption=document.createElement("option");   
                  eOption.value=provinceNode.getAttribute("name");   
                  eOption.text=provinceNode.getAttribute("name");   
                  province.add(eOption);   
               }
               if(countryNodes.childNodes[0].childNodes.length>0)
               {
                  //填充选择省份的第一个城市的县列表
                  for(var i=0;i<countryNodes.childNodes[0].childNodes.length;i++)
                  {
                      //alert("i="+i+"\r\n"+"length="+countryNodes.childNodes[0].childNodes.length+"\r\n");
                      var   dropElement2=document.getElementById("Select2"); 
                      var   dropElement3=document.getElementById("Select3"); 
                      //取当天省份下第一个城市列表
                      var cityNode=countryNodes.childNodes[0];
                      //alert(cityNode.childNodes.length); 
                      var   eOption=document.createElement("option");  
                      eOption.value=cityNode.childNodes[i].getAttribute("name");   
                      eOption.text=cityNode.childNodes[i].getAttribute("name");   
                      dropElement3.add(eOption);
                  }
               }
          }
  }   
  function   selectCountry()   
  {   
          var   dropElement2=document.getElementById("Select2");   
          var   name=dropElement2.options[dropElement2.selectedIndex].value;   
          var   provinceNode=xmlDoc.selectSingleNode('//address/province/city[@name="'+name+'"]');   
          var   city=document.getElementById("Select3");       
          RemoveDropDownList(city);   
          for(var   i=0;   i<provinceNode.childNodes.length;   i++)   
          {   
                  var   cityNode=provinceNode.childNodes[i];     
                  var   eOption=document.createElement("option");   
                  eOption.value=cityNode.getAttribute("name");   
                  eOption.text=cityNode.getAttribute("name");   
                  city.add(eOption);   
          }   
  }   
  function   RemoveDropDownList(obj)   
  {   
      if(obj)
      {
          var   len=obj.options.length;   
          if(len>0)
          {
            //alert(len);   
            for(var   i=len;i>=0;i--)   
            {   
                  obj.remove(i);   
            }
          }
       }
            
  }   
  </script>  
    <style type="text/css">
<!--
.STYLE5 {
	font-size: 12pt;
	color: #006633;
}
.STYLE6 {color: #003333}
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #333333;
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
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body onLoad="Init();">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif">&nbsp;</td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="2" cellpadding="0">
      
      <tr>
        <td colspan="8" align="center" class="STYLE5">您的订单商品确认如下</td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="2%" height="25" align="center"><span class="STYLE6"></span></td>
        <td width="9%" align="center"><span class="STYLE6">商品编号</span></td>
        <td width="25%" align="center"><span class="STYLE6">商品名称</span></td>
        <td width="10%" align="center"><span class="STYLE6">价格</span></td>
        <td width="5%" align="center"><span class="STYLE6"></span></td>
        <td width="10%" align="center"><span class="STYLE6">商品数量</span></td>
        <td width="10%" align="center"><span class="STYLE6">价格合计</span></td>
        <td width="29%" align="center"><span class="STYLE6"></span></td>
        </tr> 
       
      <s:iterator value="listCar" status="fav">
     
      
      <s:set name="pid" value="%{getProductId()}"/>
     
      <s:set name="Tp" value="%{getProductById(#pid)}"></s:set>
     <s:property value="%{getBarCode()}"/>
      
      <tr>
        <td></td>
        <td><s:property value="%{#Tp.getBarCode()}"/></td>
        <td> <s:property value="%{#Tp.productName}"/>
            
                <s:set name="pid" value="%{#Tp.getProducerId()}"></s:set>
                <s:set name="cid" value="%{#Tp.getClassId()}"></s:set>
                <s:property value="%{getProducerName(#pid)}"/>            </td>
        <td colspan="2">会员价：<font color=#ff0000><s:property value="%{#Tp.getPriceMember()}"/>
        </font>元</td>
        <s:url id="toupdate"  value="updateProNum.jspx"></s:url>
        
        
        
        
        <form action="updateProNum.jspx"  method="post">
        <td> <input type="hidden" name="bId" value="<s:property value="%{getShopfavId()}"/>"/> 
        <input type="hidden" name="user.userId" value="<s:property value="%{getUserId()}"/>"/>
        <input type="hidden" name="buycar.shopfavId" value="<s:property value="%{getShopfavId()}"/>"/> 
        
        
         <s:set name="pnum" value="%{getProductNum()}"></s:set>
        <s:property value="#pnum"/> <s:property  value="%{#Tp.getUnit()}"/></td>
       </form>
        
        <td colspan="2">
     金额：<font color=#ff0000>   
     <s:property value="%{getProductNum()*(#Tp.getPriceMember())}"/> </font> 元        &nbsp;&nbsp;</td>
        </tr>
       </s:iterator>
      <tr>
        <td height="21">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="21" colspan="8">总金额：<font color=#ff0000><b><s:property value="%{getAllMoney()}"/></b></font>元          <a href="ListBuyCar.jspx?user.userId=<s:property value="#request.user.userId"/>" >返回购物车</a><a href="subAcount.jspx?user.userId=<s:property value="#request.user.userId"/>" ></a></td>
        </tr>
    </table></td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif">&nbsp;</td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
    </table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif">&nbsp;</td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="4" >
      
<script language="javascript">
function checkSub()
{
if(document.getElementById('orderFormNum').value.length<=1)
{
 alert('请填写订单的编号');
 document.getElementById('orderFormNum').focus();
 return false;
}
if(document.getElementById('uname').value.length<=1)
{
 alert('请填写收件人的名称！否则您将无法收到本订单上的商品');
 document.getElementById('uname').focus();
 return false;
}
if(document.getElementById('aname').value.length<=1)
{
 alert('请填写代理收件人的名称！');
 document.getElementById('aname').focus();
 return false;
}
if(document.getElementById('address').value.length<=1)
{
 alert('请填写收件人的详细地址！');
 document.getElementById('address').focus();
 return false;
}
if(document.getElementById('zcode').value.length<=1)
{
 alert('请填写收件人的邮编地址！');
 document.getElementById('zcode').focus();
 return false;
}
if(document.getElementById('photo').value.length<=1)
{
 alert('请填写收件人的联系电话！');
 document.getElementById('photo').focus();
 return false;
}
if(document.getElementById('safecode').value.length<=1)
{
 alert('请填写验证码！');
 document.getElementById('safecode').focus();
 return false;
}
}
</script>
        
        <s:form onsubmit="return checkSub()" action="subAcount.jspx" method="post"  theme="simple">
       <tr>
         <td align="right">账户余额：</td>
         <td colspan="2">您的帐户余额是：<s:property value="#session.user.getBalance()"/>  
         元 使用账户余额支付请选择： 余额支付
           <input type="checkbox" value="isUserMoney" name="isUserMoney" /></td>
       </tr>
       <tr>
       <s:token/>
       <s:hidden name="user.userId" value="%{#session.user.userId}"></s:hidden>
       
        <s:hidden name="orderform.userId" value="%{#request.user.userId}"></s:hidden>
         <td align="right">订单编号：</td>
         <td colspan="2"><input id="orderFormNum" type="hidden" name="orderform.orderFormNum" value="<s:property value="%{getOrderCode()}"/>"><font color="#FF0000"><script language="javascript">document.write(document.getElementById("orderFormNum").value)</script></font></td>
       </tr>
       <tr>
         <td width="15%" align="right">收件人姓名：</td>
         <td colspan="2"><input id="uname" type="text" name="orderform.userName" value="<s:property value="%{#session.user.userName}"/>" onKeyUp="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" 
         onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" > 
           请填写收件人的名称</td>
       </tr>
       <tr>
         <td align="right">代理名称</td>
         <td colspan="2"><input id="aname" type="text" name="orderform.agentName" onKeyUp="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" 
         onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))"></td>
       </tr>

       <tr>
         <td align="right">&nbsp;</td>
         <td colspan="2">代理收件人的名称 如果收件人无法收到该商品时 可以以代理人代收</td>
       </tr>
       <tr>
         <td align="right">应付金额总计：</td>
         <td colspan="2"> 总金额：<font color=#ff0000><b><s:property value="%{getAllMoney()}"/>
         </b></font>元 </td>
       <input type="hidden" name="orderform.moneyTotal" value="<s:property value="%{getAllMoney()}"/>"/>       </tr>
       <tr>
         <td align="right">商品价值总计：</td>
         <td colspan="2">总金额：<font color=#ff0000><b><s:property value="%{getAllMoney()}"/>
         </b></font>元 </td>
       <input type="hidden" name="orderform.moneyGoods" value="<s:property value="%{getAllMoney()}"/>"/>       </tr>
       
         <tr>
         <td align="right">选择送货地址：</td>
         <td colspan="2">
         
         <select id="Select1" name="Select1" runat="server" onChange="selectCity();">
		 <option value="" selected="true">省/直辖市</option>
	</select>
    <select id="Select2" name="Select2" runat="server" onChange="selectCountry()">
		<option value="" selected="true">请选择</option>
	</select>
    <select id="Select3" name="Select3" runat="server" >
		<option value="" selected="true">请选择</option>
	</select>      </td>
       </tr>
       <tr>
         <td align="right">地址：</td>
         <td colspan="2"><input value="<s:property value="%{#session.user.address}"/>" id="address" name="orderform.address" type="text" size="40"></td>
       </tr>
       <tr>
         <td align="right">邮编：</td>
         <td colspan="2"><input id="zcode" name="orderform.zipCode" type="text" size="12" maxlength="6" onKeyUp="this.value=this.value.replace(/\D/g,'')"></td>
       </tr>
       <tr>
         <td align="right">联系电话：</td>
         <td colspan="2"><input id="photo" type="text" name="orderform.phone" maxlength="11" onKeyUp="this.value=this.value.replace(/\D/g,'')" ></td>
       </tr>
        <tr>
         <td align="right">请输入您的联系手机号：</td>
         <td colspan="2"><input id="photo" type="text" name="orderform.mobile" maxlength="11" onKeyUp="this.value=this.value.replace(/\D/g,'')" ></td>
       </tr>
       <tr>
         <td align="right">邮件地址：</td>
         <td colspan="2"><input id="email" name="orderform.email" type="text" size="15"></td>
       </tr>
       <tr>
         <td align="right">付款方式：</td>
         <td colspan="2"><s:radio theme="simple"
            list="#{'0':'银行汇款','1':'邮政汇款','2':'货到付款','3':'支付宝付款','4':'网银在线','5':'Q币支付'}"
            name="orderform.paymentType"
            listKey="key"
            listValue="value" 
            value="2"/></td>
       </tr>
       <tr>
         <td align="right">送货方式：</td>
         <td colspan="2"> <s:radio theme="simple"
            list="#{'0':'邮政平邮','1':'邮政快递','2':'EMS快递','3':'送货上门','4':'自取','5':'网上下载'}"
            name="orderform.deliverType"
            listKey="key"
            listValue="value" 
            value="2"/> </td>
       </tr>
       <tr>
         <td align="right"></td>
         <td colspan="2"></td>
       </tr>
       <tr>
         <td align="right">请输入验证码：</td>
         <td width="14%"><input id="safecode" name="safecode" type="text" size="8"></td>
         <td width="71%"><s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:handle" src="<s:property value="%{imgsoft}"/>
      " />点击刷新</td>
       </tr>
       <tr>
         <td align="right">&nbsp;</td>
         <td colspan="2"><input type="submit" value="提交订单"/> </td>
       </tr>
       </s:form>
     </table></td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif">&nbsp;</td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
    </table>



</body>
</html>
