<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<br>

<table width="920"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="right" valign="middle" height="50"  ><img src="<s:property value="getRootPath()"/>/front/images/logo.jpg" width="220" height="62" /></td>
    <td align="left" valign="middle"  >开源电子商务平台 建造您独立的商务平台</td>
  </tr>
</table>
<table width="920"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td  align="center" valign="middle"  >最新版本发布地址：http://code.google.com/p/jeshop</td>
  </tr>
</table>

<table width="920" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center"><s:property escape="false" value="getLinks(1,38,113,15)"/>          </td>
      </tr>
      <tr>
        <td align="center"><a href="ShowPage.html?ShowAllProduct.jsp" class="STYLE3"><span class="STYLE3">全部商品</span></a> | <a href="ShowPage.html?ShowChannel_Class.jsp" class="STYLE3"><span class="STYLE3">商品分类</span></a>

| <a href="ShowPage.html?ShowChannel_hotSail.jsp"><span class="STYLE3">热卖商品</span></a>

| <a href="ShowPage.html?ShowChannel_elistSail.jsp"><span class="STYLE3">推荐商品</span></a>

| <a href="ShowPage.html?LinkUs.jsp"><span class="STYLE3">联系我们</span></a> | <a href="ShowPage.html?showGoumai.jsp"><span class="STYLE3"> 购买流程</span></a>

|<a href="../admin/admin_login.html"><span class="STYLE3">管理登陆</span></a>|
</td>
  </tr>
      <tr>
        <td align="center"><s:property escape="false" value="configBean.getCopyright()"/></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
  </tr>
    </table>
    
<s:property value="configBean.messageTwo"/>

