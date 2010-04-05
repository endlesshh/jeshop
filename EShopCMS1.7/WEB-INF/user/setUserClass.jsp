<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <s:head />
 <link href="../skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>

<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">


		function slideToggle(){
$("#slidShow").slideToggle(500);
}

			

	
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
	padding:

}
.STYLE1 {
	color: #663333;
	font-weight: bold;
}
.STYLE2 {color: #009966}
.STYLE3 {color: #0066CC}
-->
</style></head>

<body>

    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
        <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;">
        
          <table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td colspan="8" align="left" valign="top"><input onClick="window.location.href='initchannel.jspx'" type="button" value="初始化原始频道......" style="border:1px #CCCCCC outset; vertical-align:middle;" onClick="alert('hello')" /></td>
  </tr>
  <tr>
    <td colspan="8" align="left" valign="top"><div align="center">网站频道显示管理</div></td>
    </tr>
    <form action="setUserchan.jspx" method="post">
  <tr>
    <td width="8%" height="30" align="center" valign="middle" class="guest_title_760">&nbsp;</td>
    <th width="9%" align="center" valign="middle" class="guest_title_760"><img src="images/li.gif" width="4" height="8">频道类型</th>
    <td width="8%" align="center" valign="middle" class="guest_title_760"><img src="images/li.gif" width="4" height="8">频道名称</td>
    <td width="13%" align="center" valign="middle" class="guest_title_760"><img src="images/li.gif" width="4" height="8">显示名称</td>
    <td width="31%" align="center" valign="middle" class="guest_title_760"><img src="images/li.gif" width="4" height="8">模板路径</td>
    <td width="15%" align="center" valign="middle" class="guest_title_760"><img src="images/li.gif" width="4" height="8">选择显示</td>
    <td width="9%" align="center" valign="middle" class="guest_title_760">删除自定义</td>
    <td width="7%" align="center" valign="middle" class="guest_title_760"><img src="images/li.gif" width="4" height="8">是否显示</td>
  </tr>
  <tr>
    <td align="left" valign="top" >&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
  <s:set name="lc" value="getlistchan(#session.user.getUserId())" />
  
  <s:iterator  value="#lc" status="chan" >
  <s:set name="infoId" value="getUserInfoId()"/>
  <tr >
    <td align="left" valign="middle" height="25" ><img src="images/page.gif">
    <input type="hidden" name="chanid"value="<s:property value="getUclassId()"/>" />
    
     <font color="#ff0000" ><em><s:property value="%{#chan.index+1}"/></em></font></td>
    <td align="center" valign="middle">
    <s:set name="ctyle" value="getCtype()"/>
    <s:if test="#ctyle==0">
      <span class="STYLE2">系统默认</span> </s:if> 
      <s:if test="#ctyle==1">
        <span class="STYLE3">自定义页面</span> </s:if>         </td>
    <td align="center" valign="middle"><s:property value="getCname()"/></td>
    <td align="center" valign="middle">
    <input type="text" name="ShowName" size="10" value="<s:property value="getShowName()"/>"/>    </td>
    <td align="center" valign="middle">/<s:property value="getStyleName()"/>/<s:property value="getShowLink()"/></td>
    <td align="center" valign="middle">
    <s:set name="pagelist" value="getPage(#session.user.userId)"/>
    
    <s:set name="cpid" value="getPageId()"/>
    
    <s:if test="#ctyle==1">
    
   
    <select name="pageid">
    <s:iterator value="#pagelist" status="tp" >
    <s:set name="ttpid" value="getPageId()"/>
    <option 
    <s:if test="#cpid==#ttpid">
    <s:property value="'selected'"/>
    </s:if>
     value="<s:property value="getPageId()"/>"><s:property value="getPageName()"/></option>
    </s:iterator>
    </select>
    </s:if>      </td>
    <td align="center" valign="middle">
     <s:if test="#ctyle==1">
     <a href="deleChan.jspx?chanId=<s:property value="getUclassId()"/>">
    <img border="0" src="images/pics/delete.gif" width="45" height="20"></a>    </s:if>    </td>
    <td align="center" valign="middle">
    <s:set name="ttIsShow" value="getIsShow()"/>
    <s:if test="#ttIsShow==1">
    <input type="checkbox" name="isShow" checked  value="<s:property value="getUclassId()"/>" />    </s:if>
    
    <s:else>
   <input type="checkbox" name="isShow" value="<s:property value="getUclassId()"/>" />    </s:else>       </td>
  </tr>
  </s:iterator>
  <tr>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
    <td align="left" valign="top" class="guest_title_760">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="8" align="left" valign="top"><div align="center">
      <input type="submit" value="保存频道" />
      
      <input type="button" value="刷新显示" />    
    </div></td>
    </tr>
  </form>
</table>

        <table width="100%" border="0" cellspacing="0" cellpadding="0" >
  
  <tr>
    <td width="100%" align="left" valign="top"><div align="center" onClick="javascript:slideToggle()" style="cursor:hand;">添加自定义频道</div></td>
    </tr>
    <form action="addUserChan.jspx" method="post">
 
  <tr >
  <tbody >
    <td align="left" valign="top">
    
    <div id="slidShow">频道名称：<input type="text" size="8" name="uname">&nbsp;显示名称：<input size="8" type="text" name="usname">
    &nbsp;选择自定义页面：
    <select name="upageid">
    <s:iterator value="getPage(#session.user.userId)" status="tp" >
    <s:set name="ttpid" value="getPageId()"/>
    <option 
    <s:if test="#cpid==#ttpid">
    <s:property value="'selected'"/>
    </s:if>
     value="<s:property value="getPageId()"/>"><s:property value="getPageName()"/></option>
    </s:iterator>
    </select>
    <input type="hidden" name="userInfoId" value="<s:property value="#infoId"/>"/>
    &nbsp;<input type="submit"  value="添加自定义频道" />
     
     
    </div>
    
   
    
    
    </td>
    </tbody>
  </tr>
  
  </form>
</table>
        
        
        
        
        
        
    </td>
    <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
      </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26" height="19"><img src="images/images/serch1_03.gif" width="26" height="19" /></td>
        <td background="images/images/uces_03.gif">&nbsp;</td>
        <td width="23" height="19" ><img src="images/images/leftSerch_03.gif" width="23" height="19" /></td>
      </tr>
  <tr>
    <td valign="top"><img src="images/images/leftuser_03.gif" width="26" height="141" /></td>
    <td align="left" valign="top" background="images/images/buttons_03.gif" style="background-repeat:repeat-x;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     
      <tr>
        <td colspan="2" align="center">
        <s:iterator  value="#lc" status="chanview" >
      
        <s:if test="getIsShow()==1">
        <span style="width:120px; padding-top:10px; text-align:center; vertical-align:middle; height:34px; background-image:url(images/channelOnMouse.gif)">
        
       <b>
       <s:if test="getCtype()==1">
       <a href="show_<s:property value="getPageId()"/>.html" > <font color="#ffffff">  <s:property value="getShowName()"/></font></a>
       </s:if>
       <s:else>
       <a href="<s:property value="getShowLink()"/>" > <font color="#ffffff">  <s:property value="getShowName()"/></font></a>
       </s:else>
       
       
       
       
       </b></span>
        </s:if>
        </s:iterator></td>
        </tr>
    
    </table></td>
        <td  width="23" height="136" align="left" valign="top" background="images/images/bubu1_03.gif"><img src="images/images/leftRinght_03.gif" width="23" height="136" /></td>
  </tr>
      <tr>
        <td><img src="images/images/cenerbutton_03.gif" width="26" height="16" /></td>
        <td background="images/images/heibut_03.gif">&nbsp;</td>
        <td><img src="images/images/butbut_03.gif" width="23" height="16" /></td>
      </tr>
<tr></tr>
</table>




</body>

