<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head />
<link href="../jQuery/jVal.css" rel="stylesheet" type="text/css">
<head>
<title>会员登录管理</title>
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>
<script type="text/javascript" src="../jQuery/jquery.provincesCity.js"></script>
<script type="text/javascript" src="../jQuery/provincesdata.js"></script>


    
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
input{ height:25px;}
-->
    </style>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top" width="17" height="211" ><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;">
        
        <table width="100%" border="0" cellspacing="4" cellpadding="0">
        <s:set name="userDetail" value="getUDetailByUser(#session.user.getUserId())"/>
        <form action="UpdateUserDetail.jspx" method="post">  
        <input type="hidden" name="detailId" value="<s:property value="#userDetail.detailId"/>" />
          <tr>
            <td>真实名称</td>
            <td width="89%"><input id="f1" type=text size=15 name="getName"
				style="height:25px;" value="<s:property value="#userDetail.getName"/>"	jVal="{valid:function (val) { if (val.length < 2) return false; else return true; }, message:'名称不能小于2个字符', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td width="11%">用户年龄</td>
            <td>
            <select name="age" >
            <s:if test="#userDetail.age!=null&&#userDetail.age!=0">
            <option value="<s:property value="#userDetail.age"/>"><s:property value="#userDetail.age"/></option>
            </s:if>
            <s:else><option value="0">请选择您的年龄</option></s:else>
            
            <%
			for(int i=100;i>0;i--)
			{
			
			out.println("<option value="+i+">=="+i+"岁==</option>");
			}
			
			%>
            </select>            </td>
          </tr>
          <tr>
            <td>性别</td>
            <td>
            <s:if test="#userDetail.sex==null">
            <s:radio
            theme="simple"
            label="性别"
            list="#{'1':'男', '2':'女','0':'保密'}"
            name="sex"
            listKey="key"
            listValue="value" 
            value="1"/>
            </s:if>
            <s:else>
            <s:radio
            theme="simple"
            label="性别"
            list="#{'1':'男', '2':'女','0':'保密'}"
            name="sex"
            listKey="key"
            listValue="value" 
            value="#userDetail.sex"/>
            </s:else>
             
                </td>
          </tr>
          <tr>
            <td>身份证号</td>
            <td><input id="f1" value="<s:property value="#userDetail.identify"/>" type=text size=20 name="identify"
				style="height:25px;"	jVal="{valid:function (val) { if (val.length < 15) return false; else return true; }, message:'身份证不能小于15个字符', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td>手机号</td>
            <td><input value="<s:property value="#userDetail.userMobile"/>" id="f1" type=text size=20 name="userMobile"
				style="height:25px;"	jVal="{valid:function (val) { if (val.length <6) return false; else return true; }, message:'请正确输入您的手机号', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td>QQ</td>
            <td><input id="f1" type=text size=15 name="userQq" value="<s:property value="#userDetail.userQq"/>" 
				style="height:25px;"	jVal="{valid:function (val) { if (val.length <3) return false; else return true; }, message:'请正确输入您的QQ号', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td colspan="2">  </td>
          </tr>
          <tr>
            <td>选择地址</td>
            <td><script>
	//调用插件
	$(function(){
		var ts = $("#pri").ProvinceCity();
		<s:if test="#userDetail.pri!=null">
		ts.initPri("<s:property value="#userDetail.pri"/>");
		</s:if>

		
		
	});
  </script>
 <div  style="float:left;">您已经选择的地址是：<s:property value="#userDetail.pri"/>-<s:property value="#userDetail.city"/>-<s:property value="#userDetail.xian"/></div><div id="pri" style="float:left;"></div> </td>
          </tr>
          <tr>
            <td>街道</td>
            <td><input id="f3" type=text size=30 name="jiedao"
				style="height:25px;" value="<s:property value="#userDetail.jiedao"/>" 	jval="{valid:function (val) { if (val.length <3) return false; else return true; }, message:'地址不能小于3个字符', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td>详细地址</td>
            <td><input id="f2" type=text size=60 name="address"
				style="height:25px;" value="<s:property value="#userDetail.address"/>" 	jval="{valid:function (val) { if (val.length < 7) return false; else return true; }, message:'地址不能小于7的字符', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td>邮编</td>
            <td><input  value="<s:property value="#userDetail.postCode"/>"  id="f1" type=text size=10 name="postCode"
				style="height:25px;"	jVal="{valid:function (val) { if (val.length < 6) return false; else return true; }, message:'邮编不能小于6个字符', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td>MSN</td>
            <td><input value="<s:property value="#userDetail.msn"/>"  id="f1" type=text size=20 name="msn"
				style="height:25px;"	jVal="{valid:function (val) { if (val.length < 4) return false; else return true; }, message:'MSN地址不能小于4的字符', styleType:'cover'}"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="保存数据"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
</form>
        </table></td>
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
