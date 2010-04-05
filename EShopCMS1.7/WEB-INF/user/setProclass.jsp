<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <s:head />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		function slideToggle(){
$("#slidShow").slideToggle(500);
}

			

	
</script>
<link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
	padding:

}
.STYLE1 {
	color: #663333;
	font-weight: bold;
}
.STYLE2 {color: #009966}
.STYLE3 {color: #0066CC}
a:link {
	color: #006699;
}
a:visited {
	color: #006699;
}
a:hover {
	color: #FF0000;
}
a:active {
	color: #006699;
}
-->
</style></head>

<body>

    <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
        
          <table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td align="center" valign="top" class="guest_title_760">商品显示分类列表</td>
  </tr>
  
  <tr>
    <td align="left" valign="top">
    
     <s:set name="lc" value="getuserclass(#session.user.getUserId())" />
  

 
    
    <table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td width="29%" class="guest_title">栏目名称</td>
        <td width="20%" class="guest_title">栏目图标</td>
        <td width="28%" class="guest_title">提示文字</td>
        <td width="11%" class="guest_title">修改</td>
        <td width="12%" class="guest_title">删除</td>
      </tr>
       <s:iterator  value="#lc" status="chan" > <tr>
       <form name="proset_<s:property value="#chan.index"/>" action="moduserclass.jspx" method="post"> <td style="padding:5px;">
       <input type="hidden" name="uclassId" value="<s:property value="getUpclassId()"/>"/>
       原始名称：<s:property value="getClassOriName()"/>
       <input type="text" name="className" value="<s:property value="getClassName()"/>"/></td>
        <td><img  height="50" src="../upfile/<s:property value="getLinkurl()"/>"/>        </td>
        <td><input type="text" name="altname" value="<s:property value="getAltName()"/>"/>
        <br><input name="filename1" id="ft" type="text" value="<s:property value="getLinkurl()"/>"/>        </td>
        <td><input type="submit" value="确认修改" /></td>
        <td><a href="deleUserClass.jspx?uclassId=<s:property value="getUpclassId()"/>" onClick="return confirm('是否确认删除该类 删除后不能恢复');">删除分类</a></td>
       </form>
      </tr>
       </s:iterator>
      <tr>
        <td width="29%" class="guest_title">&nbsp;</td>
        <td width="20%" class="guest_title">&nbsp;</td>
        <td width="28%" class="guest_title">&nbsp;</td>
        <td width="11%" class="guest_title">&nbsp;</td>
        <td width="12%" class="guest_title">&nbsp;</td>
      </tr>
    </table>
    
 
    
    </td>
  </tr>
 
  <tr>
    <td width="100%" align="left" valign="top"><div align="center">
      <form action="addUserClass.jspx" method="post"><table width="80%" border="0" align="center" cellpadding="0" cellspacing="3" style="margin:5px; border:1px #663300 outset;">
        <tr>
          <td>&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td width="23%">选择大分类</td>
          <td width="77%" colspan="2">
          
          <s:set name="cl" value="getbigClass(1,0)"/>
          <select name="oldClassId"  >
           
           <s:iterator value="#cl">
           <s:set name="cid" value="getClassId()"/>
           <option value="<s:property value="getClassId()"/>" ><s:property value="getClassName()"/></option>
          
            <s:set name="clTwo" value="getbigClass(1,#cid)"/>
            
            <s:iterator value="#clTwo">
            <option value="<s:property value="getClassId()"/>" >&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
            
              <!--三家分类-->
            <s:set name="cidt" value="getClassId()"/>
            <s:set name="clthree" value="getbigClass(1,#cidt)"/>
            <s:iterator value="#clthree">
            <option value="<s:property value="getClassId()"/>" >&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
            </s:iterator>
            
            
            
            </s:iterator>
            
           
           
           </s:iterator>
          </select></td>
        </tr>
        <tr>
          <td>显示商品分类名称</td>
          <td colspan="2"><input id='pcname' type="text" name="className" /></td>
        </tr>
      
        <tr>
          <td>提示文字</td>
          <td colspan="2"><input name="altname" type="text" size="40" /></td>
        </tr>
        <tr>
          <td>栏目图标</td>
          <td colspan="2"><input type="text" name="filename" size="40" value="" id="filename"/></td>
        </tr>
       
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
        </tr>
         <tr>
           <td>&nbsp;</td>
           <td colspan="2">&nbsp;</td>
         </tr>
         <tr>
          <td>&nbsp;</td>
          <td colspan="2"><input type="submit" value="添加自定义栏目"/></td>
        </tr>
      </table>
      </form>
    </div></td>
    </tr>
    <form action="setUserchan.jspx" method="post">
  <s:set name="lc" value="getlistchan(#session.user.getUserId())" />
  
  <s:iterator  value="#lc" status="chan" >
  <s:set name="infoId" value="getUserInfoId()"/>
  </s:iterator>
  </form>
</table>

     
        
        
        
        
    </td>
    <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
      </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>
<div style="height:300px;"></div>

</body>

