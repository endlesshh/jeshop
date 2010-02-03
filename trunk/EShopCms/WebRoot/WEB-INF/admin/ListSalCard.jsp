<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:980px; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
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

<body>
 
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

                    <!-- this is the start loop -->
                    <s:iterator value="pagebean.list" status="card">
                      <tr>
                        <td><input type="checkbox" name="cardID" value="<s:property value="getcardid()"/>
                          "/> </td>
                        <td> 【编号：<b><font color=#00ffff>
                          <s:property value="getCardCode()"/>
                        </font></b>】 </td>
                        <td> 金额：<font color=#ff0000>
                          <s:property value="getCardMoney()"/>
                        </font>元 </td>
                        <td><s:set name="cardstat" value="getCardStat()"></s:set>
                            <s:if test="#cardstat==0"> <b> <font color=#ff0000> 卡并未售出</font></b> </s:if>
                            <s:if test="#cardstat==1"> <b> <font color=#ff0000> 卡已经售出</font></b> </s:if>
                            <s:if test="#cardstat==2"> <b> <font color=#ff0000> 卡已经注册</font></b> </s:if>
                        </td>
                        <td><input type="button" name="cardID2" value="打印编号：<s:property value="getcardid()"/>
                          "/> </td>
                      </tr>
                      <!--this is the end loop  -->
                    </s:iterator>
                  </table>
                共
                <s:property value="pagebean.allRow"/>
                条记录
                共
                <s:property value="pagebean.totalPage"/>
                页
                当前第
                <s:property value="pagebean.currentPage"/>
                页
                <s:url id="ListNews" value="/admin/listSalUserCard.jspx">
                  <s:param name="page">
                    <s:property value="%{pagebean.currentPage+1}"/>
                  </s:param>
                </s:url>
                <s:if test="%{pagebean.currentPage==1}"> 第一页 上一页 </s:if>
                <s:else>
                  <s:url id="firstNews" value="/admin/listSalUserCard.jspx">
                    <s:param name="page">1</s:param>
                  </s:url>
                  <s:a href="%{firstNews}">第一页</s:a>
                  <s:url id="preNews" value="/admin/listSalUserCard.jspx">
                    <s:param name="page">
                      <s:property value="%{pagebean.currentPage-1}"/>
                    </s:param>
                  </s:url>
                  <s:a href="%{preNews}">上一页</s:a>
                </s:else>
                <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
                  <s:url id="nextNews" value="/admin/listSalUserCard.jspx">
                    <s:param name="page">
                      <s:property value="%{pagebean.currentPage+1}"/>
                    </s:param>
                  </s:url>
                  <s:a href="%{ListNews}">下一页</s:a>
                  <s:url id="nextNews1" value="/admin/listSalUserCard.jspx">
                    <s:param name="page">

                      <s:property value="%{pagebean.totalPage}"/>
                    </s:param>

                  </s:url>
                  <s:a href="%{nextNews1}">最后一页</s:a>
                </s:if>
                <s:else> 下一页 最后一页 </s:else>
   
    <s:include value="button.jsp"/>

</body>
</html>
