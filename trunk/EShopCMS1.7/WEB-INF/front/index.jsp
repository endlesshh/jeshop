<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:property value="configBean.getSiteName()"/></title>
</head>

<body>
<s:include value="top.jsp"/>



<br>

<table width="928"  border="0" align="center" cellpadding="0" cellspacing="5">
  <tr>
    <td height="50" align="left" valign="middle">
    <s:include value="slidPic.jsp"/>
    
    </td>
    <td align="center" valign="middle" height="50"  ><table width="99%" height="50" >
    
    <tr>
      <td  class="contain_table" >
    
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
   <s:url id="uservlogin"  value="/user/userviplogin.jspx"/>
   
   <form name="uform" action="<s:property value="%{uservlogin}"/>" method="post"> 
    <tr align="center">

      <td colspan="3">会员登录</td>

      <td width="1%" colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td width="35%" align="right"><span class="STYLE4">用户名</span>：</td>
      <td colspan="2"><input size="20" id="uu" type="text" jVal="{valid:function (val) { if (val.length <2) return false; else return true; }, message:'名称长度错误', styleType:'cover'}" style="width:100;height:20px; font-size:12px; border:1px #666666 outset; " name="userName" ></td>
    </tr>
    <tr>
      <td align="right"><span class="STYLE4">密 码</span> ：</td>
      <td colspan="2"><input  size="20" jVal="{valid:function (val) { if (val.length <2) return false; else return true; }, message:'密码长度错误', styleType:'cover'}" id="up" type="password" style="width:100;height:20px; font-size:12px;border:1px #666666 outset; " name="passWord" ></td>
    </tr>
    <tr>
      <td align="right"><span class="STYLE4">验证码</span>：</td>
      <td width="19%"   valign="middle"><input jVal="{valid:function (val) { if (val.length <6) return false; else return true; }, message:'请正确输入您的验证码', styleType:'cover'}" type="password" name="safecode" id="sp" size="6" style="width:80px;height:20px; font-size:12px;border:1px #666666 outset; "></td>
      
      <td width="45%" valign="middle">
      <s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:hand; border:0px #CCCCCC outset;" src="<s:property value="%{imgsoft}"/>" />      </td>
    </tr>
    <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2" align="left"><input type="submit" name="button" id="button" value="提交">
        <input type="reset" name="button" id="button" value="重置"></td>
      </tr>
   
    <tr align="center">
 

      <td colspan="3">  <s:url id="imgsoft1" value="/user/regeUser.jspx"/>
                        <s:url id="fpass" value="/user/FindPass.jspx"/>
      <a title="fade=[on] header=[欢迎注册为本站会员] body=[<p align='center'><ul><li>为了您的安全起见，注册后您的购物收藏信息将保留，便于为您售后</li><li>通过会员卡您将获得更多的优惠信息</li><li>本站为您提供及时的信息服务，请将您的信息准确填写</li></ul>]"  href="<s:property value="%{imgsoft1}"/>"><font color="#ff0000">会员注册</font></a>     <a title="header=[欢迎查看注册条款] body=[<p align='center'><ul><li>请您详细准确填写您的信息，避免邮寄物品丢失</li></ul>]" href="<s:property value="%{imgsoft1}"/>"><font color="#FF0000">注册条款</font></a> 
      <a href="<s:property value="%{fpass}"/>"><font color="#FF000000">找回密码</font></a>      </td>
    </tr>
    <tr align="center">
      <td colspan="3">	客服邮箱:y_flash@163.com</td>
    </tr>
   
   </form>
  </table>    </td></tr>
    
    </table></td>
  </tr>
</table>
<br>

