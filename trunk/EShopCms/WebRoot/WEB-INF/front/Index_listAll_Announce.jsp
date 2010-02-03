 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ taglib prefix="s" uri="/struts-tags" %>
    <s:iterator value="getAnnounce(5)" status="ls">
    <p align="center"><s:property value="getTitle()" escape="false"/>
    <li>
    <s:property value="getContent()" escape="false"/></li>
    </p>
    </s:iterator>