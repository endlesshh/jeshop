<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="org.apache.commons.io.FileUtils" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.io.File" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="org.hibernate.cfg.Configuration" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="org.hibernate.tool.hbm2ddl.SchemaExport" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据库初始化建设</title>
</head>

<body>

    <%
	
	/*********************************************************************************************************************************
	*                               领先软件是致力于 JEE网络电子商务平台的开发商，主要开发方向JEE电子商务平台以及电子政务建设方面                 *
	*                                    www.j-eshop.cn   y_flash@163.com
	*  模板默认页面：index.jsp  
	**********************************************************************************************************************************/
	
	
	
	
	
	
	String   url="";
	
	if (session.getAttribute("hostName")!=null)
	{
	try{
	/*out.println(request.getParameter("hostName"));
	out.println(request.getParameter("userName"));
	out.println(request.getParameter("passWord"));
	out.println(request.getParameter("dbName"));*/
	

	out.println("<font color=##003366><b></b></font><font color=#00CC00>创建和初始化数据库信息........</font><br>");

	
	
	  if(session.getAttribute("dbType").equals("mssql"))
	  {
	  
	  
	  
	
	   String dataPath = application.getRealPath("")+"\\WEB-INF\\resfile\\sqlserver_hibernate.cfg.xml";
	    String initIndexPath = application.getRealPath("")+"\\index.jsp";
		String indexPath = application.getRealPath("")+"\\WEB-INF\\resfile\\init_index.jsp";
	   String dataPath1 = application.getRealPath("")+"\\WEB-INF\\classes\\hibernate.cfg.xml";
	   String dataPath2 = application.getRealPath("")+"\\WEB-INF\\resfile\\web.xml";
	   String dataPath3 = application.getRealPath("")+"\\WEB-INF\\web.xml";	
	   
	   
	    FileUtils.copyFile(new File(dataPath2), new File(dataPath3));
		FileUtils.copyFile(new File(indexPath), new File(initIndexPath));	
	    String s = FileUtils.readFileToString(new File(dataPath),"utf-8");
		s = s.replace("${hostName}", session.getAttribute("hostName")+"");
		if(session.getAttribute("hostPort")==null)
		{
		s = s.replace("${hostPort}", "1433");
		}else
		{
		s = s.replace("${hostPort}", session.getAttribute("hostPort")+"");
		}
		
		s = s.replace("${userName}", session.getAttribute("userName")+"");
		s = s.replace("${dbName}", session.getAttribute("dbName")+"");
		s = s.replace("${passWord}", session.getAttribute("passWord")+"");
		FileUtils.writeStringToFile(new File(dataPath1), s,"UTF-8");
	  
	  
	  
	  
	  
	  
	  }
	
	
	
	   if(session.getAttribute("dbType").equals("mysql"))
	  {
	  
	  
	  
	
	   String dataPath = application.getRealPath("")+"\\WEB-INF\\resfile\\mysql_hibernate.cfg.xml";
	    String initIndexPath = application.getRealPath("")+"\\index.jsp";
		String indexPath = application.getRealPath("")+"\\WEB-INF\\resfile\\init_index.jsp";
	   String dataPath1 = application.getRealPath("")+"\\WEB-INF\\classes\\hibernate.cfg.xml";
	   String dataPath2 = application.getRealPath("")+"\\WEB-INF\\resfile\\web.xml";
	   String dataPath3 = application.getRealPath("")+"\\WEB-INF\\web.xml";	
	   
	   
	    FileUtils.copyFile(new File(dataPath2), new File(dataPath3));
		FileUtils.copyFile(new File(indexPath), new File(initIndexPath));	
	    String s = FileUtils.readFileToString(new File(dataPath),"utf-8");
		s = s.replace("${hostName}", session.getAttribute("hostName")+"");
		if(session.getAttribute("hostPort")==null)
		{
		s = s.replace("${hostPort}", "3306");
		}else
		{
		s = s.replace("${hostPort}", session.getAttribute("hostPort")+"");
		}
		
		s = s.replace("${userName}", session.getAttribute("userName")+"");
		s = s.replace("${dbName}", session.getAttribute("dbName")+"");
		s = s.replace("${passWord}", session.getAttribute("passWord")+"");
		FileUtils.writeStringToFile(new File(dataPath1), s,"UTF-8");
	  
	  
	  
	  
	  
	  
	  }
	
	//拷贝web.xml文件
	
	//生成数据库选项
	
	
	
	    Configuration con = new Configuration().configure(new File(application.getRealPath("")+"\\WEB-INF\\classes\\hibernate.cfg.xml"));
		SchemaExport schemaExport = new SchemaExport(con);
		schemaExport.create(true, true);
		
		out.println("<font color=##003366><b></b></font><font color=#00CC00>数据表创建完成........</font><br>");
		out.println("<font color=##003366><b></b></font><font color=#00CC00>开始初始化信息........</font><br>");
		
	
	//初始化配置文件
	
	//初始化信息
	
	
	/*out.println(request.getParameter("hostName"));
	out.println(request.getParameter("userName"));
	out.println(request.getParameter("passWord"));
	out.println(request.getParameter("dbName"));*/
	
    Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();   

	
	 if(session.getAttribute("dbType").equals("mysql"))
	  {
	  url ="jdbc:mysql://"+session.getAttribute("hostName")+":"+session.getAttribute("hostPort")+"/"+session.getAttribute("dbName")+"?characterEncoding=utf-8";
	  }
	   if(session.getAttribute("dbType").equals("mssql"))
	  {
	  
	  
	  url="jdbc:microsoft:sqlserver://"+session.getAttribute("hostName")+":"+session.getAttribute("hostPort")+";DatabaseName="+session.getAttribute("dbName")+"";   
	  }
	
	 Connection   conn=DriverManager.getConnection(url,session.getAttribute("userName")+"",session.getAttribute("passWord")+"");    
	if(conn!=null)
	{
	
	out.println("<font color=#ff0000>开始创建数据库表.........</font><br>");
	out.println("<hr color='#009900' style='height:2px;'>");
	//创建管理员表
	Statement   stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	
	
	
	
	
	
	
	out.println("<hr color='#009900' style='height:2px;'>");
	out.println("<font color=#ff0000>开始初始化数据.........</font><br>");
	out.println("<hr color='#009900' style='height:2px;'>");
	out.println("<font color=#ff0000>开始创建网站初始化站点信息.........</font><br>");
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("insert into Je_config(SiteName,siteTitle,SiteUrl,INstallDir,LogoUrl,BannerURl,WebmasterName,ShowSiteChannel,ShowAdminLogin,EnableLinkReg,EnableCountFriendSiteHits,EnableSoftKey,LockIPType,EnableUserReg,EmailCheckReg,AdminCheckReg,EnableMultiRegPerEmail,EnableCheckCodeOfLogin,EnableCheckCodeOfReg,EnableQAofReg,SearchContent,EnableGuestBuy,IncludeTax,PayOnlinePlusPoundage,GuestBook_EnableVisitor,GuestBookCheck,GuestBook_ShowIP,GuestBook_IsAssignSort,EnableRss,RssCodeType,EnableWap,EnableWapPl,ShowWapAppendix,ShowWapShop,ShowWapManage,IsCustom_Content,SendMessageToAdminWhenOrder,SendMessageToMemberWhenPaySuccess,GuestBook_EnableManageRubbish,presentPoint) values('高安全电子商务平台','高安全电子商务平台','www.j-eshop.cn','front','images/logo.gif','images/banner.gif','领先软件',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0)");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>站点配置信息初始化完成</font><br>");
	stmt.close();
	
	
	
	
	out.println("<hr color='#009900' style='height:2px;'>");
	out.println("<font color=#ff0000>初始化频道信息.........</font><br>");
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("insert into Je_ChanClass(chanClassID,chanName,chanIsUsed) values(1,'图文频道',1)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("insert into Je_ChanClass(chanClassID,chanName,chanIsUsed) values(2,'商城频道',1)");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("insert into Je_ChanClass(chanClassID,chanName,chanIsUsed) values(3,'软件频道',1)");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	
	//添加默认频道信息
	
	out.println("<hr color='#009900' style='height:2px;'>");
	out.println("<font color=#ff0000>初始化频道信息.........</font><br>");
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Channel(ChannelName, ChannelShortName, OrderID, OpenType, ChannelType, LinkUrl,  ModuleType, Disabled, ShowName, ShowNameOnPath, CheckLevel,  EnableUploadFile, UseCreateHTML,channelItemUnit,readMe,Meta_keywords)VALUES ('在线商城', '在线商城', 1, 1, 2, 'ShowShopChannel.jsp', 2, 1, 1, 1, 1, 1, 1,'条','系统默认在线商城','在线商城')");
	stmt.close();
	
	
	
	/*初始化商品分类 从而实现多种分类共存
	
	嵌入商品分类信息
	
	
	*/
	
	
	
	
	
	
	
	
	
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Channel(ChannelName, ChannelShortName, OrderID, OpenType, ChannelType, LinkUrl,  ModuleType, Disabled, ShowName, ShowNameOnPath, CheckLevel,  EnableUploadFile, UseCreateHTML,channelItemUnit,readMe,Meta_keywords)VALUES ('促销信息', '促销信息', 1, 1, 2, 'ShowShopChannel.jsp', 2, 1, 1, 1, 1, 1, 1,'条','促销商品默认频道','促销信息')");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	
	
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Channel (ChannelName, ChannelShortName, OrderID, OpenType, ChannelType, LinkUrl,  ModuleType, Disabled, ShowName, ShowNameOnPath, CheckLevel,  EnableUploadFile, UseCreateHTML,channelItemUnit,readMe,Meta_keywords)VALUES ('购物知识', '购物知识', 1, 1, 2, 'ShowNewsChannel.jsp', 1, 1, 1, 1, 1, 1, 1,'条','系统默认文章频道','系统默认文章频道')");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Channel (ChannelName, ChannelShortName, OrderID, OpenType, ChannelType, LinkUrl,  ModuleType, Disabled, ShowName, ShowNameOnPath, CheckLevel,  EnableUploadFile, UseCreateHTML,channelItemUnit,readMe,Meta_keywords)VALUES ('在线帮助', '在线帮助', 1, 1, 2, 'ShowNewsChannel.jsp', 1, 1, 1, 1, 1, 1, 1,'条','在线帮住信息','在线帮助信息')");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Channel (ChannelName, ChannelShortName, OrderID, OpenType, ChannelType, LinkUrl,  ModuleType, Disabled, ShowName, ShowNameOnPath, CheckLevel,  EnableUploadFile, UseCreateHTML,channelItemUnit,readMe,Meta_keywords)VALUES ('会员开店', '会员开店', 1, 1, 2, 'ShowNewsChannel.jsp', 1, 1, 1, 1, 1, 1, 1,'条','会员开店在线信息','会员开店在线信息')");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Channel (ChannelName, ChannelShortName, OrderID, OpenType, ChannelType, LinkUrl,  ModuleType, Disabled, ShowName, ShowNameOnPath, CheckLevel,  EnableUploadFile, UseCreateHTML,channelItemUnit,readMe,Meta_keywords)VALUES ('使用教程', '使用教程', 1, 1, 2, 'ShowNewsChannel.jsp', 1, 1, 1, 1, 1, 1, 1,'条','使用教程在线帮助','使用教程在线帮助')");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Channel (ChannelName, ChannelShortName, OrderID, OpenType, ChannelType, LinkUrl,  ModuleType, Disabled, ShowName, ShowNameOnPath, CheckLevel,  EnableUploadFile, UseCreateHTML,channelItemUnit,readMe,Meta_keywords)VALUES ('店铺介绍', '店铺介绍', 1, 1, 2, 'ShowNewsChannel.jsp', 1, 1, 1, 1, 1, 1, 1,'条','店铺介绍在线帮助','店铺介绍在线帮助')");
	out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	
	
	out.println("<font color=#ff0000>初始化频道信息.........</font><br>");
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_Admin(UserName, PassWord, purview, EnableMultiLogin) VALUES ('admin', '24fc9330260c0c7ed68e11a70c894f18', 1,1)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	
	
	//添加商品分类信息
		out.println("<hr color='#009900' style='height:2px;'>");
	out.println("<font color=#ff0000>初始化品牌信息.........</font><br>");
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_TradeType(tradName)VALUES ('国内品牌')");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_TradeType(tradName)VALUES ('国际品牌')");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_TradeType(tradName)VALUES ('地方品牌')");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	out.println("<font color=##003366><b></b></font><font color=#00CC00>品牌信息初始化完成</font><br>");
	
	
	out.println("<font color=##003366><b></b></font><font color=#00CC00>初始化会员网站默认频道信息开始</font><br>");
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('index.jsp', '首页', '首页', 0, 1)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT  INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowIntr.jsp', '网店简介', '网店简介', 0, 2)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("INSERT   INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowHotPro.jsp', '热卖商品', '热卖商品', 0, 3)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute(" INSERT   INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowIsPro.jsp', '推荐商品', '推荐商品', 0, 4)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("  INSERT  INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowAllPro.jsp', '所有商品', '所有商品', 0, 5)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("   INSERT      INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowSend.jsp', '送货说明', '送货说明', 0, 6)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute(" INSERT   INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowMoney.jsp', '付款方式', '付款方式', 0, 7)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute(" INSERT INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowOrder.jsp', '在线订单', '在线订单', 0, 8)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.execute("   INSERT     INTO JE_UserConfig(linkurl, showName, showCname, ta, tb)VALUES ('ShowBook.jsp', '留言', '留言', 0, 9)");
	//out.println("<font color=##003366><b></b></font><font color=#00CC00>频道信息初始化完成</font><br>");
	stmt.close();
	
	out.println("<font color=##003366><b></b></font><font color=#00CC00>初始化会员网站默认频道信息完成</font><br>");
	
	
	
	
	
	}
	
	
	
	
	out.println("<script language=javascript>parent.document.getElementById('msg').innerHTML='<font color=#ff0000><b>数据库安装完成，重新启动tomcat可预览网站,重新启动完成后请删除setup文件夹下的内容保证网站数据安全</b></font>';</script>");

	}catch(Exception e)
	{
	out.println("<font color=#ff0000>数据库连接失败,失败原因如下："+e.toString()+"</font>");
	}
	
	}else
	{
	response.sendRedirect("InitDB.jsp");
	}
	
	%>   
    
    