<table width="920" class="bigbord" border="0" align="center" cellpadding="0" cellspacing="0">
  <form action="productSearchAPI.jspx" method="post" name="from" id="from"> <tr>
  
  <td height="50" align="center">
    <s:property escape="false" value="getClassAll(1,0)"/>    <!--列举分类标签-->  最高价：
      <INPUT value=0  maxlength=5 onKeyUp="this.value=this.value.replace(/\D/g,'')"  name=minPrice id=minPrice size="3" />
         <select onChange="document.getElementById('minPrice').value=this.value">
           <option value="0">0</option>
           <option value="10">10</option>
           <option value="15">15</option>
           <option value="20">20</option>
           <option value="25">25</option>
           <option value="40">40</option>
           <option value="100">100</option><option value="150">150</option>
           <option value="200">200</option>
        </select>
         最低价：
         <INPUT   maxlength=7 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=maxPrice id=maxPrice size="3" value="5000" />      
        <select onChange="document.getElementById('maxPrice').value=this.value">
           <option value="500">500</option>
           <option value="600">600</option>
           <option value="650">650</option>
           <option value="700">700</option>
           <option value="750">750</option>
           <option value="800">800</option>
           <option value="850">850</option><option value="950">950</option>
           <option value="1000">1000</option>
           <option value="5000">5000</option>
        </select>
      名称：
      <input  name=productName  id=productName3 style="border:1px #663300 outset; height:20px;" size="10"/>
品牌：
<input  name=product.tradeMarkName id=tradeMarkName style="border:1px #663300 outset;" size="10"/>
<input type="submit" value="搜索" /></td>
    </tr> 
  <input type="hidden" name="linkurl" value="result.jsp" />
  </form>
</table>


<br>














<table width="928"  border="0" align="center" cellpadding="0" cellspacing="5">
  <tr>
    <td align="center" valign="middle" height="50" width="332">
    <table width="402" height="250" class="bigbord">
    
    <tr >
      <td  class="contain_table" >
    <div class="index_midle_table_bg">
         <table width="75%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle"  id="ChNewTop1"  class="tableChannelSelecton" onclick="ShowTablediv('classNewTopList',1,3);chCss('ChNewTop',1,3)">新品上市</td>
    <td align="center" valign="middle" id="ChNewTop2"  class="tableChannelSelect" onclick="ShowTablediv('classNewTopList',2,3);chCss('ChNewTop',2,3)">最新商家</td>
    <td align="center" valign="middle"  id="ChNewTop3" class="tableChannelSelect" onclick="ShowTablediv('classNewTopList',3,3);chCss('ChNewTop',3,3)">促销商品</td>
  </tr>
</table>
    
    
    
    </div>
    <div class="contain_tablediv">
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr id="classNewTopList1">
    <td>

    <s:iterator value="ShowProductPageBean(1,8).list" status="jp" >
    
    <div class="index_new_productListIndex" title="header=[<s:property value="getProductName()"/>] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'">
    <s:set name="cid" value="getClassId()"/>
    [<s:property value="getClassName(#cid)"/>]<a href="ThreadProduct_<s:property  value="getProductId()"/>.html" target="_blank"><s:property value="getProductName()"/></a>
    
     <s:url id="addfav" value="/user/addFav.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
      &nbsp;<s:property value="getPriceMarket()"/>元&nbsp;
    
    <!--
    <div class="product_buy_getin"><s:a href="%{addfav}" >收藏</s:a></div>
  
&nbsp;&nbsp;
    <div onClick="simpleCart.add('name=<s:property  value="getProductId()"/>_<s:property value="getProductName()"/>','price=<s:property value="getPriceMember()"/>','image=../upfile/<s:property value="getProductThumb()"/>');return false;" style="cursor:hand;"  class="product_buy_getin">购买</div>
    -->
    
    </div>
    </s:iterator></td>
  </tr>
  <tr style="display:none;" id="classNewTopList2">
    <td>
    <s:iterator value="showUser(2,10).list">


<div class="index_new_userListIndex">




<span style="height:20px; width:20px; padding-top:6px;"><s:property value="#ulist.index+1"/>.</span>
<s:set name="gid" value="getGroupId()"/>
<s:property value="getGroupsName(#gid)"/>
<a href="../u/u<s:property value="getUserId()"/>.html">
<s:property value="getUserName()"/> &nbsp;&nbsp;</a>

