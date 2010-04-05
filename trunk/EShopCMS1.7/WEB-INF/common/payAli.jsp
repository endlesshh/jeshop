<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ps.util.*"%>
<%@ page import="java.util.*"%>
<html>
<head>

<title>无标题文档</title>
</head>
<% 
Date Now_Date=new Date();
String paygateway = "https://www.alipay.com/cooperate/gateway.do?"; //'支付接口
String service      = "create_direct_pay_by_user";//快速付款交易服务
String sign_type       =   "MD5";
String out_trade_no   = request.getAttribute("curorderno").toString(); //商户网站订单
String input_charset   = "utf-8";       
String partner    = "120880028619727261"; //支付宝合作伙伴id (账户内提取)
String key             =    "1zuxjicmlat6eyhyox7iv9nukp2v1r1tl1"; //支付宝安全校验码(账户内提取)
String body    = "武大多媒体影像"; //商品描述，推荐格式：商品名称（订单编号：订单编号）
String total_fee    = request.getAttribute("orderamount").toString();     //订单总价
String payment_type     = "1";//支付宝类型.1代表商品购买
String seller_email   = "fatfat@126.com";   //卖家支付宝帐户
String subject    = "照片";    //商品名称
String show_url        =   "http://photoshop.gicp.net:8080/photoservice/index.html";
String notify_url   = "http://photoshop.gicp.net:8080/photoservice/alipay_pay_notify1.jsp";      //通知接收URL
String return_url   = "http://photoshop.gicp.net:8080/photoservice/alipay_pay_return1.jsp"; //支付完成后跳转返回的网址URL
//********************************************
String paymethod = "";//赋值:bankPay(网银);cartoon(卡通); directPay(余额)
                      //三种付款方式都要，参数为空
String defaultbank = "ICBCB2C"; 
//ICBCB2C 中国工商银行
//CMB   招商银行
//CCB   中国建设银行
//ABC   中国农业银行
//SPDB   上海浦东发展银行
//SPDBB2B 上海浦东发展银行(B2B)
//CIB    兴业银行
//GDB   广东发展银行
//SDB    深圳发展银行
//CMBC   中国民生银行
//COMM   交通银行
//POSTGC   邮政储蓄银行
//CITIC   中信银行
//CCBVISA 建行VISA
//VISA   VISA


String ItemUrl=Payment.CreateUrl(paygateway,service,sign_type,out_trade_no,input_charset,partner,key,show_url,body,total_fee,payment_type,seller_email,subject,notify_url,return_url,paymethod,defaultbank);

%>



<body>
<p>结算步骤 ：1.登录注册》2.选择订单》3.填写核对订单信息》<strong>4.成功提交订单</strong></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp; </p>
<form name="alipaysubmit" method="post" action="https://www.alipay.com/cooperate/gateway.do?_input_charset=utf-8">   
   <input type=hidden name="body" value="<%=body%>">
   <input type=hidden name="notify_url" value="<%=notify_url%>">
    <input type=hidden name="out_trade_no" value="<%=out_trade_no%>">
    <input type=hidden name="partner" value="<%=partner%>">
    <input type=hidden name="payment_type" value="<%=payment_type%>"> 
    <input type=hidden name="seller_email" value="<%=seller_email%>">
    <input type=hidden name="service" value="<%=service%>">
    <input type=hidden name="sign" value="<%=ItemUrl%>"> 
    <input type=hidden name="sign_type" value="MD5">      
    <input type=hidden name="subject" value="<%=subject%>">
    <input type=hidden name="total_fee" value="<%=total_fee%>">
    <input type=hidden name="show_url" value="<%=show_url%>">
    <input type=hidden name="return_url" value="<%=return_url%>">
    <input type=hidden name="paymethod" value="<%=paymethod%>">
    <input type=hidden name="defaultbank" value="<%=defaultbank%>">
   <table>
   <tr>
   <td>
   您的订单号是：<s:property value="curorderno"/>您要为订单支付：<s:property value="orderamount"/><br/>
   <input type='button' name='v_action' value='支付宝支付' onClick='document.alipaysubmit.submit()'>
   </td>
   </tr>
   </table>
   </form>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
