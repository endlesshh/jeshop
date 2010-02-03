<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="skin/default.css" rel="stylesheet" type="text/css" />




<SCRIPT language=JavaScript>

function check(){

if(document.getElementById("userName").value == "") {

    alert("请输入你的姓名！");

   document.getElementById("userName").focus();

    return false;

}


if(document.getElementById("Email").value.indexOf("@")==-1) {

    alert("请输入你的E_mail或输入格式有误！");

    document.getElementById("Email").focus();

    return false;

}if(document.getElementById("telphoto").value == "") {

    alert("请输入你的电话！");

    document.getElementById("telphoto").focus();

    return false;

}


}

function ckmsg () {

if(document.getElementById("tarContent").value == "输入内容（字数不限）") document.getElementById("tarContent").value="";

}

</SCRIPT>

</head>

<body>

<s:include value="top.jsp"/>
<table  border="0" align="center" cellpadding="0" cellspacing="3"   width="800">
  <tr>
    <td align="left"> 
    当前频道：<s:property value="chanconfig.getChannelName()"/> 频道关键词：<s:property value="chanconfig.getKeyword()"/>
    </td>
  </tr>
  <tr><td><img src="images/jiaju2.jpg" /></td></tr>
</table>

<form name="myform" method="post" action="#">
                  <table  background="images/bg.gif" width=800 border="0" align="center" cellpadding="0" cellspacing="1">
                    <tr>
                      <td height="50" colspan="2" align="left" valign="top"><table cellspacing="0" cellpadding="0">
                       
                        <tr>
                          <td valign="top" style="line-height:20px"><p><font color="#FF0000"><strong>隐私保护</strong></font><br />
                              1、为了方便本站和您保持联系，请确保您填写资料的正确性和有效性。<br />
                            2、保护用户隐私是本站的一项基本政策，本站保证不对外公开或向第三方提供用户注册资料及用户在使用网络服务时存储在本站的非公开内容.<br />
                            </p></td>
                        </tr>
                        <tr>
                          <td><table cellspacing="1" cellpadding="3" width="100%" bgcolor="#d7e9fc" border="0">
                          <tbody>
                                <tr>
                                  <td colspan="2" height="30"><div align="center" class="style1" ><font color="#FF0000">请详细填写下列表单，并确保资料的真实有效性，以方便我们能第一时间和您取得联系<br />
                        注：提供虚假资料和恶意重复注册的，我们将在第一时间给予删除!
</font></div></td>
                                </tr>
                              </tbody>
                          </table></td>
                        </tr>
                      </table>                      </td>
                      </tr>
					  <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">姓名：</div></td>
                      <td width="443" height="25" align="left" valign="middle"><input id="userName"  size="35" name="userName" />
                      *</td>
                    </tr>
                    
                    <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">性别：</div></td>
                      <td height="25" align="left" valign="middle"><input type="radio" checked="checked" value="男" name="sex" />
                        男
                        <input type="radio" value="女" name="sex" />
                        女</td>
                    </tr>
                    <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">出生年月：</div></td>
                      <td height="25" align="left" valign="middle"><input id="year"  maxlength=4 onkeyup="this.value=this.value.replace(/\D/g,'')"  name="year" />
                        年
                        <input id="month"  maxlength=2 onKeyUp="this.value=this.value.replace(/\D/g,'')"  name="month" />
                        月</td>
                    </tr>
                    <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">学历：</div></td>
                      <td height="25" align="left" valign="middle"><select id="xueli" name="xueli">
                          
                          <option value="初中">初中</option>
                          <option value="高中">高中</option>
                          <option value="中专">中专</option>
                          <option value="大专" selected="selected">大专</option>
                          <option value="本科">本科</option>
                          <option value="硕士">硕士</option>
                          <option value="博士">博士</option>
                      </select></td>
                    </tr>
                   
                    <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">联系电话：</div></td>
                      <td height="25" align="left" valign="middle"><input id="telphoto" maxlength=11 onKeyUp="this.value=this.value.replace(/\D/g,'')"  name="telphoto" />
                        *</td>
                    </tr>
                    <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">电子邮件：</div></td>
                      <td height="25" align="left" valign="middle"><input id="Email"  size="35" name="Email" />
                        *</td>
                    </tr>
                    
                    <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">QQ：</div></td>
                      <td height="25" align="left" valign="middle"><input id="qq"  size="35" name="qq" /></td>
                    </tr>      
                   <tr bgcolor="#ffffff">
                      <td height="25"><div align="right">备注：</div></td><BR>
                     <td height="25" align="left" valign="middle"><TEXTAREA style="FONT-SIZE: 12px; FONT-FAMILY: '宋体'" onclick=ckmsg() name=tarContent id=tarContent rows=6 cols=60>输入内容（字数不限）</TEXTAREA> 
    </span></TD>
  </TR>       
                    <tr>
                      <td colspan="2" height="50"><div align="center">
                          <input type="submit" value="提交" name="Submit" onclick="return check()" />
                          <input type="reset" value="重置" name="Submit" />
                      </div></td>
                    </tr>
                  </table>
</form>
      </body>
 </html>
                                