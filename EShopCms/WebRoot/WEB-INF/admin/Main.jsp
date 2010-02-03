<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

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
	text-decoration: none;	
}
a:visited {
	color: #666666;
	text-decoration: none;
}
a:hover {
	color: #666666;
	text-decoration: none;
}
a:active {
	color: #666666;
	text-decoration: none;
}
.STYLE1 {font-weight: bold}
</style>
<script language="javascript">
parent.document.getElementById("dvbbsannounce").innerHTML='<s:property value="safeCheck()"/>';

</script>

</head>

<body>


    <table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
    <thead>
    <tr>
        <th height="25" colspan="2">&nbsp;<span class="STYLE1">系统快速管理</span></th>
        </tr></thead>
      <tr><td width="39%" align="left" valign="top">
  <table width="100%" border="0" cellpadding="0" cellspacing="4" >
  <tr>
    <td width="16%"><a href="adminChannel.jspx">
    
    
    <img src="images/channelMs.gif"border="0" />
    </a></td>
    <td width="16%"><a href="Listconfig.jspx">
    <img src="images/indexslidpic.gif" border="0" />
    </a></td>
    <td width="16%" ><a href="ListAllorder.jspx"><img border="0" src="images/orderForm.gif" /></a></td>
    <td width="16%"><a href="listUserCard.jspx">
    <img src="images/userCard.gif" border="0" /></a></td>
    <td width="36%"><a href="ListAllUser.jspx">
    <img src="images/usermanger.gif" border="0" /></a></td>
  </tr>
  <tr>
    <td align="center"><a href="adminChannel.jspx">频道管理</a></td>
    <td align="center"><a href="listSlid.jspx">首页幻灯</a></td>
    <td align="center"><a href="ListAllorder.jspx">订单管理</a></td>
    <td align="center"><a href="listUserCard.jspx">会员卡管理</a></td>
    <td align="center"><a href="ListAllUser.jspx">会员管理</a></td>
  </tr></table> 
    
    </td><td width="61%" align="left" valign="top">
    <table  width="57%" border="0" cellpadding="0" cellspacing="4" bgcolor="#FFFFFF">
    <tr>
    <td align="center"><a href='serverinfo.jsp'><img border="0" src="images/serverinfo.gif" /></a></td>
    <td align="center"><a href="listProducter.jspx"><img border="0" src="images/PRODUCTINFO.gif" /></a></td>
    <td align="center"><a href="ListAll.jspx"><img border="0" src="images/adinfomation.gif" /></a></td>
    <td align="center"><a href="ListTradMark.jspx">
    <img src="images/TRADMARD.gif"  border="0"/>
    </a></td>
    <td align="center"><a href="adminAnnounce.jspx">
    <img src="images/adnouncement.gif" border="0" /></a></td>
  </tr>
  <tr>
    <td align="center"><a href='serverInfo.jspx'>服务器</a></td>
    <td align="center"><a href="listProducter.jspx">商家管理</a></td>
    <td align="center"><a href="ListAll.jspx">广告管理</a></td>
    <td align="center"><a href="ListTradMark.jspx">品牌管理</a></td>
    <td align="center"><a href="adminAnnounce.jspx">管理公告</a></td>
  </tr>
</table>
    
    </td>
      </tr></table>    
    
    
    <table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
    <thead>  <tr>
        <th height="25" colspan="2" bgcolor="#3BA9FE">&nbsp;<span class="STYLE1">快速统计</span></th>
        </tr></thead>
      <tr><td width="44%" style="padding:10px;">
              <s:property value="admin.getUserName()"/>您好！
