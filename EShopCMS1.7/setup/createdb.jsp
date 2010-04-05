<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="org.apache.commons.io.FileUtils" errorPage="" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.io.File" errorPage="" %>


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
	
    Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();   
    if(session.getAttribute("hostPort")!=null)
	{
	url="jdbc:microsoft:sqlserver://"+session.getAttribute("hostName")+":"+session.getAttribute("hostPort")+";DatabaseName="+session.getAttribute("dbName")+"";   
	}else
	{
	url="jdbc:microsoft:sqlserver://"+session.getAttribute("hostName")+":1433;DatabaseName="+session.getAttribute("dbName")+"";   
	}
    
    Connection   conn=DriverManager.getConnection(url,session.getAttribute("userName")+"",session.getAttribute("passWord")+"");    
	if(conn!=null)
	{
	
	out.println("<font color=#ff0000>开始创建数据库表.........</font><br>");
	out.println("<hr color='#009900' style='height:2px;'>");
	//创建管理员表
	Statement   stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Admin</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Admin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[JE_Admin]  CREATE TABLE [dbo].[JE_Admin] ([Admin_ID] [int] IDENTITY (1, 1) NOT NULL ,[UserName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,[PassWord] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,[Purview] [int] NULL ,[LastloginIP] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LastLoginTime] [smalldatetime] NULL ,[LastLogoutTime] [smalldatetime] NULL ,[LoginTimes] [int] NULL ,[EnableMultiLogin] [int] NOT NULL ,[AdminPurview_Article] [int] NULL ,[AdminPurview_Soft] [int] NULL ,[AdminPurview_Photo] [int] NULL ,[AdminPurview_GuestBook] [int] NULL ,[AdminPurview_House] [int] NULL ,[AdminPurview_Shop] [int] NULL ) ON [PRIMARY]ALTER TABLE [dbo].[JE_Admin] ADD CONSTRAINT [PK_JE_Admin] PRIMARY KEY  CLUSTERED ([Admin_ID])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Admin</b></font><font color=#00ff00>表创建成功</font><br>");
	stmt.close();
	
	
	//创建公告表
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Announce</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Announce]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[JE_Announce] CREATE TABLE [dbo].[JE_Announce] ([ID] [int] IDENTITY (1, 1) NOT NULL ,[Title] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[Author] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[DateAndTime] [smalldatetime] NULL ,[IsSelected] [int] NOT NULL ,[ChannelID] [int] NULL ,[ShowType] [int] NULL ,[OutTime] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ALTER TABLE [dbo].[JE_Announce] ADD CONSTRAINT [PK_JE_Announce] PRIMARY KEY  CLUSTERED ([ID])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Announce</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	//用户留言表创建
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Book</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Book]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[JE_Book] CREATE TABLE [dbo].[JE_Book] ([GuestID] [int] IDENTITY (1, 1) NOT NULL ,[KindID] [int] NULL ,[TopicID] [int] NULL ,[GuestMaxID] [int] NULL ,[GuestType] [int] NULL ,[GuestName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[GuestSex] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,[GuestMsn] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[GuestIcq] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,[GuestEmail] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[GuestHomepage] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[GuestImages] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,[GuestFace] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,[GuestIP] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[GuestTitle] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[GuestContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[GuestDatetime] [smalldatetime] NULL ,[Hits] [int] NULL ,[ReplyNum] [int] NULL ,[LastReplyContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[LastReplyGuest] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LastReplyTime] [smalldatetime] NULL ,[LastReplyTitle] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[GuestReply] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[GuestReplyAdmin] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[GuestReplyDatetime] [smalldatetime] NULL ,[Quintessence] [int] NULL ,[GuestIsPassed] [int] NOT NULL ,[GuestIsPrivate] [int] NOT NULL ,[OnTop] [int] NULL ,[ReplyIsPrivate] [int] NOT NULL ,[GuestContentLength] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Book] ADD 	CONSTRAINT [PK_JE_Book] PRIMARY KEY  CLUSTERED 	(		[GuestID])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Book</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	
	//用户购物车表
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_BuyCar</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_BuyCar]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_BuyCar] CREATE TABLE [dbo].[JE_BuyCar] ([shopfavID] [int] IDENTITY (1, 1) NOT NULL ,[productID] [int] NULL ,[userID] [int] NULL ,[favTime] [smalldatetime] NULL ,[isElite] [int] NULL ,[favinfo] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[productNum] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ALTER TABLE [dbo].[JE_BuyCar] ADD 	CONSTRAINT [PK_JE_BuyCar] PRIMARY KEY  CLUSTERED 	(		[shopfavID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_BuyCar</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	//Je_Card
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Card</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Card]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Card] CREATE TABLE [dbo].[JE_Card] ([cardId] [int] IDENTITY (1, 1) NOT NULL ,[cardCode] [varchar] (256) COLLATE Chinese_PRC_CI_AS NOT NULL ,[cardPass] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,[cardMoney] [money] NOT NULL ,[cardStat] [int] NULL ,[cardGroup] [int] NULL ,[userId] [int] NULL ) ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Card</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	//JE_ChanClass
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_ChanClass</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_ChanClass]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_ChanClass]CREATE TABLE [dbo].[JE_ChanClass] ([chanClassID] [int] NOT NULL ,[chanName] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,[chanIsUsed] [int] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_ChanClass] ADD 	CONSTRAINT [DF_JE_ChanClass_chanIsUsed] DEFAULT (0) FOR [chanIsUsed],	CONSTRAINT [PK_JE_ChanClass] PRIMARY KEY  CLUSTERED 	(		[chanClassID])  ON [PRIMARY]");
	out.println("<font color=##003366><b>JE_ChanClass</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Channel</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Channel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Channel]CREATE TABLE [dbo].[JE_Channel] ([ChannelID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,[ChannelShortName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ChannelItemUnit] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ReadMe] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Meta_Keywords] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Meta_Description] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ChannelPicUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[OrderID] [int] NOT NULL ,[OpenType] [int] NOT NULL ,[ChannelType] [int] NOT NULL ,[LinkUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ChannelDir] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ModuleType] [int] NULL ,[Disabled] [int] NOT NULL ,[ShowName] [int] NOT NULL ,[ShowNameOnPath] [int] NOT NULL ,[CheckLevel] [int] NOT NULL ,[EnableUploadFile] [int] NOT NULL ,[UploadDir] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MaxFileSize] [int] NULL ,[HitsOfHot] [int] NULL ,[DaysOfNew] [int] NULL ,[MaxPerLine] [int] NULL ,[UpFileType] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[DefaultSkinID] [int] NULL ,[Template_Index] [int] NULL ,[TopMenuType] [int] NULL ,[ClassGuideType] [int] NULL ,[UseCreateHTML] [int] NOT NULL ,[ItemCount] [int] NULL ,[ItemChecked] [int] NULL ,[CommentCount] [int] NULL ,[SpecialCount] [int] NULL ,[HitsCount] [int] NULL ,[StructureType] [int] NULL ,[ListFileType] [int] NULL ,[FileNameType] [int] NULL ,[AutoCreateType] [int] NULL ,[FileExt_Index] [int] NULL ,[FileExt_List] [int] NULL ,[FileExt_Item] [int] NULL ,[UpdatePages] [int] NULL ,[ChannelPurview] [int] NULL ,[arrGroupID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[AuthorInfoLen] [int] NULL ,[MaxPerPage_Index] [int] NULL ,[MaxPerPage_SearchResult] [int] NULL ,[MaxPerPage_New] [int] NULL ,[MaxPerPage_Hot] [int] NULL ,[MaxPerPage_Elite] [int] NULL ,[MaxPerPage_SpecialList] [int] NULL ,[TimingCreateSetting] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfReject] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfPassed] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Custom_Content] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[arrEnabledTabs] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[CommandChannelPoint] [int] NULL ,[Fields_Options] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_Channel] ADD 	CONSTRAINT [DF_JE_Channel_OrderID] DEFAULT (0) FOR [OrderID],	CONSTRAINT [DF_JE_Channel_OpenType] DEFAULT (0) FOR [OpenType],	CONSTRAINT [DF_JE_Channel_ChannelType] DEFAULT (0) FOR [ChannelType],	CONSTRAINT [DF_JE_Channel_Disabled] DEFAULT (0) FOR [Disabled],	CONSTRAINT [DF_JE_Channel_ShowName] DEFAULT (0) FOR [ShowName],	CONSTRAINT [DF_JE_Channel_ShowNameOnPath] DEFAULT (0) FOR [ShowNameOnPath],	CONSTRAINT [DF_JE_Channel_CheckLevel] DEFAULT (0) FOR [CheckLevel],	CONSTRAINT [DF_JE_Channel_EnableUploadFile] DEFAULT (0) FOR [EnableUploadFile],	CONSTRAINT [DF_JE_Channel_UseCreateHTML] DEFAULT (0) FOR [UseCreateHTML],	CONSTRAINT [PK_JE_Channel] PRIMARY KEY  CLUSTERED 	(		[ChannelID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Channel</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Chat</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Chat]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Chat]CREATE TABLE [dbo].[JE_Chat] ([id] [int] IDENTITY (1, 1) NOT NULL ,[text] [text] COLLATE Chinese_PRC_CI_AS NULL ,[username] [varchar] (24) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Chat] ADD 	CONSTRAINT [DF__JE_chat__usernam__51300E55] DEFAULT (null) FOR [username],	CONSTRAINT [PK__JE_chat__503BEA1C] PRIMARY KEY  CLUSTERED 	(		[id]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Chat</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_City</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_City]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_City]CREATE TABLE [dbo].[JE_City] ([AreaID] [int] IDENTITY (1, 1) NOT NULL ,[Country] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Province] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[City] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Area] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PostCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[AreaCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_City] ADD CONSTRAINT [PK_JE_City] PRIMARY KEY  CLUSTERED 	([AreaID])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_City</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Class</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Class]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Class]CREATE TABLE [dbo].[JE_Class] ([ClassID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelID] [int] NOT NULL ,[ClassName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,[ClassType] [int] NOT NULL ,[OpenType] [int] NOT NULL ,[ParentID] [int] NOT NULL ,[ParentPath] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,[Depth] [int] NOT NULL ,[RootID] [int] NOT NULL ,[Child] [int] NOT NULL ,[arrChildID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PrevID] [int] NOT NULL ,[NextID] [int] NOT NULL ,[OrderID] [int] NOT NULL ,[Tips] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Readme] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Meta_Keywords] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Meta_Description] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LinkUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ClassPicUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ClassDir] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ParentDir] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[TemplateID] [int] NULL ,[ShowOnTop] [int] NOT NULL ,[ShowOnIndex] [int] NOT NULL ,[IsElite] [int] NOT NULL ,[EnableAdd] [int] NOT NULL ,[EnableProtect] [int] NOT NULL ,[ItemListOrderType] [int] NULL ,[ItemOpenType] [int] NULL ,[ClassPurview] [smallint] NULL ,[EnableComment] [int] NOT NULL ,[CheckComment] [int] NOT NULL ,[PresentExp] [float] NULL ,[DefaultItemChargeType] [int] NULL ,[DefaultItemPitchTime] [int] NULL ,[DefaultItemReadTimes] [int] NULL ,[DefaultItemDividePercent] [int] NULL ,[Custom_Content] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[CommandClassPoint] [int] NULL ,[DefaultReadMoney] [money] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_Class] ADD 	CONSTRAINT [PK_JE_Class] PRIMARY KEY  CLUSTERED 	(		[ClassID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Class</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Comment</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Comment]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Comment]CREATE TABLE [dbo].[JE_Comment] ([CommentID] [int] IDENTITY (1, 1) NOT NULL ,[ModuleType] [int] NULL ,[InfoID] [int] NULL ,[UserType] [int] NULL ,[UserName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[QQ] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Sex] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MSN] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Email] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Homepage] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[IP] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[WriteTime] [smalldatetime] NULL ,[Score] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[ReplyName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ReplyContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[ReplyTime] [smalldatetime] NULL ,[Passed] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Comment] ADD 	CONSTRAINT [PK_JE_Comment] PRIMARY KEY  CLUSTERED 	(		[CommentID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Comment</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Config</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Config]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Config]CREATE TABLE [dbo].[JE_Config] ([siteID] [int] IDENTITY (1, 1) NOT NULL ,[SiteName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[SiteTitle] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[SiteUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[InstallDir] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LogoUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[BannerUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[WebmasterName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[WebmasterEmail] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Copyright] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[Meta_Keywords] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[Meta_Description] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[SiteKey] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ShowSiteChannel] [int] NOT NULL ,[ShowAdminLogin] [int] NOT NULL ,[EnableLinkReg] [int] NOT NULL ,[EnableCountFriendSiteHits] [int] NOT NULL ,[EnableSoftKey] [int] NOT NULL ,[AdminDir] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ADDir] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[AnnounceCookieTime] [int] NULL ,[HitsOfHot] [int] NULL ,[FileExt_SiteIndex] [int] NULL ,[FileExt_SiteSpecial] [int] NULL ,[SiteUrlType] [int] NULL ,[Modules] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LockIPType] [int] NOT NULL ,[LockIP] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[EnableUserReg] [int] NOT NULL ,[EmailCheckReg] [int] NOT NULL ,[AdminCheckReg] [int] NOT NULL ,[EnableMultiRegPerEmail] [int] NOT NULL ,[UserNameLimit] [int] NULL ,[UserNameMax] [int] NULL ,[UserName_RegDisabled] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[RegFields_MustFill] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[EnableCheckCodeOfLogin] [int] NOT NULL ,[EnableCheckCodeOfReg] [int] NOT NULL ,[EnableQAofReg] [int] NOT NULL ,[QAofReg] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PresentExp] [float] NULL ,[PresentMoney] [float] NULL ,[PresentPoint] [int] NULL ,[PresentValidNum] [int] NULL ,[PresentValidUnit] [int] NULL ,[MoneyExchangePoint] [float] NULL ,[UserExpExchangePoint] [float] NULL ,[UserExpExchangeValidDay] [float] NULL ,[PresentExpPerLogin] [int] NULL ,[PresentExpPerElite] [int] NULL ,[PointName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PointUnit] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfRegCheck] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MailObject] [int] NULL ,[MailServer] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MailServerUserName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MailServerPassWord] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MailDomain] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PhotoObject] [int] NULL ,[Thumb_DefaultWidth] [int] NULL ,[Thumb_DefaultHeight] [int] NULL ,[Thumb_Arithmetic] [int] NULL ,[SearchInterval] [int] NULL ,[SearchResultNum] [int] NULL ,[MaxPerPage_SearchResult] [int] NULL ,[SearchContent] [int] NOT NULL ,[EnableGuestBuy] [int] NOT NULL ,[IncludeTax] [int] NOT NULL ,[TaxRate] [int] NULL ,[PayOnlineProvider] [int] NULL ,[PayOnlineShopID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PayOnlineKey] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PayOnlineRate] [real] NULL ,[PayOnlinePlusPoundage] [int] NOT NULL ,[Prefix_OrderFormNum] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Prefix_PaymentNum] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Country] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Province] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[City] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PostCode] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfOrderConfirm] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfOrderConfirm] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfSendCard] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfSendCard] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfReceiptMoney] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfReceiptMoney] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfRefund] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfRefund] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfInvoice] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfInvoice] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfDeliver] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[EmailOfDeliver] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[GuestBook_EnableVisitor] [int] NOT NULL ,[GuestBookCheck] [int] NOT NULL ,[GuestBook_EnableManageRubbish] [int] NOT NULL ,[GuestBook_ManageRubbish] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[GuestBook_ShowIP] [int] NOT NULL ,[GuestBook_IsAssignSort] [int] NOT NULL ,[GuestBook_MaxPerPage] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[EnableRss] [int] NOT NULL ,[RssCodeType] [int] NOT NULL ,[EnableWap] [int] NOT NULL ,[WapLogo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[EnableWapPl] [int] NOT NULL ,[ShowWapAppendix] [int] NOT NULL ,[ShowWapShop] [int] NOT NULL ,[ShowWapManage] [int] NOT NULL ,[DatabaseVersion] [float] NULL ,[Timing_SetDate] [int] NULL ,[Timing_SetDay] [int] NULL ,[Timing_SetWeekday] [int] NULL ,[Timing_Time] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[Timing_Date] [smalldatetime] NULL ,[Timing_CollectionItemID] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[Timing_AreaCollection] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[Timing_Breakpoint] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[IsCustom_Content] [int] NOT NULL ,[SMSUserName] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[SMSKey] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[Mobiles] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[SendMessageToAdminWhenOrder] [int] NOT NULL ,[SendMessageToMemberWhenPaySuccess] [int] NOT NULL ,[SurveyKey] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfCompy] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfwebManager] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageOflinkUs] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfManerintr] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfcompyProduct] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageOfConmpyWebH] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageOne] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageTwo] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageThree] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageFour] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[Messagefive] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MessageSix] [ntext] COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Config] ADD CONSTRAINT [PK_JE_Config] PRIMARY KEY  CLUSTERED 	(		[siteID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Config</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_DeliverItem</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_DeliverItem]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_DeliverItem]CREATE TABLE [dbo].[JE_DeliverItem] ([DeliverID] [int] IDENTITY (1, 1) NOT NULL ,[OrderFormID] [int] NULL ,[DeliverDate] [smalldatetime] NULL ,[DeliverDirection] [int] NULL ,[HandlerName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,[ExpressCompany] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ExpressNumber] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Received] [int] NOT NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_DeliverItem] ADD 	CONSTRAINT [PK_PE_DeliverItem] PRIMARY KEY  CLUSTERED (		[DeliverID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_DeliverItem</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_DeliverType</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_DeliverType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_DeliverType]CREATE TABLE [dbo].[JE_DeliverType] ([TypeID] [int] IDENTITY (1, 1) NOT NULL ,[TypeName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Intro] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ChargeType] [int] NULL ,[IsDefault] [int] NOT NULL ,[IsDisabled] [int] NOT NULL ,[OrderID] [int] NULL ,[ReleaseType] [int] NULL ,[MinMoney1] [money] NULL ,[ReleaseCharge] [money] NULL ,[MinMoney2] [money] NULL ,[MaxCharge] [money] NULL ,[MinMoney3] [money] NULL ,[Charge_Min] [money] NULL ,[Charge_Max] [money] NULL ,[Charge_Percent] [smallint] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_DeliverType] ADD CONSTRAINT [PK_JE_DeliverType] PRIMARY KEY  CLUSTERED ([TypeID]	) ON [PRIMARY] ALTER TABLE [dbo].[JE_DeliverType] ADD CONSTRAINT [PK_JE_DeliverType] PRIMARY KEY  CLUSTERED 	(	[TypeID])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_DeliverType</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_FavShop</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_FavShop]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_FavShop]CREATE TABLE [dbo].[JE_FavShop] ([shopfavID] [int] IDENTITY (1, 1) NOT NULL ,[productID] [int] NULL ,[userID] [int] NULL ,[favTime] [smalldatetime] NULL ,[isElite] [int] NULL ,[favinfo] [ntext] COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_FavShop] ADD 	CONSTRAINT [DF_JE_FavShop_productID] DEFAULT (0) FOR [productID],	CONSTRAINT [PK_JE_FavShop] PRIMARY KEY  CLUSTERED 	(		[shopfavID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_FavShop</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Links</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Links]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Links]CREATE TABLE [dbo].[JE_Links] ([ID] [int] IDENTITY (1, 1) NOT NULL ,[LinkType] [int] NULL ,[SiteName] [char] (256) COLLATE Chinese_PRC_CI_AS NULL ,[SiteUrl] [char] (256) COLLATE Chinese_PRC_CI_AS NULL ,[SiteIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[LogoUrl] [char] (256) COLLATE Chinese_PRC_CI_AS NULL ,[SiteAdmin] [char] (50) COLLATE Chinese_PRC_CI_AS NULL ,[SiteEmail] [char] (50) COLLATE Chinese_PRC_CI_AS NULL ,[SitePassword] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Stars] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Hits] [int] NULL ,[UpdateTime] [smalldatetime] NULL ,[Elite] [int] NULL ,[Passed] [int] NULL ,[OrderID] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ALTER TABLE [dbo].[JE_Links] ADD 	CONSTRAINT [DF_JE_Links_LinkType] DEFAULT (0) FOR [LinkType],	CONSTRAINT [DF_JE_Links_Hits] DEFAULT (0) FOR [Hits],	CONSTRAINT [DF_JE_Links_Elite] DEFAULT (0) FOR [Elite],	CONSTRAINT [DF_JE_Links_Passed] DEFAULT (0) FOR [Passed],	CONSTRAINT [DF_JE_Links_OrderID] DEFAULT (0) FOR [OrderID],	CONSTRAINT [PK_JE_Links] PRIMARY KEY  CLUSTERED 	(		[ID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Links</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Metiel</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Metiel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Metiel]CREATE TABLE [dbo].[JE_Metiel] ([Mid] [int] IDENTITY (1, 1) NOT NULL ,[MName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[type] [int] NULL ,[userId] [int] NULL ,[path] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_Links] ADD 	CONSTRAINT [DF_JE_Links_LinkType] DEFAULT (0) FOR [LinkType],	CONSTRAINT [DF_JE_Links_Hits] DEFAULT (0) FOR [Hits],	CONSTRAINT [DF_JE_Links_Elite] DEFAULT (0) FOR [Elite],	CONSTRAINT [DF_JE_Links_Passed] DEFAULT (0) FOR [Passed],	CONSTRAINT [DF_JE_Links_OrderID] DEFAULT (0) FOR [OrderID],	CONSTRAINT [PK_JE_Links] PRIMARY KEY  CLUSTERED (		[ID]	)  ON [PRIMARY] ALTER TABLE [dbo].[JE_Metiel] ADD 	CONSTRAINT [PK_JE_Metiel] PRIMARY KEY  CLUSTERED 	(		[Mid]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Metiel</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_News</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_News]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_News]CREATE TABLE [dbo].[JE_News] ([ArticleID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelID] [int] NOT NULL ,[ClassID] [int] NOT NULL ,[Title] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,[TitleIntact] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Subheading] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[videoUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Author] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[CopyFrom] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Inputer] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[LinkUrl] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Editor] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,[Keyword] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,[Hits] [int] NOT NULL ,[CommentCount] [int] NULL ,[UpdateTime] [smalldatetime] NOT NULL ,[CreateTime] [smalldatetime] NULL ,[OnTop] [int] NOT NULL ,[Elite] [int] NOT NULL ,[Status] [int] NOT NULL ,[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[IncludePic] [int] NOT NULL ,[DefaultPicUrl] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[UploadFiles] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[InfoPoint] [int] NULL ,[PaginationType] [int] NULL ,[TemplateID] [int] NULL ,[Stars] [int] NULL ,[TitleFontColor] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[TitleFontType] [int] NULL ,[ShowCommentLink] [int] NOT NULL ,[ReceiveUser] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Received] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[AutoReceiveTime] [int] NULL ,[ReceiveType] [int] NULL ,[Intro] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PresentExp] [float] NULL ,[Copymoney] [money] NULL ,[IsPayed] [int] NOT NULL ,[Beneficiary] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[PayDate] [smalldatetime] NULL ,[VoteID] [int] NULL ,[InfoPurview] [int] NULL ,[arrGroupID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ChargeType] [int] NOT NULL ,[PitchTime] [int] NULL ,[ReadTimes] [int] NULL ,[BlogID] [int] NULL ,[UserID] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_News] ADD 	CONSTRAINT [DF_JE_News_UserID] DEFAULT (0) FOR [UserID],	CONSTRAINT [PK_JE_News] PRIMARY KEY  CLUSTERED 	(		[ArticleID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_News</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_OrderForm</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_OrderForm]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_OrderForm]CREATE TABLE [dbo].[JE_OrderForm] ([OrderFormID] [int] IDENTITY (1, 1) NOT NULL ,[OrderFormNum] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[AgentName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ClientID] [int] NULL ,[MoneyTotal] [money] NULL ,[MoneyGoods] [money] NULL ,[NeedInvoice] [int] NOT NULL ,[InvoiceContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[Invoiced] [int] NOT NULL ,[Remark] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[MoneyReceipt] [money] NULL ,[BeginDate] [smalldatetime] NULL ,[InputTime] [smalldatetime] NULL ,[ContacterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Address] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[ZipCode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,[Mobile] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Phone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Email] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[reMoneyStat] [int] NULL ,[PaymentType] [int] NULL ,[DeliverType] [int] NULL ,[Status] [int] NULL ,[DeliverStatus] [int] NULL ,[EnableDownload] [int] NOT NULL ,[PresentMoney] [money] NULL ,[PresentPoint] [int] NULL ,[PresentExp] [int] NULL ,[Discount_Payment] [float] NULL ,[Charge_Deliver] [money] NULL ,[userID] [int] NULL ,[va1] [int] NULL ,[va2] [int] NULL ,[va3] [int] NULL ,[ca1] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ca2] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_OrderForm] ADD 	CONSTRAINT [PK_JE_OrderForm] PRIMARY KEY  CLUSTERED 	(		[OrderFormID]	)ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_OrderForm</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_OrderFormItem</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_OrderFormItem]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_OrderFormItem]CREATE TABLE [dbo].[JE_OrderFormItem] ([ItemID] [int] IDENTITY (1, 1) NOT NULL ,[OrderFormID] [int] NULL ,[ProductID] [int] NULL ,[SaleType] [int] NULL ,[Price_Original] [money] NULL ,[Price] [money] NULL ,[TruePrice] [money] NULL ,[Amount] [int] NULL ,[SubTotal] [money] NULL ,[BeginDate] [smalldatetime] NULL ,[ServiceTerm] [int] NULL ,[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[PresentMoney] [money] NULL ,[PresentPoint] [int] NULL ,[PresentExp] [int] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_OrderFormItem] ADD 	CONSTRAINT [PK_JE_OrderFormItem] PRIMARY KEY  CLUSTERED 	(		[ItemID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_OrderFormItem</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Page</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Page]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Page]CREATE TABLE [dbo].[JE_Page] ([pageId] [int] IDENTITY (1, 1) NOT NULL ,[pageName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[pageClass] [int] NULL ,[pageOrder] [int] NULL ,[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[userId] [int] NULL ,[ChannelId] [int] NULL ,[groupId] [int] NULL ,[pageLevel] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Page] ADD 	CONSTRAINT [PK_JE_Page] PRIMARY KEY  CLUSTERED 	(		[pageId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Page</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Photo</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Photo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Photo]CREATE TABLE [dbo].[JE_Photo] ([PhotoID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelID] [int] NOT NULL ,[ClassID] [int] NOT NULL ,[PhotoName] [varchar] (256) COLLATE Chinese_PRC_CI_AS NOT NULL ,[Author] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[CopyFrom] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Inputer] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Editor] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Keyword] [varchar] (256) COLLATE Chinese_PRC_CI_AS NOT NULL ,[Hits] [int] NULL ,[DayHits] [int] NULL ,[WeekHits] [int] NULL ,[MonthHits] [int] NULL ,[CommentCount] [int] NULL ,[UpdateTime] [smalldatetime] NULL ,[CreateTime] [smalldatetime] NULL ,[PhotoThumb] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[PhotoUrl] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[PhotoSize] [int] NULL ,[OnTop] [int] NOT NULL ,[Elite] [int] NOT NULL ,[Status] [int] NOT NULL ,[PhotoIntro] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[InfoPoint] [int] NULL ,[Deleted] [int] NOT NULL ,[Stars] [int] NULL ,[LastHitTime] [smalldatetime] NULL ,[TemplateID] [int] NULL ,[SkinID] [int] NULL ,[VoteID] [int] NULL ,[PresentExp] [float] NULL ,[InfoPurview] [int] NULL ,[arrGroupID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ChargeType] [int] NULL ,[PitchTime] [int] NULL ,[ReadTimes] [int] NULL ,[DividePercent] [int] NULL ,[BlogID] [int] NULL ,[UserID] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Photo] ADD 	CONSTRAINT [PK_JE_Photo] PRIMARY KEY  CLUSTERED 	(		[PhotoID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Photo</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Producer</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Producer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Producer]CREATE TABLE [dbo].[JE_Producer] ([ProducerID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelID] [int] NOT NULL ,[ProducerName] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[ProducerShortName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ProducerPhoto] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[BirthDay] [smalldatetime] NULL ,[Address] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[Postcode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Fax] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Email] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Homepage] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,[ProducerIntro] [text] COLLATE Chinese_PRC_CI_AS NULL ,[Passed] [int] NULL ,[onTop] [int] NULL ,[IsElite] [int] NULL ,[Hits] [int] NULL ,[ProducerType] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Producer] ADD 	CONSTRAINT [DF_JE_Producer_ChannelID] DEFAULT (0) FOR [ChannelID],	CONSTRAINT [PK_JE_Producer] PRIMARY KEY  CLUSTERED (	[ProducerID])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Producer</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Product</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Product]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Product]CREATE TABLE [dbo].[JE_Product] ([ProductID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelID] [int] NOT NULL ,[ProductNum] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[BarCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ClassID] [int] NULL ,[ProductKind] [int] NULL ,[ProductName] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[ProductModel] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[ProductStandard] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[ProducerId] [int] NULL ,[TrademarkName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ProductIntro] [text] COLLATE Chinese_PRC_CI_AS NULL ,[ProductExplain] [text] COLLATE Chinese_PRC_CI_AS NULL ,[ProductThumb] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ProductType] [int] NULL ,[unit] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Price] [money] NULL ,[Price_Original] [money] NULL ,[Price_Market] [money] NULL ,[Price_Member] [money] NULL ,[Price_Agent] [money] NULL ,[price_tuangou] [money] NULL ,[tuangou_numer] [int] NULL ,[OnTop] [int] NULL ,[IsHot] [int] NULL ,[IsElite] [int] NULL ,[Stars] [int] NULL ,[Stocks] [int] NULL ,[OrderNum] [int] NULL ,[BeginDate] [datetime] NULL ,[endDate] [datetime] NULL ,[LimitNum] [int] NULL ,[Keyword] [varchar] (256) COLLATE Chinese_PRC_CI_AS NULL ,[CommentCount] [int] NULL ,[UpdateTime] [datetime] NULL ,[CreateTime] [datetime] NULL ,[DownloadUrl] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[Hits] [int] NULL ,[BuyTimes] [int] NULL ,[VoteID] [int] NULL ,[userId] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Product] ADD 	CONSTRAINT [DF_JE_Product_ChannelID] DEFAULT (0) FOR [ChannelID],	CONSTRAINT [DF_JE_Product_ClassID] DEFAULT (0) FOR [ClassID],	CONSTRAINT [DF_JE_Product_CreateTime] DEFAULT (getdate()) FOR [CreateTime],	CONSTRAINT [PK_Je_Product] PRIMARY KEY  CLUSTERED 	(	[ProductID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Product</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_ServiceItem</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_ServiceItem]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_ServiceItem]CREATE TABLE [dbo].[JE_ServiceItem] ([ItemID] [int] IDENTITY (1, 1) NOT NULL ,[ClientID] [int] NULL ,[ContacterID] [int] NULL ,[OrderFormID] [int] NULL ,[ServiceTime] [smalldatetime] NULL ,[ServiceType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ServiceMode] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ServiceTitle] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ServiceContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[ServiceResult] [int] NULL ,[TakeTime] [int] NULL ,[Processor] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Inputer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[Feedback] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[ConfirmTime] [smalldatetime] NULL ,[ConfirmCaller] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ConfirmScore] [int] NULL ,[ConfirmFeedback] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[Remark] [ntext] COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_ServiceItem] ADD 	CONSTRAINT [PK_PE_ServiceItem] PRIMARY KEY  CLUSTERED 	(		[ItemID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_ServiceItem</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Slid</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Slid]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Slid]CREATE TABLE [dbo].[JE_Slid] ([huanID] [int] IDENTITY (1, 1) NOT NULL ,[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[width] [int] NULL ,[height] [int] NULL ,[picUrl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[text] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[orderID] [int] NULL ,[linkURL] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[channelID] [int] NULL ,[userId] [int] NULL ,[sp1ID] [int] NULL ,[sp2ID] [int] NULL ,[sp3ID] [int] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_Soft] ADD 	CONSTRAINT [PK_JE_Soft] PRIMARY KEY  CLUSTERED 	(		[SoftID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Slid</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Soft</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Soft]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Soft]CREATE TABLE [dbo].[JE_Soft] ([SoftID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelID] [int] NOT NULL ,[ClassID] [int] NOT NULL ,[SoftName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,[SoftVersion] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,[Author] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,[CopyFrom] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[DemoUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Hits] [int] NULL ,[DayHits] [int] NULL ,[WeekHits] [int] NULL ,[MonthHits] [int] NULL ,[CommentCount] [int] NULL ,[UpdateTime] [smalldatetime] NULL ,[CreateTime] [smalldatetime] NULL ,[OperatingSystem] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,[SoftType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[SoftLanguage] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[CopyrightType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[SoftSize] [int] NULL ,[RegUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,[OnTop] [bit] NULL ,[Elite] [bit] NULL ,[Status] [int] NULL ,[SoftIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[SoftPicUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[DownloadUrl] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[InfoPoint] [int] NULL ,[Deleted] [bit] NULL ,[Stars] [int] NULL ,[DecompressPassword] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LastHitTime] [smalldatetime] NULL ,[TemplateID] [int] NULL ,[SkinID] [int] NULL ,[ErrorTimes] [int] NULL ,[VoteID] [int] NULL ,[PresentExp] [float] NULL ,[BrowseTimes] [int] NULL ,[InfoPurview] [int] NULL ,[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[ChargeType] [int] NULL ,[PitchTime] [int] NULL ,[ReadTimes] [int] NULL ,[DividePercent] [int] NULL ,[BlogID] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]  ");
	out.println("<font color=##003366><b>JE_Soft</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_StyleName</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_StyleName]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_StyleName]CREATE TABLE [dbo].[JE_StyleName] ([StyleId] [int] IDENTITY (1, 1) NOT NULL ,[StyleName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[StyleShowName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[StyleLevel] [int] NULL ,[StylePath] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[StylePic] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[StyleState] [int] NULL ,[StylePrice] [money] NULL ,[UserId] [int] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_StyleName] ADD 	CONSTRAINT [PK_JE_StyleName] PRIMARY KEY  CLUSTERED 	(		[StyleId]	)  ON [PRIMARY]");
	out.println("<font color=##003366><b>JE_StyleName</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_TradeType</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_TradeType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_TradeType]CREATE TABLE [dbo].[JE_TradeType] ([tradTypeID] [int] IDENTITY (1, 1) NOT NULL ,[tradName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_TradeType] ADD 	CONSTRAINT [PK_JE_TradeType] PRIMARY KEY  CLUSTERED 	(		[tradTypeID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_TradeType</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Trademark</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Trademark]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Trademark]CREATE TABLE [dbo].[JE_Trademark] ([TrademarkID] [int] IDENTITY (1, 1) NOT NULL ,[ChannelID] [int] NULL ,[ProducerID] [int] NULL ,[TrademarkName] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[TrademarkPhoto] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[TrademarkIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[TrademarkType] [int] NULL ,[Passed] [int] NULL ,[onTop] [int] NULL ,[IsElite] [int] NULL ,[Hits] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Trademark] ADD 	CONSTRAINT [PK_JE_Trademark] PRIMARY KEY  CLUSTERED 	(		[TrademarkID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Trademark</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_Unit</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_Unit]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_Unit]CREATE TABLE [dbo].[JE_Unit] ([id] [int] IDENTITY (1, 1) NOT NULL ,[name] [text] COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_Unit] ADD 	CONSTRAINT [PK_JE_Unit] PRIMARY KEY  CLUSTERED 	(		[id]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_Unit</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_User</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_User]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_User]CREATE TABLE [dbo].[JE_User] ([UserID] [int] IDENTITY (1, 1) NOT NULL ,[GroupID] [int] NULL ,[ClientID] [int] NULL ,[UserType] [int] NULL ,[UserName] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,[UserPassword] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,[LastPassword] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,[Question] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Sign] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[Answer] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Email] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[UserFace] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[FaceWidth] [smallint] NULL ,[FaceHeight] [smallint] NULL ,[RegTime] [smalldatetime] NULL ,[LastLoginTime] [smalldatetime] NULL ,[LastLoginIP] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LoginTimes] [smallint] NULL ,[Balance] [money] NULL ,[UserExp] [int] NULL ,[PostItems] [int] NOT NULL ,[PassedItems] [int] NULL ,[DelItems] [int] NULL ,[UnsignedItems] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[UnreadMsg] [smallint] NULL ,[UserPoint] [int] NULL ,[ConsumePoint] [int] NULL ,[IsLocked] [int] NOT NULL ,[SpecialPermission] [int] NOT NULL ,[arrClass_Browse] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[arrClass_View] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[arrClass_Input] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Privacy] [smallint] NULL ,[UserFriendGroup] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[address] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[telphol] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_User] ADD 	CONSTRAINT [PK_JE_User] PRIMARY KEY  CLUSTERED 	(		[UserID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_User</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_UserBooK</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_UserBooK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_UserBooK]CREATE TABLE [dbo].[JE_UserBooK] ([bookId] [int] IDENTITY (1, 1) NOT NULL ,[bookTitle] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userId] [int] NULL ,[userInfoId] [int] NULL ,[ParentId] [int] NULL ,[isComment] [int] NULL ,[isRoot] [int] NULL ,[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[subDate] [datetime] NULL ,[Email] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[QQ] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[nickName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[IP] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[reContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[TA] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[TB] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[TC] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[TD] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[BA] [int] NULL ,[BB] [int] NULL ,[BC] [int] NULL ,[BD] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_UserBooK] ADD 	CONSTRAINT [DF_JE_UserBooK_isComment] DEFAULT (0) FOR [isComment],	CONSTRAINT [PK_JE_UserBooK] PRIMARY KEY  CLUSTERED 	(		[bookId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_UserBooK</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_UserConfig</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_UserConfig]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_UserConfig]CREATE TABLE [dbo].[JE_UserConfig] ([configId] [int] IDENTITY (1, 1) NOT NULL ,[linkurl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[showName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[showCName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ta] [int] NULL ,[tb] [int] NULL ,[tc] [int] NULL ,[td] [int] NULL ,[ba] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[bb] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[bc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[bd] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_UserConfig] ADD 	CONSTRAINT [PK_JE_UserChanel] PRIMARY KEY  CLUSTERED 	(		[configId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_UserConfig</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_UserDetail</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_UserDetail]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_UserDetail]CREATE TABLE [dbo].[JE_UserDetail] ([detailID] [int] IDENTITY (1, 1) NOT NULL ,[userId] [int] NULL ,[userType] [int] NULL ,[age] [int] NULL ,[sex] [int] NULL ,[identify] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userMobile] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[UserQQ] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[pri] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[city] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[xian] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[jiedao] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[address] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[postCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[getName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MSN] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[bg1] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg2] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg3] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg4] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg5] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[by1] [int] NULL ,[by2] [int] NULL ,[by3] [int] NULL ,[by4] [int] NULL ,[by5] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_UserDetail] ADD 	CONSTRAINT [DF_JE_UserDetail_userType] DEFAULT (0) FOR [userType],	CONSTRAINT [PK_JE_UserDetail] PRIMARY KEY  CLUSTERED 	(	[detailID]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_UserDetail</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_UserGroupType</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_UserGroupType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_UserGroupType]CREATE TABLE [dbo].[JE_UserGroupType] ([userTypeId] [int] IDENTITY (1, 1) NOT NULL ,[TypeName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[TypeLevel] [int] NULL ,[levelStr] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,[groupIntr] [ntext] COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_UserGroupType] ADD 	CONSTRAINT [DF_JE_UserType_TypeLevel] DEFAULT (0) FOR [TypeLevel],	CONSTRAINT [PK_JE_UserType] PRIMARY KEY  CLUSTERED 	(		[userTypeId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_UserGroupType</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_UserInfo</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_UserInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_UserInfo]CREATE TABLE [dbo].[JE_UserInfo] ([info_Id] [int] IDENTITY (1, 1) NOT NULL ,[User_Id] [int] NOT NULL ,[Info_Type] [int] NULL ,[Info_Itr] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[By_Name] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,[userClass] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[classContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[StyleName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userPage] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userAnnounce] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[siteName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[siteKeyWord] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[siteLogon] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[siteBanner] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[linkUs] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[jianjie] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[suohuo] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[shouhou] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[fukuanfangshi] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[hitNum] [int] NULL ,[TA] [int] NULL ,[TB] [int] NULL ,[TC] [int] NULL ,[TD] [int] NULL ,[VA] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[VB] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[VC] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[VD] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[CA] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[CB] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[CC] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[CD] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_UserInfo] ADD 	CONSTRAINT [PK_JE_UserInfo] PRIMARY KEY  CLUSTERED 	(		[info_Id])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_UserInfo</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_UserOder</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_UserOder]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_UserOder]CREATE TABLE [dbo].[JE_UserOder] ([UserOrderId] [int] IDENTITY (1, 1) NOT NULL ,[OrderNum] [text] COLLATE Chinese_PRC_CI_AS NULL ,[userId] [int] NULL ,[userInfoId] [int] NULL ,[address] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[sheng] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[shi] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[subDate] [datetime] NULL ,[Email] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[xian] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[telPhone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[phoneNum] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[dailiUserName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[youbian] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[fukuan] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[beizhu] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[la] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[lb] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[lc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ld] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[le] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ia] [int] NULL ,[ib] [int] NULL ,[ic] [int] NULL ,[id] [int] NULL ,[ie] [int] NULL ,[ja] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[jb] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[jc] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[jd] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[je] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[tm1] [datetime] NULL ,[tm2] [datetime] NULL ,[tm3] [datetime] NULL ,[tm4] [datetime] NULL ,[tm5] [datetime] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[JE_UserOder] ADD 	CONSTRAINT [PK_JE_UserOder] PRIMARY KEY  CLUSTERED 	(		[UserOrderId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_UserOder</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_bankCard</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_bankCard]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_bankCard]CREATE TABLE [dbo].[JE_bankCard] ([cardId] [int] IDENTITY (1, 1) NOT NULL ,[cardCode] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[cardAdd] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[other] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[linkOne] [int] NULL ,[linkTwo] [int] NULL ,[linkThree] [int] NULL ,[type] [int] NULL ,[status] [int] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[JE_bankCard] ADD 	CONSTRAINT [DF_JE_bankCard_type] DEFAULT (0) FOR [type],	CONSTRAINT [PK_JE_bankCard] PRIMARY KEY  CLUSTERED 	(		[cardId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_bankCard</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_log</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_log]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[JE_log]CREATE TABLE [dbo].[JE_log] ([id] [int] IDENTITY (1, 1) NOT NULL ,[userId] [int] NULL ,[isAdmin] [int] NULL ,[logDate] [datetime] NULL ,[logMsg] [ntext] COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]");
	out.println("<font color=##003366><b>JE_log</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>Je_Ad</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Je_Ad]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[Je_Ad]CREATE TABLE [dbo].[Je_Ad] ([Id] [int] IDENTITY (1, 1) NOT NULL ,[Wide] [int] NULL ,[High] [int] NULL ,[Url] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Show] [int] NULL ,[ChannelId] [int] NULL ,[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[LinkUrl] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,[Intr] [ntext] COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] ALTER TABLE [dbo].[Je_Ad] ADD 	CONSTRAINT [PK_JeAd] PRIMARY KEY  CLUSTERED 	(		[Id]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>Je_Ad</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>Je_userChannel</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Je_userChannel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[Je_userChannel]CREATE TABLE [dbo].[Je_userChannel] ([uclassId] [int] IDENTITY (1, 1) NOT NULL ,[cName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ShowName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[cType] [int] NULL ,[showLink] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[corder] [int] NULL ,[userId] [int] NULL ,[userInfoId] [int] NULL ,[isSHow] [int] NULL ,[parent] [int] NULL ,[pageId] [int] NULL ) ON [PRIMARY] ALTER TABLE [dbo].[Je_userChannel] ADD 	CONSTRAINT [DF_Je_userChannel_cType] DEFAULT (0) FOR [cType],	CONSTRAINT [DF_Je_userChannel_showLink] DEFAULT ('index.jsp') FOR [showLink],	CONSTRAINT [DF_Je_userChannel_corder] DEFAULT (0) FOR [corder],	CONSTRAINT [DF_Je_userChannel_isSHow] DEFAULT (0) FOR [isSHow],	CONSTRAINT [DF_Je_userChannel_parent] DEFAULT (0) FOR [parent],	CONSTRAINT [PK_Je_userChannel] PRIMARY KEY  CLUSTERED 	(		[uclassId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>Je_userChannel</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>Je_userClass</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Je_userClass]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table[dbo].[Je_userClass]CREATE TABLE [dbo].[Je_userClass] ([upclassId] [int] IDENTITY (1, 1) NOT NULL ,[ClassName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ClassOriName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[ClassId] [int] NULL ,[ChannelId] [int] NULL ,[parent] [int] NULL ,[linkurl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userId] [int] NULL ,[userInfoId] [int] NULL ,[altName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ) ON [PRIMARY] ALTER TABLE [dbo].[Je_userClass] ADD 	CONSTRAINT [DF_Je_userClass_parent] DEFAULT (0) FOR [parent],	CONSTRAINT [DF_Je_userClass_linkurl] DEFAULT ('showClass.jsp') FOR [linkurl],	CONSTRAINT [PK_Je_userClass] PRIMARY KEY  CLUSTERED 	(		[upclassId]	)  ON [PRIMARY] ");
	out.println("<font color=##003366><b>Je_userClass</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	out.println("<font color=##003366><b>JE_UserDetail</b></font><font color=#ff0000>表正在创建.........</font><br>");
	stmt.execute("if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JE_UserDetail]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[JE_UserDetail]CREATE TABLE [dbo].[JE_UserDetail] ([detailID] [int] IDENTITY (1, 1) NOT NULL ,[userId] [int] NULL ,[userType] [int] NULL ,[age] [int] NULL ,[sex] [int] NULL ,[identify] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[userMobile] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[UserQQ] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[pri] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[city] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[xian] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[jiedao] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[address] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[postCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[getName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[MSN] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,[bg1] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg2] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg3] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg4] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[bg5] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,[by1] [int] NULL ,[by2] [int] NULL ,[by3] [int] NULL ,[by4] [int] NULL ,[by5] [int] NULL ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ALTER TABLE [dbo].[JE_OrderForm] ADD CONSTRAINT [PK_JE_OrderForm] PRIMARY KEY  CLUSTERED ([OrderFormID])  ON [PRIMARY] ");
	out.println("<font color=##003366><b>JE_UserDetail</b></font><font color=#00CC00>表创建成功！</font><br>");
	stmt.close();
	
	
	
	
	
	
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
	
	
	
	//拷贝web.xml文件
	
	
	   String dataPath = application.getRealPath("")+"\\WEB-INF\\resfile\\SQL_hibernate.cfg.xml";
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
	
	
	//初始化配置文件
	
	
	out.println("<script language=javascript>parent.document.getElementById('msg').innerHTML='<font color=#ff0000><b>数据库安装完成，重新启动tomcat可预览网站,重新启动完成后请删除setup文件夹下的内容保证网站数据安全</b></font>';window.alert('系统安装完成！重新启动您的服务器系统生效');</script>");
	
	
	}
	}catch(Exception e)
	{
	out.println("<font color=#ff0000>数据库连接失败,失败原因如下："+e.toString()+"</font>");
	}
	
	}else
	{
	response.sendRedirect("InitDB.jsp");
	}
	
	%>   
    
    