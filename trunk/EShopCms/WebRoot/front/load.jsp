<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
   <s:head theme="ajax"/>
   <script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
  </head>
  <body>
  <script language="javascript">
  
  //用户充值账号
  function CheckMoneyToUserACount(SUrl,ShowDiv){
 $.ajax({
		type: "post",
		url: SUrl,
		beforeSend: function(XMLHttpRequest){
		
		},
		success: function(data, textStatus){
		    ShowDiv.html("");
			ShowDiv.append("<font color=#ff0000 style='font-size:12px'>"+data+"</font>");
		},
		complete: function(XMLHttpRequest, textStatus){
			
		},
		error: function(){	
		}
});
}
  </script>
  <div id="load_content">
  加载充值
  </div>
  <span onClick="CheckMoneyToUserACount('UserInMoneyTo.jspx?userName=yanglong&userPass=yanglong',$('#load_content'))">开始充值</span>
  </body>
</html>
