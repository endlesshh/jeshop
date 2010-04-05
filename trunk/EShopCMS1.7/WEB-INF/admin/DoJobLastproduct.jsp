<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/jspx-tag" %>
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
	color:#0066FF;
	font-weight:bold;
	text-decoration: none;
}
a:visited {
	color: #666666;
	font-weight:bold;
	text-decoration: none;
}
a:hover {
	color: #666666;
	font-weight:bold;
	text-decoration: none;
}
a:active {
	color: #666666;
	font-weight:bold;
	text-decoration: none;
}
.contentpagelist
{
border:1px  #CCCCCC outset; padding:2px; margin:3px; width:20px; height:20px; margin-bottom:0px; cursor:hand;}
</style>
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript">


	function showPageList(id,allNum)
{
for(var i=1;i<=allNum;i++)
{
  if(i==id)
  {
  $("#page"+i).show();
  $("#contentpagelist"+i).css("color","red");
  $("#curpagelist").html("当前第"+i+"页");
  }else{
   $("#page"+i).hide();
   $("#contentpagelist"+i).css("color","black");
   }
}
}

	
</script>
</head>


<body>

   <s:set name="product"  value="listObject"/>

<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <thead> 
      
      <tr>
        <th colspan="6" class="nosort" ><s:property value="#product.getProductName()"/> (历史记录)</th>
      </tr>
  </thead> 
  <tr>
        <td >

  开始时间</td>
    <td >发送人</td>
        <td >审核者</td>
        <td >结束时间</td>
        <td >审核过程</td>
  </tr>
  <s:iterator value="ListHistory()">
   <tr>
        <td >

  <s:property value="getStartData()"/>

  
&nbsp;  </td>
        <td > <s:set name="userId" value="getUserId()"/> 
   <s:set name="sendId" value="getSendId()"/> 
   <s:set name="jobType" value="getJobType()"/>
   <s:property value="#sendId"/>
   <s:property value="#jobType"/>
  <s:if test="#jobType.equals('jobadminType')">
  ss
  <s:property value="%{findAdminName(#sendId)}"/>
  </s:if>
   <s:if test="#jobType.equals('jobusertype')">
  <s:property value="findUserName(#sendId)"/>
   </s:if>&nbsp;</td>
        <td ><s:property value="findAdminName(#userId)"/>&nbsp;</td>
        <td ><s:property value="getOverdata()"/>&nbsp;</td>
        <td ><s:property value="getBeizhu()"/>&nbsp;</td>
   </tr>
        </s:iterator>
        </table>


<!--文章类型审批审核任务处理-->
  <form action="doProductPassType.jspx" method="post">
   <input type="hidden" name="jobId" value="<s:property value="getJobId()"/>"/>
  <input type="hidden" name="productId" value="<s:property value="#product.getProductId()"/>"/>
  
  <s:show value="#product.getProductName()"/>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <thead> 
      
      <tr>
        <th colspan="2" class="nosort" ><s:property value="#product.getProductName()"/>(审核)</th>
      </tr>
  </thead>

  
  
     <tbody>
      <tr>
        <td  width="15%" >商品名称：</td>
        <td ><s:property value="#product.getProductName()"/></td>
      </tr>
          <tr>
        <td  width="15%" >简介：</td>
        <td ><s:set name="content" value="#news.getContent()"/>
      <s:property value="#product.getProductName()"/>     </td>
      </tr>
         <tr>
        <td  width="15%" >图片：</td>
        <td >
       <s:property value="configBean.InstallDir"/>
       <s:property value="getConfigBean()"/>
        <img width="300" src="../upfile/<s:property value="#product.getProductThumb()"/>" />             </td>
      </tr>
         <tr>
        <td  width="15%" >数量：</td>
        <td >
       <s:property value="#product.getProductNum()"/>  <s:property value="#product.getUnit()"/>      </td>
      </tr>
          <tr>
        <td  width="15%" >目前状态：</td>
        <td ><s:set name="status" value="#product.getStatus()"/>
        <s:if test="#status==null">
        起草状态        </s:if>
        <s:if test="#status==0">
        未审核        </s:if>
         <s:if test="#status==1">
        一审完成        </s:if>
         <s:if test="#status==2">
        二审完成        </s:if>            </td>
      </tr>
          
       
      <s:radio
            tooltip="需要审核"
            label="需要审核"
            list="#{'0':'需要审核', '1':'一审通过','2':'二审通过'}"
            name="passValue"
            listKey="key"
            listValue="value" 
            value="1"/>
         <tr><td align="right">选择流转审核人</td><td>
    <select name="adminId">
    <s:iterator value="listAdmin()">
    <option value="<s:property value="getAdminId()"/>"><s:property value="getUserName()"/></option>
    </s:iterator>
    </select>
    
    
    </td></tr>
    <input type="hidden" name="typeString" value="jobadminoductlist"/>
    <input type="hidden" name="jobType" value="jobadminType"/>
    <input type="hidden" name="sendId" value="<s:property value="#session.admin.adminId"/>"/>
  </tr>
    <s:radio
            tooltip="需要审核"
            label="需要审核"
            list="#{'0':'移交他人处理', '3':'回退发布者修改','1':'本审通过移交其他审核','2':'终审通过不移交','4':'不处理结束流程'}"
            name="status"
            listKey="key"
            listValue="value" 
            value="1"/>
            
              <tr>
        <td  width="15%" >&nbsp;</td>
        <td > <input type="submit" value="提交审核结果"/></td>
   </tr>
     </tbody>
</table>
</form>
 <!--审批审核处理结束-->
<s:include value="button.jsp"/>
</body>
</html>
