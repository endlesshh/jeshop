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

    <s:set name="stylist" value="getListAll()"/>
     <s:set name="pagebean" value="getListAll()"/>
   
   
   <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

    
     
       <s:iterator  value="#stylist.list" status="style" >
       
       
      <s:if test="#style.index%3==0">
      
       <tr>      </s:if>
       
          <td align="center">
         
          
        
           
           <div>
        
           <br>
           <s:if test="getStylePic()!=null">
            <img style="padding:2px;border:1px #ececec outset;" src="../upfile/<s:property value="getStylePic()"/>" width="120" height="120" />          </div>
          
           </s:if>
           <s:else>
            <img style="padding:2px;border:1px #ececec outset;" src="../upfile/null.gif" width="120" height="120" />          </div>
          
           </s:else>
           <div style="background-image:url(images/indexChannelRight_06.gif); height:30px;padding-top:5px;">
         编号：<s:property value="getStyleId()"/>:<s:property value="getStyleShowName()"/>
          <div>
        
          <s:set name="tinfoId" value="getStyleName()"/>
     
          <s:property value="#infoId"/>
          <a href="modStyleName.jspx?styleId=<s:property value="getStyleId()"/>"> 修改</a>   <a href="deleteStyleName.jspx?styleId=<s:property value="getStyleId()"/>" onClick="return confirm('是否要删除该套模板？删除以后使用该模板用户将无法正常使用，已经使用该模板的客户可以正常使用','是否删除指定的模板')">删除</a> 路径：
          <s:property value="getStylePath()"/>
          
          <a href="modUserMuBan.jspx?filePath=<s:property value="getStylePath()"/>">修改模板文件</a>
          </div>      
          </div>
            </td>
       <s:if test="#style.index%3==2">
       
       </tr>
      
      </s:if>
        </s:iterator>
      </table>
      
      <br><br>
      <br>
      <div>
       
        共<s:property value="#pagebean.allRow"/> 条记录
        共<s:property value="#pagebean.totalPage"/> 页
        当前第<s:property value="#pagebean.currentPage"/>页
        
   <s:url id="ListNews" value="listStyleName.jspx">
  <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
  <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
          </s:param>
  </s:url>
  
        <s:if test="%{#pagebean.currentPage==1}">
            第一页 上一页        </s:if>
        <s:else>
            <s:url id="firstNews" value="listStyleName.jspx">
           <s:param name="page">1</s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{firstNews}">第一页</s:a>
              <s:url id="preNews" value="listStyleName.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage-1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{preNews}">上一页</s:a>
        </s:else>
        <s:if test="%{#pagebean.currentPage!=#pagebean.totalPage}">
          <s:url id="nextNews" value="listStyleName.jspx">
           <s:param name="page"><s:property value="%{#pagebean.currentPage+1}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="listStyleName.jspx">
           <s:param name="page"><s:property value="%{#pagebean.totalPage}"/></s:param>
           <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param></s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
        </s:if>
        <s:else>
          下一页 最后一页        </s:else>
      </div>
      
    
    

</body>

