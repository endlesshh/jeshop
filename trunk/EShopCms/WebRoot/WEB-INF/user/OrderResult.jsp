<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单提交成功</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
	color: #FFFFFF;
}
a {
	font-size: 12px;
	color: #FFFFFF;
}
a:visited {
	color: #FFFFFF;
}
a:hover {
	color: #FFFFFF;
}
a:active {
	color: #FFFFFF;
}
input { height:20px;}
.STYLE1 {color: #000000}
-->
</style></head>

<body>
<br>
<br><br><br>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td >&nbsp;</td>
    <td align="center" ><img src="../front/images/orderResult.gif"></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td width="10%" >&nbsp;</td>
    <td width="64%" align="center" ><span class="STYLE1">订单提交成功：订单号：
     <font color="#FF0000" >
      <s:property value="#request.OrderNum"/>
      <s:property value="%{getOcode()}"/>
    </font>
      <br>
      <br>
    
    订单已经提交成功！请按照您选择的汇款方式汇款 汇款后请到首页订单查询处查询订单状况</span><br>
    
    
    <a href="../"><font color="#FF0000" >返回首页</font></a>    </td>
    <td width="26%" >&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center">
    <form name="sm" id="smail" action="" >
    </form>      </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</body>
</html>