<script language="javascript">
var day="";
var month="";
var ampm="";
var ampmhour="";
var myweekday="";
var year="";
mydate=new Date();
myweekday=mydate.getDay();
mymonth=mydate.getMonth()+1;
myday= mydate.getDate();
myyear= mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
if(myweekday == 0)
weekday=" 星期天 ";
else if(myweekday == 1)
weekday=" 星期一 ";
else if(myweekday == 2)
weekday=" 星期二 ";
else if(myweekday == 3)
weekday=" 星期三 ";
else if(myweekday == 4)
weekday=" 星期四 ";
else if(myweekday == 5)
weekday=" 星期五 ";
else if(myweekday == 6)
weekday=" 星期六 ";
document.write("今天是"+year+"年"+mymonth+"月"+myday+"日 "+weekday);</script>
欢迎登陆系统！<br>
           
            您有<font color="#FF0000" /><s:property value="listOrderform.size()"/>个需要处理的订单</font> <a href="ListAllorder.jspx"><font color="#FF0000" >马上处理</font>
            </a>
           
            
            
                    
            目前所有商城频道共有商品<font color="#FF0000" ><s:property value="listproduct.size()"/></font>件
            <br>目前您推荐的商品共有<font color="#FF0000" ><s:property value="elitelistproduct.size()"/></font>件
            排在首位的是<font color="#FF0000" ><s:property value="elitelistproduct.get(0).getProductName()"/></font>
            售价是：<s:property value="elitelistproduct.get(0).getProductName()"/>件<br>
            目前您设置的热门商品共有<s:property value="newlistproduct.size()"/>件
            排在首位的是<s:property value="newlistproduct.get(0).getProductName()"/>
            售价是：<s:property value="elitelistproduct.get(0).getProductName()"/><br>
            浏览量最高的商品是：<s:property value="unlistproduct.get(0).getProductName()"/>
            售价是：<s:property value="elitelistproduct.get(0).getProductName()"/><br></td>
        <td width="56%" valign="top" style="padding:10px;">
          <p>JESHOP系统平台为的大型架构电子商务平台，由领先网络科技开发，通过系统开放的API接口，用户可以很容易的和其他系统平台集成结合。        </p>
          <p>系统功能强大，会员可以独立建站，收费等功能，会员模板功能丰富，定制性强。</p>
          <p>模板制作简单，完全采用标签式插入，可以容易获得标签文档。</p>
          <p>本版本为免费版本，无任何功能限制，请将您的建议和意见提供给我们，免费升级VIP用户，终生免费用户。</p>
          <p>&nbsp;</p>
          <p>更多功能请关注<a href="http://www.j-eshop.cn"><strong>领先网络科技官方网站</strong></a> 随时升级您的系统平台</p></td>
      </tr>
    </table>
    
    <s:set name="lnews" value="getListNews()"/>
    <s:set name="luser" value="getUserList()"/>
    <s:set name="louser" value="getUserListLock()"/>
    <s:set name="lallForm" value="listallform()"/>
    <s:set name="ListOutProduct" value="ListOutProduct()"/>
    <s:set name="ListAlmProduct" value="ListAlmProduct()"/>
    <s:set name="getProductorGuoNei" value="getProductorGuoNei()"/>
     <s:set name="getProductorGuoWai" value="getProductorGuoWai()"/>
     <s:set name="getProductorList" value="getProductorList()"/>
      <s:set name="getListNewsEs" value="getListNewsEs()"/>
      <table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table2"><tbody><tr><td ><table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table3">
        <thead>
          <tr>
            <th >所有商品数目</th>
            <th >供货商家</th>
            <th >文章类数目</th>
            <th >所有会员数</th>
            <th >会员卡统计</th>
            <th >所有订单数目</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td align="left" ><a href="MainProductList.jspx?actionID=0">所有商品：</a>
              <s:property value="listproduct.size()"/></td>
            <td align="left" ><a href="listProducter.jspx">所有商家</a>：
              <s:property value="#getProductorList.size()"/></td>
            <td align="left" >文章总数：
                <s:property value="#lnews.size()"/></td>
            <td align="left" > 所有会员人数：
              <s:property value="#luser.size()"/></td>
            <s:set name="listAllUserCard" value="listAllUserCard()"/>
            <td align="left" >会员卡总数：
                <s:property value="#listAllUserCard.size()"/></td>
            <td align="left" ><a href="ListOrderByClass.jspx?actionID=0">所有订单数：
                  <s:property value="allListorderform.size()"/>
            </a></td>
          </tr>
          <tr>
            <td ><a href="MainProductList.jspx?actionID=1">推荐商品：</a>
              <s:property value="elitelistproduct.size()"/></td>
            <td ><a href="listProducter.jspx">国内商家</a>：
                <s:property value="#getProductorGuoNei.size()"/></td>
            <td >推荐文章：
                <s:property value="#getListNewsEs.size()"/></td>
            <td >未通过会员：
                <s:property value="#louser.size()"/></td>
            <td > 未销售会员卡：
              <s:set name="listSalCard" value="listSalCard()"/>
                <s:property value="#listSalCard.size()"/>            </td>
            <td ><a href="ListOrderByClass.jspx?actionID=0">未付款订单：
              <s:set name="noSomeMoney" value="noSomeMoney()"/>
                  <s:property value="#noSomeMoney.size()"/>
            </a></td>
          </tr>
          <tr>
            <td ><a href="MainProductList.jspx?actionID=2">热卖商品：</a>
              <s:property value="newlistproduct.size()"/></td>
            <td ><a href="listProducter.jspx">国外商家</a>：
                <s:property value="#getProductorGuoWai.size()"/></td>
            <td >付费文章：
                <s:set name="getListNewsPay" value="getListNewsPay()"/>
              <s:property value="#getListNewsPay.size()"/></td>
            <td >&nbsp;</td>
            <td >已经销售会员卡：
              <s:set name="listSalCardOne" value="listSalCardOne()"/>
                <s:property value="#listSalCardOne.size()"/>            </td>
            <td ><a href="ListOrderByClass.jspx?actionID=1">付部分款订单：
              <s:set name="listSomeMoney" value="listSomeMoney()"/>
                  <s:property value="#listSomeMoney.size()"/>
            </a> </td>
          </tr>
          <tr>
            <td ><a href="MainProductList.jspx?actionID=4">库存报警：</a>
                <s:property value="#ListAlmProduct.size()"/></td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >已经充值会员卡：
              <s:set name="listSalCardOver" value="listSalCardOver()"/>
                <s:property value="#listSalCardOver.size()"/>            </td>
            <td ><a href="ListOrderByClass.jspx?actionID=3">已付款订单：
              <s:set name="listAllSomeMoney" value="listAllSomeMoney()"/>
                  <s:property value="#listAllSomeMoney.size()"/>
            </a> </td>
          </tr>
          <tr>
            <td ><a href="MainProductList.jspx?actionID=3">到期商品：</a>
                <s:property value="#ListOutProduct.size()"/></td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td ><a href="ListOrderByClass.jspx?actionID=5">已发货订单：
              <s:set name="listNowSends" value="listNowSends()"/>
                  <s:property value="#listNowSends.size()"/>
            </a> </td>
          </tr>
        </tbody>
      </table>
      
