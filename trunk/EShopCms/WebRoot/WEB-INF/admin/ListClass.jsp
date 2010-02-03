<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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




<table width="95%"  border="00" cellpadding="0" cellspacing="1" class="sortable" id="table">
<thead>
      <tr>
        <th>编号</th>
        <th>栏目名称</th>
        <th>预览</th>
        <th>删除</th>
        <th>预览</th>
        <th>修改</th>
      </tr>
    </thead>
    <tbody>
      <s:iterator value="%{ListAll(#request.channelId,0,1)}" status="ls">
       
        <tr style="border:1px #999999 double;">
          <td bgcolor="#ececec"><img src="img/tree_folder.gif" width="14" height="14">    <s:property  value="%{getClassId()}"/>        </td>
          <td ><s:property  value="%{getClassName()}"/>
  【一级】</td>
          <td><a href="../front/ShowClass_<s:property value="getClassId()"/>.html" target="_blank">预览</a>     </td>
          <!--删除标签-->
          <s:url id="deleurl" value="/admin/deleClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
          </s:url>
          <s:url id="seturl" value="/admin/modInitClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
          
          <s:url id="addChildurl" value="/admin/findClass.jspx">
            <s:param name="jeclass.parentId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.depth">
              <s:property  value="%{getDepth()}"/>
            </s:param>
            <s:param name="channelID">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
          <td bgcolor="#ececec"><s:a href="%{deleurl}" onclick="return confirm('确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td bgcolor="#ececec"><s:a href="%{addChildurl}">添加子栏目</s:a></td>
          <td bgcolor="#ececec"><s:a href="%{seturl}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a>          </td>
        </tr>
        
        <s:set name="cid" value="%{getClassId()}"></s:set>
        <s:set name="chan" value="#request.channelId"></s:set>
        <s:set name="crot" value="%{getDepth()+1}"></s:set>
        
        <s:iterator value="%{ListAll(#request.channelId,#cid,#crot)}">
        
        
                
                <s:url id="deleurl" value="/admin/deleClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
          </s:url>
          <s:url id="seturl2" value="/admin/modInitClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
          
          <s:url id="addChildurl1" value="/admin/findClass.jspx">
            <s:param name="jeclass.parentId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.depth">
              <s:property  value="%{getDepth()}"/>
            </s:param>
            <s:param name="channelID">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
        <tr style="border:1px #999999 double;">
          <td bgcolor="#ececec"><img src="img/tree_folder.gif" width="14" height="14"><s:property  value="%{getClassId()}"/></td>
          <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property  value="%{getClassName()}"/>【二级栏目】</td>
          <td><a href="../front/ShowClass_<s:property value="getClassId()"/>.html" target="_blank">预览 </a></td>
          <td bgcolor="#ececec"><s:a href="%{deleurl}" onclick="return confirm('确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td bgcolor="#ececec"><s:a href="%{addChildurl1}">添加子栏目</s:a></td>
          <td bgcolor="#ececec"><s:a href="%{seturl2}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
        </tr>
        
        
         <s:set name="cid" value="%{getClassId()}"></s:set>
        <s:set name="chan" value="#request.channelId"></s:set>
        <s:set name="crot" value="%{getDepth()+1}"></s:set>
        
         <s:iterator value="%{ListAll(#request.channelId,#cid,#crot)}" status="son">
         
              <s:url id="deleurl" value="/admin/deleClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
          </s:url>
          <s:url id="seturl2" value="/admin/modInitClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
          
          <s:url id="addChildurl1" value="/admin/findClass.jspx">
            <s:param name="jeclass.parentId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.depth">
              <s:property  value="%{getDepth()}"/>
            </s:param>
            <s:param name="channelID">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
          
           <tr >
          <td bgcolor="#ececec"><img src="img/tree_folder.gif" width="14" height="14"><s:property  value="%{getClassId()}"/></td>
          <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property  value="%{getClassName()}"/>【三级栏目】</td>
          <td><a href="../front/ShowClass_<s:property value="getClassId()"/>.html" target="_blank">预览</a> </td>
          <td bgcolor="#ececec"><s:a href="%{deleurl}" onclick="return confirm('确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td bgcolor="#ececec"><s:a href="%{addChildurl1}">添加子栏目</s:a></td>
          <td bgcolor="#ececec"><s:a href="%{seturl2}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
        </tr>
        
         <s:set name="cids" value="%{getClassId()}"></s:set>
                                  <s:set name="chans" value="%{getChannelId()}"></s:set>
                                  <s:set name="crots" value="%{getDepth()+1}"></s:set>
                                  <s:iterator value="%{ListAll(#request.channelId,#cids,#crots)}">
                                     <s:url id="deleurl" value="/admin/deleClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
          </s:url>
          <s:url id="seturl2" value="/admin/modInitClass.jspx">
            <s:param name="jeclass.classId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
          
          <s:url id="addChildurl" value="/admin/findClass.jspx">
            <s:param name="jeclass.parentId">
              <s:property  value="%{getClassId()}"/>
            </s:param>
            <s:param name="jeclass.depth">
              <s:property  value="%{getDepth()}"/>
            </s:param>
            <s:param name="channelID">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
            <tr >
          <td bgcolor="#ececec"><img src="img/tree_folder.gif" width="14" height="14"><s:property  value="%{getClassId()}"/></td>
          <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property  value="%{getClassName()}"/>【四级栏目】</td>
          <td><a href="../front/ShowClass_<s:property value="getClassId()"/>.html" target="_blank">预览</a> </td>
          <td bgcolor="#ececec"><s:a href="%{deleurl}" onclick="return confirm('确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td bgcolor="#ececec"><!--<s:a href="%{addChildurl1}">添加子栏目</s:a>-->不能分类</td>
          <td bgcolor="#ececec"><s:a href="%{seturl2}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
        </tr>
          </s:iterator>
         </s:iterator>
        </s:iterator>
        <!--显示二级栏目的地方-->
        

        <tr>
          <td colspan="6" align=center ><s:iterator value="%{ListAll(#request.channelId,#cid,#crot)}"></s:iterator>          </td>
        </tr>
  </s:iterator>
  </tbody>
</table>

<s:include value="button.jsp"/>

</body>
</html>
