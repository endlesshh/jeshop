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
           
            您有<font color="#FF0000" /><s:property value="listOrderform.size()"/>个新的订单</font> <a href="ListAllorder.jspx"><font color="#FF0000" >马上处理</font>
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
      <s:include value="button.jsp"/>


</body>
</html>
