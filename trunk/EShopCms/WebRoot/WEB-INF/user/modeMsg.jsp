<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
    </style>
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;">
      
  
  
  <s:form action="/user/modMyMsg.jspx" method="post">

   <s:hidden name="hidden" value="hidden"></s:hidden>
   <s:hidden name="id"  value="%{#request.user.userId}"></s:hidden>
   <s:set name="id" value="%{#request.user.userId}"/>
      
   <s:property value="getUserInfo(#id,0).getByName()" />
   <tr><td>会员名称：</td><td>
    <s:property value="%{user.getUserName()}"/>
            </td></tr>
        <tr><td>会员电子邮件：</td><td>
    <s:property value="%{user.getEmail()}"/>
            </td></tr>
             <tr><td>会员头像：</td><td>
    <s:set name="uface" value="user.getUserFace()"/>         
   <s:if test="#uface==null">
   <img width="150" height="150" src="../upfile/null.gif" />
   
   </s:if>
   <s:else>
   <img width="150" height="150" src="../upfile/<s:property value="user.getUserFace()"/>" />
   
   </s:else>
   
            </td></tr>
             <s:textfield 
            id="filename"
   			label="会员头像："
   			name="face"
   			required="true"
   			size="40"
            value="%{user.getUserFace()}"
           />
 			<tr>
            
            <td><input type="button" onClick="var rval=window.showModalDialog('ShowMsg.jsp',window,'status:no;scroll:no;dialogWidth:600px;dialogHeight:450px');if(rval!=null){
    if(document.getElementById('mitSele').checked==true)
    {
    var str = document.getElementById('strReceiveId').value;
    if(str.length<=0)
    {
    document.getElementById('strReceiveId').value=rval
    }else
    {
    document.getElementById('strReceiveId').value=document.getElementById('strReceiveId').value+','+rval;
    }
    
    
    }else
    {
   document.getElementById('strReceiveId').value=rval
    }

    }" value="头像拍摄" /></td><td height=20><iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;"> </iframe></td>
 			</tr> 
       
          
               <tr><td><font color=#ff0000>该会员当前的消费点数</font></td><td>
            <s:set name="ups1" value="%{user.getConsumePoint()}"></s:set>
            <s:if test="#ups1!=null">
             <font color=#ff0000> <b> <s:property value="%{user.getConsumePoint()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>该会员目前消费的点卡</font>
            </s:else>
            </td></tr>
           
            <tr><td><font color=#ff0000>该会员当前的点卡点数</font></td><td>
            <s:set name="ups" value="%{user.getUserPoint()}"></s:set>
            <s:if test="#ups!=null">
             <font color=#ff0000> <b> <s:property value="%{user.getUserPoint()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>为了安全起见，余额不足时请到充值中心充值</font>
            </s:else>
            </td></tr>
                  
                  
              <tr><td><font color=#ff0000>该会员当前的积分数</font></td><td>
            <s:set name="ups3" value="%{user.getUserExp()}"></s:set>
            <s:if test="#ups3!=null">
             <font color=#ff0000> <b> <s:property value="%{user.getUserExp()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>该会员目前所积累的积分</font>
            </s:else>
            </td></tr>    
                  
                       
            <tr><td><font color=#ff0000>该会员当前的资金余额</font></td><td>
            <s:set name="ups4" value="%{user.getBalance()}"></s:set>
            <s:if test="#ups4!=null">
             <font color=#ff0000> <b> <s:property value="%{user.getBalance()}"/></b>  </font>
            </s:if>
            <s:else>
            <font color=#ff0000> <b> 0 </b>  </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#004400>当前会员的资金余额</font>
            </s:else>
            </td></tr>    
                              
                      
      <s:submit  value="更新会员设置"></s:submit>
    </s:form>

        
        
        </td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif"></td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
    </table>

</body>
</html>
