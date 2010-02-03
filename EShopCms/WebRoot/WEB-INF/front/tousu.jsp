<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="skin/default.css" rel="stylesheet" type="text/css" />

<SCRIPT language=JavaScript>

function check(){

if(document.getElementById("className").value == "") {

    alert("请选择投诉的类别！");

    return false;

}

if(document.getElementById("userName").value == "") {

    alert("请输入你的姓名！");

   document.getElementById("userName").focus();

    return false;

}

if(document.getElementById("address").value == "") {

    alert("请输入你的地址！");

    document.getElementById("address").focus();

    return false;

}

if(document.getElementById("telphoto").value == "") {

    alert("请输入你的电话！");

    document.getElementById("telphoto").focus();

    return false;

}

if(document.getElementById("eMail").value.indexOf("@")==-1) {

    alert("请输入你的E_mail或输入格式有误！");

    document.getElementById("email").focus();

    return false;

}

if(document.getElementById("tarName").value == "") {

    alert("请输入投诉对象名称");

    document.getElementById("tarName").focus();

    return false;

}

if(document.getElementById("tarContent").value == "" || document.getElementById("tarContent").value == "输入投诉内容（字数不限）") {

    alert("请输入投诉内容！");

    document.getElementById("tarContent").focus();

    return false;

}

}

function ckmsg () {

if(document.getElementById("tarContent").value == "输入投诉内容（字数不限）") document.getElementById("tarContent").value="";

}

</SCRIPT>

</head>

<body>

<s:include value="top.jsp"/>
<table  border="0" align="center" cellpadding="0" cellspacing="3"   width="980">
  <tr>
    <td align="left"> 
    当前频道：<s:property value="chanconfig.getChannelName()"/> 频道关键词：<s:property value="chanconfig.getKeyword()"/>
       
    </td>
  </tr>
  <tr>
   <td>&nbsp;</td>
  </tr>
</table>
 
<TABLE cellSpacing=1 cellPadding=10 width=980 align=center bgColor=#c0c0c0 border=0>
<TR align="center">
   <td width="155" height="140" background="images/tt.jpg" ></td>
   
    <TD  align=left bgColor=#f3f3f3><span class="STYLE4" >投诉须知： 
<BR>
        1、为了保障您的权益，请您在投诉时填写真实的资料，以便我们和您联系。<BR>
        2、如利用本网站投诉攻击其它人或者进行不正当的竞争，将受到法律的制裁。<BR>
        3、文明用语，请不要用一些不文明的语言。<BR>
        4、本站所有投诉信息均为网友（投诉者）个人意见，并不代表本站观点。<BR>
        5、标注 
    <FONT color=#ff0000>*</FONT> 为必填。</span></TD>
         
  </TR>
</TABLE>

 <TABLE width=980 border=0 align="center" cellPadding=10 cellSpacing=1>
   <FORM  name=form2  action="sendmail.jsp" method=post onSubmit="return check()" >
  <TR>
     <td width="123" height="25" >投诉者情况：</td>
    <td width="70">&nbsp;</td>
    <td width="543">&nbsp;</td>
  </TR>
  <TR bgcolor="#CCCCCC">
    <td colspan="2" align="right">
      姓名：<FONT color=#ff0000>*</FONT></td>
      <td align="left"><INPUT name=userName id=userName> </td>
      </TR>
      <TR >
       <td colspan="2" align="right">
      地址：<FONT color=#ff0000>*</FONT></td>
      <td  align="left"><input  name=address2  id=address2 /></td>
     </TR>
       <TR bgcolor="#CCCCCC">
    <td colspan="2" align="right"> Email:：<FONT color=#ff0000>*</FONT></td>
      <td  align="left"><INPUT name=eMail id=eMail> </td>
      </TR>
       <TR>
    <td colspan="2" align="right">联系电话：<FONT color=#ff0000>*</FONT></td> 
      <td  align="left"><INPUT maxlength=11 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=telphoto id=telphoto >
      <STRONG><FONT 
      color=#ff0000><BR>
        (填写联系电话请要写明区号与电话号码，方便工作人员联系您！)</FONT></STRONG></td>
         <TR bgcolor="#CCCCCC">
    <td colspan="2" align="right">投诉类别：<FONT color=#ff0000>*</FONT></td>
      <td  align="left"><SELECT name=className id=className> 
        <OPTION 
        selected>选择类别</OPTION>         
        <OPTION value=家居房产>家居房产</OPTION> 
        <OPTION value=建筑材料>建筑材料</OPTION> 
        <OPTION value=汽车汽配>汽车汽配</OPTION>          
        <OPTION value=装饰质量>装饰质量</OPTION>          
        <OPTION value=其它>其它</OPTION>
      </SELECT></td>
  </TR>
  <TR>
     <td width="123" height="26" >投诉对象情况：</td>
    <td width="70">&nbsp;</td>
    <td width="543">&nbsp;</td>
  </TR>
  <TR bgcolor="#CCCCCC">
    <td colspan="2" align="right">
      姓名：<FONT color=#ff0000>*</FONT></td>
      <td  align="left"><INPUT name=tarName id=tarName> </td>
      </TR>
      <TR>
       <td colspan="2" align="right">
      联系方式：</td>
      <td  align="left"><INPUT maxlength=11 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=tarAddress id=tarAddress> </td>
      </TR>
      
       <TR>
    <td colspan="2" align="right">投诉内容：<FONT color=#ff0000>*</FONT></td> 
      <td  align="left"><p><STRONG><FONT 
      color=#ff0000><BR>
        (请您认真填写，以便我们的核实！)</FONT></STRONG></p>
        <p>
           <TEXTAREA style="FONT-SIZE: 12px; FONT-FAMILY: '宋体'" onclick=ckmsg() name=tarContent id=tarContent rows=12 cols=80>输入投诉内容（字数不限）</TEXTAREA>
           </p></td>
           </TR>
            <tr bgcolor="#CCCCCC">
              <td colspan="3">&nbsp;</td>
            </tr>
            <TR>
    <TD align=center colspan="3"><br ><br ><span class="STYLE4">
      <INPUT class=btn type=submit value=提交 name=Submit2> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
      <INPUT class=btn type=reset value=重置 name=Submit2> 
    </span><br /><br /></TD>
  </TR>
    </FORM></TABLE>
<br>
<s:include value="Tail.jsp"/>
</body>
</html>