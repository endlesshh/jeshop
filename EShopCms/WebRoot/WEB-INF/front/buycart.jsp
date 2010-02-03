
<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:property value="configBean.getSiteName()"/></title>
<style>
.cartHeaders div span{
			color:#333;
		}
		.simpleCart_items{
			float:left;
			clear:left;
			width:100%;
			margin:5px;
		}
		.itemContainer{
			clear:both;
			width:100%;
			padding:3px;
			font-size:12px;
			line-height:25px;
			height:10px;
		}
		.itemImage{
			float:left;
			width:80px;
			
			
		}
		.itemImage img{
			vertical-align:middle;
			padding:5px;
			
		}
		.itemName{
			float:left;
			vertical-align:middle;
			width:160px;
			color:#666666;
		}
		.itemPrice {
			float:left;
			width:55px;
			color:#ff0000;
		}
		.itemQuantity span{
			float:left;
			width:60px;
			vertical-align:center;
			text-align:center;
		}
		.itemQuantity input{
			width:20px;
			border:1px solid #ccc;
			padding:3px 2px;
			margin:0 auto;
			display:block;
			font-size:11px;
		}
		.itemTotal{
			float:left;
			color:#c23f26;
			text-align:center;
			width:45px;
		}
		.totalRow{
			clear:both;
			float:left;
			text-align:left;
			margin-top:5px;
		}
		.totalItems{
			float:left;
			width:450px;
			margin-left:5px;
			text-align:center;
		}
		.totalPrice{
			float:left;
			color:#FF0000;
			text-shadow:#CCCCCC;
			text-align:left;
		}
		.nxiaoji{width:50px; color:#FF0000;
		font-size:12px;}
		#backgroundPopup{
display:none;
position:fixed;
_position:absolute; /* hack for internet explorer 6*/
height:100%;
width:100%;
top:0;
left:0;
background:#000000;
border:1px solid #cecece;
z-index:1;
}
#popupContact{
display:none;
position:fixed;
_position:absolute; /* hack for internet explorer 6*/
height:384px;
width:408px;
background:#FFFFFF;
border:2px solid #cecece;
z-index:2;
padding:12px;
font-size:13px;
}
#popupContact h1{
text-align:left;
color:#6FA5FD;
font-size:22px;
font-weight:700;
border-bottom:1px dotted #D3D3D3;
padding-bottom:2px;
margin-bottom:20px;
}
#popupContactClose{
font-size:14px;
line-height:14px;
right:6px;
top:4px;
position:absolute;
color:#6fa5fd;
font-weight:700;
display:block;
}

</style>


</head>

<body>
<s:include value="top.jsp"/>
<img src="images/lookOrder.gif">

<div align="center" >
<table width="860" border="0" cellspacing="1" cellpadding="0" >
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
               <a href="../user/index.jspx" >
               
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
        </table>
</div>

<s:include value="buttom.jsp"/>

</body>
</html>
