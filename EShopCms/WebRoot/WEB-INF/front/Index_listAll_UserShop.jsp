 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
   
<s:iterator value="showUser(2)">
<div id="userlistitem">
<s:if test="getUserFace()==null">

<div >
<a href="../u/u<s:property value="getUserId()"/>.html">
<img src="../configfile/null.gif" width="120" height="100" border="0" /></a>
<p align="center"><s:property value="getUserName()"/></p>
</div>
</s:if>
<s:else>
<div style="float:left;"><a href="../u/u<s:property value="getUserId()"/>.html">
<img src="../upfile/<s:property value="getUserFace()"/>" width="120" height="100" border="0" /></a>
<p align="center"><s:property value="getUserName()"/></p>
</div>
</s:else>
</div>
</s:iterator>

