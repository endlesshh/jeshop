<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 00px;
	margin-bottom: 0px;
}
-->
</style>
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
       <thead>   <tr>
            <th height="20" >充值卡生成管理选项
  
            </th>
          </tr></thead>
          <tr>
            <td height=200 >
            
           
            
           编号： 
            
           
            <table >
            <!-- this is the start loop -->
            <s:iterator value="pagebean.list" status="card">
            
            <tr>
            <td>  <input type="checkbox" name="cardID" value="<s:property value="getCardId()"/>"/>  </td><td> 【编号：<b><font color=#00ffff><s:property value="getCardCode()"/></font></b>】  </td><td> 金额：<font color=#ff0000> <s:property value="getCardMoney()"/></font>元  </td>
          <td> 
          
          <s:set name="cardstat" value="getCardStat()"></s:set>
          <s:if test="#cardstat==0">
             <b>    <font color=#ff0000>    卡并未售出</font></b>
          </s:if>
          
          <s:if test="#cardstat==1">
             <b>    <font color=#ff0000>    卡已经售出</font></b>
          </s:if>
          
           <s:if test="#cardstat==2">
             <b>    <font color=#ff0000>    卡已经注册</font></b>
          </s:if>

            </td><td>  <input type="button" name="cardID" value="打印制卡编号：<s:property value="getCardId()"/>"/>  </td>
            </tr>
            
           
            <!--this is the end loop  -->
            
             </s:iterator>
            
            </table>
            
            
            
        共<s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/listMoneyCard.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页
        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/listMoneyCard.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/listMoneyCard.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/listUserCard.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews1" value="/admin/listMoneyCard.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{nextNews1}">最后一页</s:a>
            
        </s:if>
        <s:else>
            下一页 最后一页
        </s:else>
            
            
            
            
            
            
            </td>
          </tr>
        </table><s:include value="button.jsp"/>

</body>
</html>