<font color="#FF0000">积分：
<s:property value="getUserPoint()"/> 分</font>



</div>
</s:iterator>
    </td>
  </tr>
  <tr style="display:none;" id="classNewTopList3">
    <td><s:iterator value="ShowProductPageBean(1,8).list" status="jp" >
    
    <div class="index_new_productListIndex" title="header=[<s:property value="getProductName()"/>] body=[<img width=250 height=250 src='../upfile/<s:property value="getProductThumb()"/>'">
    <s:set name="cid" value="getClassId()"/>
    [<s:property value="getClassName(#cid)"/>]<a href="ThreadProduct_<s:property  value="getProductId()"/>.html" target="_blank"><s:property value="getProductName()"/></a>
    
     <s:url id="addfav" value="/user/addFav.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
      &nbsp;<s:property value="getPriceMarket()"/>元&nbsp;
    
    <!--
    <div class="product_buy_getin"><s:a href="%{addfav}" >收藏</s:a></div>
  
&nbsp;&nbsp;
    <div onClick="simpleCart.add('name=<s:property  value="getProductId()"/>_<s:property value="getProductName()"/>','price=<s:property value="getPriceMember()"/>','image=../upfile/<s:property value="getProductThumb()"/>');return false;" style="cursor:hand;"  class="product_buy_getin">购买</div>
    -->
    
    </div>
    </s:iterator></td>
  </tr>
</table>

    <!--商品列表标签使用--->
  
   
   <!--商品列表结束--->
    </div>
    
    </td>
    </tr>
    
    
    
    </table>
    
    
    </td>
    <td align="center" valign="middle" height="50"  width="242"><table width="242" height="250" class="bigbord">
    
    <tr>
      <td  class="contain_table" >
    <div class="index_midle_table_bg">&nbsp;最新公告</div>
    <div>
     <s:iterator value="getAnnounce(5)" status="ls">
    <p align="center"><s:property value="getTitle()" escape="false"/>
    <li>
    <s:property value="getContent()" escape="false"/></li>
    </p>
    </s:iterator>
    
    
    
    </div></td></tr>
    
    
    </table></td>
    <td align="center" valign="middle" height="50"  ><table width="100%" height="250" class="bigbord">
    
   <tr>
      <td  class="contain_table" >
    <div class="index_midle_table_bg">&nbsp;积分排行</div>
    <div>
    <s:iterator  value="showUserByPoint(0,10).list" status="ulist">
<li>
<span style="height:20px; width:20px; padding-top:6px;"><s:property value="#ulist.index+1"/>.</span>
<s:set name="gid" value="getGroupId()"/>
<s:property value="getGroupsName(#gid)"/>

<s:property value="getUserName()"/> &nbsp;&nbsp;

<font color="#FF0000">积分：
<s:property value="getUserPoint()"/> 分</font>
</li>
</s:iterator>
    
    </div></td></tr>
    
    
    </table></td>
  </tr>
</table>
<br>

<table width="920" height="500" align="center" class="bigbord">
    
 

    
    
    <tr>
      <td  class="contain_table" >
    <div class="index_midle_table_bg">
    <table width="75%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle" id="ChmidTop1" class="tableChannelSelect" onclick="ShowTablediv('classList',1,4);chCss('ChmidTop',1,4)">商品分类</td>
    <td align="center" valign="middle" id="ChmidTop2" class="tableChannelSelecton" onclick="ShowTablediv('classList',2,4);chCss('ChmidTop',2,4)">推荐商品</td>
    <td align="center" valign="middle" id="ChmidTop3" class="tableChannelSelect" onclick="ShowTablediv('classList',3,4);chCss('ChmidTop',3,4)">热卖商品</td>
    <td align="center" valign="middle" id="ChmidTop4" class="tableChannelSelect" onclick="ShowTablediv('classList',4,4);chCss('ChmidTop',4,4)">品牌专区</td>
  </tr>
