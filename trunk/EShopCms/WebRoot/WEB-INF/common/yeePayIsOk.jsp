<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>易宝支付
		</title>
	</head>
	<body >
    <div  align="center" style="padding-top:150px;"> <s:property value="getErrMsg()"/>
		<form name="yeepay" action='<s:property value="nodeAuthorizationURL"/>' method='post'>
			<input type='hidden' name='p0_Cmd'   value='<s:property value="messageType"/>'>
			<input type='hidden' name='p1_MerId' value='<s:property value="merchantID"/>'>
			<input type="hidden" name="p2_Order" value='<s:property value="orderId"/>'>
			<input type='hidden' name='p3_Amt'   value='<s:property value="amount"/>'>
			<input type='hidden' name='p4_Cur'   value='<s:property value="currency"/>'>
			<input type='hidden' name='p5_Pid'   value='<s:property value="productId"/>'>
			<input type='hidden' name='p6_Pcat'  value='<s:property value="productCat"/>'>
			<input type='hidden' name='p7_Pdesc' value='<s:property value="productDesc"/>'>
			<input type='hidden' name='p8_Url'   value='<s:property value="merchantCallbackURL"/>'>
			<input type='hidden' name='p9_SAF'   value='<s:property value="addressFlag"/>'>
			<input type='hidden' name='pa_MP'    value='<s:property value="sMctProperties"/>'>
			<input type='hidden' name='pd_FrpId' value='<s:property value="frpId"/>'>
			<input type="hidden" name="pr_NeedResponse"  value="<s:property value="needResponse"/>">
			<input type='hidden' name='hmac'     value='<s:property value="hmac"/>'>
            <input type="submit" value="确认支付该选项" />
		</form>
        </div>
	</body>
</html>
