<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
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
}
a:visited {
	color: #666666;
}
a:hover {
	color: #666666;
}
a:active {
	color: #666666;
}
</style>
</head>

<body >
<s:include value="SerchProduct.jsp"/>

<table  cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
    <thead>
      <tr>
        <th class="nosort">选择</th>
        <th class="nosort">商品缩略图</th>
        <th class="nosort">商品编号</th>
        <th class="nosort">商品名称</th>
        <th class="nosort">商品设置</th>
        <th class="nosort">商品数量</th>
        <th class="nosort">添加图片</th>
        <th class="nosort">删除</th>
        <th class="nosort">修改</th>
        <th class="nosort">状态</th>
      </tr>
    </thead>
    <s:hidden name="channelId" value="%{getChannelId()}"/>
    <s:set name="actionID" value="actionID"/>
    <s:set name="channelId" value="%{getChannelId()}"/>
    <s:if test="#actionID==0||#actionID==null">
      <s:set name="prolist" value="allprolist(#channelId)"/>
    </s:if>
    <s:if test="#actionID==1">
      <s:set name="prolist" value="listTuiJian(#channelId)"/>
    </s:if>
    <s:if test="#actionID==2">
      <s:set name="prolist" value="listHotSal(#channelId)"/>
    </s:if>
    <s:if test="#actionID==3">
      <s:set name="prolist" value="ListOutProduct(#channelId)"/>
    </s:if>
    <s:if test="#actionID==4">
      <s:set name="prolist" value="ListAlmProduct(#channelId)"/>
    </s:if>
    <s:if test="#actionID==100">
     <s:set name="prolist" value="getSeachProductList()"/>
    </s:if>
    
    <tbody>
      <s:iterator value="prolist" status="listjeannounce">
      
      <s:set name="pid" value="%{getProducerId()}"></s:set>
      <s:set name="cid" value="%{getClassId()}"></s:set>
      <tr>
    <s:set name="picurl" value="getProductThumb()"></s:set>
  <td align="center" >
  <input type="checkbox" name="deleID" value="<s:property value="getProductId()"/>">&nbsp;<s:property value="%{getProductId()}"/>
  
  </td>
  <td align="center" class="channel_title">
   <a target="_blank" href="../front/ThreadProduct_<s:property value="getProductId()"/>.html">
  <s:if test="#picurl!=null"> <img title="header=[<s:property  value="%{getProductName()}"/>] body=[<img src='../upfile/<s:property value="getProductThumb()"/>'>]" src="../upfile/<s:property value="getProductThumb()"/>" border="0" width=80 height="80"/> </s:if><s:else> <img border="0" src="../configfile/null.gif" width=80 height="80"/> </s:else></a> </td>
    <td align="center" class="channel_title"><s:property value="getBarCode()"/></td>
    <td align="left" class="channel_title" ><s:url id="seturlde" value="/admin/ShowProDetail.jspx">
          <s:param name="product.productId">
            <s:property  value="%{getProductId()}"/>
          </s:param>
          <s:param name="channelId">
            <s:property value="%{#request.channelId}"/>
          </s:param>
        </s:url>
          <s:if test="#cid==0"> 【频道商品】 </s:if>
          <s:else> 【 <a href="ListClassProduct.jspx?channelId=<s:property value="getChannelId()"/>&classId=<s:property value="getClassId()"/>"><s:property escape="false" value="getClassName(#cid)"/></a>】 </s:else>
          <s:if test="getUserId()!=null||getUserId!=0"><span title="header=[<font color=#ff0000>会员添加商品</font>] body=[<s:property value="getProducerName(#pid)"/>]"><a href="<s:property escape="false" value="%{seturlde}"/>" >
              <s:property  value="%{getProductName()}"/></a>
          </s:if>
          <s:else> <span title="header=[本站商品] body=[<s:property value="getproducername(#pid)"/>]"><a href="<s:property value="%{seturlde}"/>" > <s:property  value="%{getProductName()}"/></a> </s:else>
      </td>
    <td align="center" class="channel_title"><s:url id="addnewurl" value="/admin/addproPhoto.jspx">
          <s:param name="product.productId">
            <s:property  value="%{getProductId()}"/>
          </s:param>
          <s:param name="channelId">
            <s:property value="%{#request.channelId}"/>
          </s:param>
        </s:url>
          <a href="initSetProduct.jspx?productId=<s:property  value="%{getProductId()}"/>&channelId=<s:property value="%{getChannelId()}"/>">商品设置</a></td>
    <td align="center" class="channel_title"><s:property value="getProductNum()"/>
          <s:property value="getUnit()"/>
      </td>
    <s:url id="addnewurl" value="/admin/addproPhoto.jspx">
        <s:param name="product.productId">
          <s:property  value="%{getProductId()}"/>
        </s:param>
        <s:param name="channelId">
          <s:property value="%{#request.channelId}"/>
        </s:param>
      </s:url>
      <td align="center" class="channel_title"><img src="img/havepic.gif">
          <s:a href="%{addnewurl}">添加组图</s:a></td>
    <!--删除标签-->
      <s:url id="deleurl" value="/admin/deleProduct.jspx">
        <s:param name="product.productId">
          <s:property  value="%{getProductId()}"/>
        </s:param>
      </s:url>
      <s:url id="seturl" value="/admin/initMod.jspx">
        <s:param name="product.productId">
          <s:property  value="%{getProductId()}"/>
        </s:param>
        <s:param name="channelId">
          <s:property value="%{#request.channelId}"/>
        </s:param>
      </s:url>
      <td align="center" class="channel_title"><s:a href="%{deleurl}" onclick="return confirm('删除数据后不可以恢复！确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
    <td align="center" class="channel_title">&nbsp;
          <s:a href="%{seturl}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
    <td align="center" class="channel_title" style="padding:5px;"><s:set name="isE" value="%{getIsElite()}"/>
          <s:if test="#isE==0||#isE==null"> 不推荐 </s:if>
          <s:else> <font color="#FF0000"> <b>推荐</b></font> </s:else>
          <s:set name="isS" value="%{getIsHot()}"/>
          <s:if test="#isS==0||#isS==null"> 非热卖 </s:if>
          <s:else> <font color="#FF0000"> <b>热卖</b> </font> </s:else>
      </td>
  </tr>
  
  </s:iterator>
   </tbody>
  </table>
 <script language='javascript'>
      function newsub()
      {
      if(confirm('删除数据后不可以恢复！确定要删除吗?')){document.form.submit();}else{return false;}
      }
      </script>
<div align="center">
 全选 <input onClick="selectAllCheck(this.id,'deleID')"  type="checkbox" id="seleall"/>反选 
        <input onClick="selectreCheck(this.id,'deleID')"  type="checkbox" id="reseleall"/>
         <s:a href="#" onclick="return newsub()"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a> 
</div>
    <div id="controls">
		<div id="perpage">
			<select onChange="sorter.size(this.value)">
			<option value="5">5</option>
            <option value="1">1</option>
				<option value="10" selected="selected">10</option>
<option value="2" >2</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>选择您的每页的列表数目</span>
		</div>
		<div id="navigation">
			<img src="images/first.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="First Page" onClick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="Last Page" onClick="sorter.move(1,true)" />
		</div>
		<div id="text">当前页：<span id="currentpage"></span> 总页之<span id="pagelimit"></span></div>
	</div>
    
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>

<script language="javascript">
function setPassIt(id,isHot,isEs)
{
window.location.href='setProduct.jspx?productId='+id+'&channelId=<s:property value="getChannelId()"/>&isHot='+isHot+'&isEs='+isEs;
}

</script>
      <script type="text/javascript"  src="../jQuery/script.js">
		</script>   
<script language="javascript">


  var sorter = new TINY.table.sorter("sorter");
    
	sorter.head = "head";
	sorter.asc = "asc";
	sorter.desc = "desc";
	sorter.even = "evenrow";
	sorter.odd = "oddrow";
	sorter.evensel = "evenselected";
	sorter.oddsel = "oddselected";
	sorter.paginate = true;
	sorter.currentid = "currentpage";
	sorter.limitid = "pagelimit";
	sorter.init("table",1);
	sorter.size(8);
	 
	 
  </script>
<s:include value="button.jsp"/>
</body>
</html>
