<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:bean id="bc" name="com.lxsoft.action.user.userBuyCar"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><s:property value="configBean.getSiteName()"/></title>

 
</head>

<body>
<s:include value="top.jsp"/>


<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
        <td width="17" height="19"><img src="../user/images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="../user/images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="../user/images/images/userTopRigth_03.gif" width="25" height="19" /></td>
</tr>
      <tr>
        <td align="left" valign="top"><img src="../user/images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="../user/images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;">     
        
        <table width="100%" border="0" align="left" cellpadding="0" cellspacing="10" >
      
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
if(document.getElementById('safecode').value==null)
{
 alert('请填写验证码！');
 document.getElementById('safecode').focus();
 return false;
}
}
</script>
        
        <s:form onsubmit="return checkSub()" action="../user/subAcountFront.jspx" method="post"  theme="simple">
       <tr>
         <td align="right"> </td>
         <td colspan="2"> </td>
       </tr>
       <tr>
         <td align="right"> </td>
         <td colspan="2">
         <s:iterator value="listOption" status="ls">
         <s:property escape="false" value="toString()"/>
         </s:iterator>
         
         
         </td>
       </tr>
       <tr>
         <td align="right">账户余额：</td>
         <td colspan="2">您的帐户余额是：<s:property value="#session.user.getBalance()"/>  
         元 使用账户余额支付请选择： 余额支付
           <input type="checkbox" value="isUserMoney" name="isUserMoney" /></td>
       </tr>
       <tr>
       <s:token/>
       <s:if test="#session.user==null">
       非会员       </s:if>
       <s:else>
           会员   </s:else>
           
           <s:if test="#session.user==null">
       <s:hidden name="user.userId" value="0"></s:hidden>      
        </s:if>
       <s:else>
           <s:hidden name="user.userId" value="%{#session.user.userId}"></s:hidden></s:else>
           
       
       
        <s:hidden name="orderform.userId" value="%{#session.user.userId}"></s:hidden>
         <td align="right">订单编号：
        
         
         </td>
         <td colspan="2"><input id="orderFormNum" type="hidden" name="orderform.orderFormNum" value="<s:property value="#bc.getOrderCode()"/>"><font color="#FF0000"><script language="javascript">document.write(document.getElementById("orderFormNum").value)</script></font></td>
       </tr>
       <tr>
         <td width="15%" align="right">收件人姓名：</td>
         <td colspan="2">
         <s:if test="session.user == null">
         <input id="uname" type="text" name="orderform.userName" value="临时用户" onKeyUp="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" 
         onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" > 
         
         </s:if>
            <s:else>
           <input id="uname" type="text" name="orderform.userName" value="<s:property value="%{#session.user.userName}"/>" onKeyUp="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" 
         onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" > 
          
            </s:else>
         
        
           
           
           请填写收件人的名称</td>
       </tr>
       <tr>
         <td align="right">代理名称</td>
         <td colspan="2"><input id="aname" type="text" name="orderform.agentName" onKeyUp="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" 
         onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))"></td>
       </tr>

       <tr>
         <td align="right"> </td>
         <td colspan="2">代理收件人的名称 如果收件人无法收到该商品时 可以以代理人代收</td>
       </tr>
       <tr>
         <td align="right">商品总量：
		       </td>
         <td colspan="2">
         <s:property value="getAllcount()"/>
         </b></font></td>
              </tr>
      <tr>
         <td align="right"> 总金额：
		       </td>
         <td colspan="2"><font color=#ff0000><b><s:property value="getAllMoney()"/>
         </b></font>元 </td>
              </tr>
         <input type="hidden" name="orderform.moneyTotal" value="<s:property value="getAllMoney()"/>"/>
       <input type="hidden" name="orderform.moneyGoods" value="<s:property value="getAllMoney()"/>"/>      
       
        
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
            list="#{'0':'银行汇款','1':'邮政汇款','2':'货到付款','3':'支付宝付款'}"
            name="orderform.paymentType"
            listKey="key"
            listValue="value" 
            value="2"/></td>
       </tr>
       <tr>
         <td align="right">送货方式：</td>
         <td colspan="2"> <s:radio theme="simple"
            list="getlistdeliberType()"
            name="orderform.deliverType"
            listKey="typeId"
            listValue="typeName" 
            value="0"/> </td>
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
         <td align="right"> </td>
         <td colspan="2"><input type="submit" value="提交订单"/> </td>
       </tr>
       </s:form>
     </table>
        
        </td>
        <td align="left" valign="top" background="../user/images/images/userrightLeftBg_03.gif"><img src="../user/images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="../user/images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="../user/images/images/userButtomomom_07.gif"></td>
        <td><img src="../user/images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
</table>
<s:include value="buttom.jsp"/>

</body>
</html>

   
   
   
   