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
	color: #333333;
}
a:hover {
	color: #333333;
}
a:active {
	color: #333333;
}
-->
    </style>
    
   
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
        <td width="17" height="19"><img src="../user/images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="../user/images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="../user/images/images/userTopRigth_03.gif" width="25" height="19" /></td>
</tr>
      <tr>
        <td align="left" valign="top"><img src="../user/images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="../user/images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="1" cellpadding="0" >
            <tr>
              <td height="20" align="center" >我的购物车</td>
            </tr>
            <tr>
              <td align="left"  >
                <div class="simpleCart_items" >				</div>
                
           
              
              </td>
            </tr>
            <tr>
              <td align="right">    <div class="checkoutEmptyLinks">
				<!--Here's the Links to Checkout and Empty Cart-->
				<a href="#" class="simpleCart_empty"><img border="0" src="images/btn_checkout_qingkong.gif"></a>
				
                <s:if test="#session.user==null">
               <a href="../user/" rel="gb_page_center[500, 400]" >
               
               <img border="0"   src="images/btn_checkout.gif">
               </a>
               
                </s:if>
                <s:else>
                  <a href="#" class="simpleCart_checkout">
                <img border="0" src="images/btn_checkout.gif">
                </a>
                </s:else>
              
                
                
                
			  </div>          </td>
            </tr>
        </table></td>
        <td align="left" valign="top" background="../user/images/images/userrightLeftBg_03.gif"><img src="../user/images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="../user/images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="../user/images/images/userButtomomom_07.gif"></td>
        <td><img src="../user/images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
</table>

</body>
</html>
