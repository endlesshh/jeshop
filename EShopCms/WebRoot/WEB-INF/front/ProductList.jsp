<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品搜索</title>
</head>

<body>

   <s:include value="top.jsp"/>
    
   <table width=800 border="0" cellspacing="0" cellpadding="10" align="center">
   <form action="productSearchAPI.jspx" method="post" name="from">
  <TR>
     <td width="123" height="25" >商品搜索：</td>
    <td width="70"><input type="hidden" name="linkurl" value="ShowList.jsp"/></td>
    <td width="543">&nbsp;</td>
  </TR>
  <TR>
    <td colspan="2" align="right">
      关键字：</td>
      <td align="left"><input type="text" name=product.keyword  id=keyword /> </td>
      </TR>
      <TR >
       <td colspan="2" align="right">名称：</td>
      <td  align="left"><input  name=product.productName  id=productName /></td>
     </TR>
       <TR>
    <td colspan="2" align="right"> 类型：</td>
      <td  align="left"><s:property escape="false" value="getClassAll(1053,10)"/></td>
      </TR>
       <TR>
    <td colspan="2" align="right">品牌：</td> 
      <td  align="left"><INPUT  name=product.tradeMarkName id=tradeMarkName />
      <STRONG><FONT 
      color=#ff0000><BR>
      </FONT></STRONG></td>
         <TR>
    <td colspan="2" align="right">价格：</td>
      <td  align="left">最低价<INPUT value=0  maxlength=5 onKeyUp="this.value=this.value.replace(/\D/g,'')"  name=minPrice id=minPrice size="5" />
         <select onchange="document.getElementById('minPrice').value=this.value">
      <option value="0">0</option>
      <option value="10">10</option>
      <option value="15">15</option>
      <option value="20">20</option>
      <option value="25">25</option>
      <option value="40">40</option>
      <option value="100">100</option><option value="150">150</option>
      <option value="200">200</option>
      </select>最高价<INPUT   maxlength=7 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=maxPrice id=maxPrice size="5" value="500" /><select onchange="document.getElementById('maxPrice').value=this.value">
      <option value="500">500</option>
      <option value="600">600</option>
      <option value="650">650</option>
      <option value="700">700</option>
      <option value="750">750</option>
      <option value="800">800</option>
      <option value="850">850</option><option value="950">950</option>
      <option value="1000">1000</option>
      </select></td>
  </TR>
      <TR>
       <td colspan="2" align="right">条形码：</td>
      <td  align="left"><INPUT maxlength=11 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=product.barCode id=barCode /> </td>
      </TR>
            <tr >
              <td colspan="2" align="right">显示方式：</td>
              <td  align="left">
                <p>
                  <label>
                  <input type="radio" checked="checked"  name="showType" value="0" id="showType" />
                    从低到高</label>
                  <br />
                  <label>
                  <input type="radio" name="showType" value="1" id="showType" />
                   从高到低</label>
                  <br />
                </p></td>
            </tr>
            <TR>
    <TD align=center colspan="3"><br ><br ><span class="STYLE4">
      <INPUT  type=submit value=搜索 name=Submit2> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
      <INPUT  type=reset value=重置 name=Submit2> 
    </span><br /><br /></TD>
  </TR>
    </FORM></TABLE>
    
    
<s:include value="Tail.jsp"/>
</body>
</html>
