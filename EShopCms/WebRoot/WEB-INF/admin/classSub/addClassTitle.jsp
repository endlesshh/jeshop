<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

 <script type="text/javascript" src="js/keyS.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
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

<body>


        
        
        
        
        <form  action="addSubClassType.jspx" method="post">
          <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

  <thead>
         <tr>
       
            <th colspan="2" bgcolor="#3BA9FE">添加调查分类主题</th>
            </tr></thead>
          <tr>
            <td width="23%">调查分类</td>
            <td width="77%">一般网站调查<input type="radio" checked name="classType" value="0" />
            新的调查问卷<input type="radio" name="classType" value="10" />
            添加一个网站题库<input type="radio" name="classType" value="100" />            </td>
          </tr>
         
          <tr>
            <td>分类名称</td>
            <td><input type="text" size="40" name="className" /></td>
          </tr>
          <tr>
            <td>选择频道</td>
            <td><select name="channelId" >
            <option value="0">全局调查(不属于任何频道)</option>
            <s:iterator value="publicListAllChannel()">
            <option value="<s:property value="getChannelId()"/>"><s:property value="getChannelName()"/></option>
            </s:iterator>
            
            </select></td>
          </tr>
          <tr>
            <td>启用禁用</td>
            <td>启用<input type="radio" checked name="enable" value="0" />
            禁用<input type="radio" name="enable" value="1" /></td>
          </tr>
          <tr>
            <td>开始时间</td>
            <td><input type="text" size="20" name="starttime" readOnly onClick="setDay(this);"/></td>
          </tr>
          <tr>
            <td>结束时间</td>
            <td><input type="text" size="20" name="endtime" readOnly onClick="setDay(this);"/></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="添加" /></td>
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
