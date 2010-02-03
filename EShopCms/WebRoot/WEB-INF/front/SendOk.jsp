<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="skin/default.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
     
    var duration=5900;
    var endTime = new Date().getTime() + duration + 100;
    function interval()
    {
        var n=(endTime-new Date().getTime())/1000;
        if(n<0) return;
        document.getElementById("timeout").innerHTML = n.toFixed(1);
        setTimeout(interval, 10);
    }
    window.onload=function()
    {
        setTimeout("window.location.href='<%=request.getContextPath() %>/front/ShowChannel.jspx?channelId=1059'", duration);
        interval();
    }
 </script>
</head>

<body>

<s:include value="top.jsp"/>
  
  <br>
  <br>
  <br>   
  <div>
  <center>
   <h2> 邮 件 发 送 成 功！<br>
   
   <br>
   <br>
      系统在 <span id="timeout">6</span> 秒后 将自动返回 <a href="<%=request.getContextPath() %>/front/ShowChannel.jspx?channelId=1059">返回</a>
     </h2></center>
     </div>
 </body>
 </html>
