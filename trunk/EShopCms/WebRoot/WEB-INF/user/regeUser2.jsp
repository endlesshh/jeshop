<table width="450" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif"></td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%" align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
   <s:url id="uservlogin"  value="/user/userviplogin.jspx"/>
   
   <form name="uform" action="<s:property value="%{uservlogin}"/>" method="post"> 
    <tr align="center">

      <td colspan="3">会员登录</td>

      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" align="right">   <font color=#ff0000>
    <s:property value="getErrorMsg()" />
    </font>   </td>
      </tr>
    <tr>
      <td width="31%" align="right"><span class="STYLE4">用户名</span>：</td>
      <td colspan="2"><input size="30" id="uu" type="text" style="width:149;height:20px;" name="userName" ></td>
    </tr>
    <tr>
      <td align="right"><span class="STYLE4">密 码</span> ：</td>
      <td colspan="2"><input  size="30" id="up" type="password" style="width:149;height:20px; " name="passWord" ></td>
    </tr>
    <tr>
      <td align="right"><span class="STYLE4">验证码</span>：</td>
      <td width="24%"   valign="middle"><input type="password" name="safecode" id="sp" size="6" style="width:50;height:20px; "></td>
      
      <td width="45%" valign="middle">
      <s:url id="imgsoft" value="/admin/getSafeCode.jspx"/>
      <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='<s:property value="%{imgsoft}"/>'" style="cursor:handle" src="<s:property value="%{imgsoft}"/>" />      </td>
    </tr>
    <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2" align="left"><input type="submit" name="button" id="button" value="提交">
        <input type="reset" name="button" id="button" value="重置"></td>
      </tr>
   
    <tr align="center">
 

      <td colspan="3">  <s:url id="imgsoft1" value="/user/regeUser.jspx"/>
      <a title="fade=[on] header=[欢迎注册为本站会员] body=[<p align='center'><ul><li>为了您的安全起见，注册后您的购物收藏信息将保留，便于为您售后</li><li>通过会员卡您将获得更多的优惠信息</li><li>本站为您提供及时的信息服务，请将您的信息准确填写</li></ul>]"  href="<s:property value="%{imgsoft1}"/>"><font color="#ff0000">会员注册</font></a>     <a title="header=[欢迎查看注册条款] body=[<p align='center'><ul><li>请您详细准确填写您的信息，避免邮寄物品丢失</li></ul>]" href="<s:property value="%{imgsoft1}"/>"><font color="#FF0000">注册条款</font></a> <a href="../front/index.jspx" title="返回首页"><font color="#FF000000">返回首页</font></a></td>
    </tr>
    <tr align="center">
      <td colspan="3">客服电话：13935188143	客服邮箱:y_flash@163.com</td>
    </tr>
   
   </form>
  </table></td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
</table>

        
        
        
        
        
        
        
    </td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"></td>
  </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif"></td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>