</table>

    
    
    </div>
    <div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tbody style="display:none;" id="classList1">
  <tr>
    <td>
    
    <!--商品列表--->
    
    
      <s:iterator value="ChannelClass(1,0)" status="clist">
       <table width="150" style="float:left;"><tr>
      <td>&nbsp;</td><td style="padding:3px; font-size:14px; color:#FF0000;">
    <a title="header=[] body=[<s:property value="getMetaDescription()"/>]" href="ShowClass_<s:property value="getClassId()"/>.html">
   <b><font color="#FF0000"><s:property value="getClassName()"/></font></b>
       </a>
       
       </td>
          <!--curClassChild(Integer ClassId)-->    
        </tr>
           
           
         
               <tr>
<td colspan="2" style="padding:3px; font-size:12px; ">

              <s:set name="cid" value="getClassId()"/>
             <s:iterator value="curClassChild(#cid).list" status="celist">
           
            
            <s:if test="#celist.index%2==0">
            
            </s:if>
         
           <a href="ShowClass_<s:property value="getClassId()"/>.html">
       <font color="#660033">
        <span style="width:40%; margin:2px; padding:4px;"> 
         <s:property value="getClassName()"/></span>
           </font></a> <br>
           
          
            
              </s:iterator>
             </td>
          <!--curClassChild(Integer ClassId)-->    
  
          
          
           
          
        
        
        
      </tr></table>
      </s:iterator>
      
      
    
    
    
    <!--商品列表结束-->
    
    
    
    </td>
  </tr>
  </tbody>
   <tbody  id="classList2">
  <tr>
    <td>
    <!--热卖商品列表-->
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
           
        <s:iterator value="ShowHotProductPageBean(1,8).list" status="jp" >
                 
                <s:if test="(#jp.index)%4==0">
               <tr>
                </s:if>
                
   
                   <td>
                   
                   
                   <table width="90%" border="0" cellspacing="2" cellpadding="0" style="padding:3px; ">
  <tr>
    <td align="center">
    <div style="padding:3px;  background-repeat:no-repeat;">
    <a  href="ThreadProduct_<s:property value="getProductId()"/>.html">  
<img border="0" width="105" height="120" title="header=[<s:property value="getProductName()"/>] body=[<img width=250 height=250 src='<s:property value="getRootPath()"/>/upfile/<s:property value="getProductThumb()"/>'" src='<s:property value="getRootPath()"/>/upfile/<s:property value="getProductThumb()"/>'></a>
    </a></div>
  
   
    </div>
</td>
  </tr>
  <tr>
    <td align="center"><span class="STYLE8">
       <a  href="ThreadProduct_<s:property value="getProductId()"/>.html"><s:property value="getProductName()"/></a>
    </span></td>
  </tr>
  <tr>
    <td align="center"><span class="STYLE4">零售</span>：<em><strong><s:property value="getPriceMarket()"/></strong></em><img src="userLogin/images/renminbi_11.gif" width="17" height="15"><br><span class="STYLE5">会员</span>：<em><strong><s:property value="getPriceMember()"/><img src="userLogin/images/renminbi_11.gif" width="17" height="15"></strong></em></td>
  </tr>
  <tr>
    <td align="center">
     <s:url id="addfav" value="/user/addFav.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
      <s:a href="%{addfav}" >
    
    
    <img src="userLogin/images/goubuycar_07.gif" border="0" width="62" height="22"></s:a>
  
    <img src="userLogin/images/shoucang_07.gif" onClick="simpleCart.add('name=<s:property  value="getProductId()"/>_<s:property value="getProductName()"/>','price=<s:property value="getPriceMember()"/>','image=../upfile/<s:property value="getProductThumb()"/>');return false;" style="cursor:hand;" border="0" width="62" height="22">
    </td>
  </tr>
 
</table>         
                   
          </td>
  
            <s:if test="(#jp.index)%4==3">
               </tr>
          </s:if>
                
        </s:iterator>
               
  
 
