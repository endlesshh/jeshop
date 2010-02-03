<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <s:head /><script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>


 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{

	$('#mede').xheditor(true,{tools:'full',uploadUrl:"uptofile.jspx",uploadExt:"jpg,jpeg,gif,png"});
	}
</script>

<title><s:property value="#session.recode" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
<script language="javascript">
function check()
{
if($("#softName").val()==null)
{
alert('软件名称不能为空');
return false;
}


}
</script>

</head>

<body>
<form action="addSoft.jspx" method="post" onSubmit="return check()">
<table  border="0" cellpadding="0" cellspacing="0" id="table" class="sortable">
     <thead>
  <tr>
    <th colspan="2">添加软件</th>
    </tr>
  <tr>
    <td width="18%">软件名称</td>
    <td width="82%"><input type="text" name="softName" id="softName" /></td>
  </tr>
  <tr>
    <td>软件版本</td>
    <td><input type="text" name="softVersion"  size="15"/></td>
  </tr>
  <tr>
    <td>软件作者</td>
    <td><input type="text" name="author" size="15" /></td>
  </tr>
  <tr>
    <td>软件来源</td>
    <td><input type="text" name="copyFrom" /></td>
  </tr>
  <input type="hidden" name="channelId" value="<s:property value="#request.channelId"/>" />
  <tr>
    <td>软件分类</td>
    <td><select name="classId">
           <!--  -->
           <option value="0">不属于任何栏目属于频道</option>
           
            <s:iterator value="%{ListAllClass(#request.channelId,0,1)}" status="ones">
            <!-- 一级栏目 -->
            <option value="<s:property value="getClassId()"/>"><s:property value="getClassName()"/></option>
            
            
                    <!-- 二级栏目 -->
                     <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelId,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                     
                     
                     <!-- 显示三级栏目 -->
                     
                     
                      <s:set name="parID" value="getClassId()"></s:set>
                     <s:set name="depth" value="getDepth()+1"></s:set>
                     <s:iterator value="%{ListAllClass(#request.channelId,#parID,#depth)}" status="ones">
            <option value="<s:property value="getClassId()"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="getClassName()"/></option>
                 
                             <!-- 显示四级栏目 -->


											<s:set name="parID" value="getClassId()"></s:set>
											<s:set name="depth" value="getDepth()+1"></s:set>
											<s:iterator
												value="%{ListAllClass(#request.channelId,#parID,#depth)}"
												status="ones">
												<option value="<s:property value="getClassId()"/>">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<s:property value="getClassName()" />
												</option>
											</s:iterator>



											<!-- 显示四级栏目 -->
                     </s:iterator>
                     
                     
                     
                     
                     
                     <!-- 显示三级栏目 -->
                     </s:iterator>
                    <!-- 二级栏目结束 -->
            </s:iterator>
            </select></td>
  </tr>
  <tr>
    <td>选择显示模板</td>
    <td>
     <select name="linkurl" >
              <s:iterator value="ml_listShowSoft">
              <option value="<s:property value="toString()"/>"><s:property value="toString()"/></option>
        
              </s:iterator>
           </select>
    
    </td>
  </tr>
  <tr>
    <td>软件演示地址</td>
    <td><input type="text" name="demoUrl" size="40" /></td>
  </tr>

  <tr>
    <td>软件关键词</td>
    <td><input type="text" name="keyword" /></td>
  </tr>
  <tr>
    <td>选择运行操作系统</td>
    <td>
    <select name="operatingSystem">
    <option value="windows2000/windows2003/windowsXP/windowsVisita/">windows2000/windows2003/windowsXP/windowsVisita/</option>
     <option value="linux">linux及其他系列</option>
    </select>    </td>
  </tr>
  <tr>
    <td>软件类型</td>
    <td><select  name="softType"><option value="国产软件">国产软件</option>
    <option value="国外软件">国外软件</option>
    <option value="开源软件">开源软件</option></select></td>
  </tr>
  <tr>
    <td>软件语言</td>
    <td><select name="softLanguage" ><option value="中文简体">中文简体</option>
    <option value="中文繁体">中文繁体</option>
    <option value="英文">英文</option></select></td>
  </tr>
  <tr>
    <td>软件版权类型</td>
    <td>免费<input type="radio" name="copyrightType" checked value="免费软件" />&nbsp;&nbsp;&nbsp;收费<input type="radio" name="copyrightType" value="收费软件" /></td>
  </tr>
  <tr>
    <td>软件大小</td>
    <td><input type="text" name="softSize" value="0" />  请填写数字否则默认为零</td>
  </tr>
  <tr>
    <td>软件注册地址</td>
    <td><input type="text" name="regUrl"  size="40" value="http://...."/></td>
  </tr>
  <tr>
    <td>是否推荐软件</td>
    <td>推荐软件<input type="radio" name="elite" value="0" />&nbsp;不推荐<input checked type="radio" name="elite" value="1" /></td>
  </tr>
  <tr>
    <td>软件解压密码</td>
    <td><input type="text" name="decompressPassword" /></td>
  </tr>
  <tr>
    <td>软件截图地址：</td>
    <td><input type="text" id="filename" size="40" name="softPicUrl" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><iframe align=left width="400" height="60" src="upfilesingle.jspx" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"
 style="border:0px;">
 </iframe></td>
  </tr>
  <tr>
    <td>软件简介</td>
    <td><textarea cols="40" id="mede" rows="5"></textarea></td>
  </tr>
  <tr>
    <td>下载地址</td>
    <td><input type="text" size="40" name="downloadUrl" value="http://" /></td>
  </tr>
  
   <tr><td align="right">选择审核人</td><td>
    <select name="adminId">
    <s:iterator value="getAdminList()">
    <option value="<s:property value="getAdminId()"/>"><s:property value="getUserName()"/></option>
    </s:iterator>
    
    
    </select>
    
    
    </td></tr>
    <input type="hidden" name="typeString" value="jobadminsoft"/>
    <input type="hidden" name="jobType" value="jobadminType"/>
    <input type="hidden" name="sendId" value="<s:property value="#session.admin.adminId"/>"/>
  </tr>
    <s:radio
            tooltip="需要审核"
            label="需要审核"
            list="#{'0':'需要审核', '1':'一审通过','2':'二审通过'}"
            name="status"
            listKey="key"
            listValue="value" 
            value="1"/>

  
  
  
  
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit"  value="提交新的软件" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</form>
<s:include value="button.jsp"/>
</body>
</html>
