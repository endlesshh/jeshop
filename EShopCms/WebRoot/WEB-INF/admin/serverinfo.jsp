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

<body><table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
        <tr bgcolor="#EEFEE0" >
          <td height="25" colspan="2" align=center bgcolor="#0099FF" style="border:1px #00CCFF outset;" ><% out.print("<font class=fonts>服务器的有关参数</font>");%></td>
        </tr>
        <tr bgcolor="#EEFEE0" >
          <td width=262 align=left bgcolor="#FFFFFF">&nbsp;服务器名</td>
          <td width=943 bgcolor="#FFFFFF">&nbsp;<%= request.getServerName() %></td>
          </tr>
	  <tr bgcolor="#EEFEE0" >
		<td align=left bgcolor="#FFFFFF">&nbsp;服务器IP</td>
	    <td bgcolor="#FFFFFF">&nbsp;</td>
	  </tr>
	  <tr bgcolor="#EEFEE0" >
		<td align=left bgcolor="#FFFFFF">&nbsp;服务器端口</td>
	    <td bgcolor="#FFFFFF">&nbsp;<%= request.getServerPort() %></td>
	  </tr>
	  <tr bgcolor="#EEFEE0" >
		<td align=left bgcolor="#FFFFFF">&nbsp;服务器时间</td>
	    <td bgcolor="#FFFFFF">&nbsp;<% out.println(new java.util.Date()); %></td>
	  </tr>
	  <tr bgcolor="#EEFEE0" >
		<td align=left bgcolor="#FFFFFF">&nbsp;本文件路径</td>
	    <td bgcolor="#FFFFFF">&nbsp;<%=request.getPathTranslated() %></td>
	  </tr>
	  <tr bgcolor="#EEFEE0" >
		<td align=left bgcolor="#FFFFFF">&nbsp;服务器解译引擎</td>
	    <td bgcolor="#FFFFFF">&nbsp;<% String publish=getServletContext().getServerInfo(); out.println(publish); %></td>
	  </tr>
	  <tr bgcolor="#EEFEE0" >
		<td align=left bgcolor="#FFFFFF">&nbsp;HTTP解译引擎</td>
	    <td bgcolor="#FFFFFF">&nbsp;<%=request.getProtocol() %></td>
	  </tr>
<tr bgcolor="#EEFEE0" >
		<td align=left bgcolor="#FFFFFF">&nbsp;服务器配置</td>
	  <td bgcolor="#FFFFFF">&nbsp;<%=request.getInputStream() %></td>
        </tr>
<tr bgcolor="#EEFEE0" >
  <td colspan="2" align=left bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0"  style="border:1px #00CCFF outset;">
  <tr  align=center><td width=320 bgcolor="#0099FF" style="color:#FFFFFF;">参 数 名 称</td>
  <td width=130 bgcolor="#0099FF" style="border:1px #00CCFF outset;color:#FFFFFF;">支持及版本</td>
  </tr>
<%
	ServletContext context = getServletContext();
	
	java.util.Enumeration enums = context.getAttributeNames();
	int i=0;
	while (enums.hasMoreElements()&&i<=10) {
	    String key = (String)enums.nextElement();
            Object value = context.getAttribute(key);
            i++;
            out.println("<tr ><td>" + key + "</td><td>" + value + "</td></tr>");
	}
%>
</table></td>
</tr>
<tr bgcolor="#EEFEE0" >
  <td colspan="2" align=left bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px #00CCFF outset;">
<tr  class=backs align=center><td width=320 bgcolor="#0099FF"><span class="STYLE4">组 件 名 称</span></td>
<td width=130 bgcolor="#0099FF"><span class="STYLE4">支持及版本</span></td>
</tr>
        <tr class=backq>
		<td align=left>&nbsp;(暂无此类组件)<font color=#888888>&nbsp;(文件上传)</font></td>
		<td align=left>&nbsp;<font color=red><b>×</b></font></td>
</tr></table></td>
</tr>

<tr bgcolor="#EEFEE0" >
  <td colspan="2" align=left bgcolor="#FFFFFF"><table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%">
<FORM action=/jspcheck.jsp method=post id=form1 name=form1>
	<tr  class=backq>
		<td align=center height=30>输入类名：
		  <input class=input type=text value="" name="classname" size=40></td>
    </tr>
</FORM>
</table></td>
  </tr>
      </table>



<s:include value="button.jsp"/>

</body>
</html>
