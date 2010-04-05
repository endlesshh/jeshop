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
<!--  
<s:iterator value="jechanclassdao.findAll()" status="chan">
<s:property value="%{getChanName()}" /><s:property value="%{getChanClassId()}" />

</s:iterator>-->
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
   <thead>
      <tr>
        <th>排序</th>
        <th>状态</th>
        <th>名称</th>
        <th>英文名</th>
    
        <th>删除</th>
        <th>排序</th>
        <th>子频道</th>
        <th>频道</th>
      </tr></thead>
   
      <s:iterator value="pagebean.list" status="chan">
        <tr>
          <td><s:property  value="%{getChannelId()}"/></td>
          <td><s:set name="isab" value="%{getDisabled()}"></s:set>
                <s:if test="#isab==1"> <font color="#FF0000">频道禁止</font> </s:if>
                <s:else> <font color="#009900">频道开通</font> </s:else>          </td>
          <td>
          <a target="_blank" href="../front/Channel_<s:property  value="%{getChannelId()}"/>.html" >
          <s:property  value="%{getChannelName()}"/>
          </a>
          
          </td>
          <td>
          <s:set name="mtype" value="%{getModuleType()}"></s:set>
           <s:if test="#mtype==1">
           【图文频道】           </s:if>
           <s:if test="#mtype==2">
           【商城频道】           </s:if>
           <s:if test="#mtype==3">
           【软件频道】           </s:if>          </td>
       
          
         <!--删除标签-->
         <s:url id="deleurl" value="/admin/deleChannel.jspx">
            <s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
        </s:url>
            <s:set name="cid"  value="%{getChannelId()}"/>
          
          
          
          
          <td>
          
         
          
           <s:a href="%{deleurl}" onclick="return confirm('确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a>                </td>
          <form action="oderChannel.jspx" method="post" onSubmit="return confirm('确定要排序吗?')"><td>
          
          <input type="hidden" name="channelId" value="<s:property  value="%{getChannelId()}"/>"/>
          <input type="text" size="3" name="orderNum" value="<s:property  value="%{getOrderId()}"/>"/>
          <input type="submit" value="排序"/>
          
          
          
          
          </td></form>
          <s:url id="addchildClass" value="/admin/findClass.jspx">
          <s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
          </s:url>
          <td><s:a href="%{addchildClass}"><img src="images/pics/add.gif" width="74" border="0" height="20"></s:a></td>
          <td>
        
        
          <s:url id="modChanClass" value="/admin/modChannel.jspx">
          <s:param name="channelId"><s:property  value="%{getChannelId()}"/></s:param>
          </s:url>
            <s:a href="%{modChanClass}" onclick="return confirm('确定要修改本频道吗?')"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a>
                  </td>
        </tr>
      </s:iterator>
    
        <td colspan="9" align=center>
       
         
        共<s:property value="pagebean.allRow"/> 条记录
        共<s:property value="pagebean.totalPage"/> 页
        当前第<s:property value="pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="/admin/adminChannel.jspx">
  <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
  </s:url>
  
        <s:if test="%{pagebean.currentPage==1}">
            第一页 上一页
        </s:if>
        <s:else>
            <s:url id="firstNews" value="/admin/adminChannel.jspx">
           <s:param name="page">1</s:param>
           </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="/admin/adminChannel.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage-1}"/></s:param>
           </s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{pagebean.currentPage!=pagebean.totalPage}">
          <s:url id="nextNews" value="/admin/adminChannel.jspx">
           <s:param name="page"><s:property value="%{pagebean.currentPage+1}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/admin/adminChannel.jspx">
           <s:param name="page"><s:property value="%{pagebean.totalPage}"/></s:param>
           </s:url>
            <s:a href="%{ListNews}">最后一页</s:a>
            
        </s:if>
        <s:else>
            下一页 最后一页
        </s:else>
        </td>
        </tr>
    

    </table>
<s:include value="button.jsp"/>
</body>
</html>