</table>
    
    
    <!--热卖商品列表结束-->
    
    
    </td>
  </tr>
  </tbody>
   <tbody style="display:none"  id="classList3">
  <tr>
    <td>
    <!--推荐商品列表-->
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
           
                <s:iterator value="ShowElitProductPageBean(1,8).list" status="jp" >
                 
                <s:if test="(#jp.index)%4==0">
               <tr>
                </s:if>
                
   
                   <td>
                   
                   
                   <table width="90%" border="0" cellspacing="2" cellpadding="0" style="padding:3px; ">
  <tr>
    <td align="center">
    <div style="padding:3px;  background-repeat:no-repeat;">
    <a  href="ThreadProduct_<s:property value="getProductId()"/>.html">  
<img border="0" width="105" height="120"  title="header=[<s:property value="getProductName()"/>] body=[<img width=250 height=250 src='<s:property value="getRootPath()"/>/upfile/<s:property value="getProductThumb()"/>'" src='<s:property value="getRootPath()"/>/upfile/<s:property value="getProductThumb()"/>'></a>
    </a>  </div>
  
 
    </div>
</td>
  </tr>
  <tr>
    <td align="center"><span class="STYLE8">
       <a  href="ThreadProduct_<s:property value="getProductId()"/>.html"><s:property value="getProductName()"/></a>
    </span></td>
  </tr>
  <tr>
    <td align="center"><span class="STYLE4">零售</span>：<em><strong><s:property value="getPriceMarket()"/></strong></em><img src="userLogin/images/renminbi_11.gif" width="17" height="15"><br><span class="STYLE5">会员</span>：<em><strong><s:property value="getPriceMember()"/><img src="userLogin/images/renminbi_11.gif" width="17" height="15"></strong></em></td>
  </tr>
  <tr>
    <td align="center">
     <s:url id="addfav" value="/user/addFav.jspx">
      <s:param name="user.userId"><s:property value="#session.fuserId"/></s:param>
      <s:param name="product.productId"><s:property  value="getProductId()"/></s:param></s:url>
      <s:a href="%{addfav}" >
    
    
    <img src="userLogin/images/goubuycar_07.gif" border="0" width="62" height="22"></s:a>
  
    <img src="userLogin/images/shoucang_07.gif" onClick="simpleCart.add('name=<s:property  value="getProductId()"/>_<s:property value="getProductName()"/>','price=<s:property value="getPriceMember()"/>','image=../upfile/<s:property value="getProductThumb()"/>');return false;" style="cursor:hand;" border="0" width="62" height="22">
    </td>
  </tr>
 
</table>         
                   
          </td>
  
            <s:if test="(#jp.index)%4==3">
               </tr>
                </s:if>
                
                </s:iterator>
               
  
 
</table>
    
    
    <!--热卖商品列表结束-->
    
    
    </td>
  </tr>
  </tbody>
   <tbody style="display:none"  id="classList4">
  <tr>
    <td>   <s:iterator value="listTrad()">

   <!--品牌专区-->
  
   <a href="ShowTrad_<s:property value="getTrademarkId()"/>.html?ShowTrad.jsp">
   <img width="160" border=0 height="70" alt="<s:property value="getTrademarkName()"/>" style="border:1px #ececec outset; margin:2px;" src="../upfile/<s:property value="getTrademarkPhoto()"/>"/>
   </a>

   

</s:iterator>




</td>
  </tr>
  </tbody>
</table>

    
    
    
    
    </div></td></tr>
    
    
</table>
<br>
<table width="928"  border="0" align="center" cellpadding="0" cellspacing="5">
  <tr>
    <td align="center" valign="middle" height="50" width="332"  >
    <table width="402" height="250" class="bigbord">
    
   <tr>
      <td  class="contain_table" >
    <div class="index_midle_table_bg">
     <table width="75%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle" id="ChtopTop1" class="tableChannelSelecton" onclick="ShowTablediv('classbutList',1,4);chCss('ChtopTop',1,4)">退款退货</td>
    <td align="center" valign="middle" id="ChtopTop2" class="tableChannelSelect" onclick="ShowTablediv('classbutList',2,4);chCss('ChtopTop',2,4)">售后服务</td>
    <td align="center" valign="middle" id="ChtopTop3" class="tableChannelSelect" onclick="ShowTablediv('classbutList',3,4);chCss('ChtopTop',3,4)">会员帮助</td>
    <td align="center" valign="middle" id="ChtopTop4" class="tableChannelSelect" onclick="ShowTablediv('classbutList',4,4);chCss('ChtopTop',4,4)">加盟合作</td>
  </tr>
