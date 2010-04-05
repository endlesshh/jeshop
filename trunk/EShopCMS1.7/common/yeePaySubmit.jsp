<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<div>在线支付测试</div>
		<div id="input">
		<form  action="../front/yeePayAPI.jspx" method="post">
			<div>商家订单号:<input type="text" name="orderId" id="orderId" /></div>
			<div>商家金额:<input type="text" name="amount" id="amount" /></div>
			<div>
				币种:<select name="currency" id="currency">
					<option value="CNY">人民币
					</option>
					<option value="USA">外币
					</option>
				</select>
			</div>
			<div>商品描述:<input type="text" name="desc" id="desc" /></div>
			<div>商品种类:<input type="text" name="cat" id="cat" /></div>
			<div>商品ID:<input type="text" name="id" id="id" /></div>
			<div>
				是否需要送货地址:<select name="addressFlag" id="addressFlag">
					<option value="0">不需要
					</option>
					<option value="1">需要
					</option>
				</select>
			</div>
			<div>银行ID:<input type="text" name="frpId" id="frpId" /></div>
			<div>callbackURL:<input type="text" name="merchantCallbackURL" id="merchantCallbackURL" /></div>
			<div>商家扩展信息:<input type="text" name="mp" id="mp" /></div>
			<div>是否需要应答机制(1,需要;0,不需要):<input type="text" name="needResponse" id="needResponse" /></div>
			<div><input type="submit" value="结帐" /></div>
			</form>
		</div>

</body>
</html>
