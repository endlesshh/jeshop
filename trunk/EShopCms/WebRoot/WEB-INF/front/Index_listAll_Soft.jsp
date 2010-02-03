 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<div class="listNewsTitle">
<div align="left"><img src="images/images/ico1.gif" />网站软件下载</div>
</div>
 
<s:iterator  value="getallSoftList().list">
<li>
<span style="height:20px; width:20px; padding-top:6px;"><s:property value="#ulist.index+1"/></span>
<a href="ShowSoft_<s:property value="getSoftId()"/>.html"><s:property value="getSoftName()"/> </a>&nbsp;

<font color="#009900">
<a href="ShowSoft_<s:property value="getSoftId()"/>.html">
<s:property value="getSoftVersion()"/> </font>
</li>
</s:iterator>