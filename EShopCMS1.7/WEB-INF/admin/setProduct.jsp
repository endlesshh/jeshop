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


        
        
        
        
        <form  action="SetProduct.jspx" method="post"> 
        <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

  <thead>
         <tr>
         <input type="hidden" name="productId" value="<s:property  value="%{product.getProductId()}"/>"/>
            <th colspan="2">推荐热卖设置</th>
            </tr>
         </thead> <tr>
            <td width="23%">是否推荐</td>
            <td width="77%">
            
            
             <s:set name="isE" value="%{product.getIsElite()}"/>
  
              <s:if test="#isE==0||#isE==null">
             不推荐 <input type="radio" name="isEs" value="0" checked />
              &nbsp;&nbsp;推荐<input type="radio" name="isEs" value="1" />
              </s:if>
              <s:else>
             不推荐  <input type="radio" name="isEs" value="0"  />
              &nbsp;&nbsp;推荐 <input type="radio" name="isEs" value="1" checked/>
              </s:else>
              
              
              </td>
          </tr>
         
          <tr>
            <td>是否热卖</td>
            <td> <s:set name="isS" value="%{product.getIsHot()}"/>
          
              <s:if test="#isS==0||#isS==null">
             不热卖  <input type="radio" name="isHot" value="0" checked />
              &nbsp;&nbsp;热卖 <input type="radio" name="isHot" value="1" />
              </s:if>
              <s:else>
           不热卖  <input type="radio" name="isHot" value="0"  />
              &nbsp;&nbsp;热卖 <input type="radio" name="isHot" checked value="1" />
              </s:else>
              
              
              </td>
          </tr>
         
          
          
         
        </table>
        
         <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

  <thead>
         <tr>
       
            <th colspan="2" bgcolor="#3BA9FE">商品生产日期和到期日期</th>
            </tr></thead>
          <tr>
            <td width="23%">出产日期</td>
            <td width="77%">
            <input type="text"  name="beginDate"  value="<s:date  name="%{product.getBeginDate()}"/>" readOnly onClick="setDay(this);">
            点击选择日期</td>
          </tr>
         
          <tr>
            <td>到期日期</td>
            <td> 
              <input type="text"  name="endDate" value="<s:date name="%{product.getEndDate()}"/>" readOnly onClick="setDay(this);">
              点击选择日期              </td>
          </tr>
          
          
          
         
        </table>
        
          <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

  <thead>
         <tr>
            <th colspan="2" bgcolor="#3BA9FE">虚拟商品下载地址</th>
            </tr></thead>
          <tr>
            <td width="23%">下载地址</td>
            <td width="77%">
            <input  name="downloadUrl" size="40" type="text"  value="<s:property  value="%{product.getDownloadUrl()}"/>
" > </td>
          </tr>
         
        
         
          
          
         
        </table>
          <table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">

  <thead>
         <tr>
       
            <th colspan="2" bgcolor="#3BA9FE">库存盘点</th>
            </tr></thead>
          <tr>
            <td width="23%">库存量盘点</td>
            <td width="77%">
            <input  name="productNum" value="<s:property  value="%{product.getProductNum()}"/>" type="text" size="10"  >
            当前库存</td>
          </tr>
         
          <tr>
            <td>库存量报警</td>
            <td> 
              <input  name="limitNum" type="text" value="<s:property  value="%{product.getLimitNum()}"/>" size="10" >
              库存量小于该值时候，系统提示进货</td>
          </tr>
           <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="保存设置" /></td>
          </tr>
          
          
         
        </table>
        
        
         </form>
        
        
        
        
        
        
      
<s:include value="button.jsp"/>
</body>
</html>
