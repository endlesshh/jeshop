<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="skin/DefaultSkin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../jQuery/jquery/jquery-1.3.2.mini.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
 <script type="text/javascript"  src="../jQuery/xheditor.js">
		</script>
<script type="text/javascript">

var editor;
$(pageInit);

function pageInit()
{
	editor = $('#content').xheditor(true,{tools:'mini'})[0].xheditor;
	}
	

		function slideToggle(){
$("#slidShow").slideToggle(500);
}

			

	
</script>
    <font color="#FF3300"><s:property value="getErrMsg()"/></font>
    <s:url id="ac" value="/front/addComment.jspx"></s:url>
  <s:form name="form" action="/front/addComment.jspx" onsubmit="return chechSub()" method="post">

  <tr>
    <td colspan="2" align="center">发表留言评论 </td>

   </tr>
   
   <s:if test="#session.user!=null">
      <s:hidden name="jecomment.userType" value="%{#session.user.userId}"/>
    </s:if>
   <s:else>
   <s:hidden name="jecomment.userType" value="0"/>
   </s:else>
   <s:if test="#request.ModuleType==null">
   <input type="hidden" name="jecomment.ModuleType" value="0" />
   </s:if>
   <s:else>
   <input type="hidden" name="jecomment.ModuleType" value="<s:property value="%{#request.ModuleType}"/>" />
   </s:else>
   
   
   <s:set name="infoId" value="#request.infoId"></s:set>
   <s:if test="#infoId==null">
   <input type="hidden" name="jecomment.infoId" value="0" />
   </s:if>
   <s:else>
   <input type="hidden" name="jecomment.infoId" value="<s:property value="#infoId"/>" />
   </s:else> 
   
    <tr>
    <td width="18%">您的QQ:</td>
    <td width="82%">
    
    <input id="name" type="text" name="jecomment.qq" size="20"  style="border:1px #999999 outset;"/>
    
    </td>
  </tr>
   
  <tr>
    <td width="18%">您的名称：</td>
    <td width="82%">
    <input id="name" type="text" name="jecomment.userName" style="border:1px #999999 outset;" size="20"  />
    </td>
  </tr>
  <tr>
    <td>评论内容：</td>
    <td >
    <textarea id="content" name="jecomment.content" rows="10"  cols="40"></textarea>
    
    
    
    </td>
  </tr>
    <tr>
    <td>输入验证码：</td>
    <td >
   <input type="text" size="6" id="scode"  style="border:1px #999999 outset;" name="saftCode" />
    <img border=0 alt="鼠标点击刷新验证码" onClick="javascript:this.src='getSafeCode.jspx'" style="cursor:hand; padding:1px; border:0px #CCCCCC outset;18px;" src="getSafeCode.jspx" /> 
    
    
    </td>
  </tr>
  
  <tr>
  
    <td colspan="2" align="center"><input type="submit" value="发表评论留言"/></td>
  </tr>
  </s:form>







 <table width="100%" border="0" align="left" cellpadding="0" cellspacing="5" >
   <s:iterator value="listcomment" status="lc">

 
  
  <tr>
    <td colspan="2" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
  <tr>
    <td width="17%" bgcolor="#FFFFFF">评论人：</td>
    <td width="83%" bgcolor="#FFFFFF"><s:property value="getUserName()"/></td>
    </tr>
   <tr>
    <td width="17%" bgcolor="#FFFFFF">评论时间：</td>
    <td bgcolor="#FFFFFF"><s:date name="%{getWriteTime()}" format="yyyy年MM月dd日hh点mm分ss秒" /></td>
    </tr>
  <tr>
    <td colspan="2" bgcolor="#FFFFFF" ><s:property escape="false" value="getContent()"/></td>
    </tr>
  
    
    <s:if test="getReplyContent()==null">     </s:if>
   <s:else>
   <tr>
    <td colspan="2" bgcolor="#FFFFFF" style="padding:15px;">
   <font color=#ff0000>管理员回复内容：</font>
   <s:property escape="false" value="getReplyContent()"/>   </td>
    </tr>
   </s:else>
   </s:iterator>
   </table>



<script type="text/javascript">
function chechSub()
{
 if(document.getElementById("name").value==null||document.getElementById("name").value.length<=1)
 {
 alert('评论人名称不能为空或者字数不能少于两个字');
 document.getElementById("name").focus();
 return false;
 
 }
 if(document.getElementById("content").value==null||document.getElementById("content").value.length<=10)
 {
 alert('评论内容不能为空或者字数不能少于10个字');
 document.getElementById("content").focus();
 return false;
 }
  if(document.getElementById("scode").value==null||document.getElementById("scode").value.length<=3)
 {
 alert('您的验证码有误！请重新填写验证码');
 document.getElementById("scode").focus();
 return false;
 }
}

</script>
