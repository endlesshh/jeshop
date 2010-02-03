<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
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

.sortable {width:980px; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
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
    <s:iterator value="resTitle" status="ls">
    <br>
    <font color="#663300" style="font-size:14px;"><b>
    <s:property value="#ls.index+1"/>
    </b></font>
    <s:property value="getTitle()" escape="false"/><br>
         
        <s:set name="id" value="getId()"/>
       <s:set name="ctype"  value="%{getType()}"/>   
       <s:if test="#ctype==4">
       【简答】
       </s:if>    
       <s:else>
         <s:iterator value="getListAnswer(#id)" status="ans">
         
         <li style="list-style-type:none;">
          <s:if test="#ctype==0">   <input  type="radio" name="Servey_<s:property value="#id"/>" /><s:property escape="false" value="getContent()"/></s:if>
          <s:if test="#ctype==1">   <input  type="checkbox" name="Servey_<s:property value="#id"/>" /><s:property escape="false" value="getContent()"/></s:if>
          <s:if test="#ctype==2">  
           <s:if test="getType()==0">
             <input type="radio" value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].ansId" />
              <s:property value="getContent()" escape="false"/>
             </s:if>
              <s:if test="getType()==4">
               <s:property value="getContent()" escape="false"/>
                【简答】
             </s:if>
          
          
          
          </s:if> 
          <s:if test="#ctype==3">   <s:if test="getType()==0">
             <input type="checkbox" value="<s:property value="getId()"/>" name="ansList[<s:property value="#ls.index"/>].mitId" />
              <s:property value="getContent()" escape="false"/>
             </s:if>
              <s:if test="getType()==4">
               <s:property value="getContent()" escape="false"/>
             【简答】
             </s:if>
             
             </s:if> 
          <span style="height:22px; text-align:left; margin:3px; width:150px;background-image:url(images/servey-back.jpg); background-position:bottom; border: 1px #ececec outset;">
          <s:set name="tid" value="getId()"/>
          <span style=" background-image:url(images/servey-back.jpg);width:<s:property value="getSubAmount()"/>;  height:100%;">
          
          <s:property value="getSubAmount()"/>/<s:property value="getAllsubNum(#tid)"/>
          </span>
          
          </span>
          
          
          </li>
     </s:iterator>
       </s:else> 
    </s:iterator>
    <br>


    </div>
    
<s:include value="button.jsp"/>
</body>
</html>