<table  cellpadding="0" cellspacing="0" border="0" class="sortable">

      <tr>

      <td>
         <form action="serProductList.jspx" method="post">   
     
         商品名称：<input name="sproductName" size="15" value="<s:property value="getSproductName()"/>" type="text"  />
       商品编号：<input name="sproductCode" size="15" value="<s:property value="getSproductCode()"/>" type="text" />品牌名称：
       <input size="15" name="sprodcutTrad" value="<s:property value="getSprodcutTrad()"/>" type="text"  />
      推荐商品: <input type="checkbox" value="1" style="border:0px" name="sisSet" /> 热卖商品: <input style="border:0px" type="checkbox" value="1" name="sisHot" />
      价格排序:<select name="primin"><option value="1"> 市场价</option>
      <option value="2"> 会员价</option>
      <option value="3"> 团购价</option>
      </select>
      <select name="priasc"><option value="1">倒序</option>
      <option value="2">顺序</option></select>
      <input type="submit" value="快速搜索" />
      <input type="hidden" name="actionID" value="100" />
      <input type="hidden" name="channelId" value="<s:property value="getChannelId()"/>" />
      </form>
      </td>
      
       </tr>
        
        
     </table>

      
      </td>
          </tr>
      </tbody>
      </table>
    
    

    
<s:include value="button.jsp"/>


</body>
</html>
