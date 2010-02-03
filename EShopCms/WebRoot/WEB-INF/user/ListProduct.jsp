<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css">
 
</head>

<body>
<script LANGUAGE="javascript" src="js/kb.js">
<!--

//-->
</script> 

<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17" height="19"><img src="images/images/userLoginAndLeft_03.gif" width="17" height="19" /></td>
        <td background="images/images/userTopCenter_03.gif"></td>
        <td  width="25" height="19"><img src="images/images/userTopRigth_03.gif" width="25" height="19" /></td>
      </tr>
      <tr>
        <td align="left" valign="top"><img src="images/images/userCenterLeft_03.gif" width="17" height="211" /></td>
        <td align="left" valign="top" background="images/images/userCenterMainBg_03.gif" style="background-repeat:repeat-x;">
        <table width="100%" border="00" cellspacing="1" cellpadding="0" >
      <tr>
        <td height="25" colspan="10" align="center"   ><span class="STYLE1">
          <s:property value="%{getChannelName()}"/>
          商品管理</span>
        
          </td>
      </tr>
      <tr>
        <td width="2%" class="guest_title">&nbsp;</td>
        <td width="7%" class="guest_title">缩略图</td>
        <td width="8%" class="guest_title">商品编号</td>
        <td width="32%" class="guest_title">商品名称</td>
        <td width="8%" class="guest_title">商品分类</td>
        <td width="9%" class="guest_title">商品数量</td>
        <td width="26%" class="guest_title">状态</td>
        <td width="3%" class="guest_title">删除</td>
        <td width="1%" class="guest_title">&nbsp;</td>
        <td width="4%" class="guest_title">修改</td>
      </tr>
    
       <s:set name="temchannelId" value="getChannelId()"/>
       <s:set name="prlist" value="null"/>
       <s:set name="pagebean" value="ShowUserShowListProduct(#temchannelId,#session.user.getUserId())"/>
       <s:set name="prlist" value="ShowUserShowListProduct(#temchannelId,#session.user.getUserId())"/>
      <s:form name="form" action="/user/deleProduct.jspx" method="post" theme="simple">
         <s:hidden name="channelId" value="%{getChannelId()}"/>
      <s:iterator value="#prlist.list" status="listjeannounce">
  
        <tr>
        <s:set name="picurl" value="getProductThumb()"></s:set>
        
          <td class="tdbg5"><input type="checkbox" name="deleID" value="<s:property value="getProductId()"/>"></td>
          <td class="tdbg5">
          <s:if test="#picurl!=null">
          <img   style="padding:3px;" src="../upfile/<s:property value="getProductThumb()"/>" width=80 height="80"/>
          </s:if>
          <s:else>
          <img style="padding:3px;" src="../configfile/null.gif" title="header=[] body=[<img src=../configfile/null.gif/>]" width=80 height="80"/>
          </s:else>
          
          </td>
          <td class="tdbg5"><s:property value="getBarCode()"/></td>
          <td class="tdbg5"><s:property  value="%{getProductName()}"/>
            【
                <s:set name="pid" value="%{getProducerId()}"></s:set>
                <s:set name="cid" value="%{getClassId()}"></s:set>
                <s:if test="#pid==0">
                本站供货
                </s:if>
                 <s:else>
                <s:property value="getProducerName(#pid)"/>
                </s:else>
                
               
            】</td>
          <td class="tdbg5">
          
           <s:if test="#cid==0">
               频道栏目
                </s:if>
                 <s:else>
                <s:property value="getClassName(#cid)"/> 
                </s:else>
                  </td>
          <td class="tdbg5"><s:property value="getProductNum()"/>
                <s:property value="getUnit()"/>          </td>
         
          <s:url id="addnewurl" value="/user/addproPhoto.jspx">
           <s:param name="product.productId">
              <s:property  value="%{getProductId()}"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
          </s:url>
        
          
          <td class="tdbg5"><!--<s:a href="addnewurl">添加图片</s:a>-->
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
          
          
          
          <tr>
              <td width="26%">
              <s:set name="isE" value="%{getIsElite()}"/>
  
              <s:if test="#isE==0||#isE==null">
             不推荐
              </s:if>
              <s:else>
            <font color="#FF0000"> <b>推荐</b></font>
              </s:else>
              
                </td>
              <td width="25%">
               <s:set name="isS" value="%{getIsHot()}"/>
          
              <s:if test="#isS==0||#isS==null">
            非热卖
              </s:if>
              <s:else>
            <font color="#FF0000"> <b>热卖</b> </font>
              </s:else>
              </td>
             
            </tr>
            
            
          </table>
          
          
          
          
          
          </td>
          <!--删除标签-->
          <s:url id="deleurl" value="/user/deleProduct.jspx">
            <s:param name="product.productId">
              <s:property  value="%{getProductId()}"/>
            </s:param>
             <s:param name="userId">
              <s:property value="%{#session.user.userId}"/>
            </s:param>
          </s:url>
          <s:url id="seturl" value="/user/initMod.jspx">
            <s:param name="product.productId">
              <s:property  value="%{getProductId()}"/>
            </s:param>
            <s:param name="channelId">
              <s:property value="%{#request.channelId}"/>
            </s:param>
            <s:param name="userId">
              <s:property value="%{#session.user.userId}"/>
            </s:param>
          </s:url>
          <td class="tdbg5"><s:a href="%{deleurl}" onclick="return confirm('删除数据后不可以恢复！确定要删除吗?')"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a></td>
          <td class="tdbg5">&nbsp;</td>
          <td class="tdbg5"><s:a href="%{seturl}"><img src="images/pics/mod.gif" width="45" border="0" height="20"></s:a></td>
        </tr>
      </s:iterator>
      <tr>
      <script language='javascript'>
      function newsub()
      {
      if(confirm('删除数据后不可以恢复！确定要删除吗?')){document.form.submit();}else{return false;}
      }
      </script>
        <td colspan="10" align=center height=20><s:a href="#" onclick="return newsub()"><img src="images/pics/delete.gif" width="45" height="20" border="0"></s:a>    </td>
      </tr>
      </s:form>
      <tr>
        <td colspan="10" align=center> 共
              <s:property value="#pagebean.allRow"/>
          条记录
          共
          <s:property value="#pagebean.totalPage"/>
          页
          当前第
          <s:property value="#pagebean.currentPage"/>
          页
          <s:url id="ListNews" value="/user/ListProduct.jspx">
            <s:param name="page">
              <s:property value="%{pagebean.currentPage+1}"/>
            </s:param>
            <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
          </s:url>
          <s:if test="%{#pagebean.currentPage==1}"> 第一页 上一页 </s:if>
          <s:else>
            <s:url id="firstNews" value="/user/ListProduct.jspx">
              <s:param name="page">1</s:param>
               <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
            </s:url>
            <s:a href="%{firstNews}">第一页</s:a>
            <s:url id="preNews" value="/user/ListProduct.jspx">
              <s:param name="page">
                <s:property value="%{#pagebean.currentPage-1}"/>
              </s:param>
               <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
            </s:url>
            <s:a href="%{preNews}">上一页</s:a>
          </s:else>
          <s:if test="%{#pagebean.currentPage!=pagebean.totalPage}">
            <s:url id="nextNews" value="/user/ListProduct.jspx">
              <s:param name="page">
                <s:property value="%{#pagebean.currentPage+1}"/>
              </s:param>
               <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
            </s:url>
            <s:a href="%{ListNews}">下一页</s:a>
            <s:url id="nextNews" value="/user/ListProduct.jspx">
              <s:param name="page">
                <s:property value="%{#pagebean.totalPage}"/>
              </s:param>
               <s:param name="userId">
            <s:property value="%{#session.user.getUserId()}"/>
            </s:param>
            </s:url>
            <s:a href="%{nextNews}">最后一页</s:a>
          </s:if>
          <s:else> 下一页 最后一页 </s:else></td>
      </tr>
    
      <tr>
     
    </table>
        
        
        
        
        </td>
        <td align="left" valign="top" background="images/images/userrightLeftBg_03.gif"><img src="images/images/userRightMainRight_03.gif" width="25" height="190" /></td>
      </tr>
      <tr>
        <td><img src="images/images/userLeftButtomLeft_07.gif" width="17" height="18" /></td>
        <td background="images/images/userButtomomom_07.gif"></td>
        <td><img src="images/images/userbutomRight_09.gif" width="25" height="18" /></td>
      </tr>
</table>

</body>
</html>