</table>
    
    
    </div>
    <div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr id="classbutList1">
    <td>
<ul><s:iterator value="ListDefinePage(1)">
<li><a target="_blank" href="<s:property value="getRootPath()"/>/front/ListPage_<s:property value="getId()"/>.html"><s:property value="getTitle()"/></a></li>
</s:iterator></ul></td>
  </tr>
  <tr style="display:none;" id="classbutList2">
    <td>
<ul><s:iterator value="ListDefinePage(8)">
<li><a target="_blank" href="<s:property value="getRootPath()"/>/front/ListPage_<s:property value="getId()"/>.html"><s:property value="getTitle()"/></a></li>
</s:iterator></ul></td>
  </tr>
  <tr style="display:none;" id="classbutList3">
    <td>
<ul><s:iterator value="ListDefinePage(11)">
<li><a target="_blank" href="<s:property value="getRootPath()"/>/front/ListPage_<s:property value="getId()"/>.html"><s:property value="getTitle()"/></a></li>
</s:iterator></ul></td>
  </tr>
  <tr style="display:none;" id="classbutList4">
    <td>
<ul><s:iterator value="ListDefinePage(12)">
<li><a target="_blank" href="<s:property value="getRootPath()"/>/front/ListPage_<s:property value="getId()"/>.html"><s:property value="getTitle()"/></a></li>
</s:iterator></ul></td>
  </tr>
</table>

    
    
    
    
    </div></td></tr>
    
    </table>
    
    
    </td>
    <td align="center" valign="middle" height="50"  width="242"><table width="242" height="250" class="bigbord">
    
    <tr>
      <td  class="contain_table" >
    <div class="index_midle_table_bg">&nbsp;发货通知</div>
    <div>
    
    
    <!--发货通知-->
     <s:iterator value="orderSendGoods()" status="ls">
    
    <s:if test="#ls.index<=5">
    <p align="center"><s:property value="getTitle()" escape="false"/>
    <li>
    <s:property value="getContent()" escape="false"/></li>
    <s:set name="orderid" value="getOrderFormId()"/>
    <s:set name="jeorder" value="getOrderForm(#orderid)"/>
    订单：<font color="#009933" ><b><s:property value="#jeorder.orderFormNum"/></b></font>已经发货
    </p>
    </s:if>
    </s:iterator>
    
    <!--发货通知-->
    
    </div></td></tr>
    
    
    </table></td>
    <td align="center" valign="middle" height="50"  ><table width="100%" height="250" class="bigbord">
    
   <tr>
      <td  class="contain_table" >
    <div class="index_midle_table_bg">&nbsp;常用工具下载</div>
    <div>
    <s:iterator  value="getallSoftList().list">
<li>
<span style="height:20px; width:20px; padding-top:6px;"><s:property value="#ulist.index+1"/></span>
<a href="ShowSoft_<s:property value="getSoftId()"/>.html"><s:property value="getSoftName()"/> </a>&nbsp;

<font color="#009900">
<a href="ShowSoft_<s:property value="getSoftId()"/>.html">
<s:property value="getSoftVersion()"/> </font>
</li>
</s:iterator>
    
    </div></td></tr>
    
    
    </table></td>
  </tr>
</table>
<table width="920"  border="0" align="center" cellpadding="0" cellspacing="3">
<tr><td>
<img src="images/ad1.jpg" /></td></tr>
</table>

<s:include value="buttom.jsp"/>
</body>
</html>
