<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:property value="configBean.getSiteName()"/></title>
</head>

<body>
<s:include value="top.jsp"/>
<table width="920"  align="center" height="300" class="bigbord">
    
    <tr>
       <td  class="contain_table" >
    <div class="index_midle_table_bg">
  投票结果</div></td>
  </tr>
  
   <tr>
    <td colspan="2">
    
        <s:if test="getCurType()=='product'">
          <ul>
    <br>投票调查：
    

<s:set name="productId" value="getInfoMainId()"/>
<s:iterator value="getProductCurey(#productId)">
<li style="list-style:none;">
<input style="border:0px;" type="radio" name="ShowPageProductCurey" /><s:property value="getTitle()"/>  票数：<s:property value="getNum()"/>
<div style="background-color:#FF9900; height:25px; width:<s:property value="getNum()"/>px;"></div>
</li>
</s:iterator>





</ul>
<div align="center">
   <br><br> <br>  <a href="#" onclick="window.history.back(-1);">返回上页</a>&nbsp;&nbsp;<a href="index.html">返回首页</a>&nbsp;&nbsp;<a href="ThreadProduct_<s:property value="#productId"/>.html">返回商品</a></div>
    
        
        
        </s:if>
    <s:if test="getCurType()=='news'">
      <ul>
    <br>投票调查：
    

<s:set name="newsId" value="getInfoMainId()"/>
<s:iterator value="getNewsCurey(#newsId)">
<li style="list-style:none;">
<input style="border:0px;" type="radio" name="ShowPageProductCurey" /><s:property value="getTitle()"/>  票数：<s:property value="getNum()"/>
<div style="overflow:hidden; width:300px;"><div style="background-color:#FF9900; height:25px; width:<s:property value="getNum()"/>px;"></div></div>
</li>
</s:iterator>





</ul>
<div align="center">
   <br><br> <br>  <a href="#" onclick="window.history.back(-1);">返回上页</a>&nbsp;&nbsp;<a href="index.html">返回首页</a>&nbsp;&nbsp;<a href="ShowArticle_<s:property value="#newsId"/>.html">返回文章</a></div>
    
    
    
    </s:if>
        
  
    </td>
  </tr>
  </table>

<s:include value="buttom.jsp"/>
</body>
</html>
