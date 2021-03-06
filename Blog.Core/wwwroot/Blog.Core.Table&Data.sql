USE [WMBlogDB]
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 4/3/2019 1:21:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Createdate] [datetime] NOT NULL,
	[ImgUrl] [nvarchar](512) NULL,
	[Title] [nvarchar](64) NULL,
	[Url] [nvarchar](256) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Advertisement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogArticle]    Script Date: 4/3/2019 1:21:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogArticle](
	[bID] [int] IDENTITY(1,1) NOT NULL,
	[bsubmitter] [nvarchar](60) NULL,
	[btitle] [nvarchar](256) NULL,
	[bcategory] [nvarchar](max) NULL,
	[bcontent] [text] NULL,
	[btraffic] [int] NOT NULL,
	[bcommentNum] [int] NOT NULL,
	[bUpdateTime] [datetime] NOT NULL,
	[bCreateTime] [datetime] NOT NULL,
	[bRemark] [nvarchar](max) NULL,
 CONSTRAINT [PK_BlogArticle] PRIMARY KEY CLUSTERED 
(
	[bID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guestbook]    Script Date: 4/3/2019 1:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guestbook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[blogId] [int] NOT NULL,
	[createdate] [datetime] NOT NULL,
	[username] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[QQ] [nvarchar](max) NULL,
	[body] [nvarchar](max) NULL,
	[ip] [nvarchar](max) NULL,
	[isshow] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Guestbook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 4/3/2019 1:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[ParentId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[LinkUrl] [nvarchar](100) NULL,
	[Area] [nvarchar](max) NULL,
	[Controller] [nvarchar](max) NULL,
	[Action] [nvarchar](max) NULL,
	[Icon] [nvarchar](100) NULL,
	[Code] [nvarchar](10) NULL,
	[OrderSort] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsMenu] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModulePermission]    Script Date: 4/3/2019 1:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModulePermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[ModuleId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ModulePermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperateLog]    Script Date: 4/3/2019 1:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperateLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[Area] [nvarchar](max) NULL,
	[Controller] [nvarchar](max) NULL,
	[Action] [nvarchar](max) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[LogTime] [datetime] NULL,
	[LoginName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[User_uID] [int] NULL,
 CONSTRAINT [PK_dbo.OperateLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasswordLib]    Script Date: 4/3/2019 1:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordLib](
	[PLID] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[plURL] [varchar](200) NULL,
	[plPWD] [varchar](100) NULL,
	[plAccountName] [varchar](200) NULL,
	[plStatus] [int] NULL,
	[plErrorCount] [int] NULL,
	[plHintPwd] [varchar](200) NULL,
	[plHintquestion] [varchar](200) NULL,
	[plCreateTime] [datetime] NULL,
	[plUpdateTime] [datetime] NULL,
	[plLastErrTime] [datetime] NULL,
	[test] [varchar](200) NULL,
	[test3] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.PasswordLib] PRIMARY KEY CLUSTERED 
(
	[PLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 4/3/2019 1:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[OrderSort] [int] NOT NULL,
	[Mid] [int] NULL,
	[Pid] [int] NULL,
	[IsButton] [bit] NULL,
	[Icon] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[Enabled] [bit] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Permission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/3/2019 1:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[OrderSort] [int] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleModulePermission]    Script Date: 4/3/2019 1:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleModulePermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[RoleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[PermissionId] [int] NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.RoleModulePermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysUserInfo]    Script Date: 4/3/2019 1:22:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysUserInfo](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[uLoginName] [varchar](60) NULL,
	[uLoginPWD] [varchar](60) NULL,
	[uRealName] [varchar](60) NULL,
	[uStatus] [int] NOT NULL,
	[uRemark] [varchar](max) NULL,
	[uCreateTime] [datetime] NOT NULL,
	[uUpdateTime] [datetime] NOT NULL,
	[uLastErrTime] [datetime] NOT NULL,
	[uErrorCount] [int] NOT NULL,
	[name] [varchar](60) NULL,
	[sex] [int] NULL,
	[age] [int] NULL,
	[birth] [datetime] NULL,
	[addr] [varchar](200) NULL,
	[tdIsDelete] [bit] NULL,
 CONSTRAINT [PK_dbo.sysUserInfo] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 4/3/2019 1:22:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[tLogo] [nvarchar](200) NULL,
	[tName] [nvarchar](200) NULL,
	[tDetail] [nvarchar](400) NULL,
	[tSectendDetail] [nvarchar](200) NULL,
	[tIsDelete] [bit] NOT NULL,
	[tRead] [int] NOT NULL,
	[tCommend] [int] NOT NULL,
	[tGood] [int] NOT NULL,
	[tCreatetime] [datetime] NOT NULL,
	[tUpdatetime] [datetime] NOT NULL,
	[tAuthor] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopicDetail]    Script Date: 4/3/2019 1:22:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TopicId] [int] NOT NULL,
	[tdLogo] [nvarchar](200) NULL,
	[tdName] [nvarchar](200) NULL,
	[tdContent] [nvarchar](max) NULL,
	[tdDetail] [nvarchar](400) NULL,
	[tdSectendDetail] [nvarchar](200) NULL,
	[tdIsDelete] [bit] NOT NULL,
	[tdRead] [int] NOT NULL,
	[tdCommend] [int] NOT NULL,
	[tdGood] [int] NOT NULL,
	[tdCreatetime] [datetime] NOT NULL,
	[tdUpdatetime] [datetime] NOT NULL,
	[tdTop] [int] NOT NULL,
	[tdAuthor] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.TopicDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 4/3/2019 1:22:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Advertisement] ON 

INSERT [dbo].[Advertisement] ([Id], [Createdate], [ImgUrl], [Title], [Url], [Remark]) VALUES (3, CAST(N'2019-03-15T14:25:34.697' AS DateTime), NULL, N'good', NULL, N'mark')
SET IDENTITY_INSERT [dbo].[Advertisement] OFF
SET IDENTITY_INSERT [dbo].[BlogArticle] ON 

INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (1, N'admin', N'IIS new add website ，some wrong:The requested page cannot be accessed because the related configuration data for the page is invalid.', N'技术博文', N'                            <p>Question:</p><h1><a href="https://www.cnblogs.com/yipeng-yu/p/6210380.html">The requested page cannot be accessed because the related configuration data for the page is invalid.</a></h1><p>HTTP Error 500.19 - Internal Server Error The requested page cannot be accessed because the related configuration data for the page is invalid.</p><p>Detailed Error Information:</p><p>Module IIS Web Core</p><p>Notification Unknown</p><p>Handler Not yet determined</p><p>Error Code 0x80070003</p><p>Config Error Cannot read configuration file</p><p>Config File \?\D:\Projects\...\web.config</p><p>Requested URL http:// localhost:8080/</p><p>Physical Path</p><p>Logon Method Not yet determined</p><p>Logon User Not yet determined</p><p>Request Tracing Directory C:\Users\...\TraceLogFiles\</p><p>Config Source:</p><p>Answer:</p><p>1，find the site''s application pools</p><p>2,"Advanced Settings" ==&gt; Indentity ==&gt;&nbsp; Custom account</p><p><br></p><p><br></p>', 123, 1, CAST(N'2018-06-20T15:36:52.663' AS DateTime), CAST(N'2018-06-20T15:36:50.960' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (3, N'admin', N'The ''targetFramework'' attribute in the <compilation> element of the Web.config file is used only to target version 4.0 and later of the .N', N'技术博文', N'                            <p>The&nbsp;''targetFramework''&nbsp;attribute&nbsp;in&nbsp;the&nbsp;&lt;compilation&gt;&nbsp;element&nbsp;of&nbsp;the&nbsp;Web.config&nbsp;file&nbsp;is&nbsp;used&nbsp;only&nbsp;to&nbsp;target&nbsp;version&nbsp;4.0&nbsp;and&nbsp;later&nbsp;of&nbsp;the&nbsp;.NET&nbsp;Framework&nbsp;(for&nbsp;example,&nbsp;''&lt;compilation&nbsp;targetFramework="4.0"&gt;'').&nbsp;The&nbsp;''targetFramework''&nbsp;attribute&nbsp;currently&nbsp;references&nbsp;a&nbsp;version&nbsp;that&nbsp;is&nbsp;later&nbsp;than&nbsp;the&nbsp;installed&nbsp;version&nbsp;of&nbsp;the&nbsp;.NET&nbsp;Framework.&nbsp;Specify&nbsp;a&nbsp;valid&nbsp;target&nbsp;version&nbsp;of&nbsp;the&nbsp;.NET&nbsp;Framework,&nbsp;or&nbsp;install&nbsp;the&nbsp;required&nbsp;version&nbsp;of&nbsp;the&nbsp;.NET&nbsp;Framework.</p><pre><span>&lt;</span><span>system.web</span><span>&gt;</span>    
    <span>&lt;</span><span>compilation </span><span>debug</span><span>="true"</span><span> targetFramework</span><span>="4.5"</span> <span>/&gt;</span>
    <span>&lt;</span><span>httpRuntime </span><span>targetFramework</span><span>="4.5"</span> <span>/&gt;</span>
<span>&lt;/</span><span>system.web</span><span>&gt;</span></pre><pre>&lt;system.web&gt;    
    &lt;compilation debug="true" /&gt;
    &lt;httpRuntime targetFramework="4.0" /&gt;
&lt;/system.web&gt;</pre><p>compilation是编译设置，在部署环境无须设置 targetFramework，当然 debug 也可以设置成 false</p><p>httpRuntime是运行时，我们知道 .Net 4.0 和 .Net 4.5 的运行时版本都是 .Net 4.0，所以改成4.0就OK了</p><p><br></p>', 64, 0, CAST(N'2018-06-20T18:08:37.397' AS DateTime), CAST(N'2018-06-20T18:08:37.397' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (16, N'admin', N'Redis在windows下安装过程', N'技术博文', N'                        <p>去官网找了很久，发现原来在官网上可以下载的windows版本的，现在官网以及没有下载地址，只能在github上下载，官网只提供linux版本的下载</p><p>官网下载地址：<a href="http://redis.io/download">http://redis.io/download</a></p><p>github下载地址：<a href="https://github.com/MSOpenTech/redis/tags">https://github.com/MSOpenTech/redis/tags</a></p><p>在运行中输入cmd，然后把目录指向解压的Redis目录。</p><p>redis-server redis.windows.conf，出现下图显示表示启动成功了。</p><p>1、由于上面虽然启动了redis，但是只要一关闭cmd窗口，redis就会消失。所以要把redis设置成windows下的服务。</p><p>也就是设置到这里，首先发现是没用这个Redis服务的。</p><p>2、设置服务命令</p><p>redis-server --service-install redis.windows-service.conf --loglevel verbose</p><p>输入命令之后没有报错，表示成功了，刷新服务，会看到多了一个redis服务。</p><p>3、常用的redis服务命令。</p><p>卸载服务：redis-server --service-uninstall</p><p>开启服务：redis-server --service-start</p><p>停止服务：redis-server --service-stop</p><p></p><p>4、启动服务</p><p><br></p>', 23, 0, CAST(N'2018-06-21T19:43:33.460' AS DateTime), CAST(N'2018-06-21T19:43:33.460' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (17, N'admin', N'The difference of  between EF and ADO.NET', N'随笔日志', N'<p>ado.net EF作为微软的一个ORM框架，通过实体、关系型数据库表之间的映射，使开发人员可以通过操作表实体而间接的操作数据库，大大的提高了开发效率。<br></p><p>这样一来，.net平台下，我们与底层数据库的交互就有两种选择了（这句话说得不是很准确，微软.net 框架下还是有其他的ORM框架的,，如Nhibernate）：ado.net EF、ado.net 。</p><p>你可能以为我上面的内容写错了，ado.net EF 、ado.net 两者怎么都带有一个ado.net呢？</p><p>OK，如果你有这样的疑问的话，那么我们就有必要来了解一下.net的一些基本知识了</p><p>（1）.net： 最核心的基础平台（可以看做运行环境和巨多类库），仅次于操作系统<br>（2）asp.net： .net平台下进行网站开发的框架<br>（3）asp.net MVC：asp.net 框架下开发网页的一种框架<br>（4）ado.net： .net平台下访问数据库的框架，他提供了一些列的访问数据库的类库<br>（5）ado.net EF： ado.net框架下访问数据库的最新最强大的ORM<br>（6）ORM： 把数据库映射为实体类的技术<br>（7）NHibemate： .net平台内访问数据库的一种可选ORM，从Java转换而来<br></p><p>以上仅仅是个人见解，不代表官方说法。</p><p>上面只是对ado.net 和ado.net EF两者进行了简单了解，下面我们再对两者进行一个具体的比较学习</p><p>（1）ado.net 做为原装的直接跟数据库打交道，直接操作数据库，没有进行额外的封装。比如我们可以直接执行sql语句，直接调用存储过程。直接操作DataSet数据集等等数据。（2）EF 是ORM思想的付诸于实践，它对ado.net进行了封装，对数据表进行了映射处理，以对象的形式展现在开发人员面前。开发人员可以利用Linq语句的优势来执行增、改、查。但是最终的操作都是要转换成SQL语句来执行。比如：</p><ol><li>From&nbsp;a&nbsp;in&nbsp;Context.Student&nbsp;&nbsp;</li><li>Where&nbsp;a.id&nbsp;=1&nbsp;&nbsp;</li><li>Select&nbsp;a;&nbsp;&nbsp;</li></ol><p>&nbsp;真正执行的时候会转换成 SQL " Select * from Student Where id=1"。</p><p>&nbsp;EF让我们可以用面向对象的思想来编写程序，把注意力集中在系统中的业务环节。但是由于他要进行一次SQL语句的转换，所以相对于原始的ADO.NET来说，EF由于进行了封装，所以性能相对ADO.NET来说差一点点。不过EF也在不断的优化和改进中。 当然，EF也可以直接执行SQL语句和存储过程。有人会问，那为什么不直接执行SQL语句呢，回答是，直接执行的话要EF有什么用呢，EF就是在推行以面向对象编程的思想来处理业务。</p><p>OK，上面对两者进行了简单的比较，既然微软对ado.net 进行封装推出EF，那说明EF相对于原始的ado.net还是有优势的呢，那具体有哪些呢？</p><p>EF相对于ado.net 的优点<br>（1）开发效率高，开发人员完全可以根据面向对象的思维进行软件的开发<br>（2）可以使用三种设计模式中的ModelFirst来设计数据库，而且比较直观<br>（3）可以跨数据库，只需要在配置文件中修改连接字符串<br>（4）与vs结合的比较好<br></p><p>缺点：性能上赶不上原生的ado.net （因为他中间还有一个生成sql脚本的过程）</p><p>上面的缺点也暴露了一个问题：ado.net EF替代ado.net 。</p><p>那有没有折中一点的方案，两者都使用呢？</p><p>答案是肯定的，我们可以在EF中使用sql语句和存储过程。那具体如何使用？</p><p>不要急，下面我们就一起来学习。</p><p>在 EF第一个版本（.NET 3.5 SP1）中，我们只能通过将ObjectContext.Connection转换为EntityConnection，再把&nbsp;EntityConnection.StoreConnection转换为SqlConnection。有了这个SqlConnection，我们再创建 SqlCommand便能顺利运行SQL命令了。（个人觉得其实很烦，呵呵）<br>例如：<br></p><ol><li>EntityConnection&nbsp;entityConnection&nbsp;=&nbsp;(EntityConnection)ctx.Connection;&nbsp;&nbsp;</li><li>&nbsp;DbConnection&nbsp;storeConnection&nbsp;=&nbsp;entityConnection.StoreConnection;&nbsp;&nbsp;</li><li>&nbsp;DbCommand&nbsp;cmd&nbsp;=&nbsp;storeConnection.CreateCommand();&nbsp;&nbsp;</li><li>&nbsp;cmd.CommandType&nbsp;=&nbsp;System.Data.CommandType.StoredProcedure;&nbsp;&nbsp;</li><li>cmd.CommandText&nbsp;=&nbsp;"[PRO_USER_DIGITALCARD_CHECK]";&nbsp;&nbsp;</li><li>//。。。。。。。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></ol><br><p><br>在EF4（.NET 4）中，我们有了全新的API：ObjectContext.ExecuteStoreCommand(...)和 ObjectContext.ExecuteStoreQuery&lt;T&gt;(...)。从函数名不难知道前者是为了执行某一并无返回集的SQL 命令，例如UPDATE，DELETE操作；后者是执行某一个查询，并可以将返回集转换为某一对象。</p><p><br></p><ol><li>using&nbsp;(FlowersPlatformEntities&nbsp;db&nbsp;=&nbsp;new&nbsp;FlowersPlatformEntities())&nbsp;&nbsp;</li><li>&nbsp;{&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;string&nbsp;selectSql&nbsp;=&nbsp;"select&nbsp;*&nbsp;from&nbsp;Flower";&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ObjectResult&lt;Flower&gt;&nbsp;result&nbsp;=&nbsp;db.ExecuteStoreQuery&lt;Flower&gt;(selectSql,&nbsp;null);&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(var&nbsp;item&nbsp;in&nbsp;result)&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//遍历查询结果&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;string&nbsp;insertSql&nbsp;=&nbsp;"insert&nbsp;into&nbsp;dbo.Flower&nbsp;values(''月季'',''月季很好看。。。。。。'')";&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;res&nbsp;=&nbsp;db.ExecuteStoreCommand(insertSql,&nbsp;null);&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(res&nbsp;&gt;&nbsp;0)&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//插入成功&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//插入失败&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</li><li>&nbsp;}&nbsp;&nbsp;</li></ol><p>存储过程：</p><p>（1）新建存储过程</p><p><br></p><ol><li>create&nbsp;proc&nbsp;MianDemo&nbsp;&nbsp;</li><li>@id&nbsp;int&nbsp;&nbsp;</li><li>as&nbsp;&nbsp;&nbsp;</li><li>select&nbsp;*&nbsp;&nbsp;</li><li>from&nbsp;dbo.Indicator&nbsp;&nbsp;</li><li>where&nbsp;dbo.Indicator.Id=@id&nbsp;&nbsp;</li></ol><p>上面新建的存储过程没有什么实际意义，只是用来举例使用的。<br>（2）EF中执行存储过程</p><p><br></p><ol><li>SqlParameter[]&nbsp;param&nbsp;=&nbsp;new&nbsp;SqlParameter[]&nbsp;{&nbsp;new&nbsp;SqlParameter("@id",&nbsp;1)&nbsp;};&nbsp;&nbsp;</li><li>var&nbsp;temp&nbsp;=&nbsp;db.ExecuteStoreQuery&lt;Indicator&gt;("exec&nbsp;MianDemo&nbsp;@id",param).ToList();&nbsp;&nbsp;</li><li>foreach&nbsp;(var&nbsp;item&nbsp;in&nbsp;temp)&nbsp;&nbsp;</li><li>{&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;Response.Write(item.Id);&nbsp;&nbsp;</li><li>}&nbsp;&nbsp;</li></ol><p>存储过程的执行方法与查询的方法是同一个。</p><ol><li>&lt;/pre&gt;&lt;pre&nbsp;code_snippet_id="1628892"&nbsp;snippet_file_name="blog_20160330_4_5375036"&nbsp;name="code"&nbsp;class="csharp"&gt;&nbsp;&nbsp;</li></ol><p>到了EF4.1，API的名字又有了些许改变。如果说DbContext将ObjectContext做了包装，那么DbContext.Database就是对应于数据库端信息的封装。执行SQL命令也自然从Database类型开始。对应于ExecuteStoreCommand和ExecuteStoreQuery&lt;T&gt;的是Database.ExecuteSqlCommand和Database.SqlQuery&lt;T&gt;。</p><p></p><p>只要修改上面的代码的方法名称，就可以实现代码重用，在此就不在罗列了。</p><p><br></p>', 23, 0, CAST(N'2018-06-22T18:52:01.350' AS DateTime), CAST(N'2018-06-22T18:52:01.350' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (18, N'admin', N'Windows Server 2008 R2提示密码即将过期怎么办', N'技术博文', N'<p>1，ctrl+alt+delete 去修改密码</p><p>2、<span style="color: inherit;">打开“服务器管理器”，选择“配置”-“本地用户和组”-“用户，</span><span style="color: inherit;">右击administrator，选择“属性”，在“常规”选项中勾上“密码永不过期”，点击“应用”和“确定”。</span><span style="color: inherit;"><br></span></p><p><span style="color: inherit;">3、</span><span style="color: inherit;">在开始菜单中选择“管理工具”-“本地安全策略”，</span><span style="color: inherit;">选择“安全策略”-“账户策略”-“密码策略”，编辑“密码最短使用期限”和“密码最长使用期限”，天数设置为0，即永不过期，点击“确定”即可。</span><span style="color: inherit;"><br></span></p><p><br></p>', 14, 0, CAST(N'2018-06-25T11:14:53.117' AS DateTime), CAST(N'2018-06-25T11:14:53.117' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (19, N'admin', N'CodeFirst完美解决数据迁移-记录中-更新版', N'技术博文', N'<p><br>------------------2018-06-25 06:44-------------------------</p><p>迁移至指定版本（包括后退）</p><p>　　迄今为止，我们总是升级至最新迁移，然而某些时候我们需要升级/降级至指定版本，例如我们想迁移数据库至运行&nbsp;AddBlogUrl&nbsp;迁移之后的状态，此时我们就可以使用&nbsp;–TargetMigration&nbsp;来降级到这个版本</p><p>　　在&nbsp;Package Manager Console&nbsp;中运行命令&nbsp;Update-Database –TargetMigration: AddBlogUrl&nbsp;</p><p>&nbsp;<img src="http://blog.azlinli.com/upload/image/20180625/20180625185757_6161.png" alt="" style="color: inherit;" class=""></p><p style="width:100%;"><br></p><p style="width:100%;">------------------2018-06-25 06:36-------------------------</p><p>工程用的MVC +&nbsp;Entity Framework，根据CodeFirst的编程理念，先创建模型再自动生产数据库和数据表。</p><p>看起来这很方便，也给开发带来很多便利，开发时不用考虑数据建库建表。</p><p>所以首先建立框架，写好实体和DbContext</p><p><img src="http://blog.azlinli.com/upload/image/20180625/20180625125103_4329.png" alt="" class=""><br></p><p>问题来了</p><p>一、当我们的程序开发到中途时，发现还需要一个字段。好，按照常理，就在对应的实体加一个属性就是了，但当我们加入实体的时候，再次运行程序就报错了。</p><p>有个最笨但简单的方法，删除数据库，再次运行程序。OK，问题接着又来了。</p><p>二、当我们的程序试运行一段时间后，需要增加一个字段。怎么办呢？还是按照常理来，在对应的实体加一个属性，OK。接下来我们可能会想到</p><p>1、方案一：再次删掉数据库，重新运行程序。可是我们的数据都丢失了，可以发现表是重建了，数据都丢失了。不科学。</p><p>2、方案二：直接在数据库对应的表里面加上我们在实体里面命名的属性字段，并且选择对应的数据类型，好，想象中是可以的，而且运行没有报错，但实际会令我们失望。运行程序，程序仍然将我们的表重建，数据丢失。为什么我们手动把数据表字段与实体字段设置成一致了还会出错呢？这个我也没有深究。可能是EF框架另有玄机吧，望有高手指点。</p><p>3、方案三：首先备份现有表里面的数据，再删除数据库，运行我们的程序，新的表和字段都建好了，然后我们再想办法不论是写sql插入还是怎么办，反正很麻烦。而且如果遇到有自增主键关联的，你还没办法插对应主键的记录。所以仍不可行。</p><p>解决方法：</p><p>其实微软早就有很好很完美的解决办法了。通过网上搜集到的资料，简单说明其操作方法</p><p>涉及到变更表结构和字段的，都可以用数据迁移的方法。</p><p>具体操作如下：</p><p>1、首先修改我们的实体。编译通过。</p><p>2、打开“程序包管理器控制台”</p><p>3、打开之后如下图所示，选中我们的<span style="color: inherit;">&nbsp;Wchl.WMBlog.Model</span><span style="color: inherit;">程序集</span></p><p>4、输入“Enable-Migrations -ContextTypeName&nbsp;<span style="color: inherit;">&nbsp;Wchl.WMBlog.Model</span><span style="color: inherit;">.</span><span style="color: inherit;">WMBlogDB</span><span style="color: inherit;">”命令。别急，你得把</span><span style="color: inherit;">Wchl.WMBlog.Model</span><span style="color: inherit;">.</span><span style="color: inherit;">WMBlogDB</span><span style="color: inherit;">改成你的工程对应正确的类名，如下图</span></p><p><img src="http://blog.azlinli.com/upload/image/20180625/20180625125249_1089.png" alt=""><br></p><p>5、命令执行之后，我们会发现我们的程序集里多了一些文件夹和文件。这个是自动生成的。</p><p>6、执行命令“add-migration Initial”，其中“Initial”可以自定成其他名字。</p><p>7、执行命令“update-database”，成功执行。</p><p>8、运行我们的程序，我们会惊奇地发现，我们的表结构已经修改了，而且我们的数据也都还在。</p><p><br></p>', 24, 0, CAST(N'2018-06-25T12:53:02.570' AS DateTime), CAST(N'2018-06-25T12:53:02.570' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (20, N'admin', N'Js，为什么if 表达式中有逗号表达式', N'技术博文', N'<p>比如：</p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-keyword">var</span> i = <span class="hljs-number">4</span>, j = <span class="hljs-number">10</span>;

<span class="hljs-keyword">if</span>((i &gt; <span class="hljs-number">5</span> ? <span class="hljs-literal">true</span> : <span class="hljs-literal">false</span>),i = <span class="hljs-number">5</span>,j &gt; <span class="hljs-number">8</span>)
{
    alert(<span class="hljs-string">"这里会被执行，并且i变成了5"</span>) 
}</code></pre><p>解答：</p><p>其实上面的代码可以这样写：</p><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-keyword">var</span> i = <span class="hljs-number">4</span>, j = <span class="hljs-number">10</span>;
(i &gt; <span class="hljs-number">5</span> ? ture : <span class="hljs-literal">false</span>);
i=<span class="hljs-number">5</span>;
<span class="hljs-keyword">if</span>(j &gt; <span class="hljs-number">8</span>)
{
    alert(<span class="hljs-string">"这里会被执行，并且i变成了5"</span>) 
}</code></pre><p>总结：</p><p>[?6/?27/?2018
2:32 PM]&nbsp; </p><p>js中<a href="https://www.baidu.com/s?wd=%E9%80%97%E5%8F%B7%E8%A1%A8%E8%BE%BE%E5%BC%8F&tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao">逗号表达式</a>的值为最右面的那个值</p><p><i>&nbsp;if(1,1,1)等价于if(1)</i></p><p><i>&nbsp;if(1,2,3,4,5)等价于if(5)</i></p><p><i>&nbsp;if(false,true)等价于if(true)&nbsp;</i></p><p><i>if(true,false)等价于if(false)&nbsp;</i></p><p><i>与&amp;&amp;无任何关系 </i></p><p>&nbsp;</p><p></p><p>&nbsp;</p><p><br></p>', 15, 0, CAST(N'2018-06-27T14:55:34.633' AS DateTime), CAST(N'2018-06-27T14:55:34.633' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (21, N'admin', N'厉害了，JS中 0.1+0.2 != 0.3！！！', N'技术博文', N'<blockquote><p>console.log(0.1 + 0.2)  // 结果是0.30000000000000004，而不是 0.3</p></blockquote><h2>这里0.1 + 0.2 != 0.3&nbsp;这个就是我们要解决的问题了。</h2><p>要弄清这个问题的原因，首先我们需要了解下在计算机中数字是如何存储和运算的。在计算机中，数字无论是定点数还是浮点数都是以多位二进制的方式进行存储的。在JS中数字采用的IEEE 754的双精度标准进行存储，我们可以无需知道他的存储形式，只需要简单的理解成就是存储一个数值所使用的二进制位数比较多而已，这样得到的数会更加精确。</p><p>这里为了简单直观，我们使用定点数来说明问题。在定点数中，如果我们以8位二进制来存储数字。</p><blockquote><p>对于整数来说，十进制的35会被存储为：&nbsp;00100011&nbsp;其代表&nbsp;2^5 + 2^1 + 2^0。对于纯小数来说，十进制的0.375会被存储为：&nbsp;0.011&nbsp;其代表&nbsp;1/2^2 + 1/2^3&nbsp;=&nbsp;1/4 + 1/8 = 0.375</p></blockquote><p>而对于像0.1这样的数值用二进制表示你就会发现无法整除，最后算下来会是&nbsp;0.000110011....由于存储空间有限，最后计算机会舍弃后面的数值，所以我们最后就只能得到一个近似值。在JS中采用的IEEE 754的双精度标准也是一样的道理，我们且不管这个标准下的存储方式跟定点数存储有何不同，单单在这一点上他们都是相同的，也就是存储空间有限，当出现这种无法整除的小数的时候就会取一个近似值，在js中如果这个近似值足够近似，那么js就会认为他就是那个值。（比较拗口，举个例子）</p><pre><code>console.log(0.1000000000000001)  
// 0.1000000000000001 (中间14个0，会打印出它本身)

console.log(0.10000000000000001)  
// 0.1 (中间15个0，js会认为这两个值足够接近，所以会显示0.1)
</code></pre><p>&nbsp; &nbsp; 所以我们现在应该可以理解，就是说由于0.1转换成二进制时是无限循环的，所以在计算机中0.1只能存储成一个近似值。另外说一句，除了那些能表示成&nbsp;x/2^n&nbsp;的数可以被精确表示以外，其余小数都是以近似值得方式存在的。&nbsp; &nbsp; 在0.1 + 0.2这个式子中，0.1和0.2都是近似表示的，在他们相加的时候，两个近似值进行了计算，导致最后得到的值是0.30000000000000004，此时对于JS来说，其不够近似于0.3，于是就出现了0.1 + 0.2 != 0.3这个现象。&nbsp; &nbsp; 当然，也并非所有的近似值相加都得不到正确的结果。有时两个近似值进行计算的时候，得到的值是在JS的近似范围内的，于是就可以得到正确答案。至于哪些值计算后能得到正确结果，哪些不能，我们也不需要去记。最好的方法就是我们想办法规避掉这类小数计算时的精度问题就好了。</p><p>&nbsp;</p><p>那么最常用的方法就是将浮点数转化成整数计算。因为整数都是可以精确表示的。</p><p>方法也很简单，举个例子：</p><pre><code>对于0.1 + 0.02 我们需要转化成 ( 10 + 2 ) / 1e2
对于0.1 * 0.02 我们则转化成 1 * 2 / 1e3
</code></pre><p>&nbsp;</p><p>按照这个思路，写个简单的方法就好了。</p><p></p><p>&nbsp;</p><p><br></p>', 19, 0, CAST(N'2018-07-09T15:33:23.287' AS DateTime), CAST(N'2018-07-09T15:33:23.287' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (22, N'admin', N'如何将本地代码上传到Github', N'技术博文', N'<p>重大的GIT：</p><p><a href="https://github.com/anjoy8/AZLinli.com.git" target="_blank">https://github.com/anjoy8/AZLinli.com.</a></p><p><a href="https://github.com/anjoy8/AZLinli.ORM.git" target="_blank">https://github.com/anjoy8/AZLinli.ORM</a></p><p><a href="https://github.com/anjoy8/AZLinli.Blog" target="_blank">https://github.com/anjoy8/AZLinli.Blog</a></p><p><br></p><p>1、下载Git，注册账号，等待略</p><p>2、Github创建项目<br><img src="http://blog.azlinli.com/upload/image/20180711/20180711165751_0536.png" alt=""><br></p><p><br></p><p>3、Code所在根目录执行</p><p>git init&nbsp;</p><p>git add .&nbsp;</p><p>git commit -m "first commit"  （first commit 本次提交的内容）&nbsp;</p><p>git remote add origin https://github.com/1111/test1.git （地址换成你建的项目的地址，不知道的话看下边 项目地址是哪个的图）&nbsp;</p><p>git push -u origin master  （这一句执行的时候 可能需要输入你的 git 账号 和密码）</p><h2>第三步：建立git仓库</h2><pre><code>git init
</code></pre><h2>第四步：将项目的所有文件添加到仓库中</h2><pre><code>git add .
</code></pre><h2>第五步：</h2><pre><code>git add README.md
</code></pre><h2>第六步：提交到仓库</h2><pre><code>git commit -m "注释语句"
</code></pre><h2>第七步：将本地的仓库关联到GitHub，后面的https改成刚刚自己的地址，上面的红框处</h2><pre><code>git remote add origin https://github.com/zlxzlxzlx/Test.git
</code></pre><h2>第八步：上传github之前pull一下</h2><pre><code>git pull origin master
</code></pre><h2>第九步：上传代码到GitHub远程仓库</h2><pre><code>git push -u origin master
</code></pre><h2>中间可能会让你输入Username和Password，你只要输入github的账号和密码就行了。执行完后，如果没有异常，等待执行完就上传成功了。</h2><h2>更新代码</h2><h2>第一步：查看当前的git仓库状态，可以使用git status</h2><pre><code>git status
</code></pre><h2>第二步：更新全部</h2><pre><code>git add *
</code></pre><h2>第三步：接着输入git commit -m "更新说明"</h2><pre><code>git commit -m "更新说明"
</code></pre><h2>第四步：先git pull,拉取当前分支最新代码</h2><pre><code>git pull
</code></pre><h2>第五步：push到远程master分支上</h2><pre><code>git push origin master
</code></pre><h2>不出意外，打开GitHub已经同步了</h2><p><br></p><p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/60/horse2_thumb.gif"><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif" style="color: inherit;"><br></p><p>Git常见错误与操作：error: src refspec master does not match any解决办法</p><p>一、 出现错误 error:src refspec master does not match any</p><p>原因分析：</p><p>引起该错误的原因是目录中没有文件，空目录是不能提交上去的</p><p>解决办法：</p><pre><code><ol><li><div><div></div></div><div><div>$ touch README</div></div></li><li><div><div></div></div><div><div>$ git add README</div></div></li><li><div><div></div></div><div><div>$ git commit –m’first commit’</div></div></li><li><div><div></div></div><div><div>$ git push origin master</div></div></li></ol></code></pre><p><br></p>', 43, 0, CAST(N'2018-07-11T16:59:13.163' AS DateTime), CAST(N'2018-07-11T16:59:13.163' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (23, N'admin', N'纯Javascript 手写 全选/全不选 反选 单选 等', N'技术博文', N'<pre style="max-width:100%;overflow-x:auto;"><code class="html hljs xml" codemark="1"><span class="hljs-tag">&lt;<span class="hljs-name">style</span>&gt;</span><span class="css">
<span class="hljs-selector-tag">td</span> {
    <span class="hljs-attribute">border-right</span>: <span class="hljs-number">1px</span> dashed;
    <span class="hljs-attribute">border-bottom</span>: <span class="hljs-number">1px</span> dashed;
}
</span><span class="hljs-tag">&lt;/<span class="hljs-name">style</span>&gt;</span>

<span class="hljs-tag">&lt;<span class="hljs-name">div</span>&gt;</span>
	<span class="hljs-tag">&lt;<span class="hljs-name">table</span>&gt;</span>
	<span class="hljs-tag">&lt;<span class="hljs-name">thead</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"allCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"allCheck();"</span> /&gt;</span>全选   <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"allFanCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"allFanCheck();"</span> /&gt;</span>反选<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>姓名<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>年龄<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
	<span class="hljs-tag">&lt;/<span class="hljs-name">thead</span>&gt;</span>
	<span class="hljs-tag">&lt;<span class="hljs-name">tbody</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>张三<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>18<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span>  <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>李四<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>16<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span>  <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>王五<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>23<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span>  <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>小熊猫<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>24<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
	<span class="hljs-tag">&lt;/<span class="hljs-name">tbody</span>&gt;</span>
<span class="hljs-tag">&lt;/<span class="hljs-name">table</span>&gt;</span>

<span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>
<span class="hljs-tag">&lt;<span class="hljs-name">script</span>&gt;</span><span class="javascript">
<span class="hljs-keyword">var</span> allCheckbox=<span class="hljs-built_in">document</span>.getElementsByName(<span class="hljs-string">"allCheck"</span>);
<span class="hljs-keyword">var</span> allFanCheckbox=<span class="hljs-built_in">document</span>.getElementsByName(<span class="hljs-string">"allFanCheck"</span>);
<span class="hljs-keyword">var</span> itemCheckboxList=<span class="hljs-built_in">document</span>.getElementsByName(<span class="hljs-string">"itemCheck"</span>);

<span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">allCheck</span>(<span class="hljs-params"></span>)</span>{
	<span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> i=<span class="hljs-number">0</span>;i&lt;itemCheckboxList.length;i++){
		itemCheckboxList[i].checked=allCheckbox[<span class="hljs-number">0</span>].checked;
	}
}
<span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">itemClick</span>(<span class="hljs-params"></span>)</span>{
	allCheckbox[<span class="hljs-number">0</span>].checked=<span class="hljs-literal">true</span>;
	<span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> i=<span class="hljs-number">0</span>;i&lt;itemCheckboxList.length;i++){
		allCheckbox[<span class="hljs-number">0</span>].checked &amp;=itemCheckboxList[i].checked;
	}
}

<span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">allFanCheck</span>(<span class="hljs-params"></span>)</span>{
	allCheckbox[<span class="hljs-number">0</span>].checked=<span class="hljs-literal">true</span>;
	<span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> i=<span class="hljs-number">0</span>;i&lt;itemCheckboxList.length;i++){
		itemCheckboxList[i].checked=!itemCheckboxList[i].checked;
		allCheckbox[<span class="hljs-number">0</span>].checked &amp;=itemCheckboxList[i].checked;
	}
}
</span><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span></code></pre><p><br></p>', 16, 0, CAST(N'2018-07-15T16:58:56.767' AS DateTime), CAST(N'2018-07-15T16:58:56.767' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (24, N'admin', N'C#  反射初探', N'技术博文', N'<p>1、什么是反射&nbsp; &nbsp; &nbsp; &nbsp; Reflection，中文翻译为反射。&nbsp; &nbsp; &nbsp; &nbsp; 这是.Net中获取运行时类型信息的方式，.Net的应用程序由几个部分：‘程序集(Assembly)’、‘模块(Module)’、‘类型(class)’组成，而反射提供一种编程的方式，让程序员可以在程序运行期获得这几个组成部分的相关信息，例如：&nbsp; &nbsp; &nbsp; &nbsp; Assembly类可以获得正在运行的装配件信息，也可以动态的加载装配件，以及在装配件中查找类型信息，并创建该类型的实例。Type类可以获得对象的类型信息，此信息包含对象的所有要素：方法、构造器、属性等等，通过Type类可以得到这些要素的信息，并且调用之。MethodInfo包含方法的信息，通过这个类可以得到方法的名称、参数、返回值等，并且可以调用之。诸如此类，还有FieldInfo、EventInfo等等，这些类都包含在System.Reflection命名空间下。2、命名空间与装配件的关系&nbsp; &nbsp; &nbsp; &nbsp; 很多人对这个概念可能还是很不清晰，对于合格的.Net程序员，有必要对这点进行澄清。&nbsp; &nbsp; &nbsp; &nbsp; 命名空间类似与Java的包，但又不完全等同，因为Java的包必须按照目录结构来放置，命名空间则不需要。&nbsp; &nbsp; &nbsp; &nbsp; 装配件是.Net应用程序执行的最小单位，编译出来的.dll、.exe都是装配件。&nbsp; &nbsp; &nbsp; &nbsp; 装配件和命名空间的关系不是一一对应，也不互相包含，一个装配件里面可以有多个命名空间，一个命名空间也可以在多个装配件中存在，这样说可能有点模糊，举个例子：装配件A：</p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">namespace  N1
{
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">AC1</span>  </span>{…}
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">AC2</span>  </span>{…}
}
namespace  N2
{
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">AC3</span>  </span>{…}
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">AC4</span></span>{…}
}</code></pre><p>装配件B：</p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">namespace  N1
{
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">BC1</span>  </span>{…}
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">BC2</span>  </span>{…}
}
namespace  N2
{
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">BC3</span>  </span>{…}
      public  <span class="hljs-class"><span class="hljs-keyword">class</span>  <span class="hljs-title">BC4</span></span>{…}
}</code></pre><p><em>复制代码</em></p><p>这两个装配件中都有N1和N2两个命名空间，而且各声明了两个类，这样是完全可以的，然后我们在一个应用程序中引用装配件A，那么在这个应用程序中，我们能看到N1下面的类为AC1和AC2，N2下面的类为AC3和AC4。&nbsp; &nbsp; &nbsp; &nbsp; 接着我们去掉对A的引用，加上对B的引用，那么我们在这个应用程序下能看到的N1下面的类变成了BC1和BC2，N2下面也一样。&nbsp; &nbsp; &nbsp; &nbsp; 如果我们同时引用这两个装配件，那么N1下面我们就能看到四个类：AC1、AC2、BC1和BC2。&nbsp; &nbsp; &nbsp; &nbsp; 到这里，我们可以清楚一个概念了，命名空间只是说明一个类型是那个族的，比如有人是汉族、有人是回族；而装配件表明一个类型住在哪里，比如有人住在北京、有人住在上海；那么北京有汉族人，也有回族人，上海有汉族人，也有回族人，这是不矛盾的。&nbsp; &nbsp; &nbsp; &nbsp; 上面我们说了，装配件是一个类型居住的地方，那么在一个程序中要使用一个类，就必须告诉编译器这个类住在哪儿，编译器才能找到它，也就是说必须引用该装配件。&nbsp; &nbsp; &nbsp; &nbsp; 那么如果在编写程序的时候，也许不确定这个类在哪里，仅仅只是知道它的名称，就不能使用了吗？答案是可以，这就是反射了，就是在程序运行的时候提供该类型的地址，而去找到它。有兴趣的话，接着往下看吧。</p><p><img src="http://blog.azlinli.com/upload/image/20180717/20180717164115_9882.png" alt=""><br></p><p><br></p><p><img src="http://blog.azlinli.com/upload/image/20180717/20180717171619_4204.png" alt=""><br></p><p><br></p><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><p>namespace&nbsp;ConsoleAppTest
</p><p>{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;class&nbsp;Program
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;static&nbsp;void&nbsp;Main(string[]&nbsp;args)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MianJi&nbsp;mj&nbsp;=&nbsp;new&nbsp;MianJi(2.5,&nbsp;3.5);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mj.Display();
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type&nbsp;t&nbsp;=&nbsp;typeof(MianJi);//遍历MianJi类的特性
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(DeBugInfo&nbsp;info&nbsp;in&nbsp;t.GetCustomAttributes(true))
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Bugno:&nbsp;{0}",&nbsp;info.BugNo);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Developer:&nbsp;{0}",&nbsp;info.Developer);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("LastReviewed:&nbsp;{0}",&nbsp;info.LastReview);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Message:&nbsp;{0}",&nbsp;info.Message);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//遍历属性的特性
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(PropertyInfo&nbsp;prinfo&nbsp;in&nbsp;t.GetProperties())
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(DeBugInfo&nbsp;dbi&nbsp;in&nbsp;prinfo.GetCustomAttributes(true))
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Bug&nbsp;no:&nbsp;{0}",&nbsp;dbi.BugNo);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Developer:&nbsp;{0}",&nbsp;dbi.Developer);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Last&nbsp;Reviewed:&nbsp;{0}",&nbsp;dbi.LastReview);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Remarks:&nbsp;{0}",&nbsp;dbi.Message);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//遍历方法的特性
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(MethodInfo&nbsp;m&nbsp;in&nbsp;t.GetMethods())
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(var&nbsp;dbi&nbsp;in&nbsp;m.GetCustomAttributes(true))
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine(dbi.ToString());
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(dbi&nbsp;is&nbsp;DeBugInfo)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DeBugInfo&nbsp;dbiNew&nbsp;=&nbsp;dbi&nbsp;as&nbsp;DeBugInfo;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Bug&nbsp;no:&nbsp;{0}",&nbsp;dbiNew.BugNo);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Developer:&nbsp;{0}",&nbsp;dbiNew.Developer);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Last&nbsp;Reviewed:&nbsp;{0}",&nbsp;dbiNew.LastReview);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Remarks:&nbsp;{0}",&nbsp;dbiNew.Message);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;catch&nbsp;(Exception&nbsp;e)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine(e.InnerException&nbsp;+&nbsp;e.Message);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//遍历字段的特性
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(FieldInfo&nbsp;fiinfo&nbsp;in&nbsp;t.GetFields())
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(DeBugInfo&nbsp;dbi&nbsp;in&nbsp;fiinfo.GetCustomAttributes(true))
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Bug&nbsp;no:&nbsp;{0}",&nbsp;dbi.BugNo);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Developer:&nbsp;{0}",&nbsp;dbi.Developer);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Last&nbsp;Reviewed:&nbsp;{0}",&nbsp;dbi.LastReview);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Remarks:&nbsp;{0}",&nbsp;dbi.Message);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.ReadKey();
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;class&nbsp;DeBugInfo&nbsp;:&nbsp;System.Attribute
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;int&nbsp;bugNo;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;string&nbsp;developer;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;string&nbsp;lastReview;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;string&nbsp;message;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;DeBugInfo(int&nbsp;_bugNo,&nbsp;string&nbsp;_developer,&nbsp;string&nbsp;_lastReview)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.bugNo&nbsp;=&nbsp;_bugNo;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.developer&nbsp;=&nbsp;_developer;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.lastReview&nbsp;=&nbsp;_lastReview;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;int&nbsp;BugNo
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;get
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;bugNo;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;string&nbsp;Developer
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;get
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;developer;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;string&nbsp;LastReview
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;get
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;lastReview;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;string&nbsp;Message
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;get
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;message;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;set
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;message&nbsp;=&nbsp;value;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;class&nbsp;MianJi
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;protected&nbsp;double&nbsp;length;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;protected&nbsp;double&nbsp;width;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;string&nbsp;_name;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(1,&nbsp;"Nuha&nbsp;Ali",&nbsp;"2018.7.17",&nbsp;message&nbsp;=&nbsp;"age")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;int&nbsp;age&nbsp;=&nbsp;18;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;MianJi(double&nbsp;l,&nbsp;double&nbsp;w)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;length&nbsp;=&nbsp;l;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width&nbsp;=&nbsp;w;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(2,&nbsp;"Zara&nbsp;Ali",&nbsp;"2018.7.17",&nbsp;Message&nbsp;=&nbsp;"This&nbsp;is&nbsp;Property")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;string&nbsp;name
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(21,&nbsp;"Zara&nbsp;Ali",&nbsp;"2018.7.17",&nbsp;Message&nbsp;=&nbsp;"This&nbsp;is&nbsp;Property")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;get&nbsp;{&nbsp;return&nbsp;this._name;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(22,&nbsp;"Zara&nbsp;Ali",&nbsp;"2018.7.17",&nbsp;Message&nbsp;=&nbsp;"This&nbsp;is&nbsp;Property")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;set&nbsp;{&nbsp;this._name&nbsp;=&nbsp;name;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(3,&nbsp;"Zara&nbsp;Ali",&nbsp;"2018.7.17",&nbsp;Message&nbsp;=&nbsp;"This&nbsp;is&nbsp;Property")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;SetName(string&nbsp;name)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this._name&nbsp;=&nbsp;name;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(4,&nbsp;"Zara&nbsp;Ali",&nbsp;"2018.7.17",&nbsp;Message&nbsp;=&nbsp;"This&nbsp;is&nbsp;Property")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;string&nbsp;GetName()
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;this._name;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(5,&nbsp;"Zara&nbsp;Ali",&nbsp;"2018.7.17",&nbsp;Message&nbsp;=&nbsp;"This&nbsp;is&nbsp;Area&nbsp;Method")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;double&nbsp;Area()
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;length&nbsp;*&nbsp;width;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DeBugInfo(6,&nbsp;"Nuha&nbsp;Ali",&nbsp;"2018.7.17")]
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;Display()
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Length:&nbsp;{0}",&nbsp;length);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Width:&nbsp;{0}",&nbsp;width);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("Area:&nbsp;{0}",&nbsp;Area());
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>}
</p>
</code></pre><p><br></p>', 26, 0, CAST(N'2018-07-17T16:42:51.973' AS DateTime), CAST(N'2018-07-17T16:42:51.973' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (25, N'admin', N'23中设计模式', N'技术博文', N'<h1>1、单例模式</h1><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718105749_8370.png" alt="" class=""></p><br><p><font color="#ff0000">************************************************************************************************************************************</font></p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718105907_9620.png" alt="" class=""><br></p><p><font color="#ff0000">**********************************************************************************************************************************************************************************</font></p><p>第三种</p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718110129_9620.png" alt="" class=""><font color="#ff0000"><br></font></p><p><font color="#ff0000">**********************************************************************************************************************************************************************************</font></p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718150341_1183.png" alt=""><span style="color: inherit;"><br></span></p><p>*****************************************************************************************</p><h1><br><b>2、简单工厂模式</b></h1><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718115633_7902.png" alt="" class=""><br></p><p><font color="#008000">*************************************************************************************************************************************************************************************</font></p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718121734_4777.png" alt="" class=""><br></p><font color="#008000"><br></font><p><font color="#008000">*************************************************************************************************************************************************************************************</font></p><p><br></p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718121746_9620.png" alt="" class=""><br></p><p><br></p><h1><span style="color: inherit;">3、原型模式</span></h1><p><span style="background-color: rgb(0, 255, 0);">浅克隆&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 克隆的紧紧是地址&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718151346_9308.png" alt="" class=""><span style="color: inherit;"><br></span></p><blockquote><p><font color="#800080">解决了单例模式的限制，</font></p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/81/rabbit_thumb.gif"></blockquote><p>***********************************************************************************************************************************************************************************</p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718153152_6027.png" alt="" class=""><br></p><blockquote><p><font face="Impact">字符串和类一样，每次修改，都是new string()了</font></p><p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/81/rabbit_thumb.gif"><font face="Impact"><br></font></p></blockquote><p><span style="background-color: rgb(0, 255, 255);"><br>深克隆&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 可以通过序列化，反序列化的方式，重新分配<span style="color: inherit;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></p><p><img src="http://blog.azlinli.com/upload/image/20180718/20180718155529_2745.png" alt="" style="color: inherit;" class=""></p><p><br></p>', 19, 0, CAST(N'2018-07-18T10:59:20.417' AS DateTime), CAST(N'2018-07-18T10:59:20.417' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (26, N'admin', N'委托学习 解耦 ++ 事件', N'技术博文', N'<h1><span style="color: inherit;">1、委托</span></h1><p><img src="http://blog.azlinli.com/upload/image/20180719/20180719113530_4152.png" alt=""><br></p><p>***********************************</p><blockquote><p><font color="#ff0000">委托的调用，</font></p></blockquote><blockquote><p><font color="#ff0000">method.Invoke(3,4);</font></p><p><font color="#ff0000">method(5,6);</font></p><p><font color="#ff0000">method.BeginInvoke(6,7,null,null);//异步调用</font></p></blockquote><p><br></p><p>&&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;</p><p><img src="http://blog.azlinli.com/upload/image/20180719/20180719115858_7433.png" alt="" class=""><br></p><blockquote><p><b>上边的是定义了一个委托，然后呢，接下来是实例化一个委托:</b></p></blockquote><blockquote><p><font color="#008000">GreetingHandler handlerChinese = new GreetingHandler(GreetingClass.GreetChinest);</font></p></blockquote><blockquote><p><font color="#008000">GreetingClass.Greeting("Hello world!",handlerChinese);</font></p></blockquote><p><br></p><h1><br></h1><h1>2.事件</h1><p><img src="http://blog.azlinli.com/upload/image/20180719/20180719142709_0352.png" alt=""><br></p><blockquote><p><font color="#800080">多播委托，method.GetInvocationList();//找到委托里面的全部方法；</font></p></blockquote><p><span style="background-color: rgb(255, 0, 0);">***************************************************************************************************************</span></p><h2>猫叫 触发事件&nbsp;</h2><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">  <span style="font-size: 0.8em;">&nbsp;public&nbsp;delegate&nbsp;void&nbsp;CatMiaoHandler();</span></code><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;CatMiaoHandler&nbsp;CatMiaoHandlerMethod;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;event&nbsp;CatMiaoHandler&nbsp;&nbsp;CatMiaoHandlerMethodEvent;//声明事件，事件的本质就是委托的一个实例，加了event关键字修饰；
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;Miao()
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine("喵叫了一声");
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//委托
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(CatMiaoHandlerMethod&nbsp;!=&nbsp;null)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CatMiaoHandlerMethod();
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//事件
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(CatMiaoHandlerMethodEvent&nbsp;!=&nbsp;null)
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CatMiaoHandlerMethodEvent();
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cat&nbsp;cat&nbsp;=&nbsp;new&nbsp;Cat();
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat.CatMiaoHandlerMethod&nbsp;=new&nbsp;CatMiaoHandler(Dog.Wang);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat.CatMiaoHandlerMethod&nbsp;+=Mouse.Run;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat.CatMiaoHandlerMethod&nbsp;+=People.Awake;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//cat.CatMiaoHandlerMethodEvent&nbsp;=new&nbsp;CatMiaoHandler(Dog.Wang);//1.不能被初始化
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat.CatMiaoHandlerMethodEvent&nbsp;+=Mouse.Run;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat.CatMiaoHandlerMethodEvent&nbsp;+=People.Awake;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//cat.CatMiaoHandlerMethodEvent();//2.不能被外部调用
</p></pre><p><br></p>', 22, 0, CAST(N'2018-07-19T11:40:23.367' AS DateTime), CAST(N'2018-07-19T11:40:23.367' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (27, N'admin', N'Lambda 表达式,源于委托', N'技术博文', N'<p><img src="http://blog.azlinli.com/upload/image/20180719/20180719125553_5249.png" alt=""><br></p><p>************************************************************************************************************</p><p><img src="http://blog.azlinli.com/upload/image/20180719/20180719125818_2914.png" alt="" class="clicked"><br></p><blockquote><p><font color="#ff0000">lambda表达式 把delegate换成了=&gt;&nbsp; 箭头的左边是参数列表，右边是方法体</font></p></blockquote><p><img src="http://blog.azlinli.com/upload/image/20180719/20180719131638_7360.png" alt="" class=""></p><p><br></p><blockquote><p><font color="#ff0000">WithReturnWithPara func=(x,y) =&gt; { return x+y; };</font></p></blockquote><blockquote><p><font color="#ff0000">WithReturnWithPara func=(x,y) =&gt;&nbsp; x+y ;//去掉了大括号，如果方法只有一行，带返回值则直接去掉return。</font></p></blockquote><blockquote><p>NoReturnNoPara action = () =&gt; { };</p><p>WithReturnNoPara action = () =&gt; "Hello world!";</p></blockquote><p><img src="http://blog.azlinli.com/upload/image/20180719/20180719133148_5855.png" alt=""><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">foreach(int i <span class="hljs-keyword">in</span> intList.Where&lt;int&gt;(num=&gt;num&gt;<span class="hljs-number">55</span>))
{
<span class="hljs-built_in">&nbsp;&nbsp;&nbsp;&nbsp;console</span>.writeLine(i);
}</code></pre><p><br></p>', 17, 0, CAST(N'2018-07-19T12:21:54.650' AS DateTime), CAST(N'2018-07-19T12:21:54.650' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (28, N'admin', N'异步学习 异步委托 ', N'技术博文', N'<h1>异步委托</h1><h1><p><img src="http://blog.azlinli.com/upload/image/20180719/20180719151628_3995.png" alt=""></p></h1><blockquote><p><font color="#ff0000">同步方法会卡住界面，异步方法不卡界面，原因是异步启动了多个线程执行计算任务，主线程没有被占用</font></p></blockquote><p>666666666666666666</p><p><img src="http://blog.azlinli.com/upload/image/20180720/20180720154802_6652.png" alt=""><br></p><p><img src="http://blog.azlinli.com/upload/image/20180720/20180720172537_0089.png" alt=""><br></p><p><img src="http://blog.azlinli.com/upload/image/20180720/20180720173103_4464.png" alt="" class=""><br></p><p><br></p><p><span style="background-color: rgb(0, 255, 0);">*&&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;</span></p><p><img src="http://blog.azlinli.com/upload/image/20180720/20180720174336_3527.png" alt=""><br></p><p><img src="http://blog.azlinli.com/upload/image/20180720/20180720175111_2589.png" alt=""><br></p><p><br></p>', 29, 0, CAST(N'2018-07-19T15:16:54.197' AS DateTime), CAST(N'2018-07-19T15:16:54.197' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (29, N'admin', N'泛型初探  第一次', N'技术博文', N'<p>什么是泛型</p><p><br></p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp;我们在编写程序时，经常遇到两个模块的功能非常相似，只是一个是处理int数据，另一个是处理string数据，或者其他自定义的数据类型，但我们没有办法，只能分别写多个方法处理每个数据类型，因为方法的参数类型不同。有没有一种办法，在方法中传入通用的数据类型，这样不就可以合并代码了吗？泛型的出现就是专门解决这个问题的。读完本篇文章，你会对泛型有更深的了解。</p><p><br></p><p>为什么要使用泛型</p><p>为了了解这个问题，我们先看下面的代码，代码省略了一些内容，但功能是实现一个栈，这个栈只能处理int数据类型：</p><p><br></p><p>public class Stack</p><p><br></p><p>&nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; private int[] m_item;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public int Pop(){...}</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public void Push(int item){...}</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public Stack(int i)</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; this.m_item = new int[i];</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>}</p><p><br></p><p>上面代码运行的很好，但是，当我们需要一个栈来保存string类型时，该怎么办呢？很多人都会想到把上面的代码复制一份，把int改成string不就行了。当然，这样做本身是没有任何问题的，但一个优秀的程序是不会这样做的，因为他想到若以后再需要long、Node类型的栈该怎样做呢？还要再复制吗？优秀的程序员会想到用一个通用的数据类型object来实现这个栈：</p><p><br></p><p>public class Stack</p><p><br></p><p>&nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; private object[] m_item;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public object Pop(){...}</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public void Push(object item){...}</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public Stack(int i)</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; this.m_item = new[i];</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>&nbsp; &nbsp; &nbsp;&nbsp;</p><p><br></p><p>&nbsp; &nbsp; }</p><p><br></p><p>这个栈写的不错，他非常灵活，可以接收任何数据类型，可以说是一劳永逸。但全面地讲，也不是没有缺陷的，主要表现在：</p><p><br></p><p>当Stack处理值类型时，会出现装箱、折箱操作，这将在托管堆上分配和回收大量的变量，若数据量大，则性能损失非常严重。&nbsp;</p><p>在处理引用类型时，虽然没有装箱和折箱操作，但将用到数据类型的强制转换操作，增加处理器的负担。&nbsp;</p><p>在数据类型的强制转换上还有更严重的问题（假设stack是Stack的一个实例）：</p><p>Node1 x = new Node1();</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; stack.Push(x);</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Node2 y = (Node2)stack.Pop();</p><p><br></p><p>上面的代码在编译时是完全没问题的，但由于Push了一个Node1类型的数据，但在Pop时却要求转换为Node2类型，这将出现程序运行时的类型转换异常，但却逃离了编译器的检查。</p><p><br></p><p>&nbsp;</p><p><br></p><p>针对object类型栈的问题，我们引入泛型，他可以优雅地解决这些问题。泛型用用一个通过的数据类型T来代替object，在类实例化时指定T的类型，运行时（Runtime）自动编译为本地代码，运行效率和代码质量都有很大提高，并且保证数据类型安全。</p><p><br></p><p>&nbsp;</p><p><br></p><p>使用泛型</p><p>下面是用泛型来重写上面的栈，用一个通用的数据类型T来作为一个占位符，等待在实例化时用一个实际的类型来代替。让我们来看看泛型的威力：</p><p><br></p><p>public class Stack&lt;T&gt;</p><p><br></p><p>&nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; private T[] m_item;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public T Pop(){...}</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public void Push(T item){...}</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public Stack(int i)</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; this.m_item = new T[i];</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>}</p><p><br></p><p>类的写法不变，只是引入了通用数据类型T就可以适用于任何数据类型，并且类型安全的。这个类的调用方法：</p><p><br></p><p>//实例化只能保存int类型的类</p><p><br></p><p>Stack&lt;int&gt; a = new Stack&lt;int&gt;(100);</p><p><br></p><p>&nbsp; &nbsp; &nbsp; a.Push(10);</p><p><br></p><p>&nbsp; &nbsp; &nbsp; a.Push("8888"); //这一行编译不通过，因为类a只接收int类型的数据</p><p><br></p><p>&nbsp; &nbsp; &nbsp; int x = a.Pop();</p><p><br></p><p>&nbsp;</p><p><br></p><p>//实例化只能保存string类型的类</p><p><br></p><p>Stack&lt;string&gt; b = new Stack&lt;string&gt;(100);</p><p><br></p><p>b.Push(10);    //这一行编译不通过，因为类b只接收string类型的数据</p><p><br></p><p>&nbsp; &nbsp; &nbsp; b.Push("8888");</p><p><br></p><p>string y = b.Pop();</p><p><br></p><p>&nbsp;</p><p><br></p><p>这个类和object实现的类有截然不同的区别：</p><p><br></p><p>1.       他是类型安全的。实例化了int类型的栈，就不能处理string类型的数据，其他数据类型也一样。</p><p><br></p><p>2.       无需装箱和折箱。这个类在实例化时，按照所传入的数据类型生成本地代码，本地代码数据类型已确定，所以无需装箱和折箱。</p><p><br></p><p>3.       无需类型转换。</p><p><br></p><p>&nbsp;</p><p><br></p><p>泛型类实例化的理论</p><p>C#泛型类在编译时，先生成中间代码IL，通用类型T只是一个占位符。在实例化类时，根据用户指定的数据类型代替T并由即时编译器（JIT）生成本地代码，这个本地代码中已经使用了实际的数据类型，等同于用实际类型写的类，所以不同的封闭类的本地代码是不一样的。按照这个原理，我们可以这样认为：</p><p><br></p><p>泛型类的不同的封闭类是分别不同的数据类型。</p><p><br></p><p>例：Stack&lt;int&gt;和Stack&lt;string&gt;是两个完全没有任何关系的类，你可以把他看成类A和类B，这个解释对泛型类的静态成员的理解有很大帮助。</p><p><br></p><p>&nbsp;</p><p><br></p><p>泛型类中数据类型的约束</p><p>程序员在编写泛型类时，总是会对通用数据类型T进行有意或无意地有假想，也就是说这个T一般来说是不能适应所有类型，但怎样限制调用者传入的数据类型呢？这就需要对传入的数据类型进行约束，约束的方式是指定T的祖先，即继承的接口或类。因为C#的单根继承性，所以约束可以有多个接口，但最多只能有一个类，并且类必须在接口之前。这时就用到了C#2.0的新增关键字：</p><p><br></p><p>public class Node&lt;T, V&gt; where T : Stack, IComparable</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; where V: Stack</p><p><br></p><p>&nbsp; &nbsp; {...}</p><p><br></p><p>以上的泛型类的约束表明，T必须是从Stack和IComparable继承，V必须是Stack或从Stack继承，否则将无法通过编译器的类型检查，编译失败。</p><p><br></p><p>通用类型T没有特指，但因为C#中所有的类都是从object继承来，所以他在类Node的编写中只能调用object类的方法，这给程序的编写造成了困难。比如你的类设计只需要支持两种数据类型int和string，并且在类中需要对T类型的变量比较大小，但这些却无法实现，因为object是没有比较大小的方法的。 了解决这个问题，只需对T进行IComparable约束，这时在类Node里就可以对T的实例执行CompareTo方法了。这个问题可以扩展到其他用户自定义的数据类型。</p><p><br></p><p>如果在类Node里需要对T重新进行实例化该怎么办呢？因为类Node中不知道类T到底有哪些构造函数。为了解决这个问题，需要用到new约束：</p><p><br></p><p>public class Node&lt;T, V&gt; where T : Stack, new()</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; where V: IComparable</p><p><br></p><p>需要注意的是，new约束只能是无参数的，所以也要求相应的类Stack必须有一个无参构造函数，否则编译失败。</p><p><br></p><p>C#中数据类型有两大类：引用类型和值类型。引用类型如所有的类，值类型一般是语言的最基本类型，如int, long, struct等，在泛型的约束中，我们也可以大范围地限制类型T必须是引用类型或必须是值类型，分别对应的关键字是class和struct:</p><p><br></p><p>public class Node&lt;T, V&gt; where T : class</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; where V: struct</p><p><br></p><p>&nbsp;</p><p><br></p><p>泛型方法</p><p>泛型不仅能作用在类上，也可单独用在类的方法上，他可根据方法参数的类型自动适应各种参数，这样的方法叫泛型方法。看下面的类：</p><p><br></p><p>public class Stack2</p><p><br></p><p>&nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public void Push&lt;T&gt;(Stack&lt;T&gt; s, params T[] p)</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; foreach (T t in p)</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; s.Push(t);</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>}</p><p><br></p><p>原来的类Stack一次只能Push一个数据，这个类Stack2扩展了Stack的功能（当然也可以直接写在Stack中），他可以一次把多个数据压入Stack中。其中Push是一个泛型方法，这个方法的调用示例如下：</p><p><br></p><p>Stack&lt;int&gt; x = new Stack&lt;int&gt;(100);</p><p><br></p><p>&nbsp; &nbsp; Stack2 x2 = new Stack2();</p><p><br></p><p>&nbsp; &nbsp; x2.Push(x, 1, 2, 3, 4, 6);</p><p><br></p><p>&nbsp; &nbsp; string s = "";</p><p><br></p><p>&nbsp; &nbsp; for (int i = 0; i &lt; 5; i++)</p><p><br></p><p>&nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; s += x.Pop().ToString();</p><p><br></p><p>&nbsp; &nbsp; }    //至此，s的值为64321</p><p><br></p><p>&nbsp; &nbsp;</p><p><br></p><p>&nbsp;</p><p><br></p><p>泛型中的静态成员变量</p><p>在C#1.x中，我们知道类的静态成员变量在不同的类实例间是共享的，并且他是通过类名访问的。C#2.0中由于引进了泛型，导致静态成员变量的机制出现了一些变化：静态成员变量在相同封闭类间共享，不同的封闭类间不共享。</p><p><br></p><p>这也非常容易理解，因为不同的封闭类虽然有相同的类名称，但由于分别传入了不同的数据类型，他们是完全不同的类，比如：</p><p><br></p><p>Stack&lt;int&gt; a = new Stack&lt;int&gt;();</p><p><br></p><p>Stack&lt;int&gt; b = new Stack&lt;int&gt;();</p><p><br></p><p>Stack&lt;long&gt; c = new Stack&lt;long&gt;();</p><p><br></p><p>类实例a和b是同一类型，他们之间共享静态成员变量，但类实例c却是和a、b完全不同的类型，所以不能和a、b共享静态成员变量。</p><p><br></p><p>泛型中的静态构造函数</p><p>静态构造函数的规则：只能有一个，且不能有参数，他只能被.NET运行时自动调用，而不能人工调用。</p><p><br></p><p>泛型中的静态构造函数的原理和非泛型类是一样的，只需把泛型中的不同的封闭类理解为不同的类即可。以下两种情况可激发静态的构造函数：</p><p><br></p><p>1.       特定的封闭类第一次被实例化。</p><p><br></p><p>2.       特定封闭类中任一静态成员变量被调用。</p><p><br></p><p>&nbsp;</p><p><br></p><p>泛型类中的方法重载</p><p>方法的重载在.Net Framework中被大量应用，他要求重载具有不同的签名。在泛型类中，由于通用类型T在类编写时并不确定，所以在重载时有些注意事项，这些事项我们通过以下的例子说明：</p><p><br></p><p>public class Node&lt;T, V&gt;</p><p><br></p><p>&nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public T add(T a, V b)          //第一个add</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return a;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public T add(V a, T b)          //第二个add</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return b;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; public int add(int a, int b)    //第三个add</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return a + b;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p><br></p><p>}</p><p><br></p><p>上面的类很明显，如果T和V都传入int的话，三个add方法将具有同样的签名，但这个类仍然能通过编译，是否会引起调用混淆将在这个类实例化和调用add方法时判断。请看下面调用代码：</p><p><br></p><p>Node&lt;int, int&gt; node = new Node&lt;int, int&gt;();</p><p><br></p><p>&nbsp; &nbsp; object x = node.add(2, 11);</p><p><br></p><p>这个Node的实例化引起了三个add具有同样的签名，但却能调用成功，因为他优先匹配了第三个add。但如果删除了第三个add，上面的调用代码则无法编译通过，提示方法产生的混淆，因为运行时无法在第一个add和第二个add之间选择。</p><p><br></p><p>Node&lt;string, int&gt; node = new Node&lt;string, int&gt;();</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; object x = node.add(2, "11");</p><p><br></p><p>&nbsp; &nbsp;这两行调用代码可正确编译，因为传入的string和int，使三个add具有不同的签名，当然能找到唯一匹配的add方法。</p><p><br></p><p>由以上示例可知，C#的泛型是在实例的方法被调用时检查重载是否产生混淆，而不是在泛型类本身编译时检查。同时还得出一个重要原则：</p><p><br></p><p>当一般方法与泛型方法具有相同的签名时，会覆盖泛型方法。</p><p><br></p><p>&nbsp;</p><p><br></p><p>泛型类的方法重写</p><p>方法重写（override）的主要问题是方法签名的识别规则，在这一点上他与方法重载一样，请参考泛型类的方法重载。</p><p><br></p><p>&nbsp;</p><p><br></p><p>泛型的使用范围</p><p>本文主要是在类中讲述泛型，实际上，泛型还可以用在类方法、接口、结构（struct）、委托等上面使用，使用方法大致相同，就不再讲述。</p><p><br></p><p>小结</p><p>C# 泛型是开发工具库中的一个无价之宝。它们可以提高性能、类型安全和质量，减少重复性的编程任务，简化总体编程模型，而这一切都是通过优雅的、可读性强的语法完成的。尽管 C# 泛型的根基是 C++ 模板，但 C# 通过提供编译时安全和支持将泛型提高到了一个新水平。C# 利用了两阶段编译、元数据以及诸如约束和一般方法之类的创新性的概念。毫无疑问，C# 的将来版本将继续发展泛型，以便添加新的功能，并且将泛型扩展到诸如数据访问或本地化之类的其他 .NET Framework 领域。</p><p><br></p><p>原文链接，原作者https://www.cnblogs.com/yueyue184/p/5032156.html</p><p>侵删</p>', 19, 0, CAST(N'2018-07-19T23:07:14.430' AS DateTime), CAST(N'2018-07-19T23:07:14.430' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (30, N'admin', N'expects the parameter ''@GameDate'', which was not supplied."	string  对于  我设了null，但是往数据库里写的时候提醒不能为null怎么办', N'技术博文', N'<pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">    public <span class="hljs-keyword">static</span> object GetSingle(string SQLString, params SqlParameter[] cmdParms)
        {
            using (SqlConnection connection = <span class="hljs-keyword">new</span> SqlConnection(connectionString))
            {
                using (SqlCommand cmd = <span class="hljs-keyword">new</span> SqlCommand())
                {
                    <span class="hljs-keyword">try</span>
                    {
                        PrepareCommand(cmd, connection, <span class="hljs-literal">null</span>, SQLString, cmdParms);
                        object obj = cmd.ExecuteScalar();
                        cmd.Parameters.Clear();
                        <span class="hljs-keyword">if</span> ((<span class="hljs-built_in">Object</span>.Equals(obj, <span class="hljs-literal">null</span>)) || (<span class="hljs-built_in">Object</span>.Equals(obj, System.DBNull.Value)))
                        {
                            <span class="hljs-keyword">return</span> <span class="hljs-literal">null</span>;
                        }
                        <span class="hljs-keyword">else</span>
                        {
                            <span class="hljs-keyword">return</span> obj;
                        }
                    }
                    <span class="hljs-keyword">catch</span> (System.Data.SqlClient.SqlException e)
                    {
                        <span class="hljs-keyword">throw</span> e;
                    }
                }
            }
        }</code></pre><p><br></p><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">private <span class="hljs-keyword">static</span> <span class="hljs-keyword">void</span> PrepareCommand(SqlCommand cmd, SqlConnection conn, SqlTransaction trans, string cmdText, SqlParameter[] cmdParms)
        {
            <span class="hljs-keyword">if</span> (conn.State != ConnectionState.Open)
                conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            <span class="hljs-keyword">if</span> (trans != <span class="hljs-literal">null</span>)
                cmd.Transaction = trans;
            cmd.CommandType = CommandType.Text;<span class="hljs-comment">//cmdType;</span>
            <span class="hljs-keyword">if</span> (cmdParms != <span class="hljs-literal">null</span>)
            {


                foreach (SqlParameter parameter <span class="hljs-keyword">in</span> cmdParms)
                {
                    <span class="hljs-keyword">if</span> ((parameter.Direction == ParameterDirection.InputOutput || parameter.Direction == ParameterDirection.Input) &amp;&amp;
                        (parameter.Value == <span class="hljs-literal">null</span>))
                    {
                        parameter.Value = DBNull.Value;
                    }
                    cmd.Parameters.Add(parameter);
                }
            }
        }</code></pre><p><br></p>', 13, 0, CAST(N'2018-07-26T10:22:48.027' AS DateTime), CAST(N'2018-07-26T10:22:48.027' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (31, N'admin', N'强大的json转换，vs  一键快速json转实体类', N'技术博文', N'<p><span style="color: inherit;">强大的json转换，vs&nbsp;&nbsp;一键快速json转实体类</span></p><p><img src="http://blog.azlinli.com/upload/image/20180727/20180727151044_7745.png" alt=""><br></p><p><br></p>', 14, 0, CAST(N'2018-07-27T15:10:59.993' AS DateTime), CAST(N'2018-07-27T15:10:59.993' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (32, N'admin', N'如何扒取网站信息 贼溜', N'技术博文', N'<pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">  <span class="hljs-keyword">static</span> <span class="hljs-keyword">void</span> Main(string[] args)
        {
            <span class="hljs-comment">//从指定的地址加载html文档 Jumony.Core</span>
            IHtmlDocument source = <span class="hljs-keyword">new</span> JumonyParser().LoadDocument(<span class="hljs-string">"http://www.cnblogs.com/cate/csharp"</span>);
            <span class="hljs-keyword">var</span> aLinks = source.Find(<span class="hljs-string">".titlelnk"</span>);<span class="hljs-comment">//按照css选择器搜索符合要求的元素</span>
            Console.OutputEncoding = Encoding.GetEncoding(<span class="hljs-number">936</span>);
            foreach (<span class="hljs-keyword">var</span> aLink <span class="hljs-keyword">in</span> aLinks)
            {
                <span class="hljs-comment">//&lt;a&gt;Hello&lt;/a&gt; 获取hello </span>
                Console.WriteLine(aLink.InnerText());

                <span class="hljs-comment">//获取 a标签和它的父节点 &lt;h3&gt;&lt;a&gt;Hello&lt;/a&gt;&lt;/h3&gt;</span>
                Console.WriteLine(aLink.Parent());

                <span class="hljs-comment">//&lt;a&gt;Hello&lt;/a&gt; 获取hello </span>
                Console.WriteLine(aLink.InnerHtml());

                <span class="hljs-comment">//获取指定属性名的值  value和AttributeValue都可以获取,但区别是value当 当前属性对象为null时不会抛出异常</span>
                Console.WriteLine(aLink.Attribute(<span class="hljs-string">"href"</span>).Value());
                Console.WriteLine(aLink.Attribute(<span class="hljs-string">"href"</span>).AttributeValue);

            }
            Console.ReadKey();
        }</code></pre><p><br></p>', 24, 0, CAST(N'2018-07-27T15:29:34.603' AS DateTime), CAST(N'2018-07-27T15:29:34.603' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (33, N'admin', N'async和await 异步多线程记录', N'技术博文', N'<p><img src="http://blog.azlinli.com/upload/image/20180731/20180731165751_9464.png" alt=""><br></p><p><img src="http://blog.azlinli.com/upload/image/20180731/20180731165804_1027.png" alt=""><br></p><p><br></p>', 23, 0, CAST(N'2018-07-31T16:58:08.493' AS DateTime), CAST(N'2018-07-31T16:58:08.493' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (34, N'admin', N'c#  用@符号，字符串中有引号，怎么正则，贼溜！', N'技术博文', N'<pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Regex regex = <span class="hljs-keyword">new</span> Regex(@<span class="hljs-string">"https://www\.amazon\.com/gp/video/detail/\w+"</span>);
            Regex regex2= <span class="hljs-keyword">new</span> Regex(<span class="hljs-string">"href=\"(https://www\\.amazon\\.com/gp/video/detail/\\w+)/.*?\"&gt;.*?src=\"http"</span>);

            <span class="hljs-keyword">var</span> str = <span class="hljs-string">"href=\"(https://www\\.amazon\\.com/gp/video/detail/\\w+)/.*?\"&gt;.*?src=\"http"</span>;
            <span class="hljs-keyword">var</span> str2 = @<span class="hljs-string">"href="</span><span class="hljs-string">""</span> + @<span class="hljs-string">"(https://www\.amazon\.com/gp/video/detail/\w+)/.*?"</span><span class="hljs-string">""</span> + <span class="hljs-string">"&gt;.*?src=\"http"</span>;
            <span class="hljs-keyword">var</span> str3 = @<span class="hljs-string">"href="</span><span class="hljs-string">"(https://www\.amazon\.com/gp/video/detail/\w+)/.*?"</span><span class="hljs-string">"&gt;.*?src="</span><span class="hljs-string">"http"</span>;

</code></pre><p><br></p><p>没错，就是在字符串中把引号，变成两个引号</p><p><br></p><p><font color="#ff0000">    var str3 = @"href=""(https://www\.amazon\.com/gp/video/detail/\w+)/.*?""&gt;.*?src=""http";</font></p><p><br></p>', 38, 0, CAST(N'2018-08-01T18:28:04.353' AS DateTime), CAST(N'2018-08-01T18:28:04.353' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (35, N'admin', N'泛型list 去重 备份知识', N'技术博文', N'<h1><a href="https://www.cnblogs.com/hao-1234-1234/p/8855218.html">【C#】list 去重（转载）</a><br>原作者：<a href="https://www.cnblogs.com/hao-1234-1234/p/8855218.html" target="_blank" style="background-color: rgb(255, 255, 255); font-size: 13px;">https://www.cnblogs.com/hao-1234-1234/p/8855218.html</a></h1><h1>&nbsp;</h1><p>Enumerable.Distinct 方法&nbsp;是常用的LINQ扩展方法，属于System.Linq的Enumerable方法，可用于去除数组、集合中的重复元素，还可以自定义去重的规则。</p><p>有两个重载方法：</p><p><a href="javascript:void(0);"><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><pre>        //
        // 摘要: 
        //     通过使用默认的相等比较器对值进行比较返回序列中的非重复元素。
        //
        // 参数: 
        //   source:
        //     要从中移除重复元素的序列。
        //
        // 类型参数: 
        //   TSource:
        //     source 中的元素的类型。
        //
        // 返回结果: 
        //     一个 System.Collections.Generic.IEnumerable&lt;T&gt;，包含源序列中的非重复元素。
        //
        // 异常: 
        //   System.ArgumentNullException:
        //     source 为 null。
        public static IEnumerable&lt;TSource&gt; Distinct&lt;TSource&gt;(this IEnumerable&lt;TSource&gt; source);
        //
        // 摘要: 
        //     通过使用指定的 System.Collections.Generic.IEqualityComparer&lt;T&gt; 对值进行比较返回序列中的非重复元素。
        //
        // 参数: 
        //   source:
        //     要从中移除重复元素的序列。
        //
        //   comparer:
        //     用于比较值的 System.Collections.Generic.IEqualityComparer&lt;T&gt;。
        //
        // 类型参数: 
        //   TSource:
        //     source 中的元素的类型。
        //
        // 返回结果: 
        //     一个 System.Collections.Generic.IEnumerable&lt;T&gt;，包含源序列中的非重复元素。
        //
        // 异常: 
        //   System.ArgumentNullException:
        //     source 为 null。
        public static IEnumerable&lt;TSource&gt; Distinct&lt;TSource&gt;(this IEnumerable&lt;TSource&gt; source, IEqualityComparer&lt;TSource&gt; comparer);    </pre><p><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a><a href="javascript:void(0);"><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><p>第一个方法不带参数，第二个方法需要传一个System.Collections.Generic.IEqualityComparer&lt;T&gt;的实现对象</p><p>1.值类型元素集合去重</p><pre>List&lt;int&gt; list = new List&lt;int&gt; { 1, 1, 2, 2, 3, 4, 5, 5 };
list.Distinct().ToList().ForEach(s =&gt; Console.WriteLine(s));</pre><p>执行结果是：1 2 3 4 5</p><p>2.引用类型元素集合去重</p><p>首先自定义一个Student类</p><p><img src="https://images.cnblogs.com/OutliningIndicators/ExpandedBlockStart.gif" alt=""></p><p>使用不到参数的Distinct方法去重</p><p><a href="javascript:void(0);"><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><pre>            List&lt;Student&gt; list = new List&lt;Student&gt;() { 
                new Student("James",1,"Basketball"),
                new Student("James",1,"Basketball"),
                new Student("Kobe",2,"Basketball"),
                new Student("Curry",3,"Football"),
                new Student("Curry",3,"Yoga")
            };
            list.Distinct().ToList().ForEach(s =&gt; Console.WriteLine(s.ToString()));   </pre><p><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a><a href="javascript:void(0);"><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><p>执行结果：<img src="https://images2015.cnblogs.com/blog/639840/201604/639840-20160416184628410-705529846.png" alt=""></p><p>可见，并没有去除重复的记录。</p><p>不带comparer参数的Distinct方法是使用的IEqualityComparer接口的默认比较器进行比较的，对于引用类型，默认比较器比较的是其引用地址，程序中集合里的每一个元素都是个新的实例，引用地址都是不同的，所以不会被作为重复记录删除掉。</p><p>因此，我们考虑使用第二个重载方法。</p><p>新建一个类，实现IEqualityComparer接口。注意GetHashCode方法的实现，只有HashCode相同才会去比较</p><p><a href="javascript:void(0);"><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><pre>    public class Compare:IEqualityComparer&lt;Student&gt;
    {
        public bool Equals(Student x,Student y)
        {
            return x.Id == y.Id;//可以自定义去重规则，此处将Id相同的就作为重复记录，不管学生的爱好是什么
        }
        public int GetHashCode(Student obj)
        {
            return obj.Id.GetHashCode();
        }
    }</pre><p><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a><a href="javascript:void(0);"><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><p>然后调用</p><pre>list.Distinct(new Compare()).ToList().ForEach(s =&gt; Console.WriteLine(s.ToString()));</pre><p>执行结果：<img src="https://images2015.cnblogs.com/blog/639840/201604/639840-20160416191025379-838776777.png" alt=""></p><p>我们按照Id去给这个集合去重成功！</p><p>3.如何编写一个具有扩展性的去重方法</p><p><img src="https://images.cnblogs.com/OutliningIndicators/ExpandedBlockStart.gif" alt=""><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><pre>    public class Compare&lt;T, C&gt; : IEqualityComparer&lt;T&gt;
    {
        private Func&lt;T, C&gt; _getField;
        public Compare(Func&lt;T, C&gt; getfield)
        {
            this._getField = getfield;
        }
        public bool Equals(T x, T y)
        {
            return EqualityComparer&lt;C&gt;.Default.Equals(_getField(x), _getField(y));
        }
        public int GetHashCode(T obj)
        {
            return EqualityComparer&lt;C&gt;.Default.GetHashCode(this._getField(obj));
        }
    }
    public static class CommonHelper
    {
        /// &lt;summary&gt;
        /// 自定义Distinct扩展方法
        /// &lt;/summary&gt;
        /// &lt;typeparam name="T"&gt;要去重的对象类&lt;/typeparam&gt;
        /// &lt;typeparam name="C"&gt;自定义去重的字段类型&lt;/typeparam&gt;
        /// &lt;param name="source"&gt;要去重的对象&lt;/param&gt;
        /// &lt;param name="getfield"&gt;获取自定义去重字段的委托&lt;/param&gt;
        /// &lt;returns&gt;&lt;/returns&gt;
        public static IEnumerable&lt;T&gt; MyDistinct&lt;T, C&gt;(this IEnumerable&lt;T&gt; source, Func&lt;T, C&gt; getfield)
        {
            return source.Distinct(new Compare&lt;T, C&gt;(getfield));
        }
    }</pre><p><a><img src="https://common.cnblogs.com/images/copycode.gif" alt="复制代码"></a></p><p>调用：</p><pre>list.MyDistinct(s=&gt;s.Id).ToList().ForEach(s =&gt; Console.WriteLine(s.ToString()));</pre><p>用到了泛型、委托、扩展方法等知识点。可以用于任何集合的各种去重场景</p><p><br></p>', 16, 0, CAST(N'2018-08-09T11:35:25.380' AS DateTime), CAST(N'2018-08-09T11:35:25.380' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (36, N'admin', N'关于.net 项目中的仓储模式 Respository + Service模式', N'技术博文', N'<pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">在Asp.net MVC controller的底层，常常有提到repository和service layer, 好像都是逻辑相关的层，那么它们到底是什么区别呢？

简单的说：

repository就是一个管理数据持久层的，它负责数据的CRUD(Create, Read, Update, Delete)

service layer是业务逻辑层，它常常需要访问repository层，但是它不关心数据是如何获取和存储的。</code></pre><p><img src="http://blog.azlinli.com/upload/image/20180809/20180809151419_6761.png" alt=""><br></p><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">我们来看下在LinqToSql中如何应用该模式。
<span class="hljs-number">1.</span> 我们将对实体的公共操作部分，提取为IRepository接口，比如常见的增加，删除等方法。如下代码：

interface IRepository&lt;T&gt; where T : <span class="hljs-class"><span class="hljs-keyword">class</span>
</span>{
    IEnumerable&lt;T&gt; FindAll(Func&lt;T, bool&gt; exp);
    <span class="hljs-keyword">void</span> Add(T entity);
    <span class="hljs-keyword">void</span> Delete(T entity);
    <span class="hljs-keyword">void</span> Save();
}
<span class="hljs-number">2</span>．下面我们实现一个泛型的类来具体实现上面的接口的方法。

public <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Repository</span>&lt;<span class="hljs-title">T</span>&gt; : <span class="hljs-title">IRepository</span>&lt;<span class="hljs-title">T</span>&gt; <span class="hljs-title">where</span> <span class="hljs-title">T</span> : <span class="hljs-title">class</span>
</span>{
    public DataContext context;
    public Repository(DataContext context)
    {
        <span class="hljs-keyword">this</span>.context = context;
    }
    public IEnumerable&lt;T&gt; FindAll(Func&lt;T, bool&gt; exp)
    {
        <span class="hljs-keyword">return</span> context.GetTable&lt;T&gt;().Where(exp);
    }
    public <span class="hljs-keyword">void</span> Add(T entity)
    {
        context.GetTable&lt;T&gt;().InsertOnSubmit(entity);
    }
    public <span class="hljs-keyword">void</span> Delete(T entity)
    {
        context.GetTable&lt;T&gt;().DeleteOnSubmit(entity);
    }
    public <span class="hljs-keyword">void</span> Save()
    {
        context.SubmitChanges();
    }
}
<span class="hljs-number">3.</span>上面我们实现是每个实体公共的操作，但是实际中每个实体都有符合自己业务的逻辑。我们单独定义另外一个接口，例如：

interface IBookRepository : IRepository&lt;Book&gt;
{
    IList&lt;Book&gt; GetAllByBookId(int id);
}
<span class="hljs-number">4.</span>最后该实体的Repository类实现如下：
public <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">BookRepository</span> : <span class="hljs-title">Repository</span>&lt;<span class="hljs-title">Book</span>&gt;, <span class="hljs-title">IBookRepository</span>
</span>{
    public BookRepository(DataContext dc)
        : base(dc)
    { }
    public IList&lt;Book&gt; GetAllByBookId(int id)
    {
        <span class="hljs-keyword">var</span> listbook = <span class="hljs-keyword">from</span> c <span class="hljs-keyword">in</span> context.GetTable&lt;Book&gt;()
                       where c.BookId == id
                       select c;
        <span class="hljs-keyword">return</span> listbook.ToList();
    }
} 
上面只是为大家提供了一个最基本使用框架。

然后通过Servie层去调用，</code></pre><h2>然后通过Servie层去调用</h2><p><br></p>', 31, 0, CAST(N'2018-08-09T15:14:24.347' AS DateTime), CAST(N'2018-08-09T15:14:24.347' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (37, N'admin', N'原生 js ajax 请求 写法 简单', N'技术博文', N'<p>var&nbsp;Ajax={
</p><p>&nbsp;&nbsp;get:&nbsp;function(url,&nbsp;fn)&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;XMLHttpRequest对象用于在后台与服务器交换数据&nbsp;&nbsp;&nbsp;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;xhr&nbsp;=&nbsp;new&nbsp;XMLHttpRequest();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;xhr.open(''GET'',&nbsp;url,&nbsp;true);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;xhr.onreadystatechange&nbsp;=&nbsp;function()&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;readyState&nbsp;==&nbsp;4说明请求已完成
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(xhr.readyState&nbsp;==&nbsp;4&nbsp;&amp;&amp;&nbsp;xhr.status&nbsp;==&nbsp;200&nbsp;||&nbsp;xhr.status&nbsp;==&nbsp;304)&nbsp;{&nbsp;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;从服务器获得数据&nbsp;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fn.call(this,&nbsp;xhr.responseText);&nbsp;&nbsp;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;};
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;xhr.send();
</p><p>&nbsp;&nbsp;},
</p><p>&nbsp;&nbsp;//&nbsp;datat应为''a=a1&amp;b=b1''这种字符串格式，在jq里如果data为对象会自动将对象转成这种字符串格式
</p><p>&nbsp;&nbsp;post:&nbsp;function&nbsp;(url,&nbsp;data,&nbsp;fn)&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;xhr&nbsp;=&nbsp;new&nbsp;XMLHttpRequest();
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;xhr.open("POST",&nbsp;url,&nbsp;true);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;添加http头，发送信息至服务器时内容编码类型
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;xhr.setRequestHeader("Content-Type",&nbsp;"application/x-www-form-urlencoded");&nbsp;&nbsp;
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;xhr.onreadystatechange&nbsp;=&nbsp;function()&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(xhr.readyState&nbsp;==&nbsp;4&nbsp;&amp;&amp;&nbsp;(xhr.status&nbsp;==&nbsp;200&nbsp;||&nbsp;xhr.status&nbsp;==&nbsp;304))&nbsp;{
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fn.call(this,&nbsp;xhr.responseText);
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;};
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;xhr.send(data);
</p><p>&nbsp;&nbsp;}
</p><p>}</p><p><br></p>', 26, 0, CAST(N'2018-08-13T13:15:04.317' AS DateTime), CAST(N'2018-08-13T13:15:04.317' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (38, N'admin', N'MVC Rator语法，通配分页，简洁高效', N'技术博文', N'<pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">
@{
    int pageindex = (int)ViewData[<span class="hljs-string">"pageNumberIndex"</span>];
    int pagecount = (int)ViewData[<span class="hljs-string">"PageCount"</span>];
    string otherPara = (string)ViewData[<span class="hljs-string">"PageOtherPara"</span>];
    int showPageCount = <span class="hljs-number">9</span>;
    string pageParaName = <span class="hljs-string">"page"</span>;
    string pagePrevName = <span class="hljs-string">"?"</span>;
    string pageNextName = <span class="hljs-string">"?"</span>;
}


&lt;style&gt;
    .disabl {
        cursor: not-allowed;
        color: #ccc;
    }

    ul.pagination {
        display: inline-block;
        padding: <span class="hljs-number">0</span>;
        margin: <span class="hljs-number">0</span>;
    }

        ul.pagination li {
            display: inline;
        }

            ul.pagination li a {
                color: black;
                float: left;
                padding: <span class="hljs-number">8</span>px <span class="hljs-number">16</span>px;
                text-decoration: none;
                transition: background-color <span class="hljs-number">.3</span>s;
                border: <span class="hljs-number">1</span>px solid #ddd;
            }

                ul.pagination li a.active {
                    background-color: #<span class="hljs-number">4</span>CAF50;
                    color: white;
                    border: <span class="hljs-number">1</span>px solid #<span class="hljs-number">4</span>CAF50;
                }

                ul.pagination li a:hover:not(.active) {
                    background-color: #ddd;
                }

    div.center {
        text-align: center;
    }
&lt;<span class="hljs-regexp">/style&gt;

&lt;div class="center" data-title="@pagecount"&gt;
    &lt;ul class="pagination"&gt;
        @if ((pagecount) &gt; 1)
        {
            &lt;li&gt;&lt;a href="@(pageindex&gt;1 ? "?"+(pageParaName)+"="+(pageindex-1):"javascript:void(0);")" class="@(pageindex==1 ? "disabl":"")" &gt;@(pagePrevName)&lt;/</span>a&gt;<span class="xml"><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>


            <span class="hljs-keyword">if</span> ((pagecount) &gt; showPageCount)
            {
                <span class="hljs-keyword">if</span> ((pageindex) &lt; showPageCount - <span class="hljs-number">1</span>)
                {

                    <span class="hljs-keyword">for</span> (int i = <span class="hljs-number">1</span>; i &lt; (pageindex); i++)
                    {
                        <span class="hljs-keyword">if</span> (i &gt; <span class="hljs-number">0</span>)
                        {
                            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(i)@(otherPara)"</span> <span class="hljs-attr">style</span>=<span class="hljs-string">""</span>&gt;</span>@i<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>

                        }

                    }
                    <span class="hljs-keyword">if</span> ((pageindex) &gt; <span class="hljs-number">0</span>)
                    {
                        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(pageindex)@(otherPara)"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"active"</span>&gt;</span>@(pageindex)<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>

                    }
                    <span class="hljs-keyword">for</span> (int i = (pageindex) + <span class="hljs-number">1</span>; i &lt;= showPageCount - <span class="hljs-number">1</span>; i++)
                    {
                        <span class="hljs-keyword">if</span> (i &gt; <span class="hljs-number">1</span>)
                        {
                            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(i)@(otherPara)"</span> <span class="hljs-attr">style</span>=<span class="hljs-string">""</span>&gt;</span>@i<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>

                        }
                        <span class="hljs-keyword">if</span> (i == <span class="hljs-number">1</span>)
                        {
                            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(i)@(otherPara)"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"active"</span>&gt;</span>@i<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>

                        }
                    }
                    &lt;li&gt;<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(pagecount)@(otherPara)"</span> <span class="hljs-attr">style</span>=<span class="hljs-string">""</span>&gt;</span>...@(pagecount)<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span></span><span class="xml"><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>


                }
                <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span> ((pageindex) &gt; (pagecount) - (showPageCount - <span class="hljs-number">2</span>))
                {
                    <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=1@(otherPara)"</span> <span class="hljs-attr">style</span>=<span class="hljs-string">""</span>&gt;</span>1...<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                    <span class="hljs-keyword">for</span> (int i = (pagecount) - (showPageCount - <span class="hljs-number">2</span>); i &lt;= (pagecount); i++)
                    {
                        <span class="hljs-keyword">if</span> (i == (pageindex))
                        {
                            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(pageindex)@(otherPara)"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"active"</span>&gt;</span>@(pageindex)<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                        }
                        <span class="hljs-keyword">else</span>
                        {
                            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(i)@(otherPara)"</span>&gt;</span>@i<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                        }
                    }
                }
                <span class="hljs-keyword">else</span>
                {
                    <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=1@(otherPara)"</span> <span class="hljs-attr">style</span>=<span class="hljs-string">""</span>&gt;</span>1...<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                    <span class="hljs-keyword">for</span> (int i = (pageindex) - (showPageCount / <span class="hljs-number">2</span> - <span class="hljs-number">1</span>); i &lt; (pageindex) + (showPageCount / <span class="hljs-number">2</span>); i++)
                    {
                        <span class="hljs-keyword">if</span> (i == (pageindex))
                        {
                            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(pageindex)@(otherPara)"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"active"</span>&gt;</span>@(pageindex)<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                        }
                        <span class="hljs-keyword">else</span>
                        {
                            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(i)@(otherPara)"</span>&gt;</span>@i<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                        }
                    }
                    &lt;li&gt;<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(pagecount)@(otherPara)"</span> <span class="hljs-attr">style</span>=<span class="hljs-string">""</span>&gt;</span>...@(pagecount)<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span></span><span class="xml"><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                }
            }
            <span class="hljs-keyword">else</span>
            {

                <span class="hljs-keyword">for</span> (int i = <span class="hljs-number">1</span>; i &lt;= (pagecount); i++)
                {
                    <span class="hljs-keyword">if</span> (i == (pageindex))
                    {
                        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(pageindex)@(otherPara)"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"active"</span>&gt;</span>@(pageindex)<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                    }
                    <span class="hljs-keyword">else</span>
                    {
                        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"?@(pageParaName)=@(i)@(otherPara)"</span>&gt;</span>@i<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
                    }
                }
            }

            &lt;li&gt;<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">a</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"@(pageindex&lt;pagecount ? "</span><span class="hljs-string">?"+(pageParaName)+"="+(pageindex+1):"javascript:void(0);")"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"@(pageindex==pagecount ? "</span><span class="hljs-string">disabl":"")"</span> &gt;</span>@(pageNextName)<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>

        }
        <span class="hljs-keyword">else</span>
        {
            <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">li</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">a</span>&gt;</span>1<span class="hljs-tag">&lt;/<span class="hljs-name">a</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">li</span>&gt;</span></span>
        }

    &lt;<span class="hljs-regexp">/ul&gt;
&lt;/</span>div&gt;</code></pre><p><br></p><blockquote><p><font color="#ff0000">引用</font></p></blockquote><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">&nbsp;&nbsp;&nbsp;&nbsp;ViewData[<span class="hljs-string">"pageNumberIndex"</span>] = ViewBag.pageindex;
    ViewData[<span class="hljs-string">"PageCount"</span>] = ViewBag.pagecount;
    ViewData[<span class="hljs-string">"PageOtherPara"</span>] = <span class="hljs-string">""</span>;

    @Html.Partial(<span class="hljs-string">"_PPaging"</span>, <span class="hljs-keyword">this</span>.ViewData)
</code></pre><p><br></p>', 77, 0, CAST(N'2018-08-13T16:27:44.130' AS DateTime), CAST(N'2018-08-13T16:27:44.130' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (39, N'admin', N'.net core2.0 api + Swagger + Resposity Service +  ', N'技术博文', N'<h1>1 .Net Core API 2.0</h1><p><img src="http://blog.azlinli.com/upload/image/20180817/20180817102427_5196.png" alt=""><br></p><p><img src="http://blog.azlinli.com/upload/image/20180817/20180817102603_5665.png" alt=""><br></p><p><img src="http://blog.azlinli.com/upload/image/20180817/20180817103015_6915.png" alt=""><br></p><p><br></p>
<hr><hr>
<br><h1>2 Swagger</h1><p><br></p><p><img src="http://blog.azlinli.com/upload/image/20180817/20180817104510_1759.png" alt=""><br></p><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">  <span class="hljs-comment">// This method gets called by the runtime. Use this method to add services to the container.</span>
        public <span class="hljs-keyword">void</span> ConfigureServices(IServiceCollection services)
        {
            services.AddMvc();

            #region Swagger 放在前边
            services.AddSwaggerGen(c =&gt;
            {
                c.SwaggerDoc(<span class="hljs-string">"v1"</span>, <span class="hljs-keyword">new</span> Info
                {
                    Version = <span class="hljs-string">"v1.1.0"</span>,
                    Title = <span class="hljs-string">"AZLinli.Blog.Core API"</span>,
                    Description = <span class="hljs-string">"框架集合"</span>,
                    TermsOfService = <span class="hljs-string">"None"</span>,
                    Contact = <span class="hljs-keyword">new</span> Swashbuckle.AspNetCore.Swagger.Contact { Name = <span class="hljs-string">"AZLinli.Blog.Core"</span>, Email = <span class="hljs-string">"AZLinli.Blog.Core"</span>, Url = <span class="hljs-string">"AZLinli.Blog.Core"</span> }
                });
                <span class="hljs-comment">//添加读取注释服务</span>
                <span class="hljs-keyword">var</span> basePath = PlatformServices.Default.Application.ApplicationBasePath;
                <span class="hljs-keyword">var</span> xmlPath = Path.Combine(basePath, <span class="hljs-string">"AZLinli.Blog.Core.xml"</span>);
                c.IncludeXmlComments(xmlPath, <span class="hljs-literal">true</span>);

            });
            #endregion


        }

        <span class="hljs-comment">// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.</span>
        public <span class="hljs-keyword">void</span> Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            <span class="hljs-keyword">if</span> (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseMvc();


            #region Swagger
            app.UseSwagger();
            app.UseSwaggerUI(c =&gt;
            {
                c.SwaggerEndpoint(<span class="hljs-string">"/swagger/v1/swagger.json"</span>, <span class="hljs-string">"ApiHelp V1"</span>);
            });
            #endregion
        }</code></pre><p><img src="http://blog.azlinli.com/upload/image/20180817/20180817104615_8790.png" alt=""><br></p><p><br></p><p>****************************************************************************</p><h1>3&nbsp;<span style="color: inherit;">Resposity&nbsp;Service</span></h1><p><br></p>', 71, 0, CAST(N'2018-08-17T10:25:25.097' AS DateTime), CAST(N'2018-08-17T10:25:25.097' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (40, N'admin', N'.Net Core2.0 API + Vue2.0 系统博文总结', N'随笔日志', N'<h1>1、【2018.08.17 16:18】 开通三大平台&nbsp;&nbsp;</h1><p>三大平台同步直播</p><p>简 书：<a href="https://www.jianshu.com/notebooks/28621653">https://www.jianshu.com/notebooks/28621653</a></p><p>博客园：<a href="https://www.cnblogs.com/laozhang-is-phi/">https://www.cnblogs.com/laozhang-is-phi/</a></p><p>CSDN：<a href="https://blog.csdn.net/baidu_35726140">https://blog.csdn.net/baidu_35726140</a></p><p><br></p><h1>2、【2018.08.17 17:38】&nbsp; 开始书写代码，并提交到Github</h1><p><a href="https://github.com/anjoy8/Blog.Core" target="_blank">https://github.com/anjoy8/Blog.Core</a></p><p><img src="http://blog.azlinli.com/upload/image/20180822/20180822164659_1329.png" alt=""><br></p><p><br></p><h1>3、<span style="color: inherit; font-size: 26px; font-weight: bold;">【2018.08.18 09:00】 开始有用户阅读并突破10&nbsp;</span></h1><p><span style="color: inherit; font-size: 26px; font-weight: bold;"><br></span></p><h1>4、【<span style="color: inherit;">2018.08.21 15:48</span><span style="color: inherit;">】 简书平台获取第一个赞</span></h1><p><span style="color: inherit;"><br></span></p><h1><span style="color: inherit;">5、【</span>2018.08.21&nbsp;16:02】 博客园第一次上首页，但15分钟后迅速被下架。[哭]</h1><p><img src="http://blog.azlinli.com/upload/image/20180822/20180822165606_4610.png" alt="" class=""><br></p><p><br></p><h1>6、【2018.08.22 10:00】 Github首次被Start</h1><p><img src="http://blog.azlinli.com/upload/image/20180822/20180822170603_7892.png" alt=""><br></p><h1>7、【2018.08.22 05:03】 博客园终于提交首页，并保持4个小时，收获2个赞，阅读量目前突破500</h1><p><img src="http://blog.azlinli.com/upload/image/20180822/20180822170318_6329.png" alt=""><br></p><p><br></p><h1>7、【2018.08.23 10:00】Github第一次被Fork</h1><p><img src="http://blog.azlinli.com/upload/image/20180823/20180823161756_9454.png" alt=""><br></p><p><br></p><h1>8、【2018.08.23 16：10】博客第一次被反对 [怼]</h1><p><img src="http://blog.azlinli.com/upload/image/20180823/20180823162059_8204.png" alt=""><br></p><p><br></p>', 30, 0, CAST(N'2018-08-22T17:06:31.697' AS DateTime), CAST(N'2018-08-22T17:06:31.697' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (41, N'admin', N'Git 单纯的下载指定文件夹下文件，', N'技术博文', N'<p><font color="#ff0000">一定是客户端，CMD会最后报错</font></p><p><b><font color="#ff0000">打开&nbsp;Git Bash&nbsp;（git&nbsp;的命令行工具）</font></b></p><p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用&nbsp;cd&nbsp;命令到&nbsp;D：盘&nbsp;根目录下&nbsp;（或者在&nbsp;D:&nbsp;盘下&nbsp;空白处右键&nbsp;&gt;&gt;
Git Bash Here）&nbsp;</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果本地还没有建版本库,&nbsp;具体实现如下：&nbsp;&nbsp;</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
mkdir Vcccccta&nbsp;&nbsp;建立空文件夹&nbsp;&nbsp;</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
cd Vidcccccta&nbsp;&nbsp;进到目录下&nbsp;</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
git init &lt;project&gt;&nbsp;</p><p>先建立一个空的版本库，用实际的目录名替代（&lt;project&gt;代表.git文件夹上级目录，如果已经进去到VideoIGData目录下&lt;project&gt;应当省略）</p><p>$ git init</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
git remote add -f
origin&nbsp;https://mstttttttttttttttttt/_git/ccccccccc/&nbsp;</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
git config core.sparsecheckout true&nbsp;</p><p>打开sparse checkout功能</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
echo "path1/" &gt;&gt; .git/info/sparse-checkout&nbsp;</p><p>添加2个目录到checkout的列表。路径是版本库下的相对路径，也可以用文本编辑器编辑这个文件。</p><p>$ echo "/DA"
&gt;&gt; .git/info/sparse-checkout</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
$ git pull origin master&nbsp; </p><p>&nbsp;</p><p></p><p>&nbsp;</p><p><br></p>', 205, 0, CAST(N'2018-08-29T10:24:17.853' AS DateTime), CAST(N'2018-08-29T10:24:17.853' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (42, N'admin', N'从壹开始前后端分离【 Vue2.0 + .NET Core2.1】十五 ║ Vue前篇：JS面向对象', N'随笔日志', N'<h1>缘起</h1><p>书接上文《<a href="https://www.cnblogs.com/laozhang-is-phi/p/9577805.html" target="_blank" style="background-color: rgb(255, 255, 255);">从壹开始前后端分离 [ Vue2.0+.NET Core2.1] 十四 ║ VUE 计划书 & 我的前后端开发简史</a><span style="color: inherit;">》，昨天咱们说到了以我的经历说明的web开发经历的几个阶段，而且也说到了Vue系列需要讲到的知识点，今天就正式开始Code，当然今天的代码都特别简单，希望大家慢慢的学习，今天主要讲的是JS高级——关于面向对象的语法。</span></p><h1>一、JS和C#一样，一切都是对象</h1><p><b>0、关于JS函数方法的写法，目前有两种，不知道大家平时喜欢用哪种，请看：</b></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">&nbsp;&nbsp;&nbsp;&nbsp;//这种是直接函数声明的方法
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">GetGoods</span>(<span class="hljs-params"></span>) </span>{
        <span class="hljs-keyword">var</span> tmplTrips = <span class="hljs-keyword">new</span> StringBuilder();
        $(<span class="hljs-string">''#DifCountry .cur''</span>).removeClass(<span class="hljs-string">"cur"</span>);

        $.post(<span class="hljs-string">"/Goods/GetGoods"</span>, { brandid: <span class="hljs-number">2</span>, goodstype: <span class="hljs-string">"2"</span> }, <span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params">result</span>) </span>{
            $(<span class="hljs-string">''.random''</span>).html(<span class="hljs-string">''''</span>);
            <span class="hljs-keyword">if</span> (result) {
                <span class="hljs-keyword">if</span> (result.length &gt; <span class="hljs-number">0</span>) {
                    $(result).each(<span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params">i, item</span>) </span>{

                        item.Goods_Logo = <span class="hljs-string">"/Images/Logo/Goods/"</span> + item.Goods_Logo;
                        <span class="hljs-keyword">if</span> (i &lt; <span class="hljs-number">7</span>) {
                            tmplTrips.Append(<span class="hljs-string">'' &lt;dl data-goodsid=".........</span><span class="hljs-string"> &lt;/dl&gt;''</span>);
                        }
                        <span class="hljs-keyword">if</span> (i == <span class="hljs-number">6</span>) {
                            tmplTrips.Append(<span class="hljs-string">''&lt;dl class="more1" onclick="window.location.href = \''../.....&lt;/dl&gt;''</span>);

                        }




                    });
                    $(<span class="hljs-string">''.random''</span>).html(tmplTrips.toString());
                    $($(<span class="hljs-string">''.random''</span>)).fadeIn().siblings(<span class="hljs-string">''div''</span>).hide();
                    bindGoodsDetailClick();

                } <span class="hljs-keyword">else</span> {
                    $(<span class="hljs-string">''.random''</span>).html(<span class="hljs-string">''''</span>);
                }
            }
        });
    }

//这一种是对象的写法
Object.defineProperties(a, {
  "property": {
    set property(newValue) {
      console.log("set property");
      return this._property = newValue;
    },
    get property() {
      console.log("getgsd property");
      return this._property;
    },
    enumerable: true,
    configurable: true
  },
  "name":{
    value: "maotr",
    writable: true,
    enumerable: true,
    configurable: true
  }
});
</code></pre><p><b>1、对象大家已经很熟悉了，包含&nbsp;属性，方法，数据类型（字符串，数字，布尔，数组，对象），在C#中，随随便便就是写出几个对象，JS中也是如此。</b></p><p><b>2、这个时候，一定会有好多小伙伴问，既然是Vue，为什么要说JS呢，请看我写的简单的代码（这个是Vue中定义一个组件）：</b></p><pre><code class="hljs xml" codemark="1"><span class="hljs-tag">&lt;<span class="hljs-name">script</span>&gt;</span><span class="javascript">
  <span class="hljs-keyword">import</span> myHeader <span class="hljs-keyword">from</span> <span class="hljs-string">''../components/header.vue''</span>
  <span class="hljs-keyword">import</span> myFooter <span class="hljs-keyword">from</span> <span class="hljs-string">''../components/footer.vue''</span>
  <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> {
    components: {myHeader, myFooter},
    data() {
      <span class="hljs-keyword">return</span> {
        id: <span class="hljs-keyword">this</span>.$route.params.id,
        dat: {},
        isShow: <span class="hljs-literal">true</span>
      }
    },
    created() {
      <span class="hljs-keyword">this</span>.getData()
    },

    methods: {
      getData() {
        <span class="hljs-keyword">var</span> that = <span class="hljs-keyword">this</span>
        <span class="hljs-keyword">this</span>.$api.get(<span class="hljs-string">''Blog/Get/''</span> + <span class="hljs-keyword">this</span>.id, <span class="hljs-literal">null</span>, r =&gt; {
          r.data.bCreateTime = that.$utils.goodTime(r.data.bCreateTime)
          <span class="hljs-keyword">this</span>.dat = r.data
          <span class="hljs-keyword">this</span>.isShow = <span class="hljs-literal">false</span>
        })
      }
    },
    watch: {
      <span class="hljs-string">''$route''</span>(to, <span class="hljs-keyword">from</span>) {
        <span class="hljs-keyword">this</span>.dat={}
        <span class="hljs-keyword">this</span>.isShow = <span class="hljs-literal">true</span>
        <span class="hljs-keyword">this</span>.id = to.params.id
        <span class="hljs-keyword">this</span>.getData()
      }
    }
  }
</span><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span></code></pre><p>是不是和平时写的差不太多，但是又不太一样，<span style="color: inherit;">如果你开发过微信小程序的话，可能学起来很简单，既然咱们要学，就好从头学，因为Vue基本的语法都是从ES5和ES6中过来的，大家如果真的想好好学，这一块是必须要掌握的。</span></p><h1>二、定义对象的方式</h1><p><b>1、通过new关键字</b></p><p>格式：new Object()；</p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-keyword">var</span> obj=<span class="hljs-keyword">new</span> <span class="hljs-built_in">Object</span>();

obj.Name=<span class="hljs-string">''blog''</span>;

obj.address=<span class="hljs-string">''beijing''</span>;</code></pre><p><b>2、嵌套字面量的方法，键值对的形式</b></p><p>格式：objectName&nbsp;=&nbsp;{property1:value1,&nbsp;property2:value2,…,&nbsp;propertyN:valueN} 。<span style="color: inherit;">property是对象的属性&nbsp;</span></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-keyword">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var</span> obj = {
            name: <span class="hljs-string">''blog''</span>,
            address: <span class="hljs-string">''beijing''</span>,
            say: <span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params"></span>) </span>{
                alert(<span class="hljs-string">"hello world"</span>);
            }
        }</code></pre><p><span style="color: inherit;"><b>3、函数表达式，和函数声明很类似</b></span><br></p><p><span style="color: inherit;">注意！函数表达式必须先定义，再使用，有上下顺序之分；而函数声明没有。</span></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-keyword">//<span style="font-weight: normal;">函数声明（定义和使用没有先后之分）</span>
function obj(){
&nbsp;&nbsp;&nbsp;&nbsp;alert(''hi,<span style="font-weight: normal;">我是函数声明</span>'');
}

//函数表达式（必须先定义声明，再使用）
var</span> obj=<span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>)</span>{
&nbsp;&nbsp;&nbsp;&nbsp;alert(''hi,我是函数表达式方法'')
}
<br></code></pre><p><b>4、构造函数声明</b></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">        <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Blog</span>(<span class="hljs-params"></span>) </span>{
            <span class="hljs-keyword">this</span>.title = <span class="hljs-string">''Vue学习''</span>,
            <span class="hljs-keyword">this</span>.font = <span class="hljs-string">''1100''</span>,
            <span class="hljs-keyword">this</span>.read = <span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params"></span>) </span>{
                    alert(<span class="hljs-string">''Hi ,Blog''</span>);
                }
        }
        <span class="hljs-keyword">var</span> blog1 = <span class="hljs-keyword">new</span> Blog(<span class="hljs-string">''JS学习''</span>, <span class="hljs-number">100</span>);
        alert(blog1.title);
        blog1.read();</code></pre><p>总体来说，构造函数是目前使用最多的一种写法，但是要注意，构造函数和普通函数的区别：</p><p>//this的指向</p><p><br></p><p><br></p><p><br></p>', 16, 0, CAST(N'2018-09-03T16:23:58.430' AS DateTime), CAST(N'2018-09-03T16:23:58.430' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (43, N'admin', N'c# order by 字符型的数字时候，排序错误问题', N'技术博文', N'<p>比如：</p><pre style="max-width:100%;overflow-x:auto;"><code class="java hljs" codemark="1">List&lt;digitalModel&gt; digitalStrs = <span class="hljs-keyword">new</span> List&lt;digitalModel&gt;() {
     <span class="hljs-keyword">new</span> digitalModel {
        digitalStr=<span class="hljs-string">"124844130139102"</span>,<span class="hljs-comment">//小</span>
    },
    <span class="hljs-keyword">new</span> digitalModel {
        digitalStr=<span class="hljs-string">"1000152864394053"</span>,<span class="hljs-comment">//大</span>
    },
};
</code></pre><p>但是一般排序后会出错</p><pre style="max-width:100%;overflow-x:auto;"><code class="java hljs" codemark="1">   var sortStrs2 = digitalStrs.OrderByDescending(d =&gt; d.digitalStr).ToList();</code></pre><p><br></p><p><span style="color: inherit;">所以应该增加条件</span><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="java hljs" codemark="1">    <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Program</span>
    </span>{
        <span class="hljs-function"><span class="hljs-keyword">static</span> <span class="hljs-keyword">void</span> <span class="hljs-title">Main</span><span class="hljs-params">(string[] args)</span>
        </span>{
            List&lt;digitalModel&gt; digitalStrs = <span class="hljs-keyword">new</span> List&lt;digitalModel&gt;() {
                 <span class="hljs-keyword">new</span> digitalModel {
                    digitalStr=<span class="hljs-string">"124844130139102"</span>,
                },
                <span class="hljs-keyword">new</span> digitalModel {
                    digitalStr=<span class="hljs-string">"1000152864394053"</span>,
                },
            };
             
            var sortStrs = digitalStrs.OrderByDescending(d =&gt; d.digitalStr, <span class="hljs-keyword">new</span> SemiNumericComparer()).ToList();
            var sortStrs2 = digitalStrs.OrderByDescending(d =&gt; d.digitalStr).ToList();



            Console.ReadKey();
        }


        <span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">SemiNumericComparer</span> : <span class="hljs-title">IComparer</span>&lt;<span class="hljs-title">string</span>&gt;
        </span>{
            <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">int</span> <span class="hljs-title">Compare</span><span class="hljs-params">(string s1, string s2)</span>
            </span>{
                <span class="hljs-keyword">if</span> (IsNumeric(s1) &amp;&amp; IsNumeric(s2))
                {
                    <span class="hljs-keyword">if</span> (Convert.ToInt64(s1) &gt; Convert.ToInt64(s2)) <span class="hljs-keyword">return</span> <span class="hljs-number">1</span>;
                    <span class="hljs-keyword">if</span> (Convert.ToInt64(s1) &lt; Convert.ToInt64(s2)) <span class="hljs-keyword">return</span> -<span class="hljs-number">1</span>;
                    <span class="hljs-keyword">if</span> (Convert.ToInt64(s1) == Convert.ToInt64(s2)) <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
                }

                <span class="hljs-keyword">if</span> (IsNumeric(s1) &amp;&amp; !IsNumeric(s2))
                    <span class="hljs-keyword">return</span> -<span class="hljs-number">1</span>;

                <span class="hljs-keyword">if</span> (!IsNumeric(s1) &amp;&amp; IsNumeric(s2))
                    <span class="hljs-keyword">return</span> <span class="hljs-number">1</span>;

                <span class="hljs-keyword">return</span> string.Compare(s1, s2, <span class="hljs-keyword">true</span>);
            }

            <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> bool <span class="hljs-title">IsNumeric</span><span class="hljs-params">(object value)</span>
            </span>{
                <span class="hljs-keyword">try</span>
                {
                    <span class="hljs-keyword">long</span> i = Convert.ToInt64(value.ToString());
                    <span class="hljs-keyword">return</span> <span class="hljs-keyword">true</span>;
                }
                <span class="hljs-keyword">catch</span> (FormatException)
                {
                    <span class="hljs-keyword">return</span> <span class="hljs-keyword">false</span>;
                }
            }
        }






        <span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">digitalModel</span>
        </span>{
            <span class="hljs-keyword">public</span> string id { get; set; } = (<span class="hljs-keyword">new</span> Guid()).ToString();
            <span class="hljs-keyword">public</span> string digitalStr { get; set; }

        }
    }
</code></pre><p><span style="color: inherit;"><br></span></p><p><br></p>', 56, 0, CAST(N'2018-10-09T15:25:56.910' AS DateTime), CAST(N'2018-10-09T15:25:56.910' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (44, N'admin', N'netcore实现静态项目', N'技术博文', N'<p>修改&nbsp;<span style="color: inherit;">launchSettings.json ——》》</span><span style="color: inherit;">&nbsp;"launchUrl":&nbsp;"swagger",</span></p><p>&nbsp; app.UseDefaultFiles();</p><p>&nbsp;&nbsp;&nbsp;app.UseStaticFiles();</p><p>&nbsp;</p><p>https://www.cnblogs.com/hantianwei/p/5641705.html</p><p><br></p><p>&nbsp; app.UseDefaultFiles();</p><p>&nbsp;&nbsp;&nbsp;app.UseStaticFiles();</p><p>&nbsp;<span style="color: inherit;">https://www.cnblogs.com/hantianwei/p/5641705.html</span></p><p>&nbsp; app.UseDefaultFiles();</p><p>&nbsp;&nbsp;&nbsp;app.UseStaticFiles();</p><p>&nbsp;</p><p><br></p><p>https://www.cnblogs.com/hantianwei/p/5641705.html</p><p>&nbsp; app.UseDefaultFiles();</p><p>&nbsp;&nbsp;&nbsp;app.UseStaticFiles();</p><p><br></p><p>https://www.cnblogs.com/hantianwei/p/5641705.html</p><p>&nbsp; app.UseDefaultFiles();</p><p>&nbsp;&nbsp;&nbsp;app.UseStaticFiles();</p><p>&nbsp;</p><p><br></p><p>https://www.cnblogs.com/hantianwei/p/5641705.html</p><p>&nbsp; app.UseDefaultFiles();</p><p>&nbsp;&nbsp;&nbsp;app.UseStaticFiles();</p><p>&nbsp;</p><p>&nbsp;</p><p><br></p>', 244, 0, CAST(N'2018-10-10T17:32:12.540' AS DateTime), CAST(N'2018-10-10T17:32:12.540' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (45, N'admin', N'EF 第三篇 生产环境下的数据迁移 ', N'技术博文', N'<p>步骤</p><p>1、创建实体</p><pre style="max-width:100%;overflow-x:auto;"><code class="java hljs" codemark="1">using System.ComponentModel.DataAnnotations.Schema;
 
namespace Migration
{
    <span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">User</span>
    </span>{
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        <span class="hljs-keyword">public</span> Guid Id { get; set; }
      <span class="hljs-comment">//  public string Name { get; set; }</span>
        <span class="hljs-keyword">public</span> string NickName { get; set; }
       <span class="hljs-keyword">public</span> <span class="hljs-keyword">int</span> Sex { get; set; }
    }
}</code></pre><p><span style="color: inherit;">&nbsp;2、创建DbContext</span></p><pre style="max-width:100%;overflow-x:auto;"><code class="java hljs" codemark="1">using System.Data.Entity;
namespace Migration
{
    [DbConfigurationType(typeof(MySql.Data.Entity.MySqlEFConfiguration))]
    <span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">DbBase</span> : <span class="hljs-title">DbContext</span>
    </span>{
        <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">DbBase</span><span class="hljs-params">()</span> : <span class="hljs-title">base</span><span class="hljs-params">(<span class="hljs-string">"dbConnect"</span>)</span> </span>{
            
        }
        <span class="hljs-keyword">public</span> DbSet&lt;User&gt; Users { get; set; }
    }
}</code></pre><p><span style="color: inherit;">&nbsp;3、打开程序包管理控制台，输入PM&gt; enable-migrations，vs自动生成了Configuration类</span></p><p><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAtQAAAF9CAIAAACrtGgcAAAgAElEQVR4nO3dPY4kyXkG4L2BbpAuZQqQIYAGHYKCuAYJyJgBBOgEdOWNoEPQWQwwkLdry2hHctalLjBWW3sD3kBGa2uzMyK+/DIzKuonnweFRlZW/GVVdcfbETU93/z93/9D5fbv//PXr//5L9WH3NzcrnP77W//sXoc3H73u3/68ccf//KXv/z444+/+90/9RnJI377P+KYXbLb7Lbj2//2twNvwm9+PvrXL1//59////g//vuvf/365V9vf2Fubme67fvp88c//vOPP/74xz/+84GuH/Hb/xHH7JLdmrcHCR/d3oTf/HLnX/7z61//n/e0m9v42y1/+jzit/8jjtkluzVuDxI+ur0Jv9ld083Nre/tYX76uLm59b6d7dtf+HBzu5fb2X76uLm5XW5n+/b/5re//Uc3N7c7uc1/+ri5uZ3qdqpvfysfbm5ubm5ubkNv30wAAAMJHwDAUMIHADCU8FHx+rPF8eXRYcPo2NSTXREAj2s9fHzfNmB8t7KYqq/d11Xbv/TyZFcEwINKhY9N55/D803Vz3dFADyoDuHjw5evH758nR9cvJ25nLzcXS1Zlj9ePShZqk7V5YbF4vyi5FTM9NVi1X2QuKO4l6e8omqzADyiPisfi4SxOChPzr/GJQecrLpMgVPxe3zrbnWybFVsHWc6WnTaGkC1tQe9okzjADyKbPj46b2pCB/V46m2+DHVwkewSrFobVNHC8HayUKXqbrVcrkqEIyhenfHrPzoV2TNA+BpdFv5iI/zKx+l1caDjoKmYvmpemrMi9WZclNouFX4mO74iuQPgCdwxfBxtm2XagutM6vzbnw3nqpfXl5eXl6e6YpsuwA8k24fOF18JnTxUPnR0cujZSNl3fhk2VGrzdbJhcvv/Zev84PqLkPrTDndBi0ki82n5HJsUy18PPoVtXoH4BE92N/5yO+bDPP6dL+UP98VAXBXHukvnCb/lex4z/dL+fNdEQD3Y3P4eO6/LQYAXJvwAQAMJXwAAEMJHwDAUJ3Dh08pAgCx/uHjwGAAgOcnfAAAQwkfAMBQwgcAMFTP8CF5AACrrHwAAEMJHwDAUMIHADCU8AEADOUvnAIAQ/m/XQCAoYQPAGAo4QMAGEr4AACGEj4AgKGEDwBgqM3h42795k9/7tvgdzN9WwaAM1sPH9+3DRjfrcwDx77wIbIAQFUqfGw6/xyORwfhAwCq7jR8/OZPf75so8yPL3fLAmWZsm61essiPcy3YBbbMYsNmu/eazUSlywHAADP4U7Dx/T+MxzznFEtUL1b1qq2E1hkgurxaoFM9flXAHhu2fDx03vTjcLHVFvMKMu0qm8NH2/K0FBdzwhqzYuVix+tZgHgKT3Yykf+zNbsElgNH2WxapmglvABwHk8QPiobqBMiW2XalPJ3oMNlOBuvC9j2wUApnsOH1Ptc6PVj4vOTy6KLY7Luy35z4HGJTMfOJ1m4SP+1AgAPIFz/Z2PeCsnaVgmED4AeErP8xdOk5IrH6XW8gYAsIn/2wUAGEr4AACGEj4AgKGEDwBgKOEDABjqecLH7n862xL8AY/xhg3mu8LudvoODICn8Tzho6/jf+yr++xb/Uup1+h907XnOxJHAHgjfNQdnymvFz4yjfcKHx0LCx8AvLnT8FH+QfTFQ/FfTC//LntQvSX4y+jVv5JePpr88+rJDY5W+Mi3ubWjRZvzg6Cj4Ey1eqtKPEgAHtedho8p8T/Drf7HcmWtrf/DXDAjljN0cLxaff41GEz33lsdtQJEvql4AFuHBMAzebDwMdUWM8oyreo7/nvbqTZHVlcUglrzYuUCQKvZ1WGULQe9t0oGHWWSzZHwMeUuHIAn83jhI3lma3YJrIaPsli1zOrsuy985BckqiXjjvK9rzYifADw5gHCR3UDZUpsu1SbSvYeLzNkSpYzfX7b5dOnT58+fWoNadOCRFwr7mhTp/nstVoSgOd2v+Fjqn1utPpx0fnJRbHFcXm3pfq5h8tD+ZLx/sjl+PL17aDMBKu9lI8GvSc7mg+velztqDWe6pCmRviongTgOdx1+Ogu3spJMi/2JXwAnM25wseUXvkotRYe2MfzCXBapwsfAMBtCR8AwFDCBwAwlPABAAwlfAAAQz1P+Pjw5WvfBl9n+rZ8z4N5Lexup/uQFsfdO1odxpiOAJ7e84SPvo5Pb93nqkuDmZaP9L7p2vMdHRzSPHzsbifZ11XbB0D4qDs+A10vfGQa7xU+OhYWPgB4c6fh48OXr5dtlPnx5W5ZoCxT1q1Wb1lMQsHi/2KTIti2CCpuyhOL42SbWztatDm9n/tbHQVnqtUzA4sHUC1clpyK7JJ86lY7inupDulyvnXJAE/sTsPH9P4zHPOcUS1QvVvWqrYTKCeh8ni1QKb6/GswmO69tzpqTcD5puIB7BjS1HiWWner03+m9+QVtV6OcgD5ywQ4iQcLH1NtMaMs06q+NXy8KSeP1YmtLDO9n9R7hY9Fy0HvrZJBR5np+Uj4mHIXPoXPUj58tFrOP3Wtu5lnTOwAuHi88JE8szW7BFbDR1msWmZ19t0XPvK/Ybcm5vw4kx1Vz48JH1M6C05bnrq432Q78gfAmwcIH9UNlCmx7VJtKtl7vMyQKZlcfq9Oqy8vLy8vL60hbVqQiGvFHW3qNJ+94pLBkDatfLR6j68iP878s5RJNgCncr/hY6p9brT6cdH5yUWxxXF5t+V1pnwoX7JVeFHg8vXtoJyAV3spHw16T3Y0H171uNpRazzVIU3F89kaUvksxRfeGtKOpy7Z0eoztnrtACdx1+Gju3grJ8mE0Vff53MRDjq2fA33P0KAazhX+JjSKx+l1i+v7HO959MrBXDnThc+AIDbEj4AgKGEDwBgKOEDABhK+AAAhnqe8PGbP/25b4PfzfRt+chgWo8OHg8A7PY84aOv+XS+b2rvHggkDACeg/BRd3ymFz4AoOpOw8dv/vTnyzbK/PhytyxQlinrVqu3LCb7+cbHYhNksUHz3XutRuKSq+OpNng5Mz8oC5fn464BoKM7DR/T+89wzHNGtUD1blmr2k6gnNfL49UCmerzr8Fgkg8t8k1mbAAwzIOFj6m2mFGWaVXfGj7elNN2MNlXa82LlYsfrWZXG2w9tCkkAcBgjxc+kme2ZpfAavgoi1XLBLWEDwDO4wHCR3UDZUpsu1SbSvYeTNWZmX6qzfr5bZdPnz59+vSp75CEDwDuxP2Gj6n2udHqx0XnJxfFFsfl3Zbgc6DJT3FeHqoWXhS4fH07KMPHd4Xq+UUXQeHgigDgqu46fHQXb+UkPcFULXwAcEPnCh9TeuWj1FreeDhPcyEAPKjThQ8A4Lb2hI+LawwIAHhuVj4AgKGEDwBgKOEDABhK+AAAhhI+AIChhA8AYCjhAwAYSvgAAIYSPgCAoYQPAGAo4QMAGEr4AACGEj4AgKGEDwBgKOEDABhK+AAAhhI+AIChnjB8fP78eVgtAGCr04WPz+8FtT63XWXcAHAO9x4+ts70b+WTtVbDR7IkAJB31+Fj6zLD1oggfADAeHcdPqYtM/2lZHmwKGbbBQBu6BnCRxAjyqzQatDKBwCM8QzhY1MV4QMAbuuM4cO2CwDc0OnCR6uklQ8AGEP4aNYSPgDgGu46fOzb5hA+AOCe3XX42Gc1HFQzTeYfxfjMBwAc94ThAwC4Z8IHADCU8AEADCV8AABDCR8AwFCbw8dgH758vfUQfvHhy9e32x12tG9gw65omqY//O9/XW5HWihPHh7afjfpvfpMtp6cy/lqlWED7t6g91LV6+vrNE3f/Wxx/GZ+fFUdO9rxnj/y9ii9PbF0tB4+vm8bML6kkRllWF9bO9o9sAFXdHzOu9S61Xw/vtNA9dmoDnIRPsaMalgv3ktz8wlyET6u1OOlr6u2/2bTez4usI/80VcqfGw6fxPCx47yxysmdfn+f4LfSjuq/ng9Q/jwXmpZTI1PHD6mxHu+enyc/NHR/YaPckfgcnd+/lKs3D7ItFBts1X9cn7T+MsB7O4orr46sOCJ2t1Rpvfg+3+xOlqdKVvrqK2V1UXhavutvlpD2tF73EtL8qdb6wdxsDRdvajW4O/nWSpfzeA5Oe17qXzbVMNHuQWzOL8oORXZpVqsurMTdxT3UrXpPd86Xn2DBSXfyB+93G/4eFOd/8qH4pm7mj/iNoPGM+GjWj1/cvVu8klYrX6wo2TvrQkj+GkSFIgbX61bnZgzJTf1PiWu6IhWR62T1Zk789RNN32WypLeS+WoqtPhZVKfipWJ1t3yfFAx8yGSTPVFFqm282bTez6ZSPIn5+SPLrLh46f3ptuFj9Xjy5nWb+pBF5k1iU0rH5khJTuqVt8XPjIPBetGZbGg32n7hBEXiBvfOmG02gx+cmV6z4zkiMHhozWGAc/Sji5O+F6qrnxMh8NHdZzVdY5Wydbdaqcdw0e11tR4OVplyocmyaOfx1v5WD1uncmUXP39Pmh5tbvVIeUXJDa1v/po8Jwkn9i465ETxnT4d9AuvytvbWera4SPqfbUtcY8+FlqBaN9bT7le6n8zMeUCx9TY9ejGgU2hYZ7Cx/Buyj5TSp5dPRs4WN1SSAZPmy7HBz8QscfHEHLrWLzxpOTXGZ48d0x4SM54Ez42DQlZzrNdLTjzeC91Opx8a9dpo0rHwtxHFlNEvHdOHy8vLy8vLwset+XLTq+bSSPvu43fJS7DK3jeflqC9U2yzKth8oCq3sNW7dXkh0lq6+OarVuPKTVy6z6Q/hpr/Ju9XjxcyE+X3ZUHgRDqja7tffWFbVkfsBlRl5edeva46futs/Sau/ByXO+l+Z/52OahY/5QebzodViqy0ki82TRzm2qRY+tr7nky9H/g0meXT3JH/nA94sfnbfcCQPx1O3cJInJL/xAR3d+184ha1avxSyylO3cJInpLrIAVfl/3YBAIYSPgCAoYQPAGAo4QMAGOoBwsfr66t/5gQAT+MxwsfgHgGA6xE+AIChhA8AYCjhAwAY6t7Dh+QBAE/m3sPHJH8AwHMRPgCAoYQPAGAo4QMAGOoxwof8AQBP4wHCBwDwTIQPAGAo4QMAGEr4AACGEj5SPn/+PKwWADw34SMljhGf3wtqfW67yrgB4P6cLnzsmOzfCierrIaPZEkAeFbnCh875vutVYQPAIgJH6ny5cGimG0XAEgSPpolg1WKRd1WU1Y+AKAkfGyumH9U+ACAkvCxuWL1UdsuAJAkfGyueKQLKx8AIHxsrnikC+EDAM4VPqZdf+djEj4AoJ/ThY99VsNBNdNk/lGMz3wAcDbCBwAwlPABAAwlfAAAQwkfAMBQwgf36/X1dXEAwBPYHD7O4MOXrx++fG2dbz20u7vXmSMtlCd3D+m4470vWpA/AJ7Gevj4vm3A+G4lCBNHckZpPqfum19vuzxwvU6FD4BnlQofm84/hzHho8uE+ugrHPlm5Q+A53Ci8HHZNJlvncTH1U2WxZmgWLBN8yaYTRcbMZfj8mS5ZdPaxFkUrrbf6qs1pB29x70Ez4zwAfAcThQ+pve5YZ4zkierd1fL7Agf1b2Yxcy9qZFFO3FHUy0QZGplep8SV9RqVvgAeA7Z8PHTe5Pw0W65Vaa0NXzEBeLGt4aPVpvlOsem3jMjaTUrfAA8BysfZwkf0+H1jC7rLsl2hA+AJyZ8vDsYvO0ybZmVO258VBuP21ztPe5ua/hIjh+AR3S68FH9EOjlzOJgUTL4yGpQeHVU5V5GeXJ+t3q8mMjj82VH5UEwpGqzW3tvXdG8fHAXgMd1rr/z0fdPdDyW13CZ4T69NpZVAHhoJ/oLp/mliGdVXWAAgMH83y4AwFDCBwAwlPABAAwlfAAAQ500fPjcJQDcynnDx62HAAAnJXwAAEMJHwDAUMIHADDUGcOH5AEAN3TG8DHJHwBwO8IHADCU8AEADCV8AABDnTd8yB8AcBMnDR8AwK0IHwDAUMIHADDUL+Hj17//1cd/+7vL7de//1W1gvABABwhfAAAQwkfO3384dvkSQBgTvjY40jyuMOAsjqkjz98+3ZbHCer99Kxo8tVlJeTrx40e7yp3TIN7rtqgF6Ejz0GhI9rTAxH2lyEj36Dqvd11fbLXnb0GFTZEWW29r7aVKZN4QO4FeFjs+PJ41YTg/DRsZc7Dx+D+wXYRPjYrGP4mE/k5b5GOc0vTh4v2Vp+LwtXw8fB6h3HGffSGlJ5sFo9aHD+UDzO1RaqZTaVXO09HmfyyW8NBiAmfGxzJHlcSi5+sq8eB4/OGyxn09U2q+fzHcXVq1PgakfHxxnEi7JkdaJNVs8MbEf1I5Jvm5uPEzg54WOb4+GjnO1Wj4NH40wQ9BWMP7jGg+Gj1fvxcWaCV2ac8VRdjSbxwOYVk9WDuqvvtPyTXC1cLZPvHSBJ+NjmSPjYOlnmq5eZYNMk1zd8TLU5LG72+DiT7az2svpyHFz5yI9kn/yTHPRrtQO4NuFjg+PLHuXx/GDHbFfNBPkZdPXuaspZvRucv944b3Xy4DiP25S3bjhO4OSEjw0OLntc4sXHYgV+fn5RpdXIouKi/MfGann1bqvYakfJ6ouS1SvqOM7ySS7rLhoMqrQGEI9n9QkJCu+Wf5KrXa9WL7s7PmbgnISPrOqPWj9/S4tJ94Yj4aq8uMBuwgf9dfxtHoDnI3wAAEMJHwDAUIfCx98CAGwkfIzw8Ydvu5Svnn/7dEVcfusAAOB6OoSPvzmljz98e+TkosDbLVPl8lBZK24wKA8AIwkfe2RCRvmXJPLTfz4iJGPKjpYB4EqEjz2S4SNfd1Egn1RWw0f5FQBuS/jYLLm3kgwf1ajRWrQo40i87WLNA4A7JHxslg8f+W2XVqRoZZpMs2XykD8AuAfCxzbHP2eaWSNZDR+ZXhaN+MwpAHdC+NjmeuGjukVyMHz4zCkAd0j42GZT+Mhsu8SZY1/4WKQZnzkF4K4IHxscXOGoni9zSbxKkVz5yNQFgJsQPja4RviIC1SjRnIPpfyXMnG/ADCG8JG1KXn8zd4/MjbfK4k3aJL/2kXsAODeCB8AwFD+YzkAYCjhAwAY6ptqwgjMwwcAwFbCBwAwlPABAAwlfPTx+vp66yEsrQ7p9WeL42T1Xjp29FrYUT1o9nhTAEzCRy/JmeYaE9KRNhfho9+g6n1dtf2ylx09BlV2RJmtvbd8+PK1V1MA90D46OAyfydLXqP33XWfOHz0rS58APQifHSwCB/zibzc1yin+cXJ4yVb2wRl4Wr4OFi94zjjXlpDKg9WqwcNzh+Kx7nawsVLoVXyw5ev89vifPVgcTxvZPWKAMYQPjq4zG2LM/Fx8Oi8wXI2XW2zej7fUVy9OteudnR8nEG8KEtWI0WyemZgO6ofUV35KPPEInAEJwFuS/jooDrbrR4Hj8aZIOir1XKrWJfw0er9+DgzwSszzjhSVKNJPLB5xWT1ufzKx5tW+AjOLFZBWosfADchfBy1dbLMVy8zwaZJrm/4mGozfdzs8XEm21ntZfXlOLjykR/JPgfDR69hAPQifBy1OpntmO2qmSA/g67eXU05q3eD89cb561OHhzncck9lOpnPmy7AHdI+DhkvupersDPzy+qtBpZVFyUf32v1WZcbLWjZPVFyeoVdRzna/Ekl3VfC5nXKG5z0xMSFD6o9RnS8mMfrc+f+sApcD+ED1IWk+4NR0IvXkfgVoQPsrr/Ng/AOQkfAMBQwgcAMNQv4ePXv//Vx3/7u8vt17//VbWC8AEAHCF8jPbxh2/LW6ZMUP5Sa7XrfOF8+UxT1Vrx5RxpHIB7Jnz0VJ0pFyerUWNHszvKzItlpvzy62qbQUjK5Ket4wTgEQkf3WSSx5Rb+SjLzw+SvayOdtNSSjJ8JMcgfACcmfDRTT58ZCpO72PHvuqrQ22NuYwm1aQSlIlD1dZslFksAeBRCB99JJPHtOUzH612WtN/3HJrKyS4ojKjxJe5NdMEl58ZIQAPSvjoIx8+ejUelAlCQDJ8lBs95RpMtbvjKx/5eATAgxI+OshvuCRXKQ6O4eDUXg0ccfhYPJrZVYkL7CgJwKMQPjrYt+wRF9iaUTaFj617H1MjfCzqZjZ98ttD14hoANwD4aODTeGjNVVvrR6cPL7yUQ4sv+2yaaixoFMAHpfwcdTWKTa5N9ElfLQyzeoYqgXiwmVQyCSqZE6SPwCeifBx1I5lj8wv9Pl9h+BM9aH8Bk1ZMrjY6obOviuKLwqARyd8HLJvw2VKfOoiufIRFMsklWDbZV4gyCvV3Zl4bKtDii8q0yYA90z4AACGEj4AgKGEDwBgqG/Wi7wnfAAARwgfAMBQwgcAMJTw0cfr6+uth7C0OqTXny2Ok9V72dfR60zHkfRtcNH4al/XHkDflj98+frhy9dMmdViwNkIH30kf6xfY1450uYifPQbVL2vKzWYafmGL1DQcv7k9cawzyVPZIKF8AEsCB8dXObvZMlr9L677hOEj0zjtw0frXfIE4SP7oWBMxA+OlhMLfOJvNzXWF1sP16ytXpfFq6Gj4PVO45ztZfWcab36gDKwQRDjS+qbLZ6pdW+4t7nT8iUeO1alz/3UmiVvOyklPsprU2W6pmycKt6MGzgQQkfHZRTS+Y4eHQxtWxts3o+31FcvTqxrXZ0fJzlAIIryvS+Wj1fMtn7vvBx8B2SeQl2iBNGGUpWSwbVgecjfHTQ+k03Pg4ejTNB0Fer5VaxLuGj1fvxce6eVjf1Xk02q0O61K02GPcSj+pI+JiLB7+QX/l408oHrRWRarFqRR9QhTMQPo7a8RtwsnqZCTbNKH3Dx9SeVoOubxI+8r2XJTeFjx1V8i9KXL0VPrYOfrdqPmh9CjVIKqtlgKckfBwVT3ut378z02owtazOtfHd1ZSzejc4f71xtk5mZvpNz/yAk9W7q2XK4+MJbB/bLsARwschP69wvy6OL3fnB4vz1UYWFRflX99rtRkXW+0oWX1RsnpFHcdZHVvZdb73VmtHrr08WR18a5D53qd2ZFy9zOmw1Q+cXh6qbqZs/bxqlzEDd0X4IGUxF95wJJyN9xs8H+GDrI6/OgNwZsIHADCU8AEADCV8AABDCR8AwFDnCh8+LwkAN3eu8DH5Z3sAcGvCBwAwlPABAAwlfAAAQ50ufEzyBwDc1OnCh+QBALclfAAAQwkfAMBQwgcAMNS5woe/cAoAN3eu8AEA3JzwAQAMtSd8XFxjQADAc7PyAQAMJXwAAEMJHwDAUMIHADCU8AEADCV8AABDCR8AwFDCBwAwlPABAAwlfAAAQwkfAMBQwgcAMJTwAQAMJXwAAEMJHwDAUMIHADCU8AEADCV8pHz+/HlYLQB4bsJHShwjPr8X1PrcdpVxA8D9OWP42DrTv5VP1loNH8mSAPCsThc+ti4zbI0IwgcAxE4XPqYtM/2lZHmwKGbbBQCShI9mmWCVYtFCq0ErHwBQEj46VBE+ACBP+OhQxbYLAOQJH52r+MApAMSEj85VhA8AiJ0ufOzb5hA+AKCX04WPfVbDQTXTZP5RjM98AHA2wgcAMJTwAQAMJXwAAEMJHwDAUMIHHPX6+nrrIXBL3gCw1ebwwUgfvnz98OXrrUfxi9ZgxozzSO+vM7sHUK1+OfPdzxbHl0d397tJx47+8L//dbktTgYly0fPQP6ATdbDx/dtA8Z3bw5OsTuq31X4CNx2nHHv84nh4CQRhI/p58wxP7ieMWnmkiQW+SMo2SpwP7q/B463CWeTCh+bzj834aPlUcLHQYumFnefOHxMjSASl7xP1wgfx5uFUzlR+HhbnL/cFuenYvV+UbJVvSxZlj9ePXNdi8sp7yavPThZDiZ4SuOR7xhnsveq1m+r5U5KfHJH+Ci3YBbnFyWnIrtUi1V3duKO4l6qWuGjuh3TOi73YoINnUxwqb4cizOX4/Jk5nWf310ctPbvhA/IO1H4mN7/ftya+VZLZtq8UvVSvnr+2lsny8EMG3y+90A5V5XH+ZPVu5dJfSpWJlp3y/NBxcyHSDLVF1mk2s6b1ZWPHYkkf7Jq0wuXeRFX24xf9NXzQCkbPn56b3q68HGkZPn7d2su3FG9Y/horVJkxlk9v6mjI4PP974q/iW4dbKsXr3bJXxUh11d52iVbN2tdtoxfFRrTbUljXgtJB8+qidXX7hq+KguaWxa4RA+IM/Kx/L4SMn45L7qO+bvy3GmnWuEj2DA1QaTz3b38BE82jrZK3xMjV2PahTYFBruLXwEnxTZ9zGRK4WPVl/CB1yD8LE8TpbcvcdxpPrWK8pc71XDx2omGBM+Du6w5OetHSsfC3EcWU0S8d04fLy8vLy8vCx635ctep2sOv7CxRsr+W2X+I0BBE4XPqr7DtU9gtbGQbJkr+qZzYtWR6sl809IazzV85lh7x5n5vxCdUV9fj5/svrQ28H8g5yLu8nPh1aLrbaQLDZPHuXYplr4aO2DlOeDTZPyodWS05rMCze/m9lPqVaP+1qcWR02cHGuv/OxaUcAknZMPPmND+6f5AFbnegvnG76dRyurbrIAXAG/m8XAGAo4QMAGEr4AACGEj4AgKFOGj6qfzsIABjgvOHj1kMAgJMSPgCAoYQPAGAo4QMAGOqM4UPyAIAbOmP4mOQPALgd4QMAGEr4AACGEj4AgKHOGz7kDwC4iZOGDwDgVoQPAGAo4QMAGEr4AACGEj4AgKGEj54+/vBt8iQAnJbw0U3H5PHxh2/nt8uZTV1fWzykvrUudcumMif7DmOrI+MsqxwZw766x418qsd0tM/xV2HH2+ZxneQyT0v46KZv+Fh83d1UR+UAjlxdL7uf9sHPZ5e3x8EnfF795m+nIx4lzfT6ltnXSPfBQ0fCRx/X2HApf1c+0tpxwscR9xA+jjd1J4SPjsWuVB1iwkcfw8LHYtG1tQy72LVptd8qtjjZKtnaEorbXB1S2XJQ8Uj4OLgh0npOWq9IZpy7n7pq9eoLl+IboQ4AAAEASURBVH/dp+IlWO139/uz1VH+rZgfed/vjq1PSDykoM1FI0H1rYNfFA6qV/ut3s2/IsFbNHOZZYM8BOGjg+r7/vg3Q/UHROuh1t3Vnx2Lr0H11s+CxaPVKgeHFFTc/eR3GWe+emac1xhSsuu4ev75zLxwwds4+U5ujSfzLdPqPdNgchhx9eS3TL7ZTd+w5fHWJ/lgm/kfVsnvjk0vKPdD+OhgWPjIPHQ5s3vC+Nj4vefIz7IHCh/Va9/URbV6MnyUve+YmVZfuOrJ/Ove6nfKvXBB+Gi1nBxScrqKG4mHdDx8VIeUfNcF/Sa/YVsvcTzU5GB2/Axp9V4WPviDhXvzf4xhmiASdt4uAAAAAElFTkSuQmCC" alt="" class=""></p><p>注意，生成的Configuration构造函数中AutomaticMigrationsEnabled值是false, 我们把它改成true，启用自动迁移。然后根据自已的需要设置数据库升级时是否允许数据丢失，建议还在开发阶段设AutomaticMigrationDataLossAllowed = true;直第一个生产环境发布了，将其改为AutomaticMigrationDataLossAllowed = false;以免造成客户重要数据丢失。这里的数据丢失指的是，例如：User表中，第一个版本有个Name字段，并且已经有数据录入了，然后第二个版本将Name字段删除了，此时若AutomaticMigrationDataLossAllowed = false则会出抛出异常，无法迁移。</p><p>3、修改DbContext</p><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="java hljs" codemark="1">

using System.Data.Entity;
 
namespace Migration
{
 
    [DbConfigurationType(typeof(MySql.Data.Entity.MySqlEFConfiguration))]
    <span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">DbBase</span> : <span class="hljs-title">DbContext</span>
    </span>{
        <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">DbBase</span><span class="hljs-params">()</span> : <span class="hljs-title">base</span><span class="hljs-params">(<span class="hljs-string">"dbConnect"</span>)</span> </span>{
            <span class="hljs-comment">//自动迁移</span>
            Database.SetInitializer(<span class="hljs-keyword">new</span> MigrateDatabaseToLatestVersion&lt;DbBase, Migration.Migrations.Configuration&gt;());
        }
        <span class="hljs-keyword">public</span> DbSet&lt;User&gt; Users { get; set; }
        
        
    }
}</code></pre><p><br></p>', 67, 0, CAST(N'2018-12-10T14:55:57.427' AS DateTime), CAST(N'2018-12-10T14:55:57.427' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (46, N'admin', N'.net 网站实现 HTTPS 访问，并自动跳转', N'技术博文', N'<h1>准备</h1><p>1.购买一台<a href="https://www.qcloud.com/product/cvm?fromSource=gwzcw.84824.84824.84824" target="_blank">腾讯云CVM</a>
2.拥有一个已经在腾讯云备案成功的域名。</p><h1>演示环境</h1><p>系统：windows2008R2
软件：IIS7.0，IIS的microsoft URL重写模块2.0</p><h1>操作步骤：</h1><h2>1、给已备案的域名申请SSL证书并下载到服务器</h2><figure><div><img src="https://blog-10039692.file.myqcloud.com/1488272147475_1642_1488272148299.png"></div></figure><p>这里我们使用IIS环境，所以选择IIS文件夹中的证书文件</p><figure><div><img src="https://blog-10039692.file.myqcloud.com/1488272223004_9508_1488272223608.png"></div></figure><h2>2、打开IIS信息服务管理器部署SSL证书并绑定域名、开放并绑定端口</h2><p>首先导入证书 （<span style="background-color: rgb(255, 0, 0);"><font color="#ffffff">注意这个是在IIS里找，而不是在网站站点列表里找</font></span>）</p><figure><div><img src="https://blog-10039692.file.myqcloud.com/1488272900948_4212_1488272902008.png"></div></figure><figure><div><img src="https://blog-10039692.file.myqcloud.com/1488272959688_6272_1488272960403.png"></div></figure><p><br></p><p>接下来绑定https的443端口</p><figure><div><span><img src="https://blog-10039692.file.myqcloud.com/1488273021899_8255_1488273022657.png"></span></div></figure><p><br></p><p>6、然后打开IIS的主页找到服务器证书栏，双击打开即可。</p><p><img src="http://p3.pstatp.com/large/cff000327786091da78" alt="有了SSL证书，如何在IIS环境下部署https？">7、双击打开后，选择导入，导入我们刚刚解压得到的pfx文件，这个pfx文件就是你需要部署域名的那个文件。</p><p><img src="http://p9.pstatp.com/large/c5f0008af2e56bcbc13" alt="有了SSL证书，如何在IIS环境下部署https？">8、这个时候我们带https打开我们部署的网站，现在显示的还是红色的。</p><p><img src="http://p3.pstatp.com/large/cff000329e8c30d9208" alt="有了SSL证书，如何在IIS环境下部署https？">9、现在我们去找到我们需要部署的网站，在服务器网站栏里，双击绑定。</p><p><img src="http://p3.pstatp.com/large/ca1000873080e23b57e" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p>10、然后我们点添加，添加，添加选择https，443端口。</p><p><img src="http://p3.pstatp.com/large/ca10008755252393566" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p><img src="http://p1.pstatp.com/large/cfd0003ce83c5c95179" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p>11、这个时候我们通过浏览器打开https的网站。</p><p><img src="http://p3.pstatp.com/large/c5f0008b5a2fbc5a9a7" alt="有了SSL证书，如何在IIS环境下部署https？">12、绿了有没有</p><p><br></p><h2>3、安装URL重写工具</h2><p>首先到<a href="http://www.iis.net/downloads/microsoft/url-rewrite" target="_blank">URL重写工具下载页面</a>，点击页面上的安装此扩展按钮。这样会跳到<a href="https://www.microsoft.com/web/gallery/install.aspx?appid=urlrewrite2" target="_blank">Web平台安装程序</a>的下载页面，如果没有安装此工具，就在这里下载并安装；如果已经安装此工具，就直接打开，可以在IIS中，或者是直接在开始菜单中搜索此工具并打开。</p><p><img src="http://blog.azlinli.com/upload/image/20181220/20181220120334_5581.png" alt=""><br></p><p><br></p><p><br></p><p>下载好了之后会发现我们的IIS界面多了个URL重写的组件，开始都没有的，没错，我是刚刚下的。</p><p><img src="http://p3.pstatp.com/large/cfe0003351d363b6ac3" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p><br></p><p>利用URL重写唯一就是能够实现全站http跳转https。</p><p>所以，在部署之前，请检查网站根目录是否有web.config文件，如有，请先备份这里的web.config文件，因为以下的配置可能会和web.config里面跳转冲突，个人建议是直接删除处理，毕竟旧的不去新的不来，哈哈哈（建议先备份）。</p><p><br></p><p>14、然后继续下一步，双击打开，添加规则。</p><p><img src="http://p3.pstatp.com/large/cff00033d760241c6e1" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p><br></p><p>15、填写规则名称：Redirect to https，使用正规表达式，模式填写 （.*），然后接下来选择添加条件。第一个填{HTTPS} 与模式匹配 ^OFF$ ，第二个填{HTTPS_HOST} 与模式不匹配 ^(localhost) 。</p><p><img src="http://p1.pstatp.com/large/cff00033ec28ae8801e" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p><br></p><p>16、操作类型选择重定向，然后选择属性为https://{HTTP_HOST}/{R:1} 重定向类型选择303。</p><p><img src="http://p3.pstatp.com/large/ca200088e32fa15db28" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p><br></p><p>17、最后一步，检查下点保存即可。</p><p><img src="http://p1.pstatp.com/large/c5f0008c532dca8e3e5" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p><br></p><p>18、现在我们可以去看看我们的网站，直接输入www.domain.com。</p><p></p><p><img src="http://p3.pstatp.com/large/c5f0008c7a59ae751c4" alt="有了SSL证书，如何在IIS环境下部署https？"></p><p><br></p>', 136, 0, CAST(N'2018-12-20T12:08:17.637' AS DateTime), CAST(N'2018-12-20T12:08:17.637' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (47, N'admin', N'asp.net 中的app_offline.htm的使用', N'技术博文', N'<p>前段时间，系统升级，由于系统更新发布时间较长，所以必须停掉站点进行更新。导致很多用户都来反馈系统无法访问，还认为站点被黑掉了。</p><p>所以经过那件事我们也在思考，如何做到不停机，进行热部署。单机环境下（双机或是分布式系统不用考虑这个问题），app_offline.htm是个不错的选择，</p><p>当asp.net看到应用程序中app_offline.htm文件时，它会关闭应用程序的app-domain,然后将请求发给app_offline的内容。</p><p>所以，在维护，升级的时候，就不必停止你的WEB应用程序，而是一个友好的方式提示给用户，本网站正在更新的提示，这样体验会更友好。</p><p>&nbsp;</p><p>1. 创建一个app_offline.htm的HTM页面文件，</p><p><br></p><pre>&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="Content-Type"
content="text/html; charset=gb2312"&gt;
&lt;title&gt;站点更新中&lt;/title&gt;
&lt;/head&gt;
&lt;style&gt;
div {
background-color:#ffffcc;
padding-top:10px;
padding-bottom:10px;
padding-left:10px;
padding-right:10px;
border-style:solid;
border-color:Black;
border-width:1px;
}
&lt;/style&gt;
&lt;body&gt;
&lt;div&gt;
&lt;h1&gt;站点更新中&lt;/h1&gt;
&lt;p&gt;站点更新中，请稍后访问。&lt;/p&gt;
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;</pre><p><br></p><p>&nbsp;</p><p>2. 将app_offline.htm放在你的网站根目录下。这样，任何外部的请求的话，都会马上被转移到该页面了。</p><p></p><p>需要注意的是：</p><p>（1）app_offline.htm 不能小于 512 字节（可能不一定）。</p><p>（2）IIS 站点和进程池不需要停止。</p><p>（3）只有对.aspx文件的请求才自动转到app_offline.htm文件；如果请求的是.htm, .asp等文件，则不会转到app_offline.htm</p><p><br></p>', 400, 0, CAST(N'2019-01-10T10:35:50.673' AS DateTime), CAST(N'2019-01-10T10:35:50.673' AS DateTime), N'')
INSERT [dbo].[BlogArticle] ([bID], [bsubmitter], [btitle], [bcategory], [bcontent], [btraffic], [bcommentNum], [bUpdateTime], [bCreateTime], [bRemark]) VALUES (48, N'string', N'string', N'string', N'string', 0, 0, CAST(N'2019-04-02T15:23:06.717' AS DateTime), CAST(N'2019-04-02T15:23:06.717' AS DateTime), N'string')
SET IDENTITY_INSERT [dbo].[BlogArticle] OFF
SET IDENTITY_INSERT [dbo].[Guestbook] ON 

INSERT [dbo].[Guestbook] ([id], [blogId], [createdate], [username], [phone], [QQ], [body], [ip], [isshow]) VALUES (1, 1, CAST(N'2018-06-20T15:42:12.760' AS DateTime), NULL, NULL, NULL, NULL, N'::1', 0)
SET IDENTITY_INSERT [dbo].[Guestbook] OFF
SET IDENTITY_INSERT [dbo].[Module] ON 

INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, NULL, N'values接口', N'/api/values', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, NULL, N'claims的接口', N'/api/claims', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, 0, NULL, N'UserRole接口', N'/api/UserRole', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, NULL, N'', N'/api/v2/Apb/apbs', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (11, 0, NULL, N'修改 tibug 文章', N'/api/TopicDetail/update', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (12, 0, NULL, N'删除tibug文章', N'/api/TopicDetail/delete', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (13, 0, NULL, N'获取用户', N'/api/user/get', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (14, 0, NULL, N'获取用户详情', N'/api/user/get/\d+', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (15, 1, NULL, N'角色接口', N'/api/role', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (16, 0, NULL, N'添加用户', N'/api/user/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (17, 0, NULL, N'删除用户', N'/api/user/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (18, 0, NULL, N'修改用户', N'/api/user/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (19, 0, NULL, N'获取api接口', N'/api/module/get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (20, 0, NULL, N'删除api接口', N'/api/module/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (21, 0, NULL, N'修改api接口', N'/api/module/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (22, 0, NULL, N'添加api接口', N'/api/module/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (23, 0, NULL, N'获取菜单', N'/api/permission/get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (24, 0, NULL, N'删除菜单', N'/api/permission/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (25, 0, NULL, N'修改菜单', N'/api/permission/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (26, 0, NULL, N'添加菜单', N'/api/permission/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (27, 0, NULL, N'获取菜单树', N'/api/permission/getpermissiontree', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (28, 0, NULL, N'获取角色', N'/api/role/get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (29, 0, NULL, N'删除角色', N'/api/role/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (30, 0, NULL, N'修改角色', N'/api/role/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (31, 0, NULL, N'添加角色', N'/api/role/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (32, 0, NULL, N'获取bug', N'/api/TopicDetail/Get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (33, 0, NULL, N'获取博客', N'/api/Blog', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (34, 0, NULL, N'保存分配', N'/api/permission/Assign', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (35, 0, NULL, N'Get导航条', N'/api/permission/GetNavigationBar', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 23, N'后台总管理员', CAST(N'2019-02-25T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Module] OFF
SET IDENTITY_INSERT [dbo].[PasswordLib] ON 

INSERT [dbo].[PasswordLib] ([PLID], [IsDeleted], [plURL], [plPWD], [plAccountName], [plStatus], [plErrorCount], [plHintPwd], [plHintquestion], [plCreateTime], [plUpdateTime], [plLastErrTime], [test], [test3]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'11')
SET IDENTITY_INSERT [dbo].[PasswordLib] OFF
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, N'/', N'QQ欢迎页', 0, 0, 0, 0, N'fa-qq', N'33', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, N'/', N'用户角色管理', 0, 0, 0, 0, N'fa-users', N'11', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, N'/User/Roles', N'角色管理', 0, 28, 2, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, N'/User/Users', N'用户管理', 0, 13, 2, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 0, N'/', N'菜单权限管理', 0, 0, 0, 0, N'fa-sitemap', N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, N'/Permission/Module', N'接口管理', 0, 19, 5, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, N'/Permission/Permission', N'菜单管理', 0, 23, 5, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, N'/Thanks', N'致谢页', 10, 0, 0, 0, N'fa-star ', N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, 0, N'无', N'查询', 0, 13, 4, 1, NULL, N'这个用户页的查询按钮', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, N'/', N'报表管理', 0, 0, 0, 0, N'fa-line-chart', N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (11, 0, N'/Form/Charts', N'表单', 0, 0, 10, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (12, 0, N'/Form/Form', N'图表', 0, 0, 10, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (13, 0, N' ', N'新增', 0, 16, 4, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (14, 0, N' ', N'编辑', 0, 18, 4, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (15, 0, N' ', N'删除', 0, 17, 4, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (16, 0, N' ', N'查询', 0, 28, 3, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (17, 0, N' ', N'新增', 0, 31, 3, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (18, 0, N' ', N'编辑', 0, 30, 3, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (19, 0, N' ', N'删除', 0, 29, 3, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (20, 0, N' ', N'查询', 0, 19, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (21, 0, N' ', N'新增', 0, 22, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (22, 0, N' ', N'编辑', 0, 21, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (23, 0, N' ', N'删除', 0, 20, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (24, 0, N' ', N'查询', 0, 23, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (25, 0, N' ', N'新增', 0, 26, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (26, 0, N' ', N'编辑', 0, 25, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (27, 0, N' ', N'删除', 0, 24, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (28, 0, N'/Tibug/Bugs', N'问题管理', 0, 32, 0, 0, N'fa-bug', N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (29, 0, N'/Blog/Blogs', N'博客管理', 0, 33, 0, 0, N'fa-file-word-o', N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (30, 0, N' ', N'编辑', 0, 11, 28, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (31, 0, N' ', N'删除', 0, 12, 28, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (32, 0, N' ', N'查询', 0, 32, 28, 1, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (33, 0, N' ', N'菜单树', 0, 27, 7, 1, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (34, 0, N'/Permission/Assign', N'权限分配', 0, 0, 5, 0, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (35, 0, N' ', N'保存权限', 0, 34, 34, 1, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-25T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (36, 0, N' ', N'左侧导航', 0, 35, 7, 1, N'', N'', 1, 23, N'后台总管理员', CAST(N'2019-02-25T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (37, 0, N'/', N'测试页面管理', 0, 0, 0, 0, N'fa-flask', N'', 1, 23, N'后台总管理员', CAST(N'2019-04-02T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (38, 0, N'/TestShow/TestOne', N'测试页面1', 0, 0, 37, 0, N'', N'', 1, 23, N'后台总管理员', CAST(N'2019-04-02T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (39, 0, N'/TestShow/TestTwo', N'测试页面2', 0, 0, 37, 0, N'', N'', 1, 23, N'后台总管理员', CAST(N'2019-04-03T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-04-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Permission] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, N'Admin', N'普通管理', 1, 1, NULL, NULL, CAST(N'2018-11-02T00:34:40.290' AS DateTime), NULL, NULL, CAST(N'2018-11-02T00:34:40.293' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, N'System', N'系统管理', 1, 1, NULL, NULL, CAST(N'2018-11-02T00:34:40.290' AS DateTime), NULL, NULL, CAST(N'2018-11-02T00:34:40.293' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, N'Tibug', N'tibug系统管理', 1, 1, NULL, NULL, CAST(N'2018-11-02T00:34:40.290' AS DateTime), NULL, NULL, CAST(N'2018-11-02T00:34:40.293' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, N'SuperAdmin', N'超级管理', 0, 1, 23, N'blogadmin', CAST(N'2019-02-18T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 1, N'AdminTest', NULL, 1, 1, 18, N'提bug账号', CAST(N'2019-02-19T15:31:31.227' AS DateTime), NULL, NULL, CAST(N'2019-02-19T15:31:31.227' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, N'AdminTest', N'测试管理', 1, 1, 23, N'后台总管理员', CAST(N'2019-02-19T15:32:42.183' AS DateTime), NULL, NULL, CAST(N'2019-02-19T15:32:42.183' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, N'AdminTest2', N'测试管理2', 1, 1, 23, N'后台总管理员', CAST(N'2019-02-26T11:01:23.223' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:01:23.223' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, NULL, N'211', N'', 1, 1, NULL, NULL, CAST(N'2019-02-27T12:02:05.467' AS DateTime), NULL, NULL, CAST(N'2019-02-27T12:02:05.467' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, NULL, N'2', N'', 1, 1, NULL, NULL, CAST(N'2019-02-28T09:38:08.527' AS DateTime), NULL, NULL, CAST(N'2019-02-28T09:38:08.527' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, NULL, N'uh', N'', 1, 1, NULL, NULL, CAST(N'2019-03-31T00:47:24.600' AS DateTime), NULL, NULL, CAST(N'2019-03-31T00:47:24.600' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (11, NULL, N'呵呵呵', N'', 1, 1, NULL, NULL, CAST(N'2019-04-02T16:32:05.740' AS DateTime), NULL, NULL, CAST(N'2019-04-02T16:32:05.740' AS DateTime))
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[RoleModulePermission] ON 

INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 0, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, 3, 11, 30, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, 3, 12, 31, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, 3, 13, 9, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, 3, 32, 28, NULL, NULL, CAST(N'2019-02-23T19:22:46.473' AS DateTime), NULL, NULL, CAST(N'2019-02-23T19:22:46.473' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (14, 0, 4, 13, 3, NULL, NULL, CAST(N'2019-02-23T20:04:23.867' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:23.867' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (15, 0, 4, 13, 9, NULL, NULL, CAST(N'2019-02-23T20:04:23.973' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:23.973' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (16, 0, 4, 16, 13, NULL, NULL, CAST(N'2019-02-23T20:04:24.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:24.000' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (17, 0, 4, 18, 14, NULL, NULL, CAST(N'2019-02-23T20:04:24.037' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:24.037' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (18, 0, 4, 17, 15, NULL, NULL, CAST(N'2019-02-23T20:04:24.067' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:24.067' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (27, 0, 4, 0, 2, NULL, NULL, CAST(N'2019-02-23T21:00:30.703' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:30.703' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (28, 0, 4, 28, 4, NULL, NULL, CAST(N'2019-02-23T21:00:30.987' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:30.987' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (29, 0, 4, 28, 16, NULL, NULL, CAST(N'2019-02-23T21:00:31.010' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.010' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (30, 0, 4, 31, 17, NULL, NULL, CAST(N'2019-02-23T21:00:31.030' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.030' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (31, 0, 4, 30, 18, NULL, NULL, CAST(N'2019-02-23T21:00:31.053' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.053' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (32, 0, 4, 29, 19, NULL, NULL, CAST(N'2019-02-23T21:00:31.083' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.083' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (33, 0, 4, 0, 1, NULL, NULL, CAST(N'2019-02-23T21:00:55.233' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.233' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (34, 0, 4, 0, 5, NULL, NULL, CAST(N'2019-02-23T21:00:55.253' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.253' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (35, 0, 4, 19, 6, NULL, NULL, CAST(N'2019-02-23T21:00:55.277' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.277' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (36, 0, 4, 19, 20, NULL, NULL, CAST(N'2019-02-23T21:00:55.297' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.297' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (37, 0, 4, 22, 21, NULL, NULL, CAST(N'2019-02-23T21:00:55.317' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.317' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (38, 0, 4, 21, 22, NULL, NULL, CAST(N'2019-02-23T21:00:55.340' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.340' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (39, 0, 4, 20, 23, NULL, NULL, CAST(N'2019-02-23T21:00:55.360' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.360' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (40, 0, 4, 23, 7, NULL, NULL, CAST(N'2019-02-23T21:00:55.383' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.383' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (41, 0, 4, 23, 24, NULL, NULL, CAST(N'2019-02-23T21:00:55.407' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.407' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (42, 0, 4, 26, 25, NULL, NULL, CAST(N'2019-02-23T21:00:55.430' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.430' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (43, 0, 4, 25, 26, NULL, NULL, CAST(N'2019-02-23T21:00:55.450' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.450' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (44, 0, 4, 24, 27, NULL, NULL, CAST(N'2019-02-23T21:00:55.470' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.470' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (45, 0, 4, 0, 8, NULL, NULL, CAST(N'2019-02-23T21:01:03.630' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.630' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (46, 0, 4, 0, 10, NULL, NULL, CAST(N'2019-02-23T21:01:03.653' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.653' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (47, 0, 4, 0, 11, NULL, NULL, CAST(N'2019-02-23T21:01:03.673' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.673' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (48, 0, 4, 0, 12, NULL, NULL, CAST(N'2019-02-23T21:01:03.697' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.697' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (49, 0, 4, 32, 28, NULL, NULL, CAST(N'2019-02-23T21:01:03.720' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.720' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (50, 0, 4, 11, 30, NULL, NULL, CAST(N'2019-02-23T21:01:03.747' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.747' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (51, 0, 4, 12, 31, NULL, NULL, CAST(N'2019-02-23T21:01:03.770' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.770' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (52, 0, 4, 33, 29, NULL, NULL, CAST(N'2019-02-23T21:01:03.790' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.790' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (53, 0, 4, 32, 32, NULL, NULL, CAST(N'2019-02-23T21:20:14.093' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:20:14.093' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (66, 0, 6, 0, 1, NULL, NULL, CAST(N'2019-02-23T21:34:27.543' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.543' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (71, 0, 6, 0, 8, NULL, NULL, CAST(N'2019-02-23T21:34:27.670' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.670' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (72, 0, 6, 0, 10, NULL, NULL, CAST(N'2019-02-23T21:34:27.693' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.693' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (73, 0, 6, 0, 11, NULL, NULL, CAST(N'2019-02-23T21:34:27.713' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.713' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (74, 0, 6, 0, 12, NULL, NULL, CAST(N'2019-02-23T21:34:27.750' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.750' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (76, 0, 6, 33, 29, NULL, NULL, CAST(N'2019-02-23T21:34:27.803' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.803' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (79, 0, 6, 0, 2, NULL, NULL, CAST(N'2019-02-25T00:25:33.150' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.150' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (80, 0, 6, 13, 3, NULL, NULL, CAST(N'2019-02-25T00:25:33.230' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.230' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (81, 0, 6, 28, 4, NULL, NULL, CAST(N'2019-02-25T00:25:33.247' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.247' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (82, 0, 6, 0, 5, NULL, NULL, CAST(N'2019-02-25T00:25:33.270' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.270' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (83, 0, 6, 19, 6, NULL, NULL, CAST(N'2019-02-25T00:25:33.290' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.290' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (84, 0, 6, 23, 7, NULL, NULL, CAST(N'2019-02-25T00:25:33.313' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.313' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (86, 0, 6, 32, 28, NULL, NULL, CAST(N'2019-02-25T00:25:33.360' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.360' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (87, 0, 4, 34, 34, NULL, NULL, CAST(N'2019-02-25T00:27:12.167' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:12.167' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (88, 0, 4, 27, 33, NULL, NULL, CAST(N'2019-02-25T00:27:12.187' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:12.187' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (89, 0, 6, 13, 9, NULL, NULL, CAST(N'2019-02-25T00:27:51.850' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.850' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (90, 0, 6, 28, 16, NULL, NULL, CAST(N'2019-02-25T00:27:51.867' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.867' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (91, 0, 6, 19, 20, NULL, NULL, CAST(N'2019-02-25T00:27:51.887' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.887' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (92, 0, 6, 23, 24, NULL, NULL, CAST(N'2019-02-25T00:27:51.907' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.907' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (93, 0, 6, 32, 32, NULL, NULL, CAST(N'2019-02-25T00:27:51.927' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.927' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (95, 0, 4, 34, 35, NULL, NULL, CAST(N'2019-02-25T01:26:32.940' AS DateTime), NULL, NULL, CAST(N'2019-02-25T01:26:32.940' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (96, 0, 6, 27, 33, NULL, NULL, CAST(N'2019-02-25T01:27:59.570' AS DateTime), NULL, NULL, CAST(N'2019-02-25T01:27:59.570' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (98, 0, 4, 35, 36, NULL, NULL, CAST(N'2019-02-25T14:28:41.340' AS DateTime), NULL, NULL, CAST(N'2019-02-25T14:28:41.340' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (99, 0, 6, 0, 34, NULL, NULL, CAST(N'2019-02-25T16:55:56.397' AS DateTime), NULL, NULL, CAST(N'2019-02-25T16:55:56.397' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (100, 0, 7, 0, 1, NULL, NULL, CAST(N'2019-02-26T11:31:34.077' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:34.077' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (101, 0, 7, 0, 2, NULL, NULL, CAST(N'2019-02-26T11:31:34.723' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:34.723' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (102, 0, 7, 13, 4, NULL, NULL, CAST(N'2019-02-26T11:31:35.073' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:35.073' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (105, 0, 7, 0, 10, NULL, NULL, CAST(N'2019-02-26T11:31:36.093' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:36.093' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (106, 0, 7, 0, 12, NULL, NULL, CAST(N'2019-02-26T11:31:36.430' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:36.430' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (107, 0, 7, 0, 8, NULL, NULL, CAST(N'2019-02-26T11:31:36.773' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:36.773' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (108, 0, 7, 28, 16, NULL, NULL, CAST(N'2019-02-26T11:31:37.110' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:37.110' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (110, 0, 4, 0, 37, NULL, NULL, CAST(N'2019-04-02T18:58:28.710' AS DateTime), NULL, NULL, CAST(N'2019-04-02T18:58:28.710' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (111, 0, 4, 0, 38, NULL, NULL, CAST(N'2019-04-02T19:00:26.803' AS DateTime), NULL, NULL, CAST(N'2019-04-02T19:00:26.803' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (112, 0, 4, 0, 39, NULL, NULL, CAST(N'2019-04-03T00:44:11.307' AS DateTime), NULL, NULL, CAST(N'2019-04-03T00:44:11.307' AS DateTime))
SET IDENTITY_INSERT [dbo].[RoleModulePermission] OFF
SET IDENTITY_INSERT [dbo].[sysUserInfo] ON 

INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (1, N'laozhang', N'xxx', N'老张', 0, NULL, CAST(N'2018-08-08T00:00:00.000' AS DateTime), CAST(N'2018-08-08T00:00:00.000' AS DateTime), CAST(N'2018-08-08T00:00:00.000' AS DateTime), 0, N'老张的哲学', 1, 0, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (13, N'laoli', N'xxxxx', N'laoli', 0, NULL, CAST(N'2018-06-25T17:43:22.287' AS DateTime), CAST(N'2018-06-25T17:43:22.990' AS DateTime), CAST(N'2018-06-25T17:43:22.613' AS DateTime), 0, NULL, 1, 0, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (14, N'user', N'xxxxx', N'userli', 0, NULL, CAST(N'2018-06-25T17:53:41.473' AS DateTime), CAST(N'2018-06-25T17:53:41.473' AS DateTime), CAST(N'2018-06-25T17:53:41.473' AS DateTime), 0, N'广告', 1, 0, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (15, N'admins', N'xxxxxx', N'admins', 0, NULL, CAST(N'2018-11-01T23:59:19.877' AS DateTime), CAST(N'2018-11-01T23:59:19.877' AS DateTime), CAST(N'2018-11-01T23:59:19.877' AS DateTime), 0, NULL, NULL, NULL, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (16, N'1', N'1', N'1', 0, NULL, CAST(N'2018-11-23T22:37:10.420' AS DateTime), CAST(N'2018-11-23T22:37:10.420' AS DateTime), CAST(N'2018-11-23T22:37:10.420' AS DateTime), 0, NULL, 0, 0, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (17, N'23', N'2', N'23', 0, NULL, CAST(N'2018-12-19T23:27:26.807' AS DateTime), CAST(N'2018-12-19T23:27:26.807' AS DateTime), CAST(N'2018-12-19T23:27:26.807' AS DateTime), 0, N'笑笑笑', 1, 18, CAST(N'2019-01-02T00:00:00.000' AS DateTime), N'dd', 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (18, N'tibug', N'xxxxxxx', N'提bug账号', 0, NULL, CAST(N'2018-12-20T03:48:01.390' AS DateTime), CAST(N'2018-12-20T03:48:01.390' AS DateTime), CAST(N'2018-12-20T03:48:01.390' AS DateTime), 0, NULL, 1, 0, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (19, N'test', N'test', N'后台测试1号', 0, NULL, CAST(N'2019-02-15T19:14:58.013' AS DateTime), CAST(N'2019-02-15T19:14:58.013' AS DateTime), CAST(N'2019-02-15T19:14:58.013' AS DateTime), 0, N'测试是', 1, 3, CAST(N'2019-02-06T00:00:00.000' AS DateTime), N'', 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (20, N'5', N'5', N'5', 0, NULL, CAST(N'2019-02-15T19:16:51.063' AS DateTime), CAST(N'2019-02-15T19:16:51.063' AS DateTime), CAST(N'2019-02-15T19:16:51.063' AS DateTime), 0, N'5', 1, 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'', 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (21, N'6', N'6', N'6', 0, NULL, CAST(N'2019-02-15T19:18:55.157' AS DateTime), CAST(N'2019-02-15T19:18:55.157' AS DateTime), CAST(N'2019-02-15T19:18:55.157' AS DateTime), 0, N'', 1, 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'', 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (22, N'2', N'2', N'2', 0, NULL, CAST(N'2019-02-16T14:43:27.230' AS DateTime), CAST(N'2019-02-16T14:43:27.230' AS DateTime), CAST(N'2019-02-16T14:43:27.230' AS DateTime), 0, N'5555', 1, 5, CAST(N'2019-02-21T00:00:00.000' AS DateTime), N'', 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (23, N'blogadmin', N'xxxxx', N'后台总管理员', 0, NULL, CAST(N'2019-02-18T13:36:20.183' AS DateTime), CAST(N'2019-02-18T13:36:20.183' AS DateTime), CAST(N'2019-02-18T13:36:20.183' AS DateTime), 0, N'', 1, 10, CAST(N'2019-02-18T00:00:00.000' AS DateTime), N'', 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (24, N'test2', N'test2', N'后台测试2号', 0, NULL, CAST(N'2019-02-26T11:15:04.963' AS DateTime), CAST(N'2019-02-26T11:15:04.963' AS DateTime), CAST(N'2019-02-26T11:15:04.963' AS DateTime), 0, N'', 0, 12, CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'北京市', 0)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (25, N'1', N'1', N'1', 0, NULL, CAST(N'2019-02-26T11:18:08.227' AS DateTime), CAST(N'2019-02-26T11:18:08.227' AS DateTime), CAST(N'2019-02-26T11:18:08.227' AS DateTime), 0, N'', -1, 0, CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'', 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (26, N'ggghhh', N'hhhh', N'ggghhh', 0, NULL, CAST(N'2019-03-31T00:35:13.983' AS DateTime), CAST(N'2019-03-31T00:35:13.983' AS DateTime), CAST(N'2019-03-31T00:35:13.983' AS DateTime), 0, N'', 0, 0, CAST(N'2019-03-31T00:35:13.983' AS DateTime), NULL, 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (27, NULL, NULL, NULL, 0, NULL, CAST(N'2019-03-31T00:43:58.770' AS DateTime), CAST(N'2019-03-31T00:43:58.770' AS DateTime), CAST(N'2019-03-31T00:43:58.770' AS DateTime), 0, N'', 0, 0, CAST(N'2019-03-31T00:43:58.770' AS DateTime), NULL, 1)
INSERT [dbo].[sysUserInfo] ([uID], [uLoginName], [uLoginPWD], [uRealName], [uStatus], [uRemark], [uCreateTime], [uUpdateTime], [uLastErrTime], [uErrorCount], [name], [sex], [age], [birth], [addr], [tdIsDelete]) VALUES (28, NULL, NULL, NULL, 0, NULL, CAST(N'2019-03-31T00:43:59.207' AS DateTime), CAST(N'2019-03-31T00:43:59.207' AS DateTime), CAST(N'2019-03-31T00:43:59.207' AS DateTime), 0, N'', 0, 0, CAST(N'2019-03-31T00:43:59.207' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[sysUserInfo] OFF
SET IDENTITY_INSERT [dbo].[Topic] ON 

INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (1, N'/Upload/20180626/95445c8e288e47e3af7a180b8a4cc0c7.jpg', N'《罗马人的故事》', N'这是一个荡气回肠的故事', NULL, 0, 0, 0, 0, CAST(N'2018-06-26T15:56:03.190' AS DateTime), CAST(N'2018-06-26T15:56:03.177' AS DateTime), N'Laozhang')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (3, N'/Upload/20180626/0f2ba547089f49cea1e5813890de2f68.jpg', N'《红楼梦概要》', N'开谈不读红楼梦，读尽诗书也枉然', NULL, 0, 0, 0, 0, CAST(N'2018-06-26T22:42:15.553' AS DateTime), CAST(N'2018-06-26T22:42:15.443' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (4, N'/Upload/20180709/4f6ae5435c6648afac5777adcb6d5ab6.png', N'《运营工作知多少》', N'简单了解相关知识', NULL, 0, 0, 0, 0, CAST(N'2018-07-09T19:15:43.163' AS DateTime), CAST(N'2018-07-09T19:15:43.147' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (5, NULL, N'学英语要经常看这里哦', N'英语网站、视频、资源汇总', NULL, 0, 0, 0, 0, CAST(N'2018-07-10T23:11:22.913' AS DateTime), CAST(N'2018-07-10T23:11:22.897' AS DateTime), N'laoli')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (6, N'/Upload/20180713/ad78ea105cd84182b475a10f5d373a4b.png', N'《面试准备题》', N'为了不知道啥时候的面试', NULL, 0, 0, 0, 0, CAST(N'2018-07-13T14:14:46.490' AS DateTime), CAST(N'2018-07-13T14:14:46.477' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (7, N'/Upload/20180717/41ebf597c0fc439c8bcac373f4130fa1.png', N'百无聊赖是书生——书读百篇', N'书读百篇', NULL, 0, 0, 0, 0, CAST(N'2018-07-17T11:23:26.030' AS DateTime), CAST(N'2018-07-17T11:23:26.013' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (8, N'/Upload/20180802/74e05e0894f646a6ae334fa725f735b6.jpg', N'偶尔看演出', N'音乐会、戏剧、舞蹈...', NULL, 0, 0, 0, 0, CAST(N'2018-08-02T23:38:27.027' AS DateTime), CAST(N'2018-08-02T23:38:27.027' AS DateTime), N'laoli')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (9, NULL, N'.NetCore', N'', N'tbug', 0, 0, 0, 0, CAST(N'2018-08-07T16:12:03.693' AS DateTime), CAST(N'2018-08-07T16:12:03.693' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (10, NULL, N'VUE', N'', N'tbug', 0, 0, 0, 0, CAST(N'2018-08-07T16:12:03.693' AS DateTime), CAST(N'2018-08-07T16:12:03.693' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (11, NULL, N'DDD', N'', N'tbug', 0, 0, 0, 0, CAST(N'2018-08-07T16:12:03.693' AS DateTime), CAST(N'2018-08-07T16:12:03.693' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (12, NULL, N'SqlSugar', N'', N'tbug', 0, 0, 0, 0, CAST(N'2018-08-07T16:12:03.693' AS DateTime), CAST(N'2018-08-07T16:12:03.693' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (13, NULL, N'Nuxt', N'', N'tbug', 0, 0, 0, 0, CAST(N'2018-08-07T16:12:03.693' AS DateTime), CAST(N'2018-08-07T16:12:03.693' AS DateTime), N'老张')
INSERT [dbo].[Topic] ([Id], [tLogo], [tName], [tDetail], [tSectendDetail], [tIsDelete], [tRead], [tCommend], [tGood], [tCreatetime], [tUpdatetime], [tAuthor]) VALUES (14, NULL, N'关于我', N'', N'tbug', 0, 0, 0, 0, CAST(N'2018-08-07T16:12:03.693' AS DateTime), CAST(N'2018-08-07T16:12:03.693' AS DateTime), N'老张')
SET IDENTITY_INSERT [dbo].[Topic] OFF
SET IDENTITY_INSERT [dbo].[TopicDetail] ON 

INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (1, 1, NULL, N'第一章　罗马的诞生 第一节　传说的年代', N'<p>第一节　传说的年代</p><p>每个民族都有自己的神话传说。大概希望知道本民族的来源是个很自然的愿望吧。但这是一个难题，因为这几乎不可能用科学的方法来解释清楚。不过所有的民族都没有这样的奢求。他们只要有一个具有一定的条理性，而又能振奋其民族精神的浪漫故事就行，别抬杠，象柏杨那样将中国的三皇五帝都来个科学分析，来评论他们的执政之优劣是大可不必的。</p><p>对於罗马人，他们有一个和特洛伊城的陷落相关的传说。</p><p>位於小亚细亚西岸的繁荣的城市特洛伊，在遭受了阿加美农统帅的希腊联军的十年围攻之後，仍未陷落。希腊联军於是留下一个巨大的木马後假装撤兵。特洛伊人以为那是希腊联军留给自己的礼物，就将它拉入城内。</p><p>当庆祝胜利的狂欢结束，特洛伊人满怀对明日的和平生活的希望熟睡後，藏在木马内的希腊士兵一个又一个地爬了出来。就在这天夜里，特洛伊城便在火光和叫喊中陷落了。全城遭到大屠杀 ，幸免於死的人全都沦为奴隶。混乱之中只有特洛伊国王的驸马阿伊尼阿斯带着老父，儿子等数人在女神维娜斯的帮助下成功地逃了出来。这驸马爷乃是女神维娜斯与凡人男子之间的儿子，女神维娜斯不忍心看着自己的儿子被希腊士兵屠杀 。</p><p>这阿驸马一行人分乘几条船，离开了火光冲天的特洛伊城。在女神维娜斯的指引下，浪迹地中海，最後在意大利西岸登陆。当地的国王看上了阿伊尼阿斯并把自己的女儿嫁给了他。他又是驸马了，与他的新妻过起了幸福的生活。难民们也安定了下来。</p><p>阿伊尼阿斯死後，跟随他逃难来的儿子继承了王位。新王在位三十年後，离开了这块地方，到台伯河(Tiber)下游建了一个新城亚尔巴龙迦城。这便是罗马城的前身了。</p><p>罗马人自古相信罗马城是公元前731年4月21日由罗莫路和勒莫(Romulus and Remus)建设的。而这两个孪生兄弟是从特洛伊逃出的阿伊尼阿斯的子孙。後来，罗马人接触了希腊文化後才知道特洛伊的陷落是在公元前十三世纪，老早的事了。罗马人好象并没有对这段空白有任何烦恼，随手编出一串传说，把那空白给填补了。反正传说这事荒唐一点的更受欢迎。经过了一堆搞不清谁是谁的王的统治，出现了一个什麽王的公主。</p><p>公主的叔父在篡夺了王位後，为了防止公主结婚生子威胁自己的王位，便任命未婚的公主为巫女。这是主管祭神的职位，象修女一样不得结婚。</p><p>不巧一日这美丽的公主在祭事的空余，来到小河边午睡。也是合当有事，被过往的战神玛尔斯(Mars)一见钟情。这玛尔斯本是靠挑起战争混饭吃的，但也常勾引 良家妇女。这天战神也没错过机会，立刻由天而降，与公主一试云雨。据说战神的技术特神，公主还没来得及醒便完事升天去了。後来公主生了一双胞胎，起名罗莫路和勒莫。</p><p>叔父闻知此事大怒，将公主投入大牢，又把那双胞胎放在篮子里抛入台伯河，指望那篮子漂入大海将那双胞胎淹死。类似的故事在旧约圣经里也有，那是关於摩西的事，好象这类传说在当地十分流行。</p><p>再说那兄弟俩的篮子被河口附近茂密的灌木丛钩住而停了下来，俩人哭声引来的一只过路的母狼。意大利的狼都带点慈悲心，不但没吃了俩人当点心，还用自己的奶去喂他们，这才救了俩小命。</p><p>不过，总是由狼养活也没法交&nbsp;待，於是又一日一放羊的在这地盘上溜哒，发现了兄弟俩，将他们抱了回去扶养成人 。据说现在这一带仍有许多放羊的。</p><p>兄弟俩长大後成了这一带放羊人的头，在与别的放羊人的圈子的打斗中不断地扩展自己的势力范围。圈子大了，情报也就多了，终于有一天，罗莫路和勒莫知道了自己身事。</p><p>兄弟俩就带着手下的放羊人呼啸着去打破了亚尔巴龙迦城，杀了那国王，将王位又交&nbsp;还给了自己祖父。他们的母亲似乎已经死在了大牢里。但兄弟俩也没在亚尔巴龙迦城多住，他们认为亚尔巴龙迦城位於山地，虽然易守难攻，却不利发展。加上兄弟俩是在台伯河的下游长大的，所以便回到原地，建了个新城。除了手下的放羊人又加上了附近的放羊人和农民。</p><p>消灭了共同的敌人後，兄弟俩的关系开始恶化。有人说是为了新城的命名，有人说是为了新城的城址，也有人说是为了争夺王位。兄弟俩於是分割统治，各占一小山包。但纷争又开始了，勒莫跳过了罗莫路为表示势力范围而挖的沟。对於这种侵犯他人权力的行为，罗莫路大义灭亲地在自己兄弟的後脑上重重地来了一锄头，勒莫便被灭了。</p><p></p><p>於是这城便以罗莫路的名字命名为罗马，这就是公元前731年4月21日的事了，到现在这天仍是意大利的节日，罗马人会欢天喜地的庆祝罗莫路杀了自己的…不，是庆祝罗马建城。王位当然也得由罗莫路来坐，一切问题都没了。这时四年一度的奥林匹克运动会在希腊已经开了六回，罗马也从传说的时代走出，近入了历史时代。</p><p><br></p>', N'标题', NULL, 0, 8, 0, 0, CAST(N'2018-06-26T17:28:32.563' AS DateTime), CAST(N'2018-06-26T17:28:32.513' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (2, 3, N'/Upload/20180627/7548de20944c45d48a055111b5a6c1b9.jpg', N'金陵十二钗主人公判词，命运之说 ', N'<div class="content"><p align="center" style="text-align: center;"><img src="/upload/image/20180627/20180627120220_5067.png" alt="" class=""><b><br></b></p><h3><b>1/2. 正册之首 · 钗黛</b></h3><p><b>《判词》</b></p>
<p><i>画：两株枯木，木上悬着一围玉带；又有一堆雪，雪下一股金簪。</i></p>
<p><i>判词：可叹停机德，堪怜咏絮才！玉带林中挂，金簪雪里埋。</i></p>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;林黛玉与薛宝钗，一个是寄人篱下的孤女，一个是皇家大商人的千金；一个天真率直，一个城府极深；一个孤立无援，一个有多方支持；一个作判逆者知己，一个为卫道而说教。脂砚斋曾有过“钗黛合一”说，确切的解说如何，可以研究；但无疑不是否定林薛二人的差别或对立。作者将她俩在一首诗中并提，除了因为她们在小说中的地位相当外，至少还可以通过贾宝玉对她们的不同的态度的比较，以显示钗黛的命运遭遇虽则不同，其结果却都是一场悲剧。</p></blockquote><p><b>《结局》</b></p><p align="center" style="text-align: center;"><img src="/upload/image/20180627/20180627235333_4911.png" alt="" class=""><b><br></b></p><p><span style="color: inherit;"><b>林黛玉，</b>前世为三生石边的一株绛珠草，受神瑛侍者的甘露之惠，愿跟其下凡还尽眼泪。今世为巡盐御史林如海与贾府千金贾林敏的独生女，少时其母因病辞世，外祖母怜其孤独，接来荣国府抚养。</span><span style="color: inherit;">她生性孤傲，多愁善感，才思敏捷。和神瑛侍者的转世贾宝玉真心相爱，有共同的价值观、爱情观，但这一段爱情因悲剧性的家族命运而遭到扼杀。</span></p><p align="center" style="text-align: center;"><img src="/upload/image/20180627/20180627235424_3036.png" alt="" class=""><span style="color: inherit;"><br></span></p><p><b>薛宝钗，</b>小说《红楼梦》中人物，与林黛玉同为金陵十二钗之冠，薛姨妈之女，贾宝玉的姨表姐，被誉为“群芳之冠”。</p><p>她挂有一把錾有“不离不弃，芳龄永继”的金锁，与贾宝玉随身所载之玉上所刻之“莫失莫忘，仙寿恒昌”恰好是一对，寓意金玉良缘。</p><p>后来贾宝玉与薛宝钗成婚，婚后不久，宝玉对黛玉念念不忘，最终出家。<strong>薛宝钗独守空闺，孤独地死去。</strong></p><p><br></p>
<p><b>3. 正册之三</b><b style="color: inherit;">&nbsp;· 贾</b><b style="color: inherit;">元春</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：&nbsp;一张弓，弓上挂着香橼。</i></p>
<p><i>判词：二十年来辨是非，榴花开处照宫闱；三春争及初春景，虎兔相逢大梦归。</i></p><pre>【恨无常】喜荣华正好,恨无常又到.眼睁睁,把万事抛.荡悠悠,把芳魂消耗.望家乡,路远山高.故向爹娘梦里相寻告:儿命已入黄泉,天伦啊,须要退步抽身早!</pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贾府在四大家族中居于首位，是因为它财富最多，权势最大，而这又因为它有确保这种显贵地位的大靠山---贾元春。世代勋臣的贾府，因为她而又成了皇亲国戚。所以，小说的前半部就围绕着元春“才选凤藻宫”、“加封贤德妃”和“省亲”等情节，竭力铺写贾府“烈火烹油，鲜花着锦之盛”。但是，“豪华虽足羡，离别却难堪。博得虚名在，谁人识苦甘？”试看元春回家省亲在私室与亲人相聚的一幕，在“荣华”的背后，便可见骨肉生离的惨状。元春说一句，哭一句，把皇宫大内说成是“终无意趣”的“不得见人的去处”，完全象从一个幽闭囚禁她的地方出来一样。曹雪芹有力的笔触，揭出了封建阶级所钦羡的荣华，对贾元春这样的贵族女子来说，也还是深渊，她不得不为些付出丧失自由的代价。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;但是，这一切还不是后来情节发展的铺垫。省亲之后，元春回宫似乎是生离，其实已是死别；她丧失的不只是自由，还有她的生命。因而，写元春显贵所带来的贾府盛况，也是为了预示后来她的死是庇护着贾府大树的摧倒，为贾府事败、抄没后的凄惨景况作了反衬。脂批点出元妃之死也与贾家之败、黛玉之死一样，“乃通部书之大过节、大关键”。不过，在现存的后四十回续书中，这种成为“大过节，大关键”的转折作用，并没有加以表现。相反的，续书倒通过元春之死称功颂德一番，说什么因为“圣眷隆重身体发福”才“多痰”致疾，仿佛她的死也足以显示皇恩浩荡似的。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;《红楼梦》人物中，短命的都有令人信服的原因，唯独元春青春早卒的原因不明不白。这本身就足以引人深思。作者究竟怎样写的，从“虎兔相逢”四个字是无法推断的。《恨无常》中有些话也很蹊跷，如说元春“荡悠悠，芳魂消耗”，“望家乡，路远山高”。倘元春后来死于宫中，对筑于“帝城西”的贾府并不算远，“路远山高”、“相寻告”云云，都是很难解通的。这现在也只能成为悬案。不过，有一点，曲子中写得比较明确，即写元春以托梦的形式向爹娘哭诉说“儿命已入黄泉，天伦呵，须要退步抽身早！”这岂不是明明白白地要亲人以她自己的含恨而死作为前车之鉴，赶快从官场脱身，避开即将临头的灾祸吗？由此可知，元春之死，不仅标志着四大家族所代表的那一派在政治上的失势，敲响了贾家败亡的丧钟，而且她自己也完全是封建统治阶级宫闱内部互相倾轧的牺牲品。这样，声称“毫不干涉时世”的曹雪芹，就大胆地揭开了政治帏幕的一角，让人们从一个封建家庭的盛衰遭遇，看到了它背后封建统治集团内部各派势力之间不择手段地争权夺利的肮脏勾当。贾探春所说的“恨不得你吃了我，我吃你”的话深长含义，也不妨从这方面去理解。</p></blockquote><p><b>《结局》</b></p><p>即贾妃，贾元春是贾政的长女，生于正月初一故名为元春，因“贤孝才德”选入宫中，起初掌管王后的礼职，充任女史。不久封为凤藻宫尚书，加封贤德妃。后来，蒙天子降谕特准鸾舆入其私第。<strong style="color: inherit;">元春后因为政治斗争被陷害，死于皇宫之内，她的死也是荣国府从盛转衰的一个转折点。</strong></p><p><br></p>
<p><b>4. 正册之四</b><b style="color: inherit;">&nbsp;· 贾</b><b style="color: inherit;">迎春</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：一恶狼，追扑一美女----欲啖之意。</i></p>
<p><i>判词：子系中山狼，得志便猖狂。金闺花柳质，一载赴黄梁。</i></p><pre>【喜冤家】]中山狼,无情兽,全不念当日根由.一味的骄奢淫荡贪欢遘.觑着那,侯门艳质同蒲柳;作践的,公府千金似下流.叹芳魂艳魄,一载荡悠悠. </pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贾府的二小姐迎春和同为庶出却精明能干的探春相反，老实无能，懦弱怕事，所以有“二木头”的浑名。她不但做诗猜谜不如姊妹们，在处世为人上，也只知道让，任人欺侮，对周围发生的矛盾纠纷，采取一概不闻不问的态度。她的攒珠累丝金凤首饰被人拿去赌钱，她不追究；别人设法要替她追回，她说“宁可没有了，又何必生事”；事情闹起来了，她不管，却拿一本《太上感应篇》自己去看。抄检大观园，司棋被逐。迎春虽然感到“数年之情难舍”，掉了眼泪，但司棋求她去说情，她却“连一句话也没有”。如此怯懦之人，最后终不免悲惨的结局，这在当时的社会环境里，实在是有其必然性的。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;看起来，迎春象是被“中山狼，无情兽”吃掉的，其实，吞噬她的是整个封建宗法制度。她从小死了娘，她父亲贾赦和邢夫人对她毫不怜惜，贾赦欠了孙家五千两银子，将她嫁给孙家，实际上等于拿她抵债。当初，虽有人劝阻这门亲事，但“大老爷执意不听”，谁也没有办法，因为儿女的婚事决定于父母。后来，迎春回贾府哭诉她在孙家所受到的虐待，尽管大家十分伤感，也无可奈何，因为嫁出去的女儿已属夫家的人了，所以只好忍心把她再送回狼窝里去。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在大观园女儿国中，迎春是成为封建包办婚姻的牺牲品的一个典型代表。作者通过她的不幸结局，揭露和控诉了这种婚姻制度的罪恶，这是谁也无法否认的客观事实。可是，有些人偏偏要把这个反对封建婚姻制度的功劳记在程伟元、高鄂续书的帐上，认为续书也有比曹雪原著价值更高的地方，即所谓“有更深一层的反封建意义---暴露封建社会婚姻不自由”，因而“在读者中发生更巨大的反封建的作用”。甚至还认为，“婚姻不自由。在《红楼梦》中，它牵动全书的线索”。这无非是说，续书把宝黛悲剧烈军属成因婚姻不自由而产生的悲剧是提高了原著的思想性。我们的看法恰恰相反。所谓“更深一层的反封建意义”，如上所述，原著本来就有的。《红楼梦》虽暴露封建婚姻罪恶，但决不是一部以反对婚姻不自由为主题或主线的书。把这一点作为“牵动全线索”，自然就改变了这部书政治性很强的小说的广泛揭露封建社会种种黑暗的主题，改变了小说表现四大家族在封建统治阶级内部政治斗争中趋向没落的主线，把基本矛盾局限在一个家庭的小范围之内，把读者的视线引到男女恋爱婚姻问题上去，真的就是儿女之情了。这实在是续书作者对原著精神的歪曲。</p></blockquote><p><b>《结局》</b></p><p>贾赦与妾所生，排行为贾府二小姐。她老实无能，懦弱怕事，有“二木头”的诨名。</p><p>她不但作诗猜谜不如姐妹们，在处世为人上，也只知退让，任人欺侮。她的攒珠垒丝金凤首饰被下人拿去赌钱，她不追究，别人设法要替她追回，她却说∶“宁可没有了，又何必生气。”<span style="color: inherit;">她父亲贾赦欠了孙家五千两银子还不出，就把她嫁给孙家，实际上是拿她抵债。</span><strong style="color: inherit;">出嫁后不久，她就被孙绍祖虐待而死。</strong></p><p><br></p>
<p><b>5. 正册之五</b><b style="color: inherit;">&nbsp;· 贾</b><b style="color: inherit;">探春</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：两人放风筝，一片大海，一只大船，船中有一女子，掩面泣涕之状。</i></p>
<p><i>判词：才自精明志自高，生于末世运偏消。清明涕送江边望，千里东风一梦遥。</i></p><pre>【分骨肉】一帆风雨路三千,把骨肉家园齐来抛闪.恐哭损残年,告爹娘,休把儿悬念.自古穷通皆有定,离合岂无缘?从今分两地,各自保平安.奴去也,莫牵连. </pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贾府的三小姐探春，浑名“玫瑰花”，她在思想上性格上与同是庶出的姊妹“二木头”迎春形成了鲜明的对照。她精明能干，有心机，能决断，连凤姐和王夫人都畏她几分，让她几分。在她的意识中，区分主仆尊卑的封建等级观念特别深固。她之所以对生母赵姨娘如此轻蔑厌恶，冷酷无情，重要的原因，是一个处于婢妾地位的人，竟敢逾越这个界线，冒犯她作为主子的尊严。抄检大观园，在探春看来，“引出这等丑态”比什么都严重。她“命丫头秉烛开门而待”，只许别人搜自己的箱柜，不许动一下她丫头的东西，并且说到做到，绝对无回旋的余地。这也是为了在婢仆前竭力维护作主子的威信与尊严。“心内没有成算的”王善保家的，不懂这一点，动手动脚，所以当场挨了一巴掌。探春对贾府面临大厦将倾的危局颇有感触，她想用“兴利除弊”的微小改革来挽回这个封建大家庭的颓势。但这只能是心劳日拙，无济于事。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于探春这样的人，作者是有阶级偏爱和阶级同情的。但是，作者没有违反历史和人物的客观真实性，仍然十分深刻地描绘了这个形象，如实地写出了她“生于末世运偏消”的必然结局。原稿中写探春后来远嫁的情节，与续书所写不同。“三春去后诸芳尽”。迎春出嫁，八十回前已写到；元春之死、探春之嫁，从她们的曲文和有关脂批看，也都在贾府事败之前，可能八十回后很快就会写到。这样，八十回后必然是一波未平，一波又起，情节发展相当紧张急遽，决不会像续作者写“四美钓游鱼”那样松散、无聊。</p></blockquote><p><b>《结局》</b></p><p>贾政与赵姨娘所生，贾府三小姐。她精明能干，有“玫瑰花”之诨名。</p><p>探春对贾府面临的大厦将倾的危局颇有感触，她想用“兴利除弊”的改革来挽救，改革成功，但无济大事。<span style="color: inherit;">最后</span><strong style="color: inherit;">贾探春远嫁他乡</strong><span style="color: inherit;">，最终印证着“三春去后诸芳尽，各自须寻各自门”的悲惨结局。</span></p>
<p><br></p><p><b>6. 正册之六</b><b style="color: inherit;">&nbsp;· 贾</b><b style="color: inherit;"><u>惜春</u></b></p>
<p><i>画：一所古庙，里面有一美人，在内看经独坐。</i></p>
<p><i>判词：<span style="color: inherit;">勘破三春景不长，缁衣顿改昔年妆。可怜绣户侯门女，独卧青灯古佛旁。</span></i></p><pre>【虚花悟】将那三春看破,桃红柳绿待如何?把这韶华打灭,觅那清淡天和.说什么,天上夭桃盛,云中杏蕊多;到头来,谁把秋捱过?则看那,白杨村里人呜咽,青枫树下鬼吟哦.更兼着,连天衰草遮坟墓.这的是,昨贫今富人劳碌,春荣秋谢花折磨.似这般,生关死劫谁能躲?闻说道,西方宝树唤婆娑,上结着长生果. </pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贾惜春“勘破三春”，披缁为尼，这并不表明她在大观园的姊妹中，见识最高，最能悟彻人生的真谛。恰恰相反，作者在小说中，非常深刻地对惜春作了解剖，让我们看到她所以选择这条生活道路的主客观原因。客观上，她在贾氏四姊妹中年龄最小，当她逐渐懂事的时候，周围所接触到的多是贾府已衰败的景象。四大家族的没落命运，三个姐姐的不幸结局，使她为自己的未来担忧，现实的一切既对她失去了吸引力，她便产生了弃世的念头。主观上，则是由环境塑造成的她那种毫不关心他人的孤僻冷漠性格，这是典型的利己主义世界观的表现。人家说她是“心冷嘴冷”的人，她自己的处世哲学是“我只能保住自己就够了”。抄检大观园时，她咬定牙，撵走毫无过错的丫环入画，而对别人的流泪哀伤无动于衷，就是她麻木不仁的典型性格的表现。所以，当贾府一败涂地的时候，入庵为尼便是她逃避统治阶级内部倾轧，保全自己的必然道路。对于皈依宗教的人物的精神面貌，作如此现实的描绘，而绝不在她们头上添加神秘的灵光圈，这实际上已成了对宗教的批判，因为，曹雪芹用他的艺术手腕“摘去了装饰在锁链上的那些虚幻的花朵”。同样，曹雪芹也没有按照佛家理论，把惜春的皈依佛门，看作是登上了普济众生的慈航仙舟，从此能获得光明和解脱，而是按照现实与生活的逻辑来描写她的归宿的。“可怜绣户侯门女，独卧青灯古佛旁！”在原稿中，她所过的“缁衣乞食”的生活，境况也要比续书所写的悲惨得多。</p></blockquote><p><b>《结局》</b></p><p>贾珍的妹妹，自小喜爱画画，因父亲贾敬一味好道炼丹，别的事一概不管，而母亲又早逝，她一直在荣国府贾母身边长大。<span style="color: inherit;">四大家族的没落命运，三个本家姐姐的不幸结局，使她产生了弃世的念头，</span><strong style="color: inherit;">后入栊翠庵为尼</strong><span style="color: inherit;">。</span></p><p><span style="color: inherit;"><br></span></p>
<p><b>7. 正册之七</b><b style="color: inherit;">&nbsp;· 王熙凤</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：一片冰山，山上有一只雌凤。</i></p>
<p><i>判词：凡鸟偏从末世来，都知爱慕此生才。一从二令三人木，哭向金陵事更哀。</i></p><pre>【聪明累】机关算尽太聪明,反算了卿卿性命.生前心已碎,死后性空灵.家富人宁,终有个家亡人散各奔腾.枉费了,意悬悬半世心;好一似,荡悠悠三更梦.忽喇喇似大厦倾,昏惨惨似灯将尽.呀!一场欢喜忽悲辛.叹人世,终难定! </pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;王熙凤的贾府的实际当权派。她主持荣，协理宁国府，而且交通官府，为所欲为。这是个政治性很强的人物，不是普通的贵族家庭的管家婆。她显著特点，就是“弄权”，一手抓权，一手抓钱，十足表现出剥削阶级的权欲和贪欲。王熙凤不仅是一个人，而是代表了一个阶级。“忽喇喇似大厦倾，昏惨惨似灯将尽”，不光是王熙凤的个人命运，也是垂死的封建阶级和他们所代表的反动社会制度彻底崩溃的形象写照。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;《聪明累》中“机关算尽太聪明，反算了卿卿性命！”这两句道出了正在走向没落的一切反动阶级的共同规律。王熙凤是四大家族中首屈一指的“末世之才”，在短暂的几年掌权中，她极尽权术机变、残忍阴毒之能事，制造了许多罪恶，直接死在她手里的就有好几条人命。这一切只不过为她自己的最后垮台准备条件。按照曹雪芹的原意，这个贾门女霸的结局是很糟的。从脂批中可以知道原稿后半部有以下情节：</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、获罪离家，与宝玉同淹留于狱神庙。原因不外乎她敛财害命等罪行的被揭露。如对“弄权铁槛寺”，逼迫一对未婚夫妻自尽，自己坐享三千两银子一节，脂批就指出：“如何消缴，造业者不知，自有知者。”“后文不必细写其事，则知其平生之作为，回首时无怪首其惨痛之态”。离家在外期间，刘姥姥还与她在“狱神庙相逢”。此外，在狱神庙见到凤姐的，还有小红、茜雪等人。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、在大观园执帚扫雪。这当是获罪外出，经一番周折，重返贾府以后的事。脂批说过，怡红院的穿堂门前，将来“便是凤姐扫雪拾玉之处”</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、被丈夫休弃，“哭向金陵”娘家。从第二十一顺脂批看，她发现丈夫私藏的多姑娘头发是一个导火线。丈夫借此闹翻，将其休弃。那时，凤姐“身微运蹇”，只能忍辱，这与“俏平儿软语救贾琏”时的“阿凤英气”有天壤之别。所以后半部那一回的回目叫《王熙凤知命强英雄》。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、回首惨痛，短命而死。尤氏对凤姐说：“明儿带了棺材里使去。”脂批：“此言不假，伏下后文短命。”</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总之，凤姐的惨痛结局是自食恶果，并不是什么人世祸福难定。</p></blockquote><p><b>《结局》</b></p><p>贾琏之妻，金陵四大家王家的小姐、贾家的媳妇，王夫人的内侄女。<span style="color: inherit;">她精明强干，深得贾母和王夫人的信任，成为贾府的实际大管家，支撑着贾府上上下下所有人的吃穿住行，老死病辞。为人处事也十分圆滑周到，图财害命的事也是干过的。</span><strong style="color: inherit;">她病死在监狱里，被狱卒用一领破席卷了出去，正应了那句“机关算尽太聪明，反算了卿卿性命”。</strong></p>
<p><b><u><br></u></b></p><p><b>8. 正册之八</b><b style="color: inherit;">&nbsp;· 史</b><b style="color: inherit;">湘云</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：几缕飞云，一湾逝水。</i></p>
<p><i>判词：富贵又何为？襁褓之间父母违；展眼吊斜晖，湘江水逝楚云飞。</i></p><pre>【乐中悲】襁褓中，父母叹双亡。纵居那绮罗丛，谁知娇养？幸生来，英豪阔大宽宏量，从未将儿女私情略萦心上。好一似，霁月光风耀玉堂，厮配得才貌仙郎，博得个地久天长，准折得幼儿时坎坷形状。终久是云散高唐，水涸湘江。这是尘寰中消长数应当，何必枉悲伤！</pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;《红楼梦》以“写儿女之笔墨”的面目出现，这有作者顾忌当时政治环境因素在。因而，书中所塑造的众多的代表不同性格、类型的女子，从她们的形象取材于现实生活这一点来看，经剪裁、提炼，被综合在小说的原型人物的个性、细节等等，恐不一定只限于女性。在大观园女儿国中，须眉气象出以脂粉精神最明显的，要数史湘云了。她从小父母双亡，由叔父抚养，她的婶母待她并不好。因此，她的身世和林黛玉有点相似。但她心直口快，开朗豪爽，爱淘气，又不大瞻前顾后，甚至敢于喝醉酒后在园子里的青石板凳上睡大觉。她和宝玉也算是好友，在一起，有时亲热，有时也会恼火，但毕竟襟怀坦荡，“从未将儿女私情萦心上”。不过，另一方面，她也没有林黛玉那种叛逆精神，且在一定程度上受到薛宝钗的影响。在史湘云身上，除她特有的个性外，我们还可以看到在封建时代被赞扬的某些文人的豪放不羁的特点。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;史湘云的不幸遭遇主要在八十回以后。根据这个《乐中悲》和脂砚斋评注中提供的零星材料，史湘云后来和一个颇有侠气的贵族公子卫若兰结婚，婚后生活还比较美满。但好景不长，不久夫妻离散，她因而寂寞憔悴。至于传说有的续写本中宝钗早卒，宝玉沦为击柝的役卒，史湘云沦为乞丐，最后与宝玉结为夫妻，看来这并不合乎曹雪芹原来的写作计划，乃附会第三十一回“因麒麟伏白首双星”的回目而产生。其实“白首双星”就是指卫若兰、史湘云两到老都过着分离的生活；因为史湘云的金麒麟与薛宝钗的金锁相仿，同作为婚姻的凭证，正如脂批所说：“后数十回若兰射圃所佩之麒麟，正此麒麟也。提纲伏于此回目中，所谓草蛇灰线在千里之外。”那么，“提纲”是怎么“伏”法的呢？这一回写宝玉失落这金麒麟恰巧被湘云拾到，而湘云的丫环正与小姐谈论着“雄雌”“阴阳”之理。这初看起来，倒确是很象“伏”湘云与宝玉有“缘”，况且，与“金玉姻缘”之说也合。黛玉也曾为此而起过疑，对宝玉说了些带讽刺的话。其实，宝玉只是无竟中充当了中间人的角色。就象袭人与蒋玉菡之“缘”是通过他的传带，交换了彼此的汗巾子差不多。这一点，脂班次说得非常清楚：“金玉姻缘已定，又写一个金麒麟，是间色法也。保颦儿为其所感，故颦儿谓‘情情’。”绘画为使主色鲜明，另用一色衬托叫“间色法”。湘云的婚姻是宝钗婚姻的陪衬：一个因金锁结缘，一个因金麒麟结缘；一个当宝二奶奶仿佛幸运，但丈夫出家，自己守寡；一个“厮配得才貌仙郎”，谁料“云散高唐，水涸湘江”，最后也是空房独守。“双星”，就是牵牛、织女星的别称。故七夕又称双星节。总之“白首双星”是说史湘云和卫若兰结成夫妻后，由于某种尚不知道的原因，很快就离异了，成了牛郎织女。这正好作宝钗“金玉良缘”的衬托。《好了歌注》：“说甚么脂正浓、粉正香，如何两鬓又成霜？”脂批就并提宝钗、湘云，说是指她们两人。可见，因回目而附会湘云将来要嫁给宝玉的人们，也与黛玉当时因宝玉收了金麒麟而“为其所感”一样，同是出于误会。</p></blockquote><p><b>《结局》</b></p><p>金陵四大家中史家的千金小姐，是贾母的侄孙女。</p><p>她心直口快，开朗豪爽，爱淘气，甚至敢于喝醉酒后在园子里的大青石上睡大觉；身着男装，大说大笑；风流倜傥，不拘小节；诗思敏锐，才情超逸；<span style="color: inherit;">说话“咬舌”，把“二哥哥”叫作“爱哥哥”。她是一个富有浪漫色彩、令人喜爱、富有“真、善、美”的豪放女性。</span></p><p>高鹗续本中史湘云和卫若兰成婚，但卫早死，史湘云孤独终老。</p>
<p><br></p><p><b>9. 正册之九</b><b style="color: inherit;">&nbsp;·&nbsp;</b><b style="color: inherit;">秦可卿</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：高楼大厦，有一美人悬梁自缢。</i></p>
<p><i>判词：情天情海幻情身，情既相逢必主淫；漫言不肖皆荣出，造衅开端实在宁。</i></p><pre>【好事终】画梁春尽落香尘.擅风情,秉月貌,便是败家的根本.箕裘颓堕皆从敬,家事消亡首罪宁.宿孽总因情.</pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;秦可卿本是被弃于养生堂的孤儿。她从抱养她的“寒儒薄宦”之家进入贾府以后，就堕入了罪恶的渊薮。她走上绝路是贾府主子们糜烂生活的恶果，其中首恶便是贾珍这些人形兽类。《好事终》有一点是颇令人思索的：那就是秦可卿在小说中死得较早，接着还有元春省亲、庆元宵等盛事，为什么要说她是“败家的根本”呢？难道作者真的认为后来贾府之败是象这首曲子所归结的“宿孽总因情”吗？四大家族的衰亡是社会的、政治的客观规律所决定的，封建统治阶级的生活腐朽、道德败坏也是其阶级本性所决定的。纵然曹雪芹远远不可能有这样的认识，又何至于把后来发生的重大变故的责任，全推在一个受贾府这个罪恶封建家庭的毒氛污染而丧生的女子身上，把一切原因都说成是因为“情”呢？原来，这和十二支曲的《引子》中所说的“都只为风月情浓”一样，只是作者有意识在小说一切人物、事件上盖上的瞒人的印记。作者在很大程度上为了给人以“大皆谈情”的假象，才虚构了太虚幻境、警幻仙子的。但是，这种“荒唐言”若不与现实沟通，就起不了掩护有政治性的真事的作用。因而，作者又在现实中选择了秦可卿这个因风月之事败露而死亡的人，作为这种“情”的象征，让她在宝玉梦中“幻”为“情身”，还让那个也叫“可卿”的仙姬与钗、黛的形象混成一体，最后与宝玉一齐堕入“迷津”，暗示这是后来情节发展的影子，以自圆其“宿孽因情”之说。当然，作者思想是充满着矛盾的。以假象示人是不得已的。所以他在太虚幻境入口处写下了一副对联，预先就一再警告读者要辨清“真假有无”。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们已经知道，贾府后来发生变故的直接导火线在荣国府，获罪而淹留在狱神庙的宝玉、凤姐都是荣国府的人。宝玉的罪状，不外乎“不肖种种大承笞挞”时所传的那种口舌。宝玉固然有沾花惹草的贵族公子习气，但决不至于象贾珍父子那样无耻，使这一点成为累及整个贾府的罪状，当然是因为在政治斗争中敌对势力要心量抓住把柄来整治对方。现在偏要说这是风月之情造的孽，关且把它归结到它的发端---秦氏的诱惑。但即使就这个起因来说，也不能不指出，这一切宁国府本来就更不象话。比如，若按封建礼法颓堕家教论罪，贾敬纵容子孙恣意妄为，就要比贾政想用严训教子就范而无能为力更严重，更应定为“首罪”。王熙凤的弄权、剑财、害命，也起于她协理宁国罕。贾珍向王夫人流泪求情请凤姐料理丧事，纵容她“爱怎样就怎样，要什么只管……取去”，使她忘乎所以。铁槛寺害命受贿后，“凤姐胆识愈壮，以后有了这样的事，便恣意的作为起来”。而办这样奢靡的丧事，又因为贾珍与死者有特殊关系。凤姐计赚尤二姐、大闹宁国府，事情也起于贾珍、贾蓉。而贾蓉又与凤姐有着不可告人的关系，他还是与凤姐最亲的秦氏的丈夫哩！然而，尽管如此，“风情”“月貌”以至秦可卿本人，都不过是作者用来揭示贾府中种种关系的一种凭借，贾府衰亡的前因后果，自有具体的情节会作出说明的，这就象作者在具体描写冯渊、张金哥之死的情节时毫不含糊一样。秦可卿“判词”和曲子中的词句的含义，要比我们草草读去所得的表面印象来得深奥，就连曲名“好事终”，我们体会起来，其所指恐怕也不限于秦氏一人，而可以是整个贾府的败亡。</p></blockquote><p><b>《结局》</b></p><p>秦可卿为太虚境中警幻仙子的妹妹，是宁国府贾蓉的妻子。<span style="color: inherit;">她长得袅娜纤巧，性格风流，行事又温柔和平，深得贾母等人的欢心。</span></p><p>可惜因爬灰、养小叔子两件丑事曝光，致其年轻早夭。</p>
<p><br></p><p><b>10. 正册之十</b><b style="color: inherit;">&nbsp;·&nbsp;</b><b style="color: inherit;">李纨</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：一盆茂兰，旁有一位凤冠霞帔的美人。</i></p>
<p><i>判词：桃李春风结子完，到头谁似一盆兰？如冰水好空相妒，枉与他人作笑谈。</i></p><pre>【晚韶华】镜里恩情,更那堪梦里功名!那美韶华去之何迅!再休提绣帐鸳衾.只这带珠冠,披凤袄,也抵不了无常性命.虽说是,人生莫受老来贫,也须要阴骘积儿孙.气昂昂头戴簪缨;光灿灿胸悬金印;威赫赫爵禄高登;昏惨惨黄泉路近.问古来将相可还存?也只是虚名儿与后人钦敬 </pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在小说中许多重要事件上，李纨都在场，可是她永远只充当“敲边鼓”的角色，没有给读者留下什么特殊的印象。这也许正是符合她身分地位和思想性格的---荣国府的大嫂子，一个恪守封建礼法、与世无争的寡妇，从来安分顺时，不肯卷入矛盾斗争的旋涡。作者在第四回的开头，就对她作了一番介绍，那段文字除了未提结局外，已可作为她的一篇小传。她是一个封建社会中被称为贤女节妇的典型，“三从四德”的妇道的化身。清代的卫道者们鼓吹程朱理学，宣扬妇女贞烈气节特别起劲，妇女所受的封建主义“四大绳索”压迫的痛苦也更为深重。象李纨这样的人，在统治者看来，是完全有资格受表旌，立牌坊，编入“列女传”的。虽则“无常性命”没有使她有更多享晚福的机会，但她毕竟在寿终前得到了“凤冠霞帔”的富贵荣耀，这正可以用来作为天道无私，终身能茹苦含辛、贞节自守者必有善报的明证。然而，曹雪芹偏将她入了“薄命司”册子，说这一切只不过是“枉与他人作笑谈”罢了，这实是对儒家传统观念的大胆挑战，是从封建王国的黑暗中透射出来的民主主义思想的光辉。</p></blockquote><p><b>《结局》</b></p><p>出身金陵名宦，贾珠之妻，生有儿子贾兰。</p><p>她从小就受父亲“女子无才便是德”的教育，以认得几个字，记得前朝几个贤女便了，每日以纺织女红为要。<span style="color: inherit;">李纨是个恪守封建礼法的贤女节妇的典型，是标准的节妇，妇德妇功的化身。</span></p><p>后来在儿子得了功名富贵之后，李纨突然死去，"枉与他人作笑谈"。</p>
<p><br></p><p><b>11. 正册之十一</b><b style="color: inherit;">&nbsp;·&nbsp;</b><b style="color: inherit;">妙玉</b></p><p><b style="color: inherit;">《判词》</b></p>
<p><i>画：一块美玉，落在泥垢之中。</i></p>
<p><i>判词：欲洁何曾洁，云空未必空。可怜金玉质，终陷淖泥中。</i></p><pre>【世难容】]:气质美如兰,才华馥比仙.天生成孤僻人皆罕.你道是啖肉食腥膻,视绮罗俗厌;却不知太高人愈妒,过洁世同嫌.可叹这,青灯古佛人将老;辜负了,红粉朱楼春色阑.到头来,依旧是风尘肮脏违心愿.好一似,无暇白玉遭泥陷;又何须,王孙公子叹无缘. </pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;来自苏州的带发修行的尼姑妙玉，原来也是富家小姐一。她住在大观园中的栊翠庵，依附权门，受贾府的供养，却又自称“槛外人”。这正如鲁迅所揭露的：“要做这样的人，恰如用自己的手拔头发，要离开地球一样。”实际上她并没有置身于贾府的各种现实关系之外。她的“高”和“洁”都带有矫情的味道。她标榜清高，连黛玉也被她称为“大俗人”，却独喜欢和宝玉往来，连宝玉生日也不忘记，特地派人送来祝寿的贴子。她珍藏的晋代豪门富室王恺的茶杯，对她也是个讽刺。她有特殊的洁癖。刘姥姥喝过一口茶的成窑杯她因嫌脏要砸碎，但又特意把“自己日常吃茶”的绿玉斗招待宝玉。所谓洁与不洁，都深深打上了阶级和感情的烙印。她最后流落风尘，好象是对她过高过洁的一种难堪的惩罚。象妙玉这样依附于没落阶级的人，怎么能超然自拔而不随同这个阶级一起没落呢！</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有人说《红楼梦》是演绎“色空”观念的书，这无论就作品的社会意义或作者的创作思想来看，都是过于夸大的。曹雪芹的意识中是有某种程度的“色空”观念，那就是他对现实的深刻的悲观主义。但《红楼梦》决不是这种那种观念的演绎，更没有堕入宣扬宗教意识的迷津。曹雪芹对妙玉这个人物的描写，很能说明问题。作者既没有认为入空门就能成为一尘不染的高人，也没有因此而特意为她安排更好的命运。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原稿中妙玉的结局与续书所写是不同的。续书写妙玉的遭劫是因为强人觉得她“长的实在好看”，又听说她为宝玉“害起相思病来了”，故动了邪念。这与妙玉的“太高”、“过洁”的“偏僻”个性又有什么相干呢？这倒是续书作者一贯意识的表现：在续作者看来，黛玉的病也是相思病，故有“心病终须心药治”，“这心病也是断断有不得的”一类话头。问题当然并不仅仅在于怎样的结局更好些，而在于通过人物的遭遇说明什么。续书想要说明的是妙玉情欲未断，心地不净，因而内虚外乘，先有邪魔缠扰，后遭贼人劫持。这是她自己作孽而受到的报应。结论是出家人应该灭绝人欲，“一念不生，万缘俱寂”。这也就是程朱理学所鼓吹的“以理禁欲，去欲存理”。而原稿的处理，显然是把妙玉的命运与贾府的命运紧紧地联系在一起的。这样，妙玉悲剧所具有的客观意义，就要比曲子中用“太高”、“过洁”等纯属个人品质的原因去说明它，更为深刻。</p></blockquote><p><b>《结局》</b></p><p>妙玉是一个带发修行尼姑，原本是仕宦人家的小姐，极端美丽、博学、聪颖，但也极端孤傲、清高、不合群，不为世俗所容，投奔贾府，居于大观园中拢翠庵。<span style="color: inherit;">贾母去世后，贾府的富贵也走入了尽头，随后妙</span><strong style="color: inherit;">玉被坏人掳走</strong><span style="color: inherit;">。后来又有传闻说，妙玉在海边被坏人杀死，又有人说妙玉被卖入了烟花之地。</span></p>
<p><br></p><p><b>12. 正册之十二 · 巧姐</b></p><p><b>《判词》</b></p>
<p><i>画：一座荒村野店，有一美人在那里纺绩。</i></p>
<p><i>判词：势败休云贵，家亡莫论亲。偶因济刘氏，巧得遇恩人。</i></p><p></p><pre>【留余庆】留余庆,留余庆,忽遇恩人;幸娘亲,幸娘亲,积得阴功.劝人生,寄困扶穷.休似俺那爱银钱忘骨肉的狠舅奸兄!正是乘除加减,上有苍穹. </pre>
<p>解析：</p>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贾府丑事败露后，王熙凤获罪，自身难保，女儿贾巧姐为狠舅奸兄欺骗出卖，流落在烟花巷。贾琏夫妻、父女，“家亡人散各奔腾”。后来，巧姐幸遇恩人刘姥姥救助，使她死里逃生。这些是佚稿中的情节。那么这样描写巧姐的命运，在小说之中，究竟有什么特殊的意义没有泥？我们认为它很有可能表现出作者曹雪芹在经历过长期的贫困生活后，思想上所出现的某些接近人民的新因素。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者描写刘姥姥形象的真正用意，并不象小说所声称的那样是因为贾府大小事多，理不出头绪来，所以借她为引线；也不是为了让她进荣国府闹出许多笑话来，供太太小姐们取乐，借以使文字生色。作者安排这个人物是胸有成竹的。脂批指出，小说在介绍刘姥姥一家时说“略有些瓜葛”，是数十回后之正脉也。这就是说，刘姥姥一家在后半部中因巧为板儿媳妇，真的成了贾家的亲戚，而且是正派亲戚。“势败休云贵，家亡莫论亲。”在“树倒猢狲散”的情况下，贾府主子们之间的勾心斗角已发展为骨肉相残。到那时，肯伸手相援的都是一些曾被人瞧不起的小人物，如贾芸、小红、茜雪等，而曾作贾府上下嘲弄对象的刘姥姥，不但是贾府兴衰的见证者，反过来，她也成了真正能出大力救助贾府的人。要把被卖作妓女的巧人火坑里救出来，就不外乎出钱和向人求情，这对刘姥姥来说，是不容易的。接着，招烟花女子为媳妇，则更要承受封建道德观念的巨大压力。在脂批看来，“老妪有忍耻之心，故后有招大姐之事”。其实，这正是在考验关头表现一个农村劳动妇女的思想品质，大大高出于表面上维护着虚伪的封建道德的上层统治阶级的地方。</p></blockquote>
<blockquote><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贾巧姐终于从一个出身公侯之门的千金，变成了一个在“荒村野店”里“纺绩”的劳动妇女了，就象秦氏出殡途中，宝玉所见的那个二丫头那样。与前半部十二钗所过的那种吟风弄月的寄生生活相反，巧姐走上了一条全新的自食其力的生活道路。于是刘姥姥为巧姐取名时所说的话得到了证验。曹雪芹思想的深度是一般封建时代的小说家所难以企及的。脂批的思想，就有很大的距离。续书者就更不用说了，在他看来，女子失节，不如一死；既沦为烟花女，便无“余庆”可谈；招巧姐而使她成为靠“两亩薄田度日”的卑贱的家妇，刘氏也算不得“恩人”。所以续书让巧幸免于难，并且最后非让她嫁到“家资巨万”的大地主家不可，还让“刘姥姥见了王夫人等，便说起来将来怎么升官，怎么起家，怎么子孙昌盛”。这与曹雪芹的原意，真有天壤之别。</p></blockquote>
<p>当然，曹雪芹笔下的刘姥姥，身上也戴着封建阶级精神奴役的沉重枷锁；说王熙凤能“留余庆”，“积得阴功”，也完全是一种阶级偏见；《留余庆》宣扬“乘除加减，上有苍穹”的冥冥报应的迷信思想，更明显的属封建糟粕。这些无疑都应批判剔除。但是，我们也应该看到使作者产生“劝人生，济困扶穷”思想的实际生活基础，把它与封建剥削阶级惯于进行的虚伪、廉价的慈善说教区别开来。</p>
<p><b>《结局》</b></p><p>巧姐是王熙凤与贾琏之女，列入金陵十二钗。巧姐由于年纪细小，性格尚未形成，所以在书中处于陪衬地位。</p><p>巧姐娇贵多病，生在七月初七，所以刘姥姥给她取名为“巧姐”。<span style="color: inherit;">在贾府败落后被狠舅奸兄卖到了烟花巷。</span><strong style="color: inherit;">但最终被知恩图报的刘姥姥赎出，与刘姥姥的孙子板儿结婚，在农村有了很好的结果，成了一位纺绩妇人。</strong></p></div><p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif">&nbsp;<b><u>郑重声明</u></b>：<br></p><p>本文重点引用&nbsp;</p><ol><li>瑞文网 之文章&nbsp;<a href="http://www.ruiwen.com/news/68916.htm" target="_blank">红楼梦判词解析十二金钗判词及解析</a>&nbsp;网址&nbsp;http://www.ruiwen.com/news/68916.htm<br></li></ol><p>本文旨在为红迷爱好者读，侵权请连续以下邮箱，或评论，进行删除。</p><p>laozhang@azlinli.com</p><p><br></p>', N'简要说明 金陵十二钗主人公判词，命运之说 ', NULL, 0, 47, 0, 0, CAST(N'2018-06-26T23:15:49.163' AS DateTime), CAST(N'2018-06-26T23:15:49.147' AS DateTime), 1, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (3, 3, NULL, N'红楼梦 主要人物关系构架  更新中', N'<div id="treemapExample2" class="treemap">
    <!-- 嵌套 ul 元素来表达树状结构 -->
    <ul class="treemap-data hide">
        <li>
            红楼梦
            <ul>
                <li>
                    史
                    <ul>
                        <li>
                            史侯
                            <ul>
                                <li>
                                    (女) 贾母
                                    <ul>
                                        <li>(子) 史鼐</li>
                                        <li>(子) 史鼎</li>
                                        <li>
                                            (子) ?
                                            <ul>
                                                <li>
                                                    (女) 史湘云
                                                    <div><span class="label ">(夫) 卫若兰</span></div>
                                                    <div><span class="label ">(丫) 翠缕/葵官</span></div>
                                                </li>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>(子) ？</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    贾
                    <ul>
                        <li>
                            贾演(宁国公)
                            <ul>
                                <li>
                                    (子) 贾代化
                                    <ul>
                                        <li>(子) 贾敷</li>
                                        <li>
                                            (子) 贾敬
                                            <ul>
                                                <li>
                                                    (子) 贾珍
                                                    <div><span class="label ">(妻) 尤氏</span></div>
                                                    <ul>
                                                        <li>
                                                            (子) 贾蓉
                                                            <div><span class="label ">(妻) 秦可卿</span></div>
                                                        </li>

                                                    </ul>
                                                </li>
                                                <li>(女) 贾惜春</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            贾源(荣国公)
                            <ul>
                                <li>
                                    (子) 贾代善
                                    <div><span class="label ">(妻) 贾母</span></div>
                                    <ul>
                                        <li>
                                            (子) 贾赦
                                            <div><span class="label ">(妻) 邢夫人</span></div>
                                            <ul>
                                                <li>
                                                    (子) 贾琏
                                                    <div><span class="label ">(妻) 王熙凤</span></div>
                                                    <ul>
                                                        <li>
                                                            (女) 贾巧姐
                                                        </li>

                                                    </ul>
                                                </li>
                                                <li>(子) 贾琮</li>
                                                <li>
                                                    (女) 贾迎春
                                                    <div><span class="label ">(夫) 孙绍祖</span></div>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            (子) 贾政
                                            <div><span class="label ">(妻) 王夫人</span></div>
                                            <div><span class="label ">(妾) 赵姨娘</span></div>
                                            <ul>
                                                <li>
                                                    (子) 贾珠
                                                    <div><span class="label ">(妻) 李纨</span></div>
                                                    <ul>
                                                        <li>
                                                            (子) 贾兰
                                                        </li>

                                                    </ul>
                                                </li>
                                                <li>(女) 贾元春</li>
                                                <li>(子) 贾宝玉</li>
                                                <li>(女) 贾探春 </li>
                                                <li>(子) 贾环</li>
                                            </ul>
                                        </li>
                                        <li>
                                            (女) 贾敏
                                            <div><span class="label ">(夫) 林如海</span></div>
                                            <ul>
                                                <li>(女) 林黛玉</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    王
                    <ul>
                        <li>
                            王公
                            <ul>
                                <li>
                                    (子) 王夫人之父
                                    <ul>
                                        <li>
                                            (子) 王夫人大哥
                                            <div><span class="">凤姐之父</span></div>
                                        </li>
                                        <li>(子) 王子腾</li>
                                        <li>(女) 王夫人</li>
                                        <li>(女) 薛姨妈</li>
                                        <li>
                                            (连宗) 王成之父
                                            <ul>
                                                <li>
                                                    (子) 王成
                                                    <div><span class="label ">(妻) 刘姥姥</span></div>
                                                    <ul>
                                                        <li>
                                                            (子) 王狗儿
                                                            <ul>
                                                                <li>
                                                                    (子) 王板儿
                                                                    <div><span class="label ">(妻) 巧姐</span></div>
                                                                </li>

                                                            </ul>
                                                        </li>

                                                    </ul>
                                                </li>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li data-collapsed="false">
                    薛
                    <ul>
                        <li>
                            (子) ？
                            <ul>
                                <li>
                                    (子) ？
                                    <ul>
                                        <li>
                                            (子) ？
                                            <div><span class="">(妻) 薛姨妈</span></div>
                                            <ul>
                                                <li>
                                                    (子) 薛蟠
                                                    <div><span class="">(妻) 夏金桂</span></div>
                                                </li>
                                                <li>
                                                    (女) 薛宝钗
                                                    <div><span class="">(丫) 莺儿</span></div>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</div><p><br></p>', N'很详细', NULL, 0, 44, 0, 0, CAST(N'2018-06-27T15:40:11.273' AS DateTime), CAST(N'2018-06-27T15:40:11.210' AS DateTime), 1, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (4, 3, NULL, N'《金陵十二钗之副册》 个人记录', N'<h1><b>金陵十二副钗 ( 有争议 )</b></h1><p>香菱、平儿、薛宝琴、尤二姐、尤三姐、尤氏、邢岫烟、李纹、李绮、<span style="color: inherit;">&nbsp;傅秋芳</span><span style="color: inherit;">、</span><span style="color: inherit;">喜鸾</span><span style="color: inherit;">、</span><span style="color: inherit;">四姐儿</span><span style="color: inherit;">。</span></p><h2>人物简介香菱</h2><p>一 · 香菱，十二副钗之一，薛蟠之妾，原名甄英莲，甄士隐的女儿。三岁那年元宵，在看社火花灯时被骗子拐走，十二三岁时，被薛蟠强买为妾，改名香菱。她生得袅娜纤巧，做人行事又温柔安静，夏金桂极为嫉妒她。香菱备受夏金桂的折磨，不仅名字被改为秋菱，还险遭谋害。薛蟠出狱后，把香菱扶了正，后难产而死。&nbsp;”她和宝玉有著共同理想和志趣.</p><p>考究：</p><blockquote><p>副册，宝玉只看了一页，这页上画着一株桂花，下面有一池沼，其中水涸泥干、莲枯藕败，后面的判词是：“根并荷花一茎香，平生遭际实堪伤；自从两地生孤木，致使香魂返故乡。”大家都知道，这说的是甄英莲，也就是香菱。薛蟠娶来夏金桂，“两地生孤木”当然是拆字法，就是“桂”字，金桂一来，香菱就被她折磨死了。高鹗写后来夏金桂死了，香菱被升格为正妻，显然完全违背了这幅画和这个判词显示的预言。</p></blockquote><p><br></p><h4>二 · 平儿</h4><p>平儿的正式身份，在前八十回里并不高。她只是一个通房大丫头，还没有达到妾，也就是小老婆那样一种地位。所谓通房大丫头，就是主子夫妇行房事的时候，她不但可以贴身伺候，还可以在主子招呼下，一起行房。第七回周瑞家的送宫花，到了王熙凤他们的那个小院里，大中午的，贾琏王熙凤和平儿就在屋子里行房事，当然，曹雪芹写得很含蓄，只有寥寥几句：“只听那边一阵笑声，却有贾琏的声音，接着房门响处，平儿拿着大铜盆出来，叫丰儿舀水进去。”贾琏为什么笑？为什么是平儿从房里出来？为什么叫丰儿舀水进去？读者都能意会到，他就不必多写了。脂砚斋说这种笔法，叫“柳藏鹦鹉语方知”。平儿这样的身份，比一般丫头高，却又还不是正式的妾，处境是很悲苦的。大家都知道，王熙凤是一个醋汁子拧出来的人，即使平儿可以“通房”，但若是平儿单独跟贾琏在一起，她也还是难以容忍，第二十一回有具体描写，大家肯定都记得，我不再细说。</p><blockquote><p>书里交代，平儿和袭人出身相似，不同于鸳鸯等人。贾府丫头的来历，大体有三种：一种是家生家养的，就是父母乃至更上一辈，老早就是府里的仆人，仆人生下儿女，世代为奴，鸳鸯就是这种出身，她父母在南京给贾家看守旧宅，兄嫂在贾母房中一个当买办一个是浆洗方面的头儿，她则很早就被挑选到贾母身边伺候贾母。另一种就是平、袭这样的，本是良家女子，但是因为家里穷，就把她们卖到贵族人家当丫头。袭人被荣国府买来后，先在贾母房里当丫头，那时候叫珍珠，后来服侍宝玉，宝玉才给她改了袭人的名字；平儿原是王家买来的丫头，随王熙凤来到贾琏身边，等于是个活嫁妆。第三种就是别人赠予的，比如晴雯就是赖嬷嬷献给贾母的。当然，书里还写到，为了元春来省亲，还买了十二个女孩子，让她们学会唱戏，来应付省亲活动里的演戏环节。后来朝廷里死了老太妃，禁止民间唱戏娱乐，省亲活动也暂停。她们里头死了一个走了三个，剩下的就都分给不同的主子当了丫头，但那段时间很短，后来又全被遣散了，不是府里丫头来历的常规现象。</p></blockquote><blockquote><p>平儿虽然跟袭人类似，但是袭人的父母、哥哥就在同一城市里，离得不远，还有回去团&nbsp;聚探视的机会，平儿却已经跟父母等亲人失却联系。跟她一起陪嫁过来的大丫头，在王熙凤婬威下死的死，走的走，到书里故事开始的时候，就剩她一个了。前面讲到宝玉对平儿的体贴，说她面对贾琏之俗、凤姐之威，竟能周旋下来，真不容易。曹雪芹通过宝玉对平儿做出的评价是：极聪明极清俊的上等女孩儿。当然，光靠品质，平儿也未必能排入金陵十二钗副册。但是，通过我前面对王熙凤命运的探究，你可以知道，在八十回后，在贾府遭到毁灭性打击之前，很可能有那样的情节安排，就是贾琏把王熙凤休掉了。李纨在第五十五回里的那个预言，就是王熙凤跟平儿“两个只该换一个过子才是”，竟化为了现实，因此，平儿的身份一度提升到了贾琏正妻的地位。这样，平儿入副册就符合条件了。当然，后来贾家彻底被毁灭，贾琏应该是被发配到打牲乌拉、宁古塔一类边远严寒之地，她或者是跟着过去受苦，或者是连跟过去也不许，被官府当做活商品，像我前面讲到的李煦家那些成员的遭遇一样，被卖给了别的人家。</p></blockquote><blockquote><p>书里关于平儿的描写极多，从各个角度展现了她的人格光彩。我觉得大家应该特别注意到，第六十一回“判冤决狱平儿行权”，曹雪芹通过平儿的作为，以及延伸到第六十二回开头的话语，表达了一种即使拿到今天，仍具有借鉴性的政治智慧，那就是：“大事化为小事，小事化为没事，方是兴旺之家，若得不了一点子小事，便扬铃打鼓地乱折腾起来，不成道理。”平儿这个名字的深刻含义，也尽在其中了。世界难得一平啊</p></blockquote><h4>三 · 薛宝琴
</h4><p>薛宝琴，十二副钗之一，皇商之女，小时跟父亲跑过不少地方。她是薛姨妈侄女，薛蝌的胞妹。她长得十分美貌，贾母甚是喜爱，夸她比画上的还好看。王夫人也认她为乾女儿。她自幼读书识字，本性聪敏，在大观园里曾作《怀古绝句十首》。后嫁都中梅翰林之子。
</p><blockquote><p>第五十回贾母细问薛宝琴的情况，薛姨妈开口第一句话就是“可惜这孩子没福”，说她父亲前年就没了，母亲又得了痰症，就是说她已经无法依靠父母了，告别了父母之&nbsp;爱，处境跟史湘云接近了。光这一条，不说以后，在那个社会，也算得上红颜薄命了。她被许配给了梅翰林家，之所以到京城来，就是她哥哥薛蝌带着她，准备落实嫁过去的种种事宜。那么，她顺利地嫁到梅翰林家，过上幸福美满的生活了吗？</p></blockquote><blockquote><p>虽然八十回后，关于薛宝琴的文字我们一无所知，但是，前八十回里，还是可以找到一些暗示的。第七十回大家写柳絮词，薛宝琴写的是一阕《西江&nbsp;月》，里面有一句是“三春事业付东风，明月梅花一梦”。“三春”究竟是什么概念？是指三个人还是三个春天？前面我已经讲得很多，我还是坚持自己的看法，就是“三春”是个时间概念，意思是三个美好的年头，这一句尤其明显。如果非把“三春”认定为元、迎、探、惜里的三位，那么，挑出哪三位来，也难跟“事业”构成一个词组，贾府的这四位女子哪有什么共同的“事业”？“三春事业”显然是指贾府在三个年头里，被卷入得越来越深的那个“事业”，也就是“月派”所苦心经营的那个“事业”，结果怎么样呢？“付东风”，也就是随风而散，失败了，破产了。那么，在这种大的格局下，我在前面讲惜春命运的时候已经讲得很清楚了，作为四大家族的成员，一损俱损，全都面临被打、被杀、被卖的悲惨命运，薛宝琴也在劫难逃，她嫁给梅翰林之子了吗？“明月梅花一梦”，“明月”和“梅花”都成为怅惘一梦，可见她没嫁成，那个婚姻成为了泡影。她怎么会是个幸福圆满的结局呢？她自己填词，就填成了这个样子。全词的最后一句是“江&nbsp;南江&nbsp;北一般同，偏是离人恨重”，意思就更清楚了，从江&nbsp;南的甄家到江&nbsp;北的贾家，哪一家也难逃厄运。甄家被皇帝抄家治罪，八十回里已经写到，山雨欲来风满楼，暴风雨正式席卷时，那就一定会“接二连三、牵五挂四”——这是第一回里写火灾的话——株连到史、王、薛家，乃至更多的府第和人员。薛宝琴实际上已经通过这阕《西江&nbsp;月》告诉我们，她后来也是颠沛流离，“偏是离人恨重”啊！她这阕词，薛宝钗评价说，“终不免过于丧败”，曹雪芹会特意让一位不薄命的幸福女性，来发出这种丧败之音吗？</p></blockquote><blockquote><p>第五十一回，“薛小妹新编怀古诗”，怀古诗一共十首，是灯谜诗，很难猜，历来都有读者和研究者费尽心力来猜，也不断公布出自己猜出的谜底，但能让绝大多数人认同服气的答案，至今还没有出现，有待于大家共同努力。如果诗是十二首，大家倒比较容易形成思路了，可以往暗示十二钗的路子上去琢磨，但曹雪芹他却只设计出了十首，这大大增加了猜出谜底的难度。我的基本看法是：这十首诗肯定有灯谜谜底以外的含义，绝不是随便写出来充塞篇幅的可有可无的文字。不要嘲笑有的读者和有的研究者去猜这些诗的谜底；认为读《红楼梦》只能去认识反封建的主题，除此以外的读法通通不对，尤其是猜谜式的读法，粗暴地将其斥责为钻死胡&nbsp;同，必欲将其禁绝而后快，那样的教条主义和武断态度，是我反对的。各人选择自己喜欢的方法去读《红楼梦》，不是很好吗？为什么非要按照你一家的指挥棒去读它呢？你不愿意猜你可以不猜，但你没有阻止别人去猜的权力，是不是？</p></blockquote><blockquote><p>对薛宝琴写的这十首怀古为题的灯谜诗，我一直在猜，但还没有形成贯通性的解读。现在只挑出一首，就是最后那首，来讨论一下。这首诗题目是《梅花观怀古》，四句是：“不在梅边在柳边，个中谁识画婵娟？团&nbsp;圆莫忆春香到，一别西风又一年。”我认为这首诗是薛宝琴在预告自己八十回后的命运。诗的取材是《牡丹亭》，但她是把《牡丹亭》的素材活用。在《牡丹亭》里，“不在梅边在柳边”的意思是，少女杜丽娘她最后的归宿，不在梅边也还在柳边，就是到头来一定跟书生柳梦梅结合。但薛小妹引用这句诗，却是表达她以后“不在姓梅的身边却在姓柳的身边”这样一个意思。在八十回后，她没能嫁到梅翰林家，经历过一番极富戏剧性的波折后，她嫁给了书里的哪一位男子呢？柳湘莲！而她和柳湘莲的结合，跟杜丽娘与柳梦梅的故事有相同之处，就是都跟画儿有关系。第五十回，不是一再地写到有关画儿的事情吗？薛宝琴和抱着梅花瓶子的丫头小螺，不是活生生的画中人吗？贾母屋里有幅《双艳图》，是明代大画家仇十洲的作品，那画上的美人很美了吧？可是贾母就说了，宝琴雪下折梅比画儿上还好；那么又写到惜春作画，贾母命令她一定要把宝琴、小螺和梅花“照模照样，一笔别错，快快添上”。很显然，这些关于薛宝琴和画儿的关系的情节和细节，都是伏笔。在八十回后，贾府被抄，《双艳图》也好，惜春那可能没能画完，但已经画上了宝琴和小螺的画稿也好，一定都被抄去，后来不知怎么又失落，被柳湘莲得到，琴、柳因此遇合，但又经历了离别。而在这个过程里，“春香”，《牡丹亭》里的丫头，后来已经成为“丫头”的普适性的通称，对宝琴和湘莲的团&nbsp;圆起到了关键作用，这个丫头也许是小螺，也许是贾府里别的幸存者。而琴、柳的聚而离，离而合，大约经历了一年的时间。我注意到，在《西江月》词里，薛宝琴说“三春事业付东风”，在这首怀古诗里，说“一别西风又一年”，俗话说“不是东风压倒西风，就是西风压倒东风”，“东风”在薛宝琴的词里是一种摧毁“三春事业”的力量，在怀古诗里呢，与“东风”对立的“西风”，显然就是柳湘莲所参与的一方的代称。当然，薛宝琴就算最后得以跟柳湘莲结合，也只能是以政治失败者的身份低调地艰难生存，以这样的命运入薄命司里的册子，也就不让人奇怪了。</p></blockquote><h4>四 · 尤二姐
</h4><p>尤二姐，十二副钗之一，尤氏继母带来的女儿。尤二姐模样标致，温柔和顺。贾珍馋涎妻妹的美貌，对尤二姐无所不至，当他玩腻后，就把她让给了贾琏。贾琏因惧怕王熙凤的淫威，只得偷偷娶尤二姐为二房，并把她安置在荣国府外，但不久被王熙凤发现，在她的借剑杀人计谋下，尤二姐备受折磨，当胎儿被庸医打下后，她绝望地吞金自尽。
</p><h4>五 · 尤三姐
</h4><p>尤三姐，十二副钗之一，尤氏继母带来的女儿，尤二姐的妹妹。尤三姐模样儿风流标致，她又偏爱打扮得出色，自有一种万人不及的风情体态。贾珍、贾琏、贾蓉等好色之徒，对她颇为馋涎。但尤三姐不愿像姐姐那样遭人玩弄，她用泼辣作为武器，捍卫自己的清白。她看中柳湘莲后，就一心一意等他。但因柳湘莲误听他人传言，怀疑尤三姐也是个不乾净之人，要索回定礼，刚烈的尤三姐在奉还定礼时拔剑自刎。
</p><h4>六 · 尤氏</h4><blockquote><p>尤氏的年龄应该是三十出头，比李纨略大。第七十六回，贾母带领大家中秋团&nbsp;聚，夜深了，尤氏说：“我今日不回去了，定要和老祖宗吃一夜 。”贾母就笑道：“使不得，使不得，你们小夫妻家，今夜不要团&nbsp;圆团&nbsp;圆，如何为我耽搁了。”尤氏红了脸，笑道：“老祖宗说的我们太不堪了，我们虽然年轻，已是十来年的夫妻，也奔四十的人了……”在那个时代，像傅秋芳已经二十四岁还没有出嫁，是很出格的现象，就算尤氏是那么大年龄才成为贾珍填房，到故事发展到这一回，也不过三十三岁左右。贾母说贾珍和她是“小夫妻”，有故意往小了说的意思，尤氏说自己“奔四十”，当然又有故意往大了说之意。总之，我觉得把她收入副册，虽然可能是所有各册里年龄最大的一位女性，而且也嫁了人，早已不是颗“无价的珍珠”，但是，从书里关于她的种种情节来看，她跟李纨、王熙凤可以说是三足鼎立，既然前二位可以入册，那么她当然也有资格入册，她也还不是颗“死珠”，更没有成为“鱼眼睛”。</p></blockquote><blockquote><p>要论人格，尤氏没有李纨的自私，更没有王熙凤的歹毒，她的平和、善良、宽容、忍让都能给读者留下印象。第四十二回，写贾母牵头“凑分子”给王熙凤过生日，派她操办，她发现王熙凤并没有像在贾母跟前承诺的那样，替李纨出一分，就爽性把一些人交&nbsp;来的分子退还给了本人，其中包皮括周姨娘和赵姨娘。周姨娘在书里只是一个影子，赵姨娘戏比较多，是一个蝎蝎蜇蜇、人人讨厌的角色，但是尤氏也还能善待她，这一笔很要紧。曹雪芹还特意写道，周姨娘和赵姨娘开头还不敢收，尤氏就说：“你们可怜见的，那里有这些闲钱？凤丫头便知道了，有我呢！”两位姨娘才千恩万谢地收了。当然，尤氏是宁国府那边的人，在财产继承权上，跟赵姨娘了无关系，而王熙凤是王夫人的内侄女，又来到荣国府管家，赵姨娘跟王夫人、王熙凤之间的矛盾，具有难以调和的性质；周姨娘没有生育，没有什么竞争资本，赵姨娘却为贾政生了儿子，而且，从书里多处描写可以看出来，贾政晚上睡觉，是赵姨娘来服侍他，她还依然拥有贾政对她的宠&nbsp;爱，因此，王、赵之间的冲突经常白热化，这是荣、宁两府众人皆知的。那么，尤氏如果明哲保身，她实在犯不上找上门把“分子钱”退还给赵姨娘，从这一个细节就可以看出，尤氏的人品，确实在纨、凤之上。尤氏的办事才干也很出色，为凤姐张罗生日，她退了若干分子，剩下的银子全部投进去，“园中人都打听得尤氏办得十分热闹，不但有戏，连耍百戏并说书的女先儿全有，都打点取乐玩耍”，把活动搞得有声有色。当然，本应是皆大欢喜，却没想到“变生不测凤姐泼醋”，但那是琏、凤夫妇自己的问题，与尤氏无关。贾府后来倾覆，“造衅开端首罪宁”，贾珍一定被惩治得最惨，尤氏作为首名“犯妇”，其下场可想而知。</p></blockquote><h4>七 · 邢岫烟</h4><p>邢岫烟，十二副钗之一，邢忠夫妇的女儿，邢夫人的侄女。因家道贫寒，一家人前来投奔邢夫人。邢夫人对邢岫烟并不真心疼爱，只不过为了脸面之情。邢夫人甚至要求邢岫烟把每月二两银子的月钱省下一两来给她自己的父母，使得邢岫烟只得典当衣服来维持她在大观园的开支。邢岫烟生得端雅稳重，知书达礼，被薛姨妈看中，央求贾母作媒说与薛蝌，后嫁给薛蝌。</p><blockquote><p>在前面，我已经讲到过她。她后来嫁给了薛蝌，成为四大家族中的一位媳妇，但她嫁过去没多久，贾家就不行了，一损俱损。薛蝌和她夫妇两人即使命运不算最惨，也一定非常艰辛。书里她那首《咏红梅花》诗，最后一句是“浓淡由他冰雪中”，可知后来她也只能是在社会的冰雪中，去寻求心理的平衡和生存的缝隙。</p></blockquote><h4>八 · 李纹
</h4><p>李纹，十二副钗之一，李纨堂妹，李纨寡婶的大女儿，晴雯赞她和李绮是水葱儿般水灵的姑娘。在第五十回中她作有一首《咏红梅花》诗，里头有两句是”冻脸有痕皆是血，酸心无恨亦成灰”，可见结局也是悲惨的。</p><h4><span style="color: inherit;">九 · 李绮</span></h4><p>李绮，十二副钗之一，李纨堂妹，李纨寡婶的二女儿，由王夫人作媒许配甄宝玉。第一百十五回中：王夫人正爱甄宝玉，顺口便说道：“我也想要与令郎作伐。我家有四个姑娘：那三个都不用说，死的死，嫁的嫁了。还有我们珍大侄儿的妹子，只是年纪过小几岁，恐怕难配。倒是我们大媳妇的两个堂妹子，生得人材齐正。二姑娘呢，已经许了人家；三姑娘正好与令郎为配。过一天，我给令郎作媒。”</p><h4>十 · 傅秋芳</h4><blockquote><p>讲贾宝玉的时候，我就已经讲到了她，猜测在八十回后，她会正式亮相，并在救助宝玉的事情上，会起到作用。很可能是她后来嫁给了达官贵人，并具有一定经济实力，是她用高价赎出了牢狱中的宝玉。她为什么也入薄命司？她哥哥一直想把她嫁给权贵，可是她到二十四岁还没有出嫁，在那个社会里，耗到那么个岁数，莫说嫁给权贵，就是嫁给一般家庭的男子也困难了，最后很可能是去给丧妻的男子填房，她的青春年华都白白流逝了。她自己一定是总想嫁一个如意郎君，但到头来，他哥哥攀附权贵的目的可能是达到了，她自己却绝无幸福可言，因此也属于红颜薄命一例。</p></blockquote><h4>十一 · 喜鸾</h4><h4>十二 · 四姐儿</h4><blockquote><p>，贾母八十大寿，族中来了几房孙女儿，大小共有二十来个，其中有贾的母亲带了女儿喜鸾，还有贾琼之母带了女儿四姐儿。贾母觉得这两个女孩出众，模样和说话行事都好，就把她们两个叫到自己榻前来坐，后来又把她们留下来住，嘱咐府里的人不能嫌她们家里穷，要精心照看。其中喜鸾还说了很天真的话，讲宝玉的时候我提到过，这里不重复。她们是贾氏家族的旁支亲戚，出场时虽然穷，后来的命运可能还会有起伏波折，结局呢，你想想，她们在贾府走向衰败的前夕，才被贾母看上，并很可能从此关系密切，这不是福，是祸啊！就在她们出场不久，贾府就窝里斗，荣国府就抄检大观园了，紧跟着，江&nbsp;南甄家被皇帝查抄治罪，派人到荣国府藏匿罪产来了。那么，曹雪芹安排这两位小姐在第七十一回出场，不会是废墨赘笔，在八十回后，一定还会写到她们，也许就是通过她们无辜地被株连，来加重全书的悲剧气氛。</p></blockquote><p><br></p><h2>人物足迹</h2><p><a href="javascript:;"><em></em>编辑</a></p><p>第一回：甄士隐梦幻识通灵，贾雨村风尘怀闺秀。此回目中之闺秀为娇杏；</p><p>第八回：比通灵金莺微露意，探宝钗黛玉半含酸。此回目中之金莺为宝钗的丫鬟莺儿；</p><p>第二十一回：贤袭人娇嗔箴宝玉，俏平儿软语救贾琏。此回目中包含了袭人和平儿两人；</p><p>第二十四回：醉金刚轻财尚义侠，痴女儿遗帕惹相思。此回目之痴女儿为小红；</p><p>第三十回：宝钗借扇机带双敲，龄官划蔷痴及局外。此回目写到了龄官；</p><p>第三十二回：诉肺腑心迷活宝玉，含耻辱情烈死金钏。此回目写到了<a target="_blank" href="https://baike.baidu.com/item/%E9%87%91%E9%92%8F" style="background-color: rgb(255, 255, 255);">金钏</a><span style="color: inherit;">；</span></p><p>第三十五回：白玉钏亲尝莲叶羹，黄金莺巧结梅花络。此回目写到了玉钏；</p><p>第四十回：史太君两宴大观园，金鸳鸯三宣牙牌令。此回目写到了鸳鸯；</p><p>第四十九回：琉璃世界白雪红梅，脂粉香娃割腥啖膻。此回目中之咏红梅是指邢岫烟、李纹和李绮；</p><p>第五十一回：薛小妹新编怀古诗，胡庸医乱用虎狼药。此回目之薛小妹为</p><p><a target="_blank" href="https://baike.baidu.com/item/%E5%AE%9D%E7%90%B4">宝琴</a></p><p>；</p><p>第五十二回：俏平儿情掩虾须镯，勇晴雯病补雀金裘。此回目写到了晴雯；</p><p>第五十七回：慧紫鹃情辞试忙玉，慈姨妈爱语慰痴颦。此回目写到了紫鹃；</p><p>第六十一回：投鼠忌器宝玉瞒赃，判冤决狱平儿行权。此回目之宝玉瞒赃为的是彩云；</p><p>第六十二回：憨湘云醉眠芍药茵，呆香菱情解石榴裙。此回目写到了香菱；</p><p>第六十五回：贾二舍偷娶尤二姨，尤三姐思嫁柳二郎。此回目写到了尤二姐和尤三姐；</p><p>第六十九回：弄小巧用借剑杀人，觉大限吞生金自逝。此回目中借剑杀人之剑，指的是秋桐；</p><p>第七十一回；嫌隙人有心生嫌隙，鸳鸯女无意遇鸳鸯。此回目中之鸳鸯指的是司棋；</p><p>第七十七回：俏丫鬟抱屈夭风流，美优伶斩情归水月。此回目中之美优伶指的是芳官；</p><p>第七十九回：薛文龙悔娶河东狮，贾迎春误嫁中山狼。此回目之河东狮指的是夏金桂。</p><p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif">&nbsp;郑重声明：</p><p>本文重点引用&nbsp;</p><ol><li>瑞文网 之文章&nbsp; &nbsp;”随便看看吧“——《第34讲&nbsp;金陵十二钗副册之谜》&nbsp;网址&nbsp;<a href="https://www.sbkk88.com/sanwen/mingjiasanwen/liuxinwu/jiemihongloumeng/" target="_blank" style="background-color: rgb(255, 255, 255);">https://www.sbkk88.com/sanwen/mingjiasanwen/liuxinwu/jiemihongloumeng/</a><br></li></ol><p>本文旨在为红迷爱好者读，侵权请连续以下邮箱，或评论，进行删除。</p><p>laozhang@azlinli.com</p><p><br></p>', N'更新中', NULL, 0, 7, 0, 0, CAST(N'2018-07-03T17:46:26.087' AS DateTime), CAST(N'2018-07-03T17:46:25.413' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (5, 3, NULL, N'【内容誊抄】第一回　甄士隐梦幻识通灵　贾雨村风尘怀闺秀', N'<font size="3"><br>
　　列位看官：你道此书从何而来？说起根由虽近荒唐，<font color="#cd4228" style="">[甲戌侧批：自站地步。自首荒唐，妙！]</font>细按则深有趣味。待在下将此来历注明，方使阅者了然不惑。<br>
<br>
　　原来女娲氏炼石补天之时，<font color="#cd4228" style="">[甲戌侧批：补天济世，勿认真，用常言。]</font>于大荒山<font color="#cd4228" style="">[甲戌侧批：荒唐也。]</font>无稽崖<font color="#cd4228" style="">[甲戌侧批：无稽也。]</font>练成高经十二丈、<font color="#cd4228" style="">[甲戌侧批：总应十二钗。]</font>方经二十四丈<font color="#cd4228" style="">[甲戌侧批：照应副十二钗。]</font>顽石三万六千五百零一块。娲皇氏只用了三万六千五百块，<font color="#008000">【张叟内批：指曹公批阅十年】</font><font color="#cd4228" style="">[甲戌侧批：合周天之数。蒙侧批：数足，偏遗我。“不堪入选”句中透出心眼。]</font>只单单的剩了一块未用，<font color="#cd4228" style="">[甲戌侧批：剩了这一块便生出这许多故事。使当日虽不以此补天，就该去补地之坑陷，使地平坦，而不有此一部鬼话。]</font>便弃在此山青埂峰下。<font color="#cd4228" style="">[甲戌眉批：妙！自谓落堕情根，故无补天之用。]</font>谁知此石自经煅炼之后，灵性已通，<font color="#cd4228" style="">[甲戌侧批：煅炼后性方通，甚哉！人生不能学也。]</font>因见众石俱得补天，独自己无材不堪入选，遂自怨自叹，日夜悲号惭愧。<br>
<br>
　　一日，正当嗟悼之际，俄见一僧一道远远而来，<font color="#008000">【张叟内批：二位名曰：渺渺真人，茫茫大士，渺茫也！亦是后文中癞头和尚，跛足大人也】</font>生得骨格不凡，丰神迥别，<font color="#cd4228" style="">[蒙双行夹批：这是真像，非幻像也。 该 
批：作者自己形容。]</font>说笑笑来至峰下，坐于石边高谈快论。先是说些云山雾海神仙玄幻之事，后便说到红尘中荣华富贵。此石听了，不觉打动凡心，也想要到人间去享一享这荣华富贵，但自恨粗蠢，不得已，便口吐人言，<font color="#cd4228" style="">[甲戌侧批：竟有人问口生于何处，其无心肝，可笑可恨之极。]</font>向那僧道说道：“大师，弟子蠢物，<font color="#cd4228" style="">[甲戌侧批：岂敢岂敢。]</font>不能见礼了。适闻二位谈那人世间荣耀繁华，心切慕之。弟子质虽粗蠢，<font color="#cd4228" style="">[甲戌侧批：岂敢岂敢。]</font>性却稍通，况见二师仙形道体，定非凡品，必有补天济世之材，利物济人之德。如蒙发一点慈心，携带弟子得入红尘，在那富贵场中、温柔乡里受享几年，自当永佩洪恩，万劫不忘也。”二仙师听毕，齐憨笑道：“善哉，善哉！那红尘中有却有些乐事，但不能永远依恃，况又有’美中不足，好事多魔’八个字紧相连属，瞬息间则又乐极悲生，人非物换，究竟是到头一梦，万境归空。<font color="#cd4228" style="">[甲戌侧批：四句乃一部之总纲。]</font>倒不如不去的好。”这石凡心已炽，那里听得进这话去，乃复苦求再四。二仙知不可强制，乃叹道：“此亦静极思动，无中生有之数也。既如此，我们便携你去受享受享，只是到不得意时，切莫后悔。”石道：“自然，自然。”那僧又道：“若说你性灵，却又如此质蠢，并更无奇贵之处，如此也只好踮脚而已。<font color="#cd4228" style="">[甲戌侧批：煅炼过尚与人踮脚，不学者又当如何？]</font>也罢，我如今大施佛法助你助，待劫终之日，复还本质，以了此案。<font color="#cd4228" style="">[甲戌侧批：妙！佛法亦须偿还，况世人之债乎？近之赖债者来看此句。所谓游戏笔墨也。]</font>你道好否？”石头听了，感谢不尽。那僧便念咒书符，大展幻<font color="#cd4228" style="">[甲戌侧批：明点“幻”字。好！]</font>术，将一块大石登时变成一块鲜明莹洁的美玉，且又缩成扇坠大小的可佩可拿。<font color="#cd4228" style="">[甲戌侧批：奇诡险怪之文，有如髯苏《石钟》《赤壁》用幻处。]</font>那僧托于掌上，笑道：“形体倒也是个宝物了！<font color="#cd4228" style="">[甲戌侧批：自愧之语。蒙双行夹批：世上人原自据看得见处为凭。]</font>还只没有实在的好处，<font color="#cd4228" style="">[甲戌侧批：好极！今之金玉其外败絮其中者，见此大不欢喜。]</font>须得再镌上数字，使人一见便知是奇物方妙。<font color="#cd4228" style="">[甲戌侧批：世上原宜假，不宜真也。谚云：“一日卖了三千假，三日卖不出一个真。”信哉！]</font>然后携你到那昌明隆盛之邦，<font color="#cd4228" style="">[甲戌侧批：伏长安大都。]</font>诗礼簪缨之族，<font color="#cd4228" style="">[甲戌侧批：伏荣国府。]</font>花柳繁华地，<font color="#cd4228" style="">[甲戌侧批：伏大观园。]</font>温柔富贵乡<font color="#cd4228" style="">[甲戌侧批：伏紫芸轩。]</font>去安身乐业。”<font color="#cd4228" style="">[甲戌侧批：何不再添一句“择个绝世情痴作主人”？甲戌眉批：昔子房后谒黄石公，惟见一石。子房当时恨不能随此石去。余亦恨不能随此石去也。聊供阅者一笑。]</font>石头听了，喜不能禁，乃问：“不知赐了弟子那几件奇处，<font color="#cd4228" style="">[甲戌侧批：可知若果有奇贵之处，自己亦不知者。若自以奇贵而居，究竟是无真奇贵之人。]</font>又不知携了弟子到何地方？望乞明示，使弟子不惑。”那僧笑道：“你且莫问，日后自然明白的。”说着，便袖了这石，同那道人飘然而去，竟不知投奔何方何舍。<br>
<br>
　　后来，又不知过了几世几劫，因有个空空道人访道求仙，忽从这大荒山无稽崖青埂峰下经过，忽见一大块石上字迹分明，编述历历。空空道人乃从头一看，原来就是无材补天，幻形入世，<font color="#cd4228" style="">[甲戌侧批：八字便是作者一生惭恨。]</font>茫茫大士、渺渺真人携入红尘，历尽离合悲欢炎凉世态的一段故事。后面又有一首偈云：<br>
<br>
　　无材可去补苍天，<font color="#cd4228" style="">[甲戌侧批：书之本旨。]</font><br>
<br>
　　枉入红尘若许年。<font color="#cd4228" style="">[甲戌侧批：惭愧之言，呜咽如闻。]</font><br>
<br>
　　此系身前身后事，<br>
<br>
　　倩谁记去作奇传？<br>
<br>
　　诗后便是此石坠落之乡，投胎之处，亲自经历的一段陈迹故事。其中家庭闺阁琐事，以及闲情诗词倒还全备，或<font color="#cd4228" style="">[甲戌侧批：“或”字谦得好。]</font>可适趣解闷，然朝代年纪，地舆邦国，<font color="#cd4228" style="">[甲戌侧批：若用此套者，胸中必无好文字，手中断无新笔墨。]</font>却反失落无考。<font color="#cd4228" style="">[甲戌侧批：据余说，却大有考证。蒙侧批：妙在“无考”。]</font><br>
<br>
　　空空道人<font color="#008000">【张叟存疑：此人为谁，后文可有？】</font>遂向石头说道：“石兄，你这一段故事，据你自己说有些趣味，故编写在此，意欲问世传奇。据我看来，第一件，无朝代年纪可考，<font color="#cd4228" style="">[甲戌侧批：先驳得妙。]</font>第二件，并无大贤大忠理朝廷治风俗的善政，<font color="#cd4228" style="">[甲戌侧批：将世人欲驳之腐言预先代人驳尽。妙！]</font>其中只不过几个异样女子，或情或痴，或小才微善，亦无班姑蔡女之德能。我纵抄去，恐世人不爱看呢。”<br>
<br>
　　石头笑答道：“我师何太痴耶！若云无朝代可考，今我师竟假借汉唐等年纪添缀，又有何难？<font color="#cd4228" style="">[甲戌侧批：所以答得好。]</font>但我想，历来野史，皆蹈一辙，莫如我这不借此套者，反倒新奇别致，不过只取其事体情理罢了，又何必拘拘于朝代年纪哉！再者，市井俗人喜看理治之书者甚少，爱适趣闲文者特多。历来野史，或讪谤君相，或贬人妻女，<font color="#cd4228" style="">[甲戌侧批：先批其大端。]</font>奸淫凶恶，不可胜数。更有一种风月笔墨，其淫秽污臭，涂毒笔墨，坏人子弟，又不可胜数。至若佳人才子等书，则又千部共出一套，且其中终不能不涉于淫滥，以致满纸潘安子建、西子文君，不过作者要写出自己的那两首情诗艳赋来，故假拟出男女二人名姓，又必旁出一小人其间拨乱，<font color="#cd4228" style="">[蒙侧批：放笔以情趣世人，并评倒多少传奇。文气淋漓，字句切实。]</font>亦如剧中之小丑然。且鬟婢开口即者也之乎，非文即理。故逐一看去，悉皆自相矛盾，大不近情理之话。竟不如我半世亲睹亲闻的这几个女子，虽不敢说强似前代书中所有之人，但事迹原委，亦可以消愁破闷，也有几首歪诗熟话，可以喷饭供酒。至若离合悲欢，兴衰际遇，则又追踪蹑迹，不敢稍加穿凿，徒为供人之目而反失其真传者。<font color="#cd4228" style="">[甲戌眉批：事则实事，然亦叙得有间架、有曲折、有顺逆、有映带、有隐有见、有正有闰，以致草蛇灰线、空谷传声、一击两鸣、明修栈道、暗渡陈仓、云龙雾雨、两山对峙、烘云托月、背面敷粉、千皴万染诸奇书中之秘法，亦不复少。余亦于逐回中搜剔刮剖明白注释以待高明，再批示误谬。]</font><font color="#cd4228" style="">[甲戌眉批：开卷一篇立意，真打破历来小说巢臼。阅其笔则是《庄子》《离骚》之亚。]</font><font color="#cd4228" style="">[甲戌眉批：斯亦太过。]</font>今之人，贫者日为衣食所累，富者又怀不足之心，纵然一时稍闲，又有贪淫恋色、好货寻愁之事，那里去有工夫看那理治之书？所以我这一段故事，也不愿世人称奇道妙，也不定要世人喜悦检读，<font color="#cd4228" style="">[甲戌侧批：转得更好。]</font>只愿他们当那醉淫饱卧之时，或避世去愁之际，把此一玩，岂不省了些寿命筋力？就比那谋虚逐妄，却也省了口舌是非之害，腿脚奔忙之苦。再者，亦令世人换新眼目，不比那些胡牵乱扯，忽离忽遇，满纸才人淑女、子建文君、红娘小玉等通共熟套之旧稿。我师意为何如？”<font color="#cd4228" style="">[甲戌侧批：余代空空道人答曰：“不独破愁醒盹，且有大益。”]</font><br>
<br>
　　空空道人听如此说，思忖半晌，将《石头记》<font color="#cd4228" style="">[甲戌侧批：本名。]</font>再检阅一遍，<font color="#cd4228" style="">[甲戌侧批：这空空道人也太小心了，想亦世之一腐儒耳。]</font>因见上面虽有些指奸责佞贬恶诛邪之语，<font color="#cd4228" style="">[甲戌侧批：亦断不可少。]</font>亦非伤时骂世之旨，<font color="#cd4228" style="">[甲戌侧批：要紧句。]</font>及至君仁臣良父慈子孝，凡伦常所关之处，皆是称功颂德，眷眷无穷，实非别书之可比。虽其中大旨谈情，亦不过实录其事，又非假拟妄称，<font color="#cd4228" style="">[甲戌侧批：要紧句。]</font>一味淫邀艳约、私订偷盟之可比。因毫不干涉时世，<font color="#cd4228" style="">[甲戌侧批：要紧句。]</font>方从头至尾抄录回来，问世传奇。从此空空道人因空见色，由色生情，传情入色，自色悟空，遂易名为情僧，改《石头记》为《情僧录》。至吴玉峰题曰《红楼梦》。东鲁孔梅溪则题曰《风月宝鉴》。<font color="#cd4228" style="">[甲戌眉批：雪芹旧有《风月宝鉴》之书，乃其弟棠村序也。今棠村已逝，余睹新怀旧，故仍因之。]</font>后因曹雪芹于悼红轩中披阅十载，增删五次，纂成目录，分出章回，则题曰《金陵十二钗》。<font color="#cd4228" style="">[甲戌眉批：若云雪芹披阅增删，然则开卷至此这一篇楔子又系谁撰？足见作者之式 
猾之甚。后文如此者不少。这正是作者用画 烟云模糊处，观者万不可被作者瞒蔽了去，方是巨眼。]</font>并题一绝云：<br>
<br>
　　满纸荒唐言，一把辛酸泪！<br>
<br>
　　都云作者痴，谁解其中味？<font color="#cd4228" style="">[甲戌双行夹批：此是第一首标题诗。甲戌眉批：能解者方有辛酸之泪，哭成此书。壬午除夕，书未成，芹为泪尽而逝。余常哭芹，泪亦待尽。每思觅青埂峰再问石兄，奈不遇癞头和尚何！怅怅！今而后惟愿造化主再出一芹一脂，是书何幸，余二人亦大快遂心于九泉矣。甲午八月泪笔。]</font><br>
<br>
　　至脂砚斋甲戌抄阅再评，仍用《石头记》。<br>
<br>
　　出则既明，且看石上是何故事。<br>
<br>
　　按那石上书云：<font color="#cd4228" style="">[甲戌侧批：以下系石上所记之文。]</font><br>
<br>
　　当日地陷东南，这东南一隅有处曰姑苏，<font color="#cd4228" style="">[甲戌侧批：是金陵。]</font>有城曰阊门者，最是红尘中一二等富贵风流之地。<font color="#cd4228" style="">[甲戌侧批：妙极！是石头口气，惜米颠不遇此石。]</font>这阊门外有个十里<font color="#cd4228" style="">[甲戌侧批：开口先云势利，是伏甄、封二姓之事。]</font>街，街内有个<font face="Comic Sans MS" style="background-color: rgb(0, 255, 0);">仁清</font><font color="#cd4228" style="">[甲戌侧批：又言人情，总为士隐火后伏笔。]</font>巷，巷内有个古庙，因地方窄狭，<font color="#cd4228" style="">[甲戌侧批：世路宽平者甚少。亦凿。]</font>人皆呼作<span style="background-color: rgb(0, 255, 0);">葫芦</span><font color="#cd4228" style="">[甲戌侧批：糊涂也，故假语从此具焉。]</font>庙。<font color="#cd4228" style="">[蒙侧批：画的虽不依样，却是葫芦。]</font>庙旁住着一家乡宦，<font color="#cd4228" style="">[甲戌侧批：不出荣国大族，先写乡宦小家，从小至大，是此书章法。]</font>姓甄，<font color="#cd4228" style="">[甲戌眉批：真。后之甄宝玉亦借此音，后不注。]</font>名<span style="background-color: rgb(0, 255, 0);">费</span>，<font color="#cd4228" style="">[甲戌侧批：废。]</font>字士隐。<font color="#cd4228" style="">[甲戌侧批：托言将真事隐去也。]</font>嫡妻<span style="background-color: rgb(0, 255, 0);">封</span><font color="#cd4228" style="">[甲戌侧批：风。因风俗来。]</font>氏，情性贤淑，深明礼义。<font color="#cd4228" style="">[甲戌侧批：八字正是写日后之香菱，见其根源不凡。]</font>家中虽不甚富贵，然本地便也推他为望族了。<font color="#cd4228" style="">[甲戌侧批：本地推为望族，宁、荣则天下推为望族，叙事有层落。]</font>因这甄士隐禀性恬淡，不以功名为念，<font color="#cd4228" style="">[甲戌侧批：自是羲皇上人，便可作是书之朝代年纪矣。总写香菱根基，原与正十二钗无异。蒙侧批：伏笔。]</font>每日只以观花修竹，酌酒吟诗为乐，倒是神仙一流人品。只是一件不足：如今年已半百，膝下无儿，<font color="#cd4228" style="">[甲戌侧批：所谓“美中不足”也。]</font>只有一女，乳名<span style="background-color: rgb(0, 255, 0);">英莲</span>，<font color="#cd4228" style="">[甲戌侧批：设云“应怜”也。]</font>年方三岁。<br>
<br>
　　一日，炎夏永昼。<font color="#cd4228" style="">[甲戌侧批：热日无多。]</font>士隐于书房闲坐，至手倦抛书，伏几少憩，不觉朦胧睡去。梦至一处，不辨是何地方。忽见那厢来了一僧一道，<font color="#cd4228" style="">[甲戌侧批：是方从青埂峰袖石而来也，接得无痕。]</font>且行且谈。<br>
<br>
　　只听道人问道：“你携了这蠢物，意欲何往？”那僧笑道：“你放心，如今现有一段风流公案正该了结，这一干风流冤家，尚未投胎入世。趁此机会，就将此蠢物夹带于中，使他去经历经历。”那道人道：“原来近日风流冤孽又将造劫历世去不成？<font color="#cd4228" style="">[蒙侧批：苦恼是“造劫历世”，又不能不“造劫历世”，悲夫！]</font>但不知落于何方何处？”<br>
<br>
　　那僧笑道：“此事说来好笑，竟是千古未闻的罕事。只因西方灵河岸上三生石畔，<font color="#cd4228" style="">[甲戌侧批：妙！所谓“三生石上旧精魂”也。甲戌眉批：全用幻。情之至，莫如此。今采来压卷，其后可知。]</font>有绛<font color="#cd4228" style="">[甲戌侧批：点“红”字。]</font>珠<font color="#cd4228" style="">[甲戌侧批：细思“绛珠”二字岂非血泪乎。]</font>草一株，时有赤瑕<font color="#cd4228" style="">[甲戌侧批：点“红”字“玉”字二。甲戌眉批：按“瑕”字本注：“玉小赤也，又玉有病也。”以此命名恰极。]</font>宫神瑛<font color="#cd4228" style="">[甲戌侧批：单点“玉”字二。]</font>侍者，日以甘灌溉，这绛珠草便得久延岁月。后来既受天地精华，复得雨露滋养，遂得脱却草胎木质，得换人形，仅修成个女体，终日游于离恨天外，饥则食蜜青果为膳，渴则饮灌愁海水为汤。<font color="#cd4228" style="">[甲戌侧批：饮食之名奇甚，出身履历更奇甚，写黛玉来历自与别个不同。]</font>只因尚未酬报灌溉之德，故其五内便郁结着一段缠绵不尽之意。<font color="#cd4228" style="">[甲戌侧批：妙极！恩怨不清，西方尚如此，况世之人乎？趣甚警甚！甲戌眉批：以顽石草木为偶，实历尽风月波澜，尝遍情缘滋味，至无可如何，始结此木石因果，以泄胸中悒郁。古人之“一花一石如有意，不语不笑能留人”，此之谓也。蒙侧批：点题处，清雅。]</font>恰近日这神瑛侍者凡心偶炽，<font color="#cd4228" style="">[甲戌侧批：总悔轻举妄动之意。]</font>乘此昌明太平朝世，意欲下凡造历幻<font color="#cd4228" style="">[甲戌侧批：点“幻”字。]</font>缘，已在警幻<font color="#cd4228" style="">[甲戌侧批：又出一警幻，皆大关键处。]</font>仙子案前挂了号。警幻亦曾问及灌溉之情未偿，趁此倒可了结的。那绛珠仙子道：“他是甘露之惠，我并无此水可还。他既下世为人，我也去下世为人，但把我一生所有的眼泪还他，也偿还得过他了。”<font color="#cd4228" style="">[甲戌侧批：观者至此请掩卷思想，历来小说中可曾有此句？千古未闻之奇文。甲戌眉批：知眼泪还债，大都作者一人耳。余亦知此意，但不能说得出。蒙侧批：恩情山海债，唯有泪堪还。]</font>因此一事，就勾出多少风流冤家来，<font color="#cd4228" style="">[甲戌侧批：余不及一人者，盖全部之主惟二玉二人也。]</font>陪他们去了结此案。”<br>
<br>
　　那道人道：“果是罕闻，实未闻有还泪之说。<font color="#cd4228" style="">[蒙侧批：作想得奇！]</font>想来这一段故事，比历来风月事故更加琐碎细腻了。”那僧道：“历来几个风流人物，不过传其大概以及诗词篇章而已，至家庭闺阁中一饮一食，总未述记。再者，大半风月故事，不过偷香窃玉、暗约私奔而已，并不曾将儿女之真情发泄一二。<font color="#cd4228" style="">[蒙侧批：所以别致。]</font>想这一干人入世，其情痴色鬼，贤愚不肖者，悉与前人传述不同矣。”<br>
<br>
　　那道人道：“趁此何不你我也去下世度脱<font color="#cd4228" style="">[蒙侧批：”度脱“，请问是幻不是幻？]</font>几个，岂不是一场功德？”那僧道：“正合吾意，你且同我到警幻仙子宫中，将蠢物交割清楚，待这一干风流孽鬼下世已完，你我再去。<font color="#cd4228" style="">[蒙侧批：幻中幻，何不可幻？情中情，谁又无情？不觉僧道亦入幻中矣。]</font>如今虽已有一半落尘，然犹未全集。”<font color="#cd4228" style="">[甲戌侧批：若从头逐个写去，成何文字？《石头记》得力处在此。丁亥春。]</font><br>
<br>
　　道人道：“既如此，便随你去来。”<br>
<br>
　　却说甄士隐俱听得明白，但不知所云“蠢物”系何东西。遂不禁上前施礼，笑问道：“二仙师请了。”那僧道也忙答礼相问。士隐因说道：“适闻仙师所谈因果，实人世罕闻者。但弟子愚浊，不能洞悉明白，若蒙大开痴顽，备细一闻，弟子则洗耳谛听，稍能警省，亦可免沉伦之苦。”二仙笑道：“此乃玄机不可预泄者。到那时不要忘了我二人，便可跳出火坑矣。”士隐听了，不便再问。因笑道：“玄机不可预泄，但适云”蠢物“，不知为何，或可一见否？”那僧道：“若问此物，倒有一面之缘。”说着，取出递与士隐。士隐接了看时，原来是块鲜明美玉，上面字迹分明，镌着“通灵宝玉”四字，<font color="#cd4228" style="">[甲戌侧批：凡三四次始出明玉形，隐屈之至。]</font>后面还有几行小字。正欲细看时，那僧便说已到幻境，<font color="#cd4228" style="">[甲戌侧批：又点“幻”字，云书已入幻境矣。蒙侧批：幻中言幻，何等法门。]</font>便强从手中夺了去，与道人竟过一大石牌坊，上书四个大字，乃是“太虚幻境”。<font color="#cd4228" style="">[甲戌侧批：四字可思。]</font>两边又有一幅对联，道是：<font color="#cd4228" style="">[蒙双行夹批：无极太极之轮转，色空之相生，四季之随行，皆不过如此。]</font><br>
<br>
　　假作真时真亦假，无为有处有还无。<font color="#cd4228" style="">[甲夹批：叠用真假有无字，妙！]</font><br>
<br>
　　士隐意欲也跟了过去，方举步时，忽听一声霹雳，有若山崩地陷。士隐大叫一声，定睛一看，<font color="#cd4228" style="">[蒙侧批：真是大警觉大转身。]</font>只见烈日炎炎，芭蕉冉冉，<font color="#cd4228" style="">[甲戌侧批：醒得无痕，不落旧套。]</font>所梦之事便忘了对半。<font color="#cd4228" style="">[甲戌侧批：妙极！若记得，便是俗笔了。]</font><br>
<br>
　　又见奶母正抱了英莲走来。士隐见女儿越发生得粉妆玉琢，乖觉可喜，便伸手接来，抱在怀内，斗他顽耍一回，又带至街前，看那过会的热闹。方欲进来时，只见从那边来了一僧一道，<font color="#cd4228" style="">[甲戌侧批：所谓“万境都如梦境看”也。]</font>那僧则癞头跣脚，那道则跛足蓬头，<font color="#cd4228" style="">[甲戌侧批：此则是幻像。]</font>疯疯癫癫，挥霍谈笑而至。及至到了他门前，看见士隐抱着英莲，那僧便大哭起来，<font color="#cd4228" style="">[甲戌侧批：奇怪！所谓情僧也。]</font>又向士隐道：“施主，你把这有命无运，累及爹娘之物，抱在怀内作甚？”<font color="#cd4228" style="">[甲戌眉批：八个字屈死多少英雄？屈死多少忠臣孝子？屈死多少仁人志士？屈死多少词客骚人？今又被作者将此一把眼泪洒与闺阁之中，见得裙钗尚遭逢此数，况天下之男子乎？看他所写开卷之第一个女子便用此二语以定终身，则知托言寓意之旨，谁谓独寄兴于一“情”字耶！武侯之三分，武穆之二帝，二贤之恨，及今不尽，况今之草芥乎？家国君父事有大小之殊，其理其运其数则略无差异。知运知数者则必谅而后叹也。]</font>士隐听了，知是疯话，也不去睬他。那僧还说：“舍我罢，舍我罢！”士隐不耐烦，便抱女儿撤身要进去，<font color="#cd4228" style="">[蒙侧批：如果舍出，则不成幻境矣。行文至此，又不得不有此一语。]</font>那僧乃指着他大笑，口内念了四句言词道：<br>
<br>
　　惯养娇生笑你痴，<font color="#cd4228" style="">[甲戌侧批：为天下父母痴心一哭。]</font><br>
<br>
　　菱花空对雪澌澌。<font color="#cd4228" style="">[甲戌侧批：生不遇时。遇又非偶。]</font><br>
<br>
　　好防佳节元宵后，<font color="#cd4228" style="">[甲戌侧批：前后一样，不直云前而云后，是讳知者。]</font><br>
<br>
　　便是烟消火灭时。<font color="#cd4228" style="">[甲戌侧批：伏后文。]</font><br>
<br>
　　士隐听得明白，心下犹豫，意欲问他们来历。只听道人说道：“你我不必同行，就此分手，各干营生去罢。三劫后，<font color="#cd4228" style="">[甲戌眉批：佛以世谓“劫”，凡三十年为一世。三劫者，想以九十春光寓言也。]</font>我在北邙山等你，会齐了同往太虚幻境销号。”那僧道：“最妙，最妙！”<br>
<br>
　　说毕，二人一去，再不见个踪影了。士隐心中此时自忖：这两个人必有来历，该试一问，如今悔却晚也。<br>
<br>
　　这士隐正痴想，忽见隔壁<font color="#cd4228" style="">[甲戌侧批：“隔壁”二字极细极险，记清。]</font>葫芦庙内寄居的一个穷儒，姓<span style="background-color: rgb(0, 255, 0);">贾名化</span>，<font color="#cd4228" style="">[甲戌侧批：假话。妙！]</font>表字<span style="background-color: rgb(0, 255, 0);">时飞</span>，<font color="#cd4228" style="">[甲戌侧批：实非。妙！]</font>别号雨村<font color="#cd4228" style="">[甲戌侧批：雨村者，村言粗语也。言以村粗之言演出一段假话也。]</font>者走了出来。这贾雨村原系<span style="background-color: rgb(0, 255, 0);">胡州</span><font color="#cd4228" style="">[甲戌侧批：胡诌也。]</font>人氏，也是诗书仕宦之族，因他生于末世，<font color="#cd4228" style="">[甲戌侧批：又写一末世男子。]</font>父母祖宗根基已尽，人口衰丧，只剩得他一身一口，在家乡无益。<font color="#cd4228" style="">[蒙侧批：形容落破诗书子弟，逼真。]</font>因进京求取功名，再整基业。自前岁来此，又淹蹇住了，暂寄庙中安身，每日卖字作文为生，<font color="#cd4228" style="">[蒙侧批：“庙中安身”、“卖字为生”，想是过午不食的了。]</font>故士隐常与他交接。<font color="#cd4228" style="">[甲戌侧批：又夹写士隐实是翰林文苑，非守钱虏也，直灌入“慕雅女雅集苦吟诗”一回。]</font>当下雨村见了士隐，忙施礼陪笑道：“老先生倚门伫望，敢是街市上有甚新闻否？”士隐笑道：“非也，适因小女啼哭，引他出来作耍，正是无聊之甚，兄来得正妙，请入小斋一谈，彼此皆可消此永昼。”说着，便令人送女儿进去，自与雨村携手来至书房中。小童献茶。方谈得三五句话，忽家人飞报：“<span style="background-color: rgb(0, 255, 0);">严</span><font color="#cd4228" style="">[甲戌侧批：”炎“也。炎既来，火将至矣。]</font>老爷来拜。”士隐慌的忙起身谢罪道：“恕诳驾之罪，略坐，弟即来陪。”雨村忙起身亦让道：“老先生请便。晚生乃常造之客，稍候何妨。”<font color="#cd4228" style="">[蒙侧批：世态人情，如闻其声。]</font>说着，士隐已出前厅去了。<br>
<br>
　　这里雨村且翻弄书籍解闷。忽听得窗外有女子嗽声，雨村遂起身往窗外一看，原来是一个丫鬟，在那里撷花，生得仪容不俗，眉目清明，<font color="#cd4228" style="">[甲戌侧批：八字足矣。]</font>虽无十分姿色，却亦有动人之处。<font color="#cd4228" style="">[甲戌眉批：更好。这便是真正情理之文。可笑近之小说中满纸“羞花闭月”等字。这是雨村目中，又不与后之人相似。]</font>雨村不觉看的呆了。<font color="#cd4228" style="">[甲戌侧批：今古穷酸色心最重。]</font>那甄家丫鬟撷了花，方欲走时，猛抬头见窗内有人，敝巾旧服，虽是贫窘，然生得腰圆背厚，面阔口方，更兼剑眉星眼，直鼻权腮。<font color="#cd4228" style="">[甲戌侧批：是莽操遗容。甲戌眉批：最可笑世之小说中，凡写奸人则用“鼠耳鹰腮”等语。]</font>这丫鬟忙转身回避，心下乃想：“这人生的这样雄壮，却又这样褴褛，想他定是我家主人常说的什么贾雨村了，每有意帮助周济，只是没甚机会。我家并无这样贫窘亲友，想定是此人无疑了。怪道又说他必非久困之人。”如此想来，不免又回头两次。<font color="#cd4228" style="">[甲戌眉批：这方是女儿心中意中正文。又最恨近之小说中满纸红拂紫烟。蒙侧批：如此忖度，岂得为无情？]</font>雨村见他回了头，便自为这女子心中有意于他，<font color="#cd4228" style="">[甲戌侧批：今古穷酸皆会替女妇心中取中自己。]</font>便狂喜不尽，自为此女子必是个巨眼英雄，风尘中之知己也。<font color="#cd4228" style="">[蒙侧批：在此处已把种点出。]</font>一时小童进来，雨村打听得前面留饭，不可久待，遂从夹道中自便出门去了。士隐待客既散，知雨村自便，也不去再邀。<br>
<br>
　　一日，早又中秋佳节。士隐家宴已毕，乃又另具一席于书房，却自己步月至庙中来邀雨村。<font color="#cd4228" style="">[甲戌侧批：写士隐爱才好客。]</font>原来雨村自那日见了甄家之婢曾回顾他两次，自为是个知己，便时刻放在心上。<font color="#cd4228" style="">[蒙侧批：也是不得不留心。不独因好色，多半感知音。]</font>今又正值中秋，不免对月有怀，因而口占五言一律云：<font color="#cd4228" style="">[甲戌双行夹批：这是第一首诗。后文香奁闺情皆不落空。余谓雪芹撰此书，中亦有传诗之意。]</font><br>
<br>
　　未卜三生愿，频添一段愁。<br>
<br>
　　闷来时敛额，行去几回头。<br>
<br>
　　自顾风前影，谁堪月下俦？<br>
<br>
　　蟾光如有意，先上玉人楼。<br>
<br>
　　雨村吟罢，因又思及平生抱负，苦未逢时，乃又搔首对天长叹，复高吟一联曰：<br>
<br>
　　玉在匮中求善价，钗于奁内待时飞。<font color="#cd4228" style="">[甲戌侧批：表过黛玉则紧接上宝钗。甲夹批：前用二玉合传，今用二宝合传，自是书中正眼。蒙侧批：偏有些脂气。]</font><br>
<br>
　　恰值士隐走来听见，笑道：“雨村兄真抱负不浅也！”雨村忙笑道：“不过偶吟前人之句，何敢狂诞至此。”因问：“老先生何兴至此？”士隐笑道：“今夜中秋，俗谓’团圆之节’，想尊兄旅寄僧房，不无寂寥之感，故特具小酌，邀兄到敝斋一饮，不知可纳芹意否？”雨村听了，并不推辞，<font color="#cd4228" style="">[蒙侧批：“不推辞”语便不入□矣。]</font>便笑道：“既蒙厚爱，何敢拂此盛情。”<font color="#cd4228" style="">[甲戌侧批：写雨村豁达，气象不俗。]</font>说着，便同士隐复过这边书院中来。<br>
<br>
　　须臾茶毕，早已设下杯盘，那美酒佳肴自不必说。二人归坐，先是款斟漫饮，次渐谈至兴浓，不觉飞觥限斝起来。当时街坊上家家箫管，户户弦歌，当头一轮明月，飞彩凝辉，二人愈添豪兴，酒到杯干。雨村此时已有七八分酒意，狂兴不禁，乃对月寓怀，口号一绝云：<br>
<br>
　　时逢三五便团圆，<font color="#cd4228" style="">[甲戌侧批：是将发之机。]</font><br>
<br>
　　满把晴光护玉栏。<font color="#cd4228" style="">[甲戌侧批：奸雄心事，不觉露出。]</font><br>
<br>
　　天上一轮才捧出，<br>
<br>
　　人间万姓仰头看。<font color="#cd4228" style="">[甲戌眉批：这首诗非本旨，不过欲出雨村，不得不有者。用中秋诗起，用中秋诗收，又用起诗社于秋日。所叹者三春也，却用三秋作关键。]</font><br><br>
　　士隐听了，大叫：“妙哉！吾每谓兄必非久居人下者，今所吟之句，飞腾之兆已见，不日可接履于云霓之上矣。可贺，可贺！”<font color="#cd4228" style="">[蒙侧批：伏笔，作□言语。妙！]</font>乃亲斟一斗为贺。<font color="#cd4228" style="">[甲戌侧批：这个“斗”字莫作升斗之斗看，可笑。]</font>雨村因干过，叹道：“非晚生酒后狂言，若论时尚之学，<font color="#cd4228" style="">[甲戌侧批：四字新而含蓄最广，若必指明，则又落套矣。]</font>晚生也或可去充数沽名，只是目今行囊路费一概无措，神京路远，非赖卖字撰文即能到者。”士隐不待说完，便道：“兄何不早言。愚每有此心，但每遇兄时，兄并未谈及，愚故未敢唐突。今既及此，愚虽不才，’义利’二字却还识得。<font color="#cd4228" style="">[蒙侧批：”义利“二字，时人故自不识。]</font>且喜明岁正当大比，兄宜作速入都，春闱一战，方不负兄之所学也。其盘费余事，弟自代为处置，亦不枉兄之谬识矣！”当下即命小童进去，速封五十两白银，并两套冬衣。<font color="#cd4228" style="">[甲戌眉批：写士隐如此豪爽，又无一些粘皮带骨之气相，愧杀近之读书假道学矣。]</font>又云：“十九日乃黄道之期，兄可即买舟西上，待雄飞高举，明冬再晤，岂非大快之事耶！”雨村收了银衣，不过略谢一语，并不介意，仍是吃酒谈笑。<font color="#cd4228" style="">[甲戌侧批：写雨村真是个英雄。蒙侧批：托大处，即遇此等人，又不得太琐细。]</font>那天已交了三更，二人方散。<br>
<br>
　　士隐送雨村去后，回房一觉，直至红日三竿方醒。<font color="#cd4228" style="">[甲戌侧批：是宿酒。]</font>因思昨夜之事，意欲再写两封荐书与雨村带至神都，使雨村投谒个仕宦之家为寄足之地。<font color="#cd4228" style="">[</font><font color="#cd4228">甲戌侧批：又周到如此。</font><font color="#cd4228" style="">]</font>因使人过去请时，那家人去了回来说：“和尚说，贾爷今日五鼓已进京去了，也曾留下话与和尚转达老爷，说：‘读书人不在黄道黑道，总以事理为要，不及面辞了。’”<font color="#cd4228" style="">[甲戌侧批：写雨村真令人爽快。]</font>士隐听了，也只得罢了。</font><p><font size="3">　　真是闲处光阴易过，倏忽又是元霄佳节矣。士隐命家人<span style="background-color: rgb(0, 255, 0);">霍启</span><font color="#cd4228" style="">[甲戌侧批：妙！祸起也。此因事而命名。]</font>抱了英莲去看社火花灯，半夜中，霍启因要小解，便将英莲放在一家门槛上坐着。待他小解完了来抱时，那有英莲的踪影？急得霍启直寻了半夜，至天明不见，那霍启也就不敢回来见主人，便逃往他乡去了。那士隐夫妇，见女儿一夜不归，便知有些不妥，再使几人去寻找，回来皆云连音响皆无。夫妻二人，半世只生此女，一旦失落，岂不思想，因此昼夜啼哭，几乎不曾寻死。<font color="#cd4228" style="">[甲戌眉批：喝醒天下父母之痴心。蒙侧批：天下作子弟的，看了想去。]</font>看看的一月，士隐先就得了一病，当时封氏孺人也因思女构疾，日日请医疗治。　　不想这日三月十五，葫芦庙中炸供，那些和尚不加小心，致使油锅火逸，便烧着窗纸。此方人家多用竹篱木壁者，<font color="#cd4228" style="">[甲嗯和了人风。蒙侧批：交竹滑溜婉转。]</font>大抵也因劫数，于是接二连三，牵五挂四，将一条街烧得如火焰山一般。<font color="#cd4228" style="">[甲戌眉批：写出南直召祸之实病。]</font>彼时虽有军民来救，那火已成了势，如何救得下？直烧了一夜，方渐渐的熄去，也不知烧了几家。只可怜甄家在隔壁，早已烧成一片瓦砾场了。只有他夫妇并几个家人的性命不曾伤了。急得士隐惟跌足长叹而已。只得与妻子商议，且到田庄上去安身。偏值近年水旱不收，鼠盗蜂起，无非抢田夺地，鼠窃狗偷，民不安生，因此官兵剿捕，难以安身。士隐只得将田庄都折变了，便携了妻子与两个丫鬟投他岳丈家去。<br>
<br>
　　他岳丈名唤<span style="background-color: rgb(0, 255, 0);">封肃</span>，<font color="#cd4228" style="">[蒙双行夹批：风俗。]</font>本贯大如州人氏，<font color="#cd4228" style="">[甲戌眉批：托言大概如此之风俗也。]</font>虽是务农，家中都还殷实。今见女婿这等狼狈而来，心中便有些不乐。<font color="#cd4228" style="">[甲戌侧批：所以大概之人情如是，风俗如是也。蒙侧批：大都不过如此。]</font>幸而<font color="#cd4228" style="">[蒙侧批：若非“幸而”，则有不留之意。]</font>士隐还有折变田地的银子未曾用完，拿出来托他随分就价薄置些须房地，为后日衣食之计。那封肃便半哄半赚，些须与他些薄田朽屋。士隐乃读书之人，不惯生理稼穑等事，勉强支持了一二年，越觉穷了下去。封肃每见面时，便说些现成话，且人前人后又怨他们不善过活，只一味好吃懒作<font color="#cd4228" style="">[甲戌侧批：此等人何多之极。]</font>等语。士隐知投人不着，心中未免悔恨，再兼上年惊唬，急忿怨痛，已有积伤，暮年之人，贫病交攻，竟渐渐的露出那下世的光景来。<font color="#cd4228" style="">[蒙侧批：几几乎。世人则不能止于几几乎，可悲！观至此，不……]</font>（按：以下缺去。）<br>
<br>
　　可巧这日，拄了拐杖挣挫到街前散散心时，忽见那边来了一个跛足道人，疯癫落脱，麻屣鹑衣，口内念着几句言词，道是：<br>
<br>
　　世人都晓神仙好，惟有功名忘不了！<br>
<br>
　　古今将相在何方？荒冢一堆草没了。<br>
<br>
　　世人都晓神仙好，只有金银忘不了！<br>
<br>
　　终朝只恨聚无多，及到多时眼闭了。<br>
<br>
　　世人都晓神仙好，只有姣妻忘不了！<font color="#cd4228" style="">[蒙双行夹批：要写情要写幻境，偏先写出一篇奇人奇境来。]</font><br>
<br>
　　士隐听了，便迎上来道：“你满口说些什么？只听见些‘好’‘了’‘好’‘了’。那道人笑道：“你若果听见‘好’‘了’二字，还算你明白。可知世上万般，好便是了，了便是好。若不了，便不好，若要好，须是了。我这歌儿，便名《好了歌》”士隐本是有宿慧的，一闻此言，心中早已彻悟。因笑道：“且住！待我将你这《好了歌》解注出来何如？”道人笑道：“你解，你解。”士隐乃说道：<br>
<br>
　　陋室空堂，当年笏满床，<font color="#cd4228" style="">[甲戌侧批：宁、荣未有之先。]</font><br>
<br>
　　衰草枯杨，曾为歌舞场。<font color="#cd4228" style="">[甲戌侧批：宁、荣既败之后。]</font><br>
<br>
　　蛛丝儿结满雕梁，<font color="#cd4228" style="">[甲戌侧批：潇湘馆、紫芸轩等处。]</font><br>
<br>
　　绿纱今又糊在蓬窗上。<font color="#cd4228" style="">[甲戌侧批：雨村等一干新荣暴发之家。甲戌眉批：先说场面，忽新忽败，忽丽忽朽，已见得反覆不了。]</font><br>
<br>
　　说什么脂正浓，粉正香，如何两鬓又成霜？<font color="#cd4228" style="">[甲戌侧批：宝钗、湘云一干人。]</font><br>
<br>
　　昨日黄土陇头送白骨，<font color="#cd4228" style="">[甲戌侧批：黛玉、晴雯一干人。]</font><br>
<br>
　　今宵红灯帐底卧鸳鸯。<font color="#cd4228" style="">[甲戌眉批：一段妻妾迎新送死，倏恩倏爱，倏痛倏悲，缠绵不了。]</font><br>
<br>
　　金满箱，银满箱，<font color="#cd4228" style="">[甲戌侧批：熙凤一干人。]</font><br>
<br>
　　展眼乞丐人皆谤。<font color="#cd4228" style="">[甲戌侧批：甄玉、贾玉一干人。]</font><br>
<br>
　　正叹他人命不长，那知自己归来丧！<font color="#cd4228" style="">[甲戌眉批：一段石火光阴，悲喜不了。风露草霜，富贵嗜欲，贪婪不了。]</font><br>
<br>
　　训有方，保不定日后<font color="#cd4228" style="">[甲戌侧批：言父母死后之日。]</font>作强梁。<font color="#cd4228" style="">[甲戌侧批：柳湘莲一干人。]</font><br>
<br>
　　择膏粱，谁承望流落在烟花巷！<font color="#cd4228" style="">[甲戌眉批：一段儿女死后无凭，生前空为筹划计算，痴心不了。]</font><br>
<br>
　　因嫌纱帽小，致使锁枷杠，<font color="#cd4228" style="">[甲戌侧批：贾赦、雨村一干人。]</font><br>
<br>
　　昨怜破袄寒，今嫌紫蟒长。<font color="#cd4228" style="">[甲戌侧批：贾兰、贾菌一干人。甲戌眉批：一段功名升黜无时，强夺苦争，喜惧不了。]</font><br>
<br>
　　乱烘烘你方唱罢我登场，<font color="#cd4228" style="">[甲戌侧批：总收。甲戌眉批：总收古今亿兆痴人，共历幻场，此幻事扰扰纷纷，无日可了。]</font><br>
<br>
　　反认他乡是故乡。<font color="#cd4228" style="">[甲戌侧批：太虚幻境青埂峰一并结住。]</font><br>
<br>
　　甚荒唐，到头来都是为他人作嫁衣裳！<font color="#cd4228" style="">[甲戌侧批：语虽旧句，用于此妥极是极。苟能如此，便能了得。甲戌眉批：此等歌谣原不宜太雅，恐其不能通俗，故只此便妙极。其说得痛切处，又非一味俗语可到。蒙双行夹批：谁不解得世事如此，有龙象力者方能放得下。]</font><br>
<br>
　　那疯跛道人听了，拍掌笑道：“解得切，解得切！”士隐便笑一声“走罢！”<font color="#cd4228" style="">[甲戌侧批：如闻如见。甲戌眉批：“走罢”二字真悬崖撒手，若个能行？蒙侧批：一转念间登彼岸。靖眉批：“走罢”二字，如见如闻，真悬崖撒手。非过来人，若个能行？]</font>将道人肩上褡裢抢了过来背着，竟不回家，同了疯道人飘飘而去。<br>
<br>
　　当下烘动街坊，众人当作一件新闻传说。封氏闻得此信，哭个死去活来，只得与父亲商议，遣人各处访寻，那讨音信？无奈何，少不得依靠着他父母度日。幸而身边还有两个旧日的丫鬟伏侍，主仆三人，日夜作些针线发卖，帮着父亲用度。那封肃虽然日日抱怨，也无可奈何了。<br>
<br>
　　这日，那甄家大丫鬟在门前买线，忽听得街上喝道之声，众人都说新太爷到任。丫鬟于是隐在门内看时，只见军牢快手，一对一对的过去，俄而大轿抬着一个乌帽猩袍的官府过去。<font color="#cd4228" style="">[甲戌侧批：雨村别来无恙否？可贺可贺。甲戌眉批：所谓“乱哄哄，你方唱罢我登场”是也。]</font>丫鬟倒发了个怔，自思这官好面善，倒象在那里见过的。于是进入房中，也就丢过不在心上。<font color="#cd4228" style="">[甲戌侧批：是无儿女之情，故有夫人之分。蒙侧批：起初到底有心乎？无心乎？]</font>至晚间，正待歇息之时，忽听一片声打的门响，许多人乱嚷，说：“本府太爷差人来传人问话。”<font color="#cd4228" style="">[蒙侧批：不忘情的先写出头一位来了。]</font>封肃听了，唬得目瞪口呆，不知有何祸事。<br>
<br>
　　<font color="#cd4228" style="">[蒙：出口神奇，幻中不幻。文势跳跃，情里生情。借幻说法，而幻中更自多情，因情捉笔，而情里偏成痴幻。试问君家识得否，色空空色两无干。]</font><br></font>
<br></p><p><br></p><p><br></p><p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif">&nbsp;郑重声明：</p><p>本文重点引用&nbsp;</p><ol><li><table><tbody><tr><td><a href="http://www.my285.com/">梦远书城</a>&nbsp;&gt;&nbsp;<a href="http://www.my285.com/gdwx/index.htm">古典文学</a>&nbsp;&gt;&nbsp;<a href="http://www.my285.com/gdwx/zyz/index.htm">脂砚斋重评石头记</a>&nbsp;&gt;</td></tr></tbody></table><br><span style="color: inherit;">&nbsp;网址&nbsp;</span><a href="http://www.my285.com/gdwx/zyz/01.htm" target="_blank" style="background-color: rgb(255, 255, 255);">http://www.my285.com/gdwx/zyz/01.htm</a></li></ol><p>本文旨在为红迷爱好者读，侵权请连续以下邮箱，或评论，进行删除。</p><p>laozhang@azlinli.com</p><p><br></p><p><br></p><p></p><p><br></p>', N'第一回', NULL, 0, 37, 0, 0, CAST(N'2018-07-04T16:29:31.977' AS DateTime), CAST(N'2018-07-04T16:29:31.977' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (6, 3, NULL, N'【内容誊抄】第二回　贾夫人仙逝扬州城 冷子兴演说荣国府', N'<font size="3"><br>
　　<font color="#cd4228" style="">[甲戌：此回亦非正文本旨，只在冷子兴一人，即俗谓“冷中出热，无中生有”也。其演说荣府一篇者，盖因族大人多，若从作者笔下一一叙出，尽一二回不能得明，则成何文字？故借用冷子一人，略出其文，使阅者心中，已有一荣府隐隐在心，然后用黛玉、宝钗等两三次皴染，则耀然于心中眼中矣。此即画家三染法也。]</font><br>
<br>
　　<font color="#cd4228" style="">[未写荣府正人，先写外戚，是由远及近，由小至大也。若使先叙出荣府，然后一一叙及外戚，又一一至朋友、至奴仆，其死板拮据之笔，岂作十二钗人手中之物也？今先写外戚者，正是写荣国一府也。故又怕闲文赘累，开笔即写贾夫人已死，是特使黛玉入荣府之速也。]</font><br>
<br>
　　<font color="#cd4228" style="">[通灵宝玉于士隐梦中一出，今又于子兴口中一出，阅者已洞然矣。然后于黛玉、宝钗二人目中极精极细一描，则是文章锁合处。盖不肯一笔直下，有若放闸之水、燃信之爆，使其精华一泄而无馀也。究竟此玉原应出自钗黛目中，方有照应。今预从子兴口中说出，实虽写而却未写。观其后文，可知此一回则是虚敲傍击之文，笔则是反逆隐曲之笔。]</font><br>
<br>
　　<font color="#cd4228" style="">[蒙：以百回之大文，先以此回作两大笔以帽之，诚是大观。世态人情，尽盘旋于其间，而一丝不乱，非聚龙象力者，其孰能哉？]</font><br>
<br>
　　诗云：<font color="#cd4228" style="">[甲戌双行夹批：只此一诗便妙极！此等才情，自是雪芹平生所长，余自谓评书非关评诗也。]</font><br>
<br>
　　一局输赢料不真，香销茶尽尚逡巡。欲知目下兴衰兆，须问旁观冷眼人。<font color="#cd4228" style="">[甲戌眉批：故用冷子兴演说。]</font><br>
<br>
　　却说封肃因听见公差传唤，忙出来陪笑启问。那些人只嚷：“快请出甄爷来！”<font color="#cd4228" style="">[甲戌侧批：一丝不乱。]</font>封肃忙陪笑道：“小人姓封，并不姓甄。只有当日小婿姓甄，今已出家一二年了，不知可是问他？”那些公人道：“我们也不知什么‘真’‘假’，<font color="#cd4228" style="">[甲戌侧批：点睛妙笔。]</font>因奉太爷之命来问。他既是你女婿，便带了你去亲见太爷面禀，省得乱跑。”说着，不容封肃多言，大家推拥他去了。封家人个个都惊慌，不知何兆。<br>
<br>
　　那天约二更时，只见封肃方回来，欢天喜地。<font color="#cd4228" style="">[甲戌侧批：出自封肃口内，便省却多少闲文。]</font>众人忙问端的。他乃说道：“原来本府新升的太爷姓贾名化，本贯胡州人氏，曾与女婿旧日相交。方才在咱门前过去，因见<span style="background-color: rgb(0, 255, 0);">娇杏</span><font color="#cd4228" style="">[甲戌侧批：侥幸也。托言当日丫头回顾，故有今日，亦不过偶然侥幸耳，非真实得尘中英杰也。非近日小说中满纸红拂紫烟之可比。甲戌眉批：余批重出。余阅此书，偶有所得，即笔录之。非从首至尾阅过复从首加批者，故偶有复处。且诸公之批，自是诸公眼界；脂斋之批，亦有脂斋取乐处。后每一阅，亦必有一语半言，重加批评于侧，故又有于前后照应之说等批。]</font>那丫头买线，所以他只当女婿移住于此。我一一将原故回明，那太爷倒伤感叹息了一回，又问外孙女儿，<font color="#cd4228" style="">[甲戌侧批：细。]</font>我说看灯丢了。太爷说：‘不妨，我自使番役，务必探访回来。’<font color="#cd4228" style="">[甲戌侧批：为葫芦案伏线。]</font>说了一回话，临走倒送了我二两银子。”甄家娘子听了，不免心中伤感。<font color="#cd4228" style="">[甲戌侧批：所谓“旧事凄凉不可闻”也。]</font>一宿无话。<br>
<br>
　　至次日，早有雨村遣人送了两封银子、四匹锦缎，答谢甄家娘子，<font color="#cd4228" style="">[甲戌侧批：雨村已是下流人物，看此，今之如雨村者亦未有矣。]</font>又寄一封密书与封肃，转托问甄家娘子要那娇杏作二房。<font color="#cd4228" style="">[甲戌侧批：谢礼却为此。险哉，人之心也！]</font>封肃喜的屁滚尿流，巴不得去奉承，便在女儿前一力撺掇成了，<font color="#cd4228" style="">[甲戌侧批：一语道尽。]</font>乘夜只用一乘小轿，便把娇杏送进去了。雨村欢喜，自不必说，乃封百金赠封肃，外谢甄家娘子许多物事，令其好生养赡，以待寻访女儿下落。<font color="#cd4228" style="">[甲戌侧批：找前伏后。士隐家一段小枯荣至此结住，所谓真不去假焉来也！]</font>封肃回家无话。<br>
<br>
　　却说娇杏这丫鬟，便是那年回顾雨村者。因偶然一顾，便弄出这段事来，亦是自己意料不到之奇缘。<font color="#cd4228" style="">[甲戌侧批：注明一笔，更妥当。]</font>谁想他命运两济，<font color="#cd4228" style="">[甲戌眉批：好极！与英莲“有命无运”四字，遥遥相映射。莲，主也；杏，仆也。今莲反无运，而杏则两全，可知世人原在运数，不在眼下之高低也。此则大有深意存焉。]</font>不承望自到雨村身边，只一年便生了一子，又半载，雨村嫡妻忽染疾下世，雨村便将他扶册作正室夫人了。正是：<br>
<br>
　　偶因一着错，<font color="#cd4228" style="">[甲戌侧批：妙极！盖女儿原不应私顾外人之谓。]</font><br>
<br>
　　便为人上人。<font color="#cd4228" style="">[甲戌侧批：更妙！可知守礼俟命，终为俄莩。其调侃寓意不小。]</font><font color="#cd4228" style="">[甲眉：从来只见集古集唐等句，未见集俗语者。此又更奇之至！]</font><br>
<br>
　　原来，雨村因那年士隐赠银之后，他于十六日便起身入都。至大比之期，不料他十分得意，已会了进士，选入外班，今已升了本府知府。虽才干优长，未免有些贪酷之弊，且又恃才侮上，那些官员皆侧目而视。<font color="#cd4228" style="">[甲戌侧批：此亦奸雄必有之理。]</font>不上一年，便被上司寻了个空隙，作成一本，参他“生情狡猾，擅纂礼仪，且沽清正之名，而暗结虎狼之属，致使地方多事，民命不堪”<font color="#cd4228" style="">[甲戌侧批：此亦奸雄必有之事。]</font>等语。龙颜大怒，即批革职。该部文书一到，本府官员无不喜悦。那雨村心中虽十分惭恨，却面上全无一点怨色，仍是嘻笑自若。<font color="#cd4228" style="">[甲戌侧批：此亦奸雄必有之态。]</font>交代过公事，将历年做官积的些资本并家小人属送至原籍，安排妥协，<font color="#cd4228" style="">[甲戌侧批：先云“根基已尽”，故今用此四字，细甚！]</font>却是自己担风袖月，游览天下胜迹。<font color="#cd4228" style="">[甲戌侧批：已伏下至金陵一节矣。]</font><br>
<br>
　　那日，偶又游至淮扬地面，因闻得今岁盐政点的是林如海。这林如海姓林名海，表字如海。<font color="#cd4228" style="">[甲戌侧批：盖云“学海文林”也。总是暗写黛玉。]</font>乃是前科的探花，今已升至兰台寺大夫，<font color="#cd4228" style="">[甲戌眉批：官制半遵古名亦好。余最喜此等半有半无，半古半今，事之所无，理之必有，极玄极幻，荒唐不经之处。]</font>本贯姑苏<font color="#cd4228" style="">[甲戌侧批：十二钗正出之地，故用真。]</font>人氏，今钦点出为巡盐御史，到任方一月有余。<br>
<br>
　　原来这林如海之祖，曾袭过列侯，今到如海，业经五世。起初时，只封袭三世，因当今隆恩盛德，远迈前代，<font color="#cd4228" style="">[甲戌眉批：可笑近时小说中，无故极力称扬浪子淫女，临收结时，还必致感动朝廷，使君父同入其情欲之界，明遂其意，何无人心之至！不知彼作者有何好处，有何谢！报到朝廷高庙之上，直将半生淫朽秽资睿德，又苦拉君父作一干证护身符，强媒硬保，得遂其淫欲哉！]</font>额外加恩，至如海之父，又袭了一代；至如海，便从科第出身。虽系钟鼎之家，却亦是书香<font color="#cd4228" style="">[甲戌侧批：要紧二字，盖钟鼎亦必有书香方至美。]</font>之族。只可惜这林家支庶不盛，子孙有限，虽有几门，却与如海俱是堂族而已，没甚亲支嫡派的。<font color="#cd4228" style="">[甲戌侧批：总为黛玉极力一写。]</font>今如海年已四十，只有一个三岁之子，偏又于去岁死了。虽有几房姬妾，<font color="#cd4228" style="">[甲戌侧批：带写贤妻。]</font>奈他命中无子，亦无可如何之事。今只有嫡妻贾氏，生得一女，乳名黛玉，年方五岁。夫妻无子，故爱如珍宝，且又见他聪明清秀，<font color="#cd4228" style="">[甲戌侧批：看他写黛玉，只用此四字。可笑近来小说中，满纸“天下无二”“古今无双”等字。]</font>便也欲使他读书识得几个字，不过假充养子之意，聊解膝下荒凉之叹。<font color="#cd4228" style="">[甲戌眉批：如此叙法，方是至情至理之妙文。最可笑者，近小说中满纸班昭蔡琰、文君道韫。]</font><br>
<br>
　　雨村正值偶感风寒，病在旅店，将一月光景方渐愈。一因身体劳倦，二因盘费不继，也正欲寻个合式之处，暂且歇下。幸有两个旧友，亦在此境居住，<font color="#cd4228" style="">[甲戌侧批：写雨村自得意后之交识也。又为冷子兴作引。]</font>因闻得盐政欲聘一西宾，雨村便相托友力，谋了进去，且作安身之计。妙在只一个女学生，并两个伴读丫鬟，这女学生年又小，身体又极怯弱，工课不限多寡，故十分省力。<br>
<br>
　　堪堪又是一载的光阴，谁知女学生之母贾氏夫人一疾而终。<font color="#008000">【张叟内批：时黛玉六岁】</font>女学生侍汤奉药，守丧尽哀，遂又将辞馆别图。林如海意欲令女学生守制读书，故又将他留下。近因女学生哀痛过伤，本自怯弱多病，<font color="#cd4228" style="">[甲戌侧批：又一染。]</font>触犯旧症，遂连日不曾上学。<font color="#cd4228" style="">[甲戌眉批：上半回已终，写“仙逝”正为黛玉也。故一句带过，恐闲文有妨正笔。]</font>雨村闲居无聊，每当风日晴和，饭后便出来闲步。<br>
<br>
　　这日，偶至郭外，意欲赏鉴那村野风光。<font color="#cd4228" style="">[甲戌眉批：大都世人意料此，终不能此；不及彼者，而反及彼。故特书意在村野风光，却忽遇见子兴一篇荣国繁华气象。]</font>忽信步至一山环水旋、茂林深竹之处，隐隐的有座庙宇，门巷倾颓，墙垣朽败，门前有额，题着“智通寺”三字，<font color="#cd4228" style="">[甲戌侧批：谁为智者？又谁能通？一叹。]</font>门旁又有一副旧破的对联，曰：<br>
<br>
　　身后有余忘缩手，眼前无路想回头。<font color="#cd4228" style="">[甲夹批：先为宁、荣诸人当头一喝，却是为余一喝。]</font><br>
<br>
　　雨村看了，因想到：这两句话，文虽浅近，其意则深。<font color="#cd4228" style="">[甲戌侧批：一部书之总批。]</font>我也曾游过些名山大刹，倒不曾见过这话头，其中想必有个翻过筋斗来的亦未可知，<font color="#cd4228" style="">[甲戌侧批：随笔带出禅机，又为后文多少语录不落空。]</font>何不进去试试？想着走入，只有一个龙钟老僧在那里煮粥。<font color="#cd4228" style="">[甲戌侧批：是雨村火气。]</font>雨村见了，便不在意。<font color="#cd4228" style="">[甲戌侧批：火气。]</font>及至问他两句话，那老僧既聋且昏，<font color="#cd4228" style="">[甲戌侧批：是翻过来的。]</font>齿落舌钝，<font color="#cd4228" style="">[甲戌侧批：是翻过来的。]</font>所答非所问。<br>
<br>
　　雨村不耐烦，便仍出来，<font color="#cd4228" style="">[甲戌眉批：毕竟雨村还是俗眼，只能识得阿凤、宝玉、黛玉等未觉之先，却不识得既证之后。]</font><font color="#cd4228" style="">[甲戌眉批：未出宁、荣繁华盛处，却先写一荒凉小景；未写通部入世迷人，却先写一出世醒人。回风舞雪，倒峡逆波，别小说中所无之法。]</font>意欲到那村肆中沽饮三杯，以助野趣，于是款步行来，将入肆门，只见座上吃酒之客有一人起身大笑，接了出来，口内说：“奇遇，奇遇！”雨村忙看时，此人是都中在古董行中贸易的号冷子兴者，<font color="#cd4228" style="">[甲戌侧批：此人不过借为引绳，不必细写。]</font>旧日在都相识。雨村最赞这冷子兴是个有作为大本领的人，这子兴又借雨村斯文之名，故二人说话投机，最相契合。雨村忙笑问道：“老兄何日到此？弟竟不知。今日偶遇，真奇缘也。”子兴道：“去年岁底到家，今因还要入都，从此顺路找个敝友说一句话，承他之情，留我多住两日。我也无紧事，且盘桓两日，待月半时也就起身了。今日敝友有事，我因闲步至此，且歇歇脚。不期这样巧遇！”一面说，一面让雨村同席坐了，另整上酒肴来。二人闲谈漫饮，叙些别后之事。<font color="#cd4228" style="">[甲戌侧批：好！若多谈则累赘。]</font><br>
<br>
　　雨村因问：“近日都中可有新闻没有？”<font color="#cd4228" style="">[甲戌侧批：不突然，亦常问常答之言。]</font>子兴道：“倒没有什么新闻，倒是老先生你贵同宗家，<font color="#cd4228" style="">[甲戌侧批：雨村已无族中矣，何及此耶？看他下文。]</font>出了一件小小的异事。”雨村笑道：“弟族中无人在都，何谈及此？”子兴笑道：“你们同姓，岂非同宗一族？”雨村问是谁家。<br>
<br>
　　子兴道：“荣国府贾府中，可也不玷辱了先生的门楣了？”<font color="#cd4228" style="">[甲戌侧批：刳小人之心肺，闻小人之口角。]</font>雨村笑道：“原来是他家。若论起来，寒族人丁却不少，自东汉贾复以来，支派繁盛，各省皆有，<font color="#cd4228" style="">[甲戌侧批：此话纵真，亦必谓是雨村欺人语。]</font>谁逐细考查得来？若论荣国一支，却是同谱。但他那等荣耀，我们不便去攀扯，至今故越发生疏难认了。”子兴叹<font color="#cd4228" style="">[甲戌侧批：叹得怪。]</font>道：“老先生休如此说。如今的这宁、荣两门，也都萧疏了，不比先时的光景。”<font color="#cd4228" style="">[甲戌侧批：记清此句。可知书中之荣府已是末世了。]</font>雨村道：“当日宁荣两宅的人口也极多，如何就萧疏了？”<font color="#cd4228" style="">[甲戌侧批：作者之意原只写末世，此已是贾府之末世了。]</font>冷子兴道：“正是，说来也话长。”雨村道：“去岁我到金陵地界，因欲游览六朝遗迹，那日进了石头城，<font color="#cd4228" style="">[甲戌侧批：点睛神妙。]</font>从他老宅门前经过。街东是宁国府，街西是荣国府，二宅相连，竟将大半条街占了。大门前虽冷落无人，<font color="#cd4228" style="">[甲戌侧批：好！写出空宅。]</font>隔着围墙一望，里面厅殿楼阁，也还都酷轩峻，就是后<font color="#cd4228" style="">[甲戌侧批：“后”字何不直用“西”字？甲戌侧批：恐先生堕泪，故不敢用“西”字。]</font>一带花园子里面树木山石，也还都有蓊蔚洇润之气，那里象个衰败之家？”<br>
<br>
　　冷子兴笑道：“亏你是进士出身，原来不通！古人有云：‘百足之虫，死而不僵。’如今虽说不及先年那样兴盛，较之平常仕宦之家，到底气象不同。如今生齿日繁，事务日盛，主仆上下，安富尊荣者尽多，运筹谋画者无一，<font color="#cd4228" style="">[甲戌侧批：二语乃今古富贵世家之大病。]</font>其日用排场费用，又不能将就省俭，如今外面的架子虽未甚倒，<font color="#cd4228" style="">[甲戌侧批：“甚”字好！盖已半倒矣。]</font>内囊却也尽上来了。这还是小事，更有一件大事。谁知这样钟鸣鼎食之家，翰墨诗书之族，<font color="#cd4228" style="">[甲戌侧批：两句写出荣府。]</font>如今的儿孙，竟一代不如一代了！”<font color="#cd4228" style="">[甲戌眉批：文是极好之文，理是必有之理，话则极痛极悲之话。]</font>雨村听说，也纳罕道：“这样诗礼之家，岂有不善教育之理？别门不知，只说这宁、荣二宅，是最教子有方的。”<font color="#cd4228" style="">[甲戌侧批：一转有力。]</font><br>
<br>
　　子兴叹道：“正说的是这两门呢。待我告诉你。当日宁国公<font color="#cd4228" style="">[甲戌侧批：演。]</font>与荣国公<font color="#cd4228" style="">[甲戌侧批：源。]</font>是一母同胞弟兄两个。宁公居长，生了四个儿子。<font color="#cd4228" style="">[甲戌侧批：贾蔷、贾菌之祖，不言可知矣。]</font>宁公死后，贾代化袭了官，<font color="#cd4228" style="">[甲戌侧批：第二代。]</font>也养了两个儿子。长名贾敷，至八九岁上便死了，只剩了次子贾敬袭了官，<font color="#cd4228" style="">[甲戌侧批：第三代。]</font>如今一味好道，只爱烧丹炼汞，<font color="#cd4228" style="">[甲戌侧批：亦是大族末世常有之事。叹叹！]</font>余者一概不在心上。幸而早年留下一子，名唤贾珍，<font color="#cd4228" style="">[甲戌侧批：第四代。]</font>因他父亲一心想作神仙，把官倒让他袭了。他父亲又不肯回原籍来，只在都中城外和道士们胡羼。这位珍爷倒生了一个儿子，今年才十六岁，名叫贾蓉。<font color="#cd4228" style="">[甲戌侧批：至蓉五代。]</font>如今敬老爹一概不管。这珍爷那里肯读书，只一味高乐不了，把宁国府竟翻了过来，也没有人敢来管他。<font color="#cd4228" style="">[甲戌侧批：伏后文。]</font>再说荣府你听，方才所说异事，就出在这里。自荣公死后，长子贾代善袭了官，<font color="#cd4228" style="">[甲戌侧批：第二代。]</font>娶的也是金陵世勋史侯家的小姐<font color="#cd4228" style="">[甲戌侧批：因湘云，故及之。]</font>为妻，生了两个儿子：长子贾赦，次子贾政。<font color="#cd4228" style="">[甲戌侧批：第三代。]</font>如今代善早已去世，太夫人<font color="#cd4228" style="">[甲戌侧批：记真，湘云祖姑史氏太君也。]</font>尚在。长子贾赦袭着官。<font color="#cd4228" style="">[［伏下贾琏凤姐当家之文。］]</font>次子贾政，自幼酷喜读书，祖父最疼。原欲以科甲出身的，不料代善临终时遗本一上，皇上因恤先臣，即时令长子袭官外，问还有几子，立刻引见，遂额外赐了这政老爹一个主事之衔，<font color="#cd4228" style="">[甲戌侧批：嫡真实事，非妄拟也。]</font>令其入部习学，如今现已升了员外郎了。<font color="#cd4228" style="">[甲戌侧批：总是称功颂德。]</font>这政老爹的夫人王氏，<font color="#cd4228" style="">[甲戌侧批：记清。]</font>头胎生的公子，名唤贾珠，十四岁进学，不到二十岁就娶了妻生了子，<font color="#cd4228" style="">[甲戌侧批：此即贾兰也。至兰第五代。]</font>一病死了。<font color="#cd4228" style="">[甲戌侧批：略可望者即死，叹叹！]</font>第二胎生了一位小姐，生在大年初一，这就奇了，不想后来又生一位公子，<font color="#cd4228" style="">[甲戌眉批：一部书中第一人却如此淡淡带出，故不见后来玉兄文字繁难。]</font>说来更奇，一落胎胞，嘴里便衔下一块五示 
莹的玉来，上面还有许多字迹，<font color="#cd4228" style="">[甲戌侧批：青埂顽石已得下落。]</font>就取名叫作宝玉。你道是新奇异事不是？“<font color="#cd4228" style="">[正是宁、荣二处支谱。]</font><br>
<br>
　　雨村笑道：“果然奇异。只怕这人来历不小。”<br>
<br>
　　子兴冷笑道：“万人皆如此说，因而乃祖母便先爱如珍宝。那年周岁时，政老爹便要试他将来的志向，便将那世上所有之物摆了无数，与他抓取。谁知他一概不取，伸手只把些脂粉钗环抓来。政老爹便大怒了，说：‘将来酒色之徒耳！’因此便大不喜悦。独那史老太君还是命根一样。说来又奇，如今长了七八岁，虽然淘气异常，但其聪明乖觉处，百个不及他一个。说起孩子话来也奇怪，他说：‘女儿是水作的骨肉，男人是泥作的骨肉。<font color="#cd4228" style="">[甲戌侧批：真千古奇文奇情。]</font>我见了女儿，我便清爽；见了男子，便觉浊臭逼人。’你道好笑不好笑？将来色鬼无移了！”<font color="#cd4228" style="">[甲戌侧批：没有这一句，雨村如何罕然厉色，并后奇奇怪怪之论？]</font>雨村罕然厉色忙止道：“非也！可惜你们不知道这人来历。大约政老前辈也错以淫魔色鬼看待了。若非多读书识事，加以致知格物之功，悟道参玄之力，不能知也。"<br>
<br>
　　子兴见他说得这样重大，忙请教其端。雨村道：“天地生人，除大仁大恶两种，余者皆无大异。若大仁者，则应运而生，大恶者，则应劫而生。运生世治，劫生世危。尧，舜，禹，汤，文，武，周，召，孔，孟，董，韩，周，程，张，朱，皆应运而生者。蚩尤，共工，桀，纣，始皇，王莽，曹操，桓温，安禄山，秦桧等，皆应劫而生者。<font color="#cd4228" style="">[甲戌侧批：此亦略举大概几人而言。]</font>大仁者，修治天下；大恶者，挠乱天下。清明灵秀，天地之正气，仁者之所秉也；残忍乖僻，天地之邪气，恶者之所秉也。今当运隆祚永之朝，太平无为之世，清明灵秀之气所秉者，上至朝廷，下及草野，比比皆是。所余之秀气，漫无所归，遂为甘露，为和风，洽然溉及四海。彼残忍乖僻之邪气，不能荡溢于光天化日之中，遂凝结充塞于深沟大壑之内，偶因风荡，或被云催，略有摇动感发之意，一丝半缕误而泄出者，偶值灵秀之气适过，正不容邪，邪复妒正，<font color="#cd4228" style="">[甲戌侧批：譬得好。]</font>两不相下，亦如风水雷电，地中既遇，既不能消，又不能让，必至搏击掀发后始尽。故其气亦必赋人，发泄一尽始散。使男女偶秉此气而生者，在上则不能成仁人君子，下亦不能为大凶大恶。<font color="#cd4228" style="">[甲戌侧批：恰极，是确论。]</font>置之于万万人中，其聪俊灵秀之气，则在万万人之上，其云邪谬不近人情之态，又在万万人之下。若生于公侯富贵之家，则为情痴情种，若生于诗书清贫之族，则为逸士高人，纵再偶生于薄祚寒门，断不能为走卒健仆，甘遭庸人驱制驾驭，必为奇优名倡。如前代之许由、陶潜、阮籍、嵇康、刘伶、王谢二族、顾虎头、陈后主、唐明皇、宋徽宗、刘庭芝、温飞卿、米南宫、石曼卿、柳耆卿、秦少游，近日之倪云林、唐伯虎、祝枝山，再如李龟年、黄幡绰、敬新磨、卓文君、红拂、薛涛、崔莺、朝云之流。此皆易地则同之人也。”<br>
<br>
　　子兴道：“依你说，‘成则王侯败则贼’<font color="#cd4228" style="">[甲戌侧批：《女仙外史》中论魔道已奇，此又非《外史》之立意，故觉愈奇。]</font>了。”雨村道：“正是这意。你还不知，我自革职以来，这两年遍游各省，也曾遇见两个异样孩子。<font color="#cd4228" style="">[甲戌侧批：先虚陪一个。]</font>所以，方才你一说这宝玉，我就猜着了八九亦是这一派人物。不用远说，只金陵城内，钦差金陵省体仁院总裁<font color="#cd4228" style="">[甲戌侧批：此衔无考，亦因寓怀而设，置而勿论。]</font>甄家，<font color="#cd4228" style="">[甲戌眉批：又一真正之家，特与假家遥对，故写假则知真。]</font>你可知么？”子兴道：“谁人不知！这甄府和贾府就是老亲，又系世交。两家来往，极其亲热的。便在下也和他家来往非止一日了。”<font color="#cd4228" style="">[甲戌侧批：说大话之走狗，毕真。]</font>雨村笑道：“去岁我在金陵，也曾有人荐我到甄府处馆。我进去看其光景，谁知他家那等显贵，却是个富而好礼之家，<font color="#cd4228" style="">[甲戌侧批：如闻其声。甲戌眉批：只一句便是一篇世家传，与子兴口中是两样。]</font>倒是个难得之馆。但这一个学生，虽是启蒙，却比一个举业的还劳神。说起来更可笑，他说：‘必得两个女儿伴着我读书，我方能认得字，心里也明白，不然我自己心里糊涂。’<font color="#cd4228" style="">[甲戌侧批：甄家之宝玉乃上半部不写者，故此处极力表明，以遥照贾家之宝玉，凡写贾家之宝玉，则正为真宝玉传影。蒙侧批：灵玉却只一块，而宝玉有两个，情性如一，亦如六耳、悟空之意耶？]</font>又常对跟他的小厮们说：‘这女儿两个字，极尊贵，极清净的，比那阿弥陀佛，元始天尊的这两个宝号还更尊荣无对的呢！<font color="#cd4228" style="">[甲戌眉批：如何只以释、老二号为譬，略不敢及我先师儒圣等人？余则不敢以顽劣目之。]</font>你们这浊口臭舌，万不可唐突了这两个字，要紧。但凡要说时，必须先用清水香茶<font color="#cd4228" style="">[甲戌侧批：恭敬。]</font>漱了口才可，设若失错，<font color="#cd4228" style="">[甲戌侧批：罪过。]</font>便要凿牙穿腮等事。’其暴虐浮躁，顽劣憨痴，种种异常。只一放了学，进去见了那些女儿们，其温厚和平，聪敏文雅，<font color="#cd4228" style="">[甲戌侧批：与前八个字嫡对。]</font>竟又变了一个。因此，他令尊也曾下死笞楚过几次，无奈竟不能改。每打的吃疼不过时，他便‘姐姐’‘妹妹’乱叫起来。<font color="#cd4228" style="">[甲戌眉批：以自古未闻之奇语，故写成自古未有之奇文。此是一部书中大调侃寓意处。盖作者实因鹡鸰之悲、棠棣之威，故撰此闺阁庭帏之传。]</font>后来听得里面女儿们拿他取笑：‘因何打急了只管叫姐妹做甚？莫不是求姐妹去说情讨饶？你岂不愧些！’他回答的最妙。他说：‘急疼之时，只叫”姐姐“”妹妹“字样，或可解疼也未可知，因叫了一声，便果觉不疼了，遂得了秘法。每疼痛之极，便连叫姐妹起来了。’你说可笑不可笑？也因祖母溺爱不明，每因孙辱师责子，因此我就辞了馆出来。如今在这巡盐御史林家做馆了。你看，这等子弟，必不能守祖父之根基，从师长之规谏的。只可惜他家几个姊妹都是少有的。”<font color="#cd4228" style="">[甲戌侧批：实点一笔，余谓作者必有。]</font><br>
<br>
　　子兴道：“便是贾府中，现有的三个也不错。政老爹的长女，名元<font color="#cd4228" style="">[甲戌侧批：“原”也。]</font>春，现因贤孝才德，选入宫作女史<font color="#cd4228" style="">[甲戌侧批：因汉以前例，妙！]</font>去了。二小姐乃赦老爹之妾所出，名迎<font color="#cd4228" style="">[甲戌侧批：“应”也。]</font>春，三小姐乃政老爹之庶出，名探<font color="#cd4228" style="">[甲戌侧批：“叹”也。]</font>春，四小姐乃宁府珍爷之胞妹，名唤惜<font color="#cd4228" style="">[甲戌侧批：“息”也。]</font>春。因史老夫人极爱孙女，都跟在祖母这边一处读书，听得个个不错。”<font color="#cd4228" style="">[［复接前文未及，正词源三叠。］]</font>雨村道：“更妙在甄家的风俗，女儿之名，亦皆从男子之名命字，不似别家另外用这些‘春’‘红’‘香’‘玉’等艳字的，何得贾府亦乐此俗套？”<br>
<br>
　　子兴道：“不然，只因现今大小姐是正月初一日所生，故名元春，余者方从了‘春’字。上一辈的，却也是从兄弟而来的。现有对证：目今你贵东家林公之夫人，即荣府中赦、政二公之胞妹，在家时名唤贾敏。不信时，你回去细访可知。”雨村拍案笑道：“怪道这女学生读至凡书中有‘敏’字，皆念作‘密’字，每每如是；写字遇着‘敏’字，又减一二笔，我心中就有些疑惑。今听你说的，是为此无疑矣。怪道我这女学生言语举止另是一样，不与近日女子相同，度其母必不凡，方得其女，今知为荣府之孙，又不足罕矣。可伤上月竟亡故了。”子兴叹道：“老姊妹四个，这一个是极小的，又没了。长一辈的姊妹，一个也没了。只看这小一辈的，将来之东床如何呢。”<br>
<br>
　　雨村道：“正是，方才说这政公，已有衔玉之儿，又有长子所遗一个弱孙。这赦老竟无一个不成？”子兴道：“政公既有玉儿之后，其妾又生了一个，<font color="#cd4228" style="">[甲戌侧批：带出贾环。]</font>倒不知其好歹。只眼前现有二子一孙，却不知将来如何。若问那赦公，也有二子。长名贾琏，今已二十来往了。亲上作亲，娶的就是政老爹夫人王氏之内侄女，<font color="#cd4228" style="">[甲戌侧批：另出熙凤一人。]</font>今已娶了二年。这位琏爷身上现捐的是个同知，也是不肯读书，于世路上好机变，言谈去的，所以如今只在乃叔政老爷家住着，帮着料理些家务。谁知自娶了他令夫人之后，倒上下无一人不称颂他夫人的，琏爷倒退了一射之地。说模样又极标致，言谈又爽利，心机又极深细，竟是个男人万不及一的。”<font color="#cd4228" style="">[甲戌侧批：未见其人，先已有照。甲戌眉批：非警幻案下而来为谁？]</font><br>
<br>
　　雨村听了，笑道：“可知我前言不谬。<font color="#cd4228" style="">[甲戌侧批：略一总住。]</font>你我方才所说的这几个人，都只怕是那正邪两赋而来一路之人，未可知也。”子兴道：“邪也罢，正也罢，只顾算别人家的帐，你也吃一杯酒才好。”雨村道：“正是，只顾说话，竟多吃了几杯。”子兴笑道：“说着别人家的闲话，正好下酒，<font color="#cd4228" style="">[甲戌侧批：盖云此一段话亦为世人茶酒之笑谈耳。]</font>即多吃几杯何妨。”雨村向窗外看<font color="#cd4228" style="">[甲戌侧批：画。]</font>道：“天也晚了，仔细关了城。我们慢慢的进城再谈，未为不可。”于是，二人起身，算还酒帐。<font color="#cd4228" style="">[甲戌侧批：不得谓此处收得索然，盖原非正文也。]</font><br>
<br>
　　方欲走时，又听得后面有人叫道：“雨村兄，恭喜了！特来报个喜信的。”<br>
<br>
　　<font color="#cd4228" style="">[甲戌侧批：此等套头，亦不得不用。]</font>雨村忙回头看时——<font color="#cd4228" style="">[己双行夹批：语言无味，令人不耐。古人云“惜墨如金”，视此则视墨如土矣。似此则演至千回万回可也。]</font><br>
<br>
　　<font color="#cd4228" style="">[蒙：先自写幸遇之情于前，而叙借口谈幻境之情于后。世上不平事，道路口如碑。虽作者之苦心，亦人情之必有。雨村之遇娇杏，是此文之总帽，故在前。冷子兴之谈，是事迹之总帽，故叙写于后。冷暖世情，比比如画。]</font></font><p><font size="3"><font color="#cd4228"><br></font></font>
<br></p><p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif">&nbsp;郑重声明：</p><p>本文重点引用&nbsp;</p><ol><li><a href="http://www.my285.com/">梦远书城</a>&nbsp;&gt;&nbsp;<a href="http://www.my285.com/gdwx/index.htm">古典文学</a>&nbsp;&gt;&nbsp;<a href="http://www.my285.com/gdwx/zyz/index.htm">脂砚斋重评石头记</a>&nbsp;&gt;&nbsp;网址&nbsp;<a href="http://www.my285.com/gdwx/zyz/01.htm" target="_blank">http://www.my285.com/gdwx/zyz/01.htm</a></li></ol><p>本文旨在为红迷爱好者读，侵权请连续以下邮箱，或评论，进行删除。</p><p>laozhang@azlinli.com</p><p><br></p><p></p><p><br></p>', N'第二回', NULL, 0, 14, 0, 0, CAST(N'2018-07-05T14:44:59.587' AS DateTime), CAST(N'2018-07-05T14:44:59.537' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (7, 3, NULL, N'【内容誊抄】第三回　金陵城起复贾雨村 荣国府收养林黛玉', N'<font size="3"><br>
　　金陵城起复贾雨村　荣国府收养<font color="red" style="">[二字触目凄凉之至！]</font>林黛玉<br>
<br>
　　<font color="red" style="">[蒙：我为你持戒，我为你吃斋；我为你百行百计不舒怀，我为你泪眼愁眉难解。无人处，自疑猜，生怕那慧性灵心偷改。]</font><br>
<br>
　　<font color="red" style="">[宝玉通灵可爱，天生有眼堪穿。万年幸一遇仙缘，从此春光美满。随时喜怒哀乐，远却离合悲欢。地久天长香影连，可意方舒心眼。]</font><br>
<br>
　　<font color="red" style="">[宝玉衔来，是补天之余，落地已久，得地气收藏，因人而现。其性质内阳外阴，其形体光白温润，天生有眼可穿，故名曰宝玉，将欲得者尽宝爱此玉之意也。]</font><br>
<br>
　　<font color="red" style="">[天地循环秋复春，生生死死旧重新。君家著笔描风月，宝玉颦颦解爱人。]</font><br>
<br>
　　却说雨村忙回头看时，不是别人，乃是当日同僚一案参革的号张如圭<font color="red" style="">[甲戌侧批：盖言如鬼如蜮也，亦非正人正言。]</font>者。他本系此地人，革后家居，今打听得都中</font><p><span style="font-size: medium; color: inherit;">奏准起复旧员之信，他便四下里寻情找门路，忽遇见雨村，故忙道喜。二人见了礼，张如圭便将此信告诉雨村，雨村自是欢喜，忙忙的叙了两句，</span><font color="red" style="font-size: medium;">[甲戌侧批：画出心事。]</font><span style="font-size: medium; color: inherit;">遂作别各自回家。冷子兴听得此言，便忙献计，</span><font color="red" style="font-size: medium;">[甲戌侧批：毕肖赶热灶者。]</font><span style="font-size: medium; color: inherit;">令雨村央烦林如海，转向都中去央烦贾政。雨村领其意，作别回至馆中，忙寻邸报看真确了。</span><font color="red" style="font-size: medium;">[甲戌侧批：细。]</font><span style="font-size: medium; color: inherit;">次日，面谋之如海。如海道：“天缘凑巧，因贱荆去世，都中家岳母念及小女无人依傍教育，前已遣了男女船只来接，因小女未曾大痊，故未及行。此刻正思向蒙训教之恩未经酬报，遇此机会，岂有不尽心图报之理。但请放心，弟已预为筹画至此，已修下荐书一封，转托内兄务为周全协佐，方可稍尽弟之鄙诚，即有所费用之例，弟于内兄信中已注明白，亦不劳尊兄多虑矣。”雨村一面打恭，谢不释口，一面又问：“不知令亲大人现居何职？</span><font color="red" style="font-size: medium;">[甲戌侧批：奸险小人欺人语。]</font><span style="font-size: medium; color: inherit;">只怕晚生草率，不敢骤然入都干渎。”</span><font color="red" style="font-size: medium;">[甲戌侧批：全是假，全是诈。]</font><span style="font-size: medium; color: inherit;">如海笑道：“若论舍亲，与尊兄犹系同谱，乃荣公之孙。大内兄现袭一等将军，名赦，字恩侯，二内兄名政，字存周，</span><font color="red" style="font-size: medium;">[甲戌侧批：二名二字皆颂德而来，与子兴口中作证。]</font><span style="font-size: medium; color: inherit;">现任工部员外郎，其为人谦恭厚道，大有祖父遗风，非膏粱轻薄仕宦之流，</span><font color="red" style="font-size: medium;">[复醒一笔。]</font><span style="font-size: medium; color: inherit;">故弟方致书烦托。否则不但有污尊兄之清操，即弟亦不屑为矣。”</span><font color="red" style="font-size: medium;">[甲戌侧批：写如海实写政老。所谓此书有不写之写是也。]</font><span style="font-size: medium; color: inherit;">村听了，心下方信了昨日子兴之言，于是又谢了林如海。如海乃说：“已择了出月初二日小女入都，尊兄即同路而往，岂不两便？”雨村唯唯听命，心中十分得意。</span></p><p><font size="3">
<br>
　　如海遂打点礼物并饯行之事，雨村一一领了。<br>
<br>
　　那女学生黛玉，身体方愈，原不忍弃父而往，无奈他外祖母致意务去，且兼如海说：“汝父年将半百，再无续室之意，且汝多病，年又极小，上无亲母教养，下无姊妹兄弟扶持，<font color="red" style="">[甲戌侧批：可怜！一句一滴血，一句一滴血之文。]</font>今依傍外祖母及舅氏姊妹去，正好减我顾盼之忧，何反云不往？”黛玉听了，方洒泪拜别，<font color="red" style="">[甲戌侧批：实写黛玉。蒙侧批：此一段是不肯使黛玉作弃父乐为远游者。以此可见作者之心宝爱黛玉如己。]</font>随了奶娘及荣府几个老妇人登舟而去。雨村另有一只船，带两个小童，依附黛玉而行。<font color="red" style="">[甲戌侧批：老师依附门生，怪道今时以收纳门生为幸。]</font><br>
<br>
　　有日到了都中，<font color="red" style="">[甲戌侧批：繁中简笔。]</font>进入神京，雨村先整了衣冠，<font color="red" style="">[甲戌侧批：且按下黛玉以待细写。今故先将雨村安置过一边，方起荣府中之正文也。]</font>带了小童，<font color="red" style="">[甲戌侧批：至此渐渐好看起来也。]</font>拿着宗侄的名帖，<font color="red" style="">[甲戌侧批：此帖妙极，可知雨村的品行矣。]</font>至荣府的门前投了。彼时贾政已看了妹丈之书，即忙请入相会。见雨村相貌魁伟，言语不俗，且这贾政最喜读书人，礼贤下士，济弱扶危，大有祖风，况又系妹丈致意，因此优待雨村，<font color="red" style="">[甲戌侧批：君子可欺其方也，况雨村正在王莽谦恭下士之时，虽政老亦为所惑，在作者系指东说西也。]</font>更又不同，便竭力内中协助，题奏之日，轻轻谋<font color="red" style="">[甲戌侧批：《春秋》字法。]</font>了一个复职候缺，不上两个月，金陵应天府缺出，便谋补<font color="red" style="">[甲戌侧批：《春秋》字法。]</font>了此缺，拜辞了贾政，择日上任去了。<font color="red" style="">[甲戌侧批：因宝钗故及之，一语过至下回。]</font>不在话下。<br>
<br>
　　且说黛玉自那日弃舟登岸时，<font color="red" style="">[甲戌侧批：这方是正文起头处。此后笔墨，与前两回不同。]</font>便有荣国府打发了轿子并拉行李的车辆久候了。这林黛玉常听得<font color="red" style="">[甲戌侧批：三字细。]</font>母亲说过，他外祖母家与别家不同。他近日所见的这几个三等仆妇，吃穿用度，已是不凡了，何况今至其家。因此步步留心，时时在意，不肯轻易多说一句话，多行一步路，惟恐被人耻笑了他去。<font color="red" style="">[甲戌侧批：写黛玉自幼之心机。［黛玉自忖之语。］]</font>自上了轿，进入城中，从纱窗向外瞧了一瞧，其街市之繁华，人烟之阜盛，自与别处不同。<font color="red" style="">[甲戌侧批：先从街市写来。]</font>又行了半日，忽见街北蹲着两个大石狮子，三间兽头大门，门前列坐着十来个华冠丽服之人。正门却不开，只有东西两角门有人出入。正门之上有一匾，匾上大书“敕造宁国府”五个大字。<font color="red" style="">[甲戌侧批：先写宁府，这是由东向西而来。]</font>黛玉想道：“这必是外祖之长房了。”想着，又往西行，不多远，照样也是三间大门，方是荣国府了。却不进正门，只进了西边角门。那轿夫抬进去，走了一射之地，将转弯时，便歇下退出去了。后面的婆子们已都下了轿，赶上前来。另换了三四个衣帽周全十七八岁的小厮上来，复抬起轿子。众婆子步下围随至一垂花门前落下。众小厮退出，众婆子上来打起轿帘，扶黛玉下轿。林黛玉扶着婆子的手，进了垂花门，两边是抄手游廊，当中是穿堂，当地放着一个紫檀架子大理石的大插屏。转过插屏，小小的三间厅，厅后就是后面的正房大院。正面五间上房，皆雕梁画栋，两边穿山游廊厢房，挂着各色鹦鹉、画眉等鸟雀。台矶之上，坐着几个穿红着绿的丫头，一见他们来了，便忙都笑迎上来，说：“刚才老太太还念呢，可巧就来了。”<font color="red" style="">[甲戌侧批：如见如闻，活现于纸上之笔。好看煞！]</font>于是三四人争着打起帘笼，<font color="red" style="">[甲戌侧批：真有是事，真有是事！]</font>一面听得人回话：“林姑娘到了。”<font color="red" style="">[甲戌眉批：此书得力处，全是此等地方，所谓“颊上三毫”也。]</font><br>
<br>
　　黛玉方进入房时，只见两个人搀着一位鬓发如银的老母迎上来，黛玉便知是他外祖母。方欲拜见时，早被他外祖母一把搂入怀中，心肝儿肉叫着大哭起来。<font color="red" style="">[甲戌侧批：几千斤力量写此一笔。]</font>当下地下侍立之人，无不掩面涕泣，<font color="red" style="">[甲戌侧批：旁写一笔，更妙！]</font>黛玉也哭个不住。<font color="red" style="">[甲戌侧批：自然顺写一笔。]</font>一时众人慢慢解劝住了，黛玉方拜见了外祖母。<font color="red" style="">[甲戌眉批：书中正文之人，却如此写出，却是天生地设章法，不见一丝勉强。]</font>此即冷子兴所云之史氏太君，贾赦、贾政之母也。<font color="red" style="">[甲戌侧批：书中人目太繁，故明注一笔，使观者省眼。]</font>当下贾母一一指与黛玉：“这是你大舅母，<font color="red" style="">[邢氏。]</font>这是你二舅母，<font color="red" style="">[王氏。]</font>这是你先珠大哥的媳妇珠大嫂子。”黛玉一一拜见过。贾母又说：“请姑娘们来。今日远客才来，可以不必上学去了。”众人答应了一声，便去了两个。<br>
<br>
　　不一时，只见三个奶嬷嬷并五六个丫鬟，簇拥着三个姊妹来了。<font color="red" style="">[甲戌侧批：声势如现纸上。甲戌眉批：从黛玉眼中写三人。]</font>第一个肌肤微丰，<font color="red" style="">[甲戌侧批：不犯宝钗。]</font>合中身材，腮凝新荔，鼻腻鹅脂，温柔沉默，观之可亲。<font color="red" style="">[甲戌侧批：为迎春写照。]</font>第二个削肩细腰，<font color="red" style="">[甲戌侧批：《洛神赋》中云“肩若削成”是也。]</font>长挑身材，鸭蛋脸面，俊眼修眉，顾盼神飞，文彩精华，见之忘俗。<font color="red" style="">[甲戌侧批：为探春写照。]</font>第三个身量未足，形容尚小。<font color="red" style="">[甲戌眉批：浑写一笔更妙！必个个写去则板矣。可笑近之小说中有一百个女子，皆是如花似玉一副脸面。]</font>其钗环裙袄，<font color="red" style="">[甲戌侧批：是极。]</font>三人皆是一样的妆饰。<font color="red" style="">[甲戌侧批：毕肖。]</font>黛玉忙起身迎上来见礼，<font color="red" style="">[甲戌侧批：此笔亦不可少。]</font>互相厮认过，大家归了坐。丫鬟们斟上茶来。不过说些黛玉之母如何得病，如何请医服药，如何送死发丧。不免贾母又伤感起来，<font color="red" style="">[甲戌侧批：妙！]</font>因说：“我这些儿女，所疼者独有你母，今日一旦先舍我而去，连面也不能一见，今见了你，我怎不伤心！”说着，搂了黛玉在怀，又呜咽起来。众人忙都宽慰解释，方略略止住。<font color="red" style="">[甲戌侧批：总为黛玉自此不能别往。]</font><br>
<br>
　　众人见黛玉年貌虽小，其举止言谈不俗，身体面庞虽怯弱不胜，<font color="red" style="">[甲戌侧批：写美人是如此笔仗，看官怎得不叫绝称赏！]</font>却有一段自然的风流态度，<font color="red" style="">[甲戌侧批：为黛玉写照。众人目中，只此一句足矣。甲戌眉批：从众人目中写黛玉。草胎卉质，岂能胜物耶？想其衣裙皆不得不勉强支持者也。]</font>便知他有不足之症。因问：“常服何药，如何不急为疗治？”黛玉道：“我自来是如此，从会吃饮食时便吃药，到今日未断，请了多少名医修方配药，皆不见效。那一年我三岁时，听得说<font color="red" style="">[甲戌侧批：文字细如牛毛。]</font>来了一个癞头和尚，<font color="red" style="">[甲戌眉批：奇奇怪怪一至于此。通部中假借癞僧、跛道二人点明迷情幻海中有数之人也。非袭《西游》中一味无稽、至不能处便用观世音可比。]</font>说要化我去出家，我父母固是不从。他又说：‘既舍不得他，只怕他的病一生也不能好的了。若要好时，除非从此以后总不许见哭声，除父母之外，凡有外姓亲友之人，一概不见，方可平安了此一世。’疯疯癫癫，说了这些不经之谈，<font color="red" style="">[甲戌侧批：是作书者自注。]</font>也没人理他。如今还是吃人参养荣丸。”<font color="red" style="">[甲戌侧批：人生自当自养荣卫。甲戌眉批：甄英莲乃副十二钗之首，却明写癞僧一点。今黛玉为正十二钗之冠，反用暗笔。盖正十二钗人或洞悉可知，副十二钗或恐观者忽略，故写极力一提，使观者万勿稍加玩忽之意耳。]</font>贾母道：“正好，我这里正配丸药呢。叫他们多配一料就是了。”<font color="red" style="">[甲戌侧批：为后菖菱伏脉。]</font><br>
<br>
　　一语未了，只听后院中有人笑声，<font color="red" style="">[甲戌侧批：懦笔庸笔何能及此！]</font>说：“我来迟了，不曾迎接远客！”<font color="red" style="">[甲戌侧批：第一笔，阿凤三魂六魄已被作者拘定了，后文焉得不活跳纸上？此等文字非仙助即神助，从何而得此机括耶？甲戌眉批：另磨新墨，搦锐笔，特独出熙凤一人。未见其人，先使闻声，所谓“绣幡开，遥见英雄俺”也。]</font>黛玉纳罕道：“这些人个个皆敛声屏气，恭肃严整如此，这来者系谁，这样放诞无礼？”<font color="red" style="">[甲戌侧批：原有此一想。]</font>心下想时，只见一群媳妇丫鬟围拥着一个人从后房门进来。这个人打扮与众姑娘不同，彩绣辉煌，恍若神妃仙子：头上戴着金丝八宝攒珠髻，绾着朝阳五凤挂珠钗，<font color="red" style="">[甲戌侧批：头。]</font>项上戴着赤金盘螭璎珞圈，<font color="red" style="">[甲戌侧批：颈。]</font>裙边系着豆绿宫绦，双衡比目玫瑰佩，<font color="red" style="">[甲戌侧批：腰。]</font>身上穿着缕金百蝶穿花大红洋缎窄褃袄，外罩五彩刻丝石青银鼠褂，下着翡翠撒花洋绉裙。一双丹凤三角眼，两弯柳叶吊梢眉，身量苗条，体格风骚，粉面含春威不露，丹唇未启笑先闻。<font color="red" style="">[甲戌侧批：为阿凤写照。甲戌眉批：试问诸公：从来小说中可有写形追像至此者？]</font>黛玉连忙起身接见。贾母笑<font color="red" style="">[甲戌侧批：阿凤一至，贾母方笑，与后文多少笑字作偶。]</font>道：“你不认得他，他是我们这里有名的一个泼皮破落户儿，南省俗谓作‘辣子’，你只叫他‘凤辣子’就是了。”<font color="red" style="">[甲戌侧批：阿凤笑声进来，老太君打诨，虽是空口传声，却是补出一向晨昏起居，阿凤于太君处承欢应候一刻不可少之人，看官勿以闲文淡文也。]</font>黛玉正不知以何称呼，只见众姊妹都忙告诉他道：“这是琏嫂子。”黛玉虽不识，也曾听见母亲说过，大舅贾赦之子贾琏，娶的就是二舅母王氏之内侄女，自幼假充男儿教养的，学名王熙凤。<font color="red" style="">[甲戌侧批：奇想奇文。以女子曰“学名”固奇，然此偏有学名的反倒不识字，不曰学名者反若假。]</font>黛玉忙陪笑见礼，以“嫂”呼之。这熙凤携着黛玉的手，上下细细打谅了一回，<font color="red" style="">[甲戌侧批：写阿凤全部传神第一笔也。]</font>仍送至贾母身边坐下，因笑道：“天下真有这样标致的人物，我今儿才算见了！<font color="red" style="">[甲戌侧批：这方是阿凤言语。若一味浮词套语，岂复为阿凤哉！甲戌眉批：“真有这样标致人物”出自凤口，黛玉丰姿可知。宜作史笔看。]</font>况且这通身的气派，竟不象老祖宗的外孙女儿，竟是个嫡亲的孙女，<font color="red" style="">[甲戌侧批：仍归太君，方不失《石头记》文字，且是阿凤身心之至文。]</font>怨不得老祖宗天天口头心头一时不忘。<font color="red" style="">[甲戌侧批：却是极淡之语，偏能恰投贾母之意。]</font>只可怜我这妹妹这样命苦，<font color="red" style="">[甲戌侧批：这是阿凤见黛玉正文。]</font>怎么姑妈偏就去世了！”<font color="red" style="">[甲戌侧批：若无这几句，便不是贾府媳妇。]</font>说着，便用帕拭泪。贾母笑道：“我才好了，你倒来招我。<font color="red" style="">[甲戌侧批：文字好看之极。]</font>你妹妹远路才来，身子又弱，也才劝住了，快再休提前话！”<font color="red" style="">[甲戌侧批：反用贾母劝，看阿凤之术亦甚矣。]</font>这熙凤听了，忙转悲为喜道：“正是呢！我一见了妹妹，一心都在他身上了，又是喜欢，又是伤心，竟忘记了老祖宗。该打，该打！”又忙携黛玉之手，问：“妹妹几岁了？可也上过学？现吃什么药？在这里不要想家，想要什么吃的，什么玩的，只管告诉我，丫头老婆们不好了，也只管告诉我。”一面又问婆子们：“林姑娘的行李东西可搬进来了？带了几个人来？<font color="red" style="">[甲戌侧批：当家的人事如此，毕肖！]</font>你们赶早打扫两间下房，让他们去歇歇。”去歇歇。”<br>
<br>
　　说话时，已摆了茶果上来，熙凤亲为捧茶捧果。<font color="red" style="">[甲戌侧批：总为黛玉眼中写出。]</font>又见二舅母问他：“月钱放过了不曾？”<font color="red" style="">[甲戌侧批：不见后文，不见此笔之妙。]</font>熙凤道：“月钱已放完了。才刚带着人到后楼上找缎子，<font color="red" style="">[甲戌侧批：接闲文，是本意避繁也。]</font>找了这半日，也并没有见昨日太太说的那样的。<font color="red" style="">[甲戌侧批：却是日用家常实事。]</font>想是太太记错了？”王夫人道：“有没有，什么要紧。”因又说道：“该随手拿出两个来给你这妹妹去裁衣裳的，<font color="red" style="">[甲戌侧批：仍归前文。妙妙！]</font>等晚上想着叫人再去拿罢，可别忘了。”熙凤道：“这倒是我先料着了，知道妹妹不过这两日到的，我已预备下了，<font color="red" style="">[甲戌眉批：余知此缎阿凤并未拿出，此借王夫人之语机变欺人处耳。若信彼果拿出预备，不独被阿凤瞒过，亦且被石头瞒过了。]</font>等太太回去过了目好送来。”<font color="red" style="">[甲戌侧批：试看他心机。]</font>王夫人一笑，点头不语。<font color="red" style="">[甲戌侧批：深取之意。［凤姐是个当家人。］]</font><br>
<br>
　　当下茶果已撤，贾母命两个老嬷嬷带了黛玉去见两个母舅。时贾赦之妻邢氏忙亦起身，笑回道：“我带了外甥女过去，倒也便宜。”贾母笑道：“正是呢，你也去罢，不必过来了。”邢夫人答应了一声“是”字，遂带了黛玉与王夫人作辞，大家送至穿堂前。出了垂花门，早有众小厮们拉过一辆翠幄青紬车。邢夫人携了黛玉，坐在上面，<font color="red" style="">[［未识黛卿能乘此否？］]</font>众婆子们放下车帘，方命小厮们抬起，拉至宽处，方驾上驯骡，亦出了西角门，往东过荣府正门，便入一黑油大门中，至仪门前方下来。众小厮退出，方打起车帘，邢夫人搀着黛玉的手，进入院中。黛玉度其房屋院宇，必是荣府中花园隔断过来的。<font color="red" style="">[甲戌侧批：黛玉之心机眼力。]</font>进入三层仪门，果见正房厢庑游廊，悉皆小巧别致，不似方才那边轩峻壮丽，且院中随处之树木山石皆有。<font color="red" style="">[甲戌侧批：为大观园伏脉。试思荣府园今在西，后之大观园偏写在东，何不畏难之若此？]</font>一时进入正室，早有许多盛妆丽服之姬妾丫鬟迎着，邢夫人让黛玉坐了，一面命人到外面书房去请贾赦。<font color="red" style="">[甲戌侧批：这一句都是写贾赦，妙在全是指东击西打草惊蛇之笔。若看其写一人即作此一人看，先生便呆了。]</font>一时人来回话说：“老爷说了：‘连日身上不好，见了姑娘彼此倒伤心，<font color="red" style="">[甲戌侧批：追魂摄魄。甲戌眉批：余久不作此语矣，见此语未免一醒。]</font>暂且不忍相见。<font color="red" style="">[甲戌侧批：若一见时，不独死板，且亦大失情理，亦不能有此等妙文矣。]</font>劝姑娘不要伤心想家，跟着老太太和舅母，即同家里一样。姊妹们虽拙，大家一处伴着，亦可以解些烦闷。<font color="red" style="">[甲戌侧批：赦老亦能作此语，叹叹！]</font>或有委屈之处，只管说得，不要外道才是。’”黛玉忙站起来，一一听了。再坐一刻，便告辞。邢夫人苦留吃过晚饭去，黛玉笑回道：“舅母爱惜赐饭，原不应辞，只是还要过去拜见二舅舅，恐领了赐去不恭，<font color="red" style="">[甲戌侧批：得体。]</font>异日再领，未为不可。望舅母容谅。”邢夫人听说，笑道：“这倒是了。”遂令两三个嬷嬷用方才的车好生送了姑娘过去，于是黛玉告辞。邢夫人送至仪门前，又嘱咐了众人几句，眼看着车去了方回来。<br>
<br>
　　一时黛玉进了荣府，下了车。众嬷嬷引着，便往东转弯，穿过一个东西的穿堂，<font color="red" style="">[甲戌侧批：这一个穿堂是贾母正房之南者，凤姐处所通者则是贾母正房之北。]</font>向南大厅之后，仪门内大院落，上面五间大正房，两边厢房鹿顶耳房钻山，四通八达，轩昂壮丽，比贾母处不同。黛玉便知这方是正经正内室，一条大甬路，直接出大门的。进入堂屋中，抬头迎面先看见一个赤金九龙青地大匾，匾上写着斗大的三个大字，是“荣禧堂”，后有一行小字“某年月日，书赐荣国公贾源”，又有“万几宸翰之宝”。大紫檀雕螭案上，设着三尺来高青绿古铜鼎，悬着待漏随朝墨龙大画，一边是金蜼彝，<font color="red" style="">[甲戌侧批：蜼，音垒。周器也。]</font>一边是玻璃海（上台下皿）。<font color="red" style="">[甲戌侧批：海（上台下皿），音海。盛酒之大器也。]</font>地下两溜十六张楠木交椅。又有一副对联，乃乌木联牌，镶着錾银的字迹，<font color="red" style="">[甲戌侧批：雅而丽，富而文。]</font>道是：<br>
<br>
　　座上珠玑昭日月，<br>
<br>
　　堂前黼黻焕烟霞。<font color="red" style="">[甲戌夹批：实贴。]</font><br>
<br>
　　下面一行小字，道是：“同乡世教弟勋袭东安郡王穆莳拜手书。”<font color="red" style="">[甲戌侧批：先虚陪一笔。]</font><br>
<br>
　　原来王夫人时常居坐宴息，亦不在这正室，<font color="red" style="">[甲戌侧批：黛玉由正室一段而来，是为拜见政老耳，故进东房。]</font>只在这正室东边的三间耳房内。<font color="red" style="">[甲戌侧批：若见王夫人，直写引至东廊小正室内矣。]</font>于是老嬷嬷引黛玉进东房门来。临窗大炕上铺着猩红洋罽，正面设着大红金钱蟒靠背，石青金钱蟒引枕，秋香色金钱蟒大条褥。两边设一对梅花式洋漆小几。左边几上文王鼎匙箸香盒，右边几上汝窑美人觚“”觚内插着时鲜花卉，并茗碗痰盒等物。地下面西一溜四张椅上，都搭着银红撒花椅搭，底下四副脚踏。椅之两边，也有一对高几，几上茗碗瓶花俱备。其余陈设，自不必细说。<font color="red" style="">[甲戌侧批：此不过略叙荣府家常之礼数，特使黛玉一识阶级座次耳，余则繁。]</font>老嬷嬷们让黛玉炕上坐，炕沿上却有两个锦褥对设，黛玉度其位次，便不上炕，只向东边椅子上坐了。<font color="red" style="">[甲戌侧批：写黛玉心意。]</font>本房内的丫鬟忙捧上茶来。黛玉一面吃茶，一面打谅这些丫鬟们，装饰衣裙，举止行动，果亦与别家不同。<br>
<br>
　　茶未吃了，只见一个穿红绫袄青缎掐牙背心的丫鬟<font color="red" style="">[甲戌侧批：金乎？玉乎？]</font>走来笑说道：“太太说，请林姑娘到那边坐罢。”老嬷嬷听了，于是又引黛玉出来，到了东廊三间小正房内。正房炕上横设一张炕桌，桌上磊着书籍茶具，<font color="red" style="">[甲戌侧批：伤心笔，堕泪笔。]</font>靠东壁面西设着半旧的青缎靠背引枕。王夫人却坐在西边下首，亦是半旧的青缎靠背坐褥。见黛玉来了，便往东让。黛玉心中料定这是贾政之位。<font color="red" style="">[甲戌侧批：写黛玉心到眼到，伧夫但云为贾府叙坐位，岂不可笑？]</font>因见挨炕一溜三张椅子上，也搭着半旧的<font color="red" style="">[甲戌侧批：三字有神。此处则一色旧的，可知前正室中亦非家常之用度也。可笑近之小说中，不论何处，则曰商彝周鼎、绣幕珠帘、孔雀屏、芙蓉褥等样字眼。甲戌眉批：近闻一俗笑语云：一庄农人进京回家，众人问曰：“你进京去可见些个世面否？”庄人曰：“连皇帝老爷都见了。”众罕然问曰：“皇帝如何景况？”庄人曰：“皇帝左手拿一金元宝，右手拿一银元宝，马上稍着一口袋人参，行动人参不离口。一时要屙屎了，连擦屁股都用的是鹅黄缎子，所以京中掏茅厕的人都富贵无比。”试思凡稗官写富贵字眼者，悉皆庄农进京之一流也。盖此时彼实未身经目睹，所言皆在情理之外焉。又如人嘲作诗者亦往往爱说富丽语，故有“□骨变成金玳瑁，□睛嵌作碧璃琉”之诮。余自是评《石头记》，非鄙弃前人也。]</font>弹墨椅袱，黛玉便向椅上坐了。王夫人再四携他上炕，他方挨王夫人坐了。王夫人因说：“你舅舅今日斋戒去了，<font color="red" style="">[甲戌侧批：点缀宦途。]</font>再见罢。<font color="red" style="">[甲戌侧批：赦老不见，又写政老。政老又不能见，是重不见重，犯不见犯。作者惯用此等章法。]</font>只是有一句话嘱咐你：你三个姊妹倒都极好，以后一处念书认字学针线，或是偶一顽笑，都有尽让的。但我不放心的最是一件：我有一个孽根祸胎，<font color="red" style="">[甲戌侧批：四字是血泪盈面，不得已无奈何而下。四字是作者痛哭。]</font>是家里的‘混世魔王’，<font color="red" style="">[甲戌侧批：与“绛洞花王”为对看。]</font>今日因庙里还愿去了，<font color="red" style="">[甲戌侧批：是富贵公子。]</font>尚未回来，晚间你看见便知了。你只以后不要睬他，你这些姊妹都不敢沾惹他的。”<br>
<br>
　　黛玉亦常听得母亲说过，二舅母生的有个表兄，乃衔玉而诞，顽劣异常，<font color="red" style="">[甲戌侧批：与甄家子恰对。]</font>极恶读书，<font color="red" style="">[甲戌侧批：是极恶每日“诗云”“子曰”的读书。]</font>最喜在内帏厮混，外祖母又极溺爱，无人敢管。今见王夫人如此说，便知说的是这表兄了。<font color="red" style="">[甲戌侧批：这是一段反衬笔法。黛玉心用“猜度蠢物”等句对着去，方不失作者本旨。]</font>因陪笑道：“舅母说的，可是衔玉所生的这位哥哥？在家时亦曾听见母亲常说，这位哥哥比我大一岁，小名就唤宝玉，<font color="red" style="">[甲戌侧批：以黛玉道宝玉名，方不失正文。]</font>虽<font color="red" style="">[甲戌侧批：“虽”字是有情字，宿根而发，勿得泛泛看过。]</font>极憨顽，说在姊妹情中极好的。况我来了，自然只和姊妹同处，兄弟们自是别院另室的，<font color="red" style="">[甲戌侧批：又登开一笔，妙妙！]</font>岂得去沾惹之理？”王夫人笑道：“你不知道原故。他与别人不同，自幼因老太太疼爱，原系同姊妹们一处娇养惯了的。<font color="red" style="">[甲戌侧批：此一笔收回，是明通部同处原委也。]</font>若姊妹们有日不理他，他倒还安静些，纵然他没趣，不过出了二门，背地里拿着他两个小幺儿出气，咕唧一会子就完了。<font color="red" style="">[甲戌侧批：这可是宝玉本性真情，前四十九字迥异之批今始方知。盖小人口碑累累如是。是是非非任尔口角，大都皆然。]</font>若这一日姊妹们和他多说一句话，他心里一乐，便生出多少事来。所以嘱咐你别睬他。他嘴里一时甜言蜜语，一时有天无日，一时又疯疯傻傻，只休信他。”<br>
<br>
　　黛玉一一的都答应着。<font color="red" style="">[甲戌眉批：不写黛玉眼中之宝玉，却先写黛玉心中已早有一宝玉矣，幻妙之至！自冷子兴口中之后，余已极思欲一见，及今尚未得见，狡猾之至！]</font>只见一个丫鬟来回：“老太太那里传晚饭了。”王夫人忙携黛玉从后房门<font color="red" style="">[甲戌侧批：后房门。]</font>由后廊<font color="red" style="">[甲戌侧批：是正房后廊也。]</font>往西，出了角门，<font color="red" style="">[甲戌侧批：这是正房后西界墙角门。]</font>是一条南北宽夹道。南边是倒座三间小小的抱厦厅，北边立着一个粉油大影壁，后有一半大门，小小一所房室。王夫人笑指向黛玉道：“这是你凤姐姐的屋子，回来你好往这里找他来，少什么东西，你只管和他说就是了。”这院门上也有<font color="red" style="">[甲戌侧批：二字是他处不写之写也。]</font>四五个才总角的小厮，都垂手侍立。王夫人遂携黛玉穿过一个东西穿堂，<font color="red" style="">[甲戌眉批：这正是贾母正室后之穿堂也，与前穿堂是一带之屋，中一带乃贾母之下室也。记清。]</font>便是贾母的后院了。<font color="red" style="">[甲戌侧批：写得清，一丝不错。]</font>于是，进入后房门，已有多人在此伺候，见王夫人来了，方安设桌椅。<font color="red" style="">[甲戌侧批：不是待王夫人用膳，是恐使王夫人有失侍膳之礼耳。]</font>贾珠之妻李氏捧饭，熙凤安箸，王夫人进羹。贾母正面榻上独坐，两边四张空椅，熙凤忙拉了黛玉在左边第一张椅上坐了，黛玉十分推让。贾母笑道：“你舅母你嫂子们不在这里吃饭。你是客，原应如此坐的。”黛玉方告了座，坐了。贾母命王夫人坐了。迎春姊妹三个告了座方上来。迎春便坐右手第一，探春左第二，惜春右第二。旁边丫鬟执着拂尘、漱盂、巾帕。李、凤二人立于案旁布让。外间伺候之媳妇丫鬟虽多，却连一声咳嗽不闻。寂然饭毕，各有丫鬟用小茶盘捧上茶来。当日林如海教女以惜福养身，云饭后务待饭粒咽尽，过一时再吃茶，方不伤脾胃。<font color="red" style="">[甲戌侧批：夹写如海一派书气，最妙！]</font>今黛玉见了这里许多事情不合家中之式，不得不随的，少不得一一改过来，因而接了茶。早见人又捧过漱盂来，黛玉也照样漱了口。盥手毕，又捧上茶来，这方是吃的茶。<font color="red" style="">[甲戌侧批：总写黛玉以后之事，故只以此一件小事略为一表也。甲戌眉批：余看至此，故想日前所阅“王敦初尚公主，登厕时不知塞鼻用枣，敦辄取而啖之，早为宫人鄙诮多矣”。今黛玉若不漱此茶，或饮一口，不为荣婢所诮乎？观此则知黛玉平生之心思过人。]</font>贾母便说：“你们去罢，让我们自在说话儿。”王夫人听了，忙起身，又说了两句闲话，方引凤、李二人去了。贾母因问黛玉念何书。黛玉道：“只刚念了《四书》。”<font color="red" style="">[甲戌侧批：好极！稗官专用“腹隐五车书”者来看。]</font>黛玉又问姊妹们读何书。贾母道：“读的是什么书，不过是认得两个字，不是睁眼的瞎子罢了！”<br>
<br>
　　一语未了，只听外面一阵脚步响，<font color="red" style="">[甲戌侧批：与阿凤之来相映而不相犯。]</font>丫鬟进来笑道：“宝玉来了！”<font color="red" style="">[甲戌侧批：余为一乐。]</font>黛玉心中正疑惑着：“这个宝玉，不知是怎生个惫懒人物，懵懂顽童？”<font color="red" style="">[甲戌侧批：文字不反，不见正文之妙，似此应从《国策》得来。]</font>倒不见那蠢物<font color="red" style="">[甲戌侧批：这蠢物不是那蠢物，却有个极蠢之物相待。妙极！]</font>也罢了。心中想着，忽见丫鬟话未报完，已进来了一位年轻的公子：头上戴着束发嵌宝紫金冠，齐眉勒着二龙抢珠金抹额，穿一件二色金百蝶穿花大红箭袖，束着五彩丝攒花结长穗宫绦，外罩石青起花八团倭锻排穗褂，登着青缎粉底小朝靴。面若中秋之月，<font color="red" style="">[甲戌眉批：此非套“满月”，盖人生有面扁而青白色者，则皆可谓之秋月也。用“满月”者不知此意。]</font>色如春晓之花。<font color="red" style="">[甲戌眉批：“少年色嫩不坚牢”，以及“非夭即贫”之语，余犹在心。今阅至此，放声一哭。]</font>鬓若刀裁，眉如墨画，面如桃瓣，目若秋波。虽怒时而若笑，即嗔视而有情。<font color="red" style="">[甲戌侧批：真真写杀。]</font>项上金螭璎珞，又有一根五色丝绦，系着一块美玉。黛玉一见，便吃一大惊，心下想道：“好生奇怪，倒象在那里见过一般，何等眼熟到如此！”<font color="red" style="">[甲戌侧批：正是想必在灵河岸上三生石畔曾见过。]</font>只见这宝玉向贾母请了安，贾母便命：“去见你娘来。”宝玉即转身去了。一时回来，再看，已换了冠带：头上周围一转的短发，都结成小辫，红丝结束，共攒至顶中胎发，总编一根大辫，黑亮如漆，从顶至梢，一串四颗大珠，用金八宝坠角，身上穿着银红撒花半旧大袄，仍旧带着项圈、宝玉、寄名锁、护身符等物，下面半露松花撒花绫裤腿，锦边弹墨袜，厚底大红鞋。越显得面如敷粉，唇若施脂，转盼多情，语言常笑。天然一段风骚，全在眉梢，平生万种情思，悉堆眼角。看其外貌最是极好，却难知其底细。后人有《西江月》二词，批宝玉极恰，<font color="red" style="">[甲戌眉批：二词更妙。最可厌野史“貌如潘安”“才如子建”等语。]</font>其词曰：<br>
<br>
　　无故寻愁觅恨，有时似傻如狂。纵然生得好皮囊，腹内原来草莽。潦倒不通世务，愚顽怕读文章。行为偏僻性乖张，那管世人诽谤！<br>
<br>
　　富贵不知乐业，贫穷难耐凄凉。可怜辜负好韶光，于国于家无望。天下无能第一，古今不肖无双。寄言纨绔与膏粱：莫效此儿形状！<font color="red" style="">[甲戌眉批：末二语最紧要。只是纨绔膏粱，亦未必不见笑我玉卿。可知能效一二者，亦必不是蠢然纨绔矣。]</font><br>
<br>
　　贾母因笑道：“外客未见，就脱了衣裳，还不去见你妹妹！”宝玉早已看见多了一个姊妹，便料定是林姑妈之女，忙来作揖。厮见毕归坐，细看形容，<font color="red" style="">[甲戌眉批：又从宝玉目中细写一黛玉，直画一美人图。]</font>与众各别：两弯似蹙非蹙笼烟眉，<font color="red" style="">[甲戌侧批：奇眉妙眉，奇想妙想。]</font>一双似喜非喜含露目。<font color="red" style="">[甲戌侧批：奇目妙目，奇想妙想。]</font>态生两靥之愁，娇袭一身之病。泪光点点，娇喘微微。闲静时如姣花照水，行动处似弱柳扶风。<font color="red" style="">[甲戌侧批：至此八句是宝玉眼中。]</font>心较比干多一窍，<font color="red" style="">[甲戌侧批：此一句是宝玉心中。甲戌眉批：更奇妙之至！多一窍固是好事，然未免偏僻了，所谓“过犹不及”也。]</font>病如西子胜三分。<font color="red" style="">[甲戌侧批：此十句定评，直抵一赋。甲戌眉批：不写衣裙妆饰，正是宝玉眼中不屑之物，故不曾看见。黛玉之举止容貌，亦是宝玉眼中看、心中评。若不是宝玉，断不能知黛玉是何等品貌。]</font>宝玉看罢，因笑<font color="red" style="">[甲戌眉批：黛玉见宝玉写一“惊”字，宝玉见黛玉写一“笑”字，一存于中，一发乎外，可见文于下笔必推敲的准稳，方才用字。]</font>道：<font color="red" style="">[甲戌侧批：看他第一句是何话。]</font>“这个妹妹我曾见过的。”<font color="red" style="">[甲戌侧批：疯话。与黛玉同心，却是两样笔墨。观此则知玉卿心中有则说出，一了滞皆无。]</font>贾母笑道：“可又是胡说，你又何曾见过他？”宝玉笑道：“虽然未曾见过他，然我看着面善，心里就算是旧相识，<font color="red" style="">[甲戌侧批：一见便作如是语，宜乎王夫人谓之疯疯傻傻也。]</font>今日只作远别重逢，亦未为不可。”<font color="red" style="">[甲戌侧批：妙极奇语，全作如是等语。无怪人谓曰痴狂。]</font>贾母笑道：“更好，更好。<font color="red" style="">[甲戌侧批：作小儿语瞒过世人亦可。]</font>若如此，更相和睦了。”<font color="red" style="">[甲戌侧批：亦是真话。]</font>宝玉便走近黛玉身边坐下，又细细打谅一番，<font color="red" style="">[甲戌侧批：与黛玉两次打谅一对。]</font>因问：“妹妹可曾读书？”<font color="red" style="">[甲戌侧批：自己不读书，却问到人，妙！]</font>黛玉道：“不曾读，只上了一年学，些须认得几个字。”宝玉又道：“妹妹尊名是那两个字？”黛玉便说了名。宝玉又问表字，黛玉道：“无字。”宝玉笑道：“我送妹妹一妙字，莫若‘颦颦’二字极妙。”探春<font color="red" style="">[甲戌侧批：写探春。]</font>便问何出。宝玉道：“《古今人物通考》上说：‘西方有石名黛，可代画眉之墨。’况这林妹妹眉尖若蹙，用取这两个字，岂不两妙！”探春笑道：“只恐又是你的杜撰。”宝玉笑道：“除《四书》外，杜撰的太多，偏只我是杜撰不成？”<font color="red" style="">[甲戌侧批：如此等语，焉得怪彼世人谓之怪？只瞒不过批书者。]</font>又问黛玉：“可也有玉没有？”<font color="red" style="">[甲戌侧批：奇极怪极，痴极愚极，焉得怪人目为痴哉？]</font>众人不解其语，黛玉便忖度着：“因他有玉，故问我有也无。”<font color="red" style="">[甲戌眉批：奇之至，怪之至，又忽将黛玉亦写成一极痴女子，观此初会二人之心，则可知以后之事矣。]</font>因答道：“我没有那个。想来那玉是一件罕物，岂能人人有的。”宝玉听了，登时发作起痴狂病来，摘下那玉，就狠命摔去，<font color="red" style="">[甲戌侧批：试问石兄：此一摔，比在青埂峰下萧然坦卧何如？]</font>骂道：“什么罕物，连人之高低不择，还说‘通灵’不‘通灵’呢！我也不要这劳什子了！”吓的众人一拥争去拾玉。贾母急的搂了宝玉道：“孽障！<font color="red" style="">[甲戌侧批：如闻其声，恨极语却是疼极语。]</font>你生气，要打骂人容易，何苦摔那命根子！”<font color="red" style="">[甲戌侧批：一字一千斤重。]</font>宝玉满面泪痕泣<font color="red" style="">[甲戌侧批：千奇百怪，不写黛玉泣，却反先写宝玉泣。]</font>道：“家里姐姐妹妹都没有，单我有，我说没趣，如今来了这们一个神仙似的妹妹也没有，可知这不是个好东西。”<font color="red" style="">[甲戌眉批：“不是冤家不聚头”第一场也。]</font>贾母忙哄他道：“你这妹妹原有这个来的，因你姑妈去世时，舍不得你妹妹，无法处，遂将他的玉带了去了。一则全殉葬之礼，尽你妹妹之孝心，二则你姑妈之灵，亦可权作见了女儿之意。因此他只说没有这个，不便自己夸张之意。你如今怎比得他？还不好生慎重带上，仔细你娘知道了。”说着，便向丫鬟手中接来，亲与他带上。宝玉听如此说，想一想大有情理，也就不生别论了。<font color="red" style="">[甲戌侧批：所谓小儿易哄，余则谓“君子可欺以其方”云。]</font><br>
<br>
　　当下，奶娘来请问黛玉之房舍。贾母说：“今将宝玉挪出来，同我在套间暖阁儿里，把你林姑娘暂安置纱橱里。等过了残冬，春天再与他们收拾房屋，另作一番安置罢。”宝玉道：“好祖宗，<font color="red" style="">[甲戌侧批：跳出一小儿。]</font>我就在纱橱外的床上很妥当，何必又出来闹的老祖宗不得安静。”贾母想了一想说：“也罢了。”每人一个奶娘并一个丫头照管，余者在外间上夜听唤。一面早有熙凤命人送了一顶藕合色花帐，并几件锦被缎褥之类。<br>
<br>
　　黛玉只带了两个人来：一个是自幼奶娘王嬷嬷，一个是十岁的小丫头，亦是自幼随身的，名唤作雪雁。<font color="red" style="">[甲戌侧批：新雅不落套，是黛玉之文章也。]</font>贾母见雪雁甚小，一团孩气，王嬷嬷又极老，料黛玉皆不遂心省力的，便将自己身边的一个二等丫头，名唤鹦哥<font color="red" style="">[甲戌眉批：妙极！此等名号方是贾母之文章。最厌近之小说中，不论何处，满纸皆是红娘、小玉、娇红、香翠等俗字。]</font>者与了黛玉。外亦如迎春等例，每人除自幼乳母外，另有四个教引嬷嬷，除贴身掌管钗盥沐两个丫鬟外，另有五六个洒扫房屋来往使役的小丫鬟。当下，王 
宙与鹦哥陪侍黛玉在碧纱橱内。宝玉之乳母李嬷嬷，并大丫鬟名唤袭人<font color="red" style="">[甲戌侧批：奇名新名，必有所出。]</font>者，陪侍在外面大床上。<br>
<br>
　　原来这袭人亦是贾母之婢，本名珍珠。<font color="red" style="">[甲戌侧批：亦是贾母之文章。前鹦哥已伏下一鸳鸯，今珍珠又伏下一珀矣。以下乃宝玉之文章。]</font>贾母因溺爱宝玉，生恐宝玉之婢无竭力尽忠之人，素喜袭人心地纯良，克尽职任，遂与了宝玉。宝玉因知他本姓花，又曾见旧人诗句上有“花气袭人”之句，遂回明贾母，更名袭人。这袭人亦有些痴处：<font color="red" style="">[甲戌侧批：只如此写又好极！最厌近之小说中，满纸“千伶百俐”“这妮子亦通文墨”等语。]</font>伏侍贾母时，心中眼中只有一个贾母，如今服侍宝玉，心中眼中又只有一个宝玉。只因宝玉性情乖僻，每每规谏宝玉，心中着实忧郁。<font color="red" style="">[蒙侧批：我读至此，不觉放声大哭。]</font><br>
<br>
　　是晚，宝玉李嬷嬷已睡了，他见里面黛玉和鹦哥犹未安息，他自卸了妆，悄悄进来，笑问：“姑娘怎么还不安息？”黛玉忙让：“姐姐请坐。”袭人在床沿上坐了。鹦哥笑道：“林姑娘正在这里伤心，<font color="red" style="">[甲戌侧批：可知前批不谬。]</font>自己淌眼抹泪<font color="red" style="">[甲戌侧批：黛玉第一次哭却如此写来。甲戌眉批：前文反明写宝玉之哭，今却反如此写黛玉，几被作者瞒过。这是第一次算还，不知下剩还该多少？]</font>的说：‘今儿才来，就惹出你家哥儿的狂病，倘或摔坏了那玉，岂不是因我之过！’<font color="red" style="">[甲戌侧批：所谓宝玉知己，全用体贴功夫。蒙：我也心疼，岂独颦颦！]</font>因此便伤心，我好容易劝好了。”袭人道：“姑娘快休如此，将来只怕比这个更奇怪的笑话儿还有呢！若为他这种行止，你多心伤感，只怕你伤感不了呢。快别多心！”<font color="red" style="">[蒙侧批：后百十回黛玉之泪，总不能出此二语。“月上窗纱人到堦，窗上影儿先进来”，笔未到而境先到矣。［应知此非伤感，来还甘露水也。］]</font>黛玉道：“姐姐们说的，我记着就是了。究竟那玉不知是怎么个来历？上面还有字迹？”袭人道：“连一家子也不知来历，上头还有现成的眼儿，听得说，落草时是从他口里掏出来的。<font color="red" style="">[甲戌侧批：癞僧幻术亦太奇矣。蒙侧批：天生带来美玉，有现成可穿之眼，岂不可爱，岂不可惜！]</font>等我拿来你看便知。”黛玉忙止道：“罢了，此刻夜深，明日再看也不迟。”<font color="red" style="">[甲戌侧批：总是体贴，不肯多事。蒙侧批：他天生带来的美玉，他自己不爱惜，遇知己替他爱惜，连我看书的人也着实心疼不了，不觉背人一哭，以谢作者。]</font>大家又叙了一回，方才安歇。<br>
<br>
　　次日起来，省过贾母，因往王夫人处来，正值王夫人与熙凤在一处拆金陵来的书信看，又有王夫人之兄嫂处遣了两个媳妇来说话的。黛玉虽不知原委，探春等却都晓得是议论金陵城中所居的薛家姨母之子姨表兄薛蟠，倚财仗势，打死人命，现在应天府案下审理。如今母舅王子腾得了信息，故遣他家内的人来告诉这边，意欲唤取进京之意。<br>
<br>
　　<font color="red" style="">[蒙：补不完的是离恨天，所余之石岂非离恨石乎。而绛珠之泪偏不因离恨而落，为惜其石而落。可见惜其石必惜其人，其人不自惜，而知己能不千方百计为之惜乎？所以绛珠之泪至死不干，万苦不怨。所谓“求仁得仁又何怨”，悲夫！]</font></font></p><p><font size="3"><font color="red" style=""><br></font></font></p><p><font size="3"><font color="red" style=""><br></font></font></p><p><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif">&nbsp;郑重声明：</p><p>本文重点引用&nbsp;</p><ol><li><a href="http://www.my285.com/">梦远书城</a>&nbsp;&gt;&nbsp;<a href="http://www.my285.com/gdwx/index.htm">古典文学</a>&nbsp;&gt;&nbsp;<a href="http://www.my285.com/gdwx/zyz/index.htm">脂砚斋重评石头记</a>&nbsp;&gt;&nbsp;网址&nbsp;<a href="http://www.my285.com/gdwx/zyz/01.htm" target="_blank">http://www.my285.com/gdwx/zyz/01.htm</a></li></ol><p>本文旨在为红迷爱好者读，侵权请连续以下邮箱，或评论，进行删除。</p><p>laozhang@azlinli.com</p><p><br></p>', N'第三回', NULL, 0, 10, 0, 0, CAST(N'2018-07-06T18:18:17.383' AS DateTime), CAST(N'2018-07-06T18:18:17.320' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (8, 4, NULL, N'第一章 运营有哪些分类', N'<p>转载</p><p><br></p><h2><b>一、电商运营</b></h2><p>（以下都可以加上宏观的技能：运营计划、业绩目标、预算、执行，用户习惯分析）</p><p><br></p><p><b>1、电商平台店铺运营：</b></p><p>a：熟悉电商平台的规则，清楚转化的各个环节关键点，店铺日常维护，产品更新，店铺活动等基础操作。</p><p>b：直通车、钻展、淘宝客等主流推广方式玩的6（每个平台对于主流推广的叫法不一）</p><p>c：对标题优化，搜索排名优化，商品详情卖点提炼等有技巧及文案功底</p><p>d：数据监控并根据数据优化运营策略：营销数据、交易数据、商品管理、顾客管理；</p><p>e：拥有打造爆款的能力，上免费活动，对免费流量获取有技巧。</p><p><br></p><p><b>2、直通车运营</b>（这一类的主流推广方式，公司实力大，投放大，专人管控）</p><p>a、精通掌握直通车的排名规则，直通车关键词的选择，直通车出价以及推广优化技巧；</p><p>b、精通直通车关键词筛选、竞价及关键词竞价技巧；</p><p>c、具有较强的对竞争对手营销活动的数据及效果分析能力；</p><p>d、具有较好的逻辑思维能力及对数据的分析能力，能够通过直通车、数据魔方等基础数据，监控和分析推广效果，并提交推广意见和建议；</p><p><br></p><p><b>3、微商运营</b></p><p>a：营销文案撰写能力</p><p>b：线上线下微信运营推广能力</p><p>c：拥有微信群运营资源，微商社群思维，粉丝营销思维</p><p>d：熟悉微商运营，引流，流量转化的能力</p><p><br></p><h2><b>二：站长运营</b></h2><p>站长运营我不是很懂，有兴趣可以看“站长之家”http://www.chinaz.com，里面有很多关于SEO的干货，很多牛逼的站长，日收入过万，当然站长不是只会敲代码这么简单，他们各种贴吧，论坛，自媒体，网络联盟各种都玩的很6，对于引流，他们说称第二没人敢称第一，总之他们在我眼中是大神。但是没有天分的我只能敬仰一下，不敢追他们的舞步。</p><p><br></p><h2><b>三、新媒体运营</b></h2><p>（这个是我努力的方向，所以重点研究一下这个）</p><p>新媒体，大的定义是利用电子技术，区别于传统媒体（报纸、电视、海报、广播）的媒体平台，这种媒体平台可以分为几类：新闻资讯类（腾讯新闻，网易新闻、）、社交媒体类（微博、微信、qq）、知识分享类（得到、知乎）、自媒体类（微信公众号、头条号、网易号、一点资讯号等）、基于传统媒体的数字化类（互联网电视、院线广告、分众传媒等）。</p><p>这个是大的定义，现在更多的新媒体就是指两大v平台，微信微博，微信公众号，个人号，微淘，微信推广等</p><p><br></p><p><b>1、内容运营</b></p><p>a：收集、整理、深挖信息等编辑信息的能力；文案功底；选题、感知热点、蹭热点的能力；</p><p>b：对用户的分析和心理把握能力，对粉丝的维护能力强，善于制造话题和互动</p><p>c：分析数据的能力；资源拓展（互粉、投稿、推广加粉）的能力</p><p>d：对其他自媒体平台（一点资讯、头条号）等有了解并能从上面引来粉丝</p><p><br></p><p><b>2、用户运营</b></p><p>a：拉新、促活、留存</p><p>b：活动策划能力，好的活动策划能力</p><p>c：热点感知、数据分析、市场监控能力</p><p>d：内容运营的能力，提升内容运营价值与平台价值。</p><p><br></p><p>3、活动运营</p><p>a：统筹管理运营部门，对运营业绩负责；</p><p>b：负责发起和执行以提升用户使用率为目的的定期及不定期的运营活动；</p><p>c：协调产品、技术、市场等各方资源，保证活动正常上线，提升转化；</p><p>d：深入挖掘用户需求，分析用户数据，定期梳理用户特征，确保用户的拉新、留存、活跃和传播；</p><p>e：进行数据分析报告，根据数据结果调整活动方向，优化活动方式及内容，发现产品、运营相关问题并提出改进方案。</p><p><br></p><p><b>4、事件营销</b>（事件营销有很大的偶然性，不一定精心策划的活动或事件就能够引起大范围传播讨论的现象，但一般都会通过全渠道的打造，来实现现象级的事件营销，具体案例可以参考网易云音乐、ofo小黄车、知乎等的整合营销）</p><p>a、负责策划、组织和利用具有新闻价值、社会影响以及名人的人物或事件，制定品牌事件营销的具体方案；</p><p>b、负责品牌事件核心、阶段划分、分播创意、媒体渠道等方案落地，并组织实施；</p><p>c、定期对本行好跨业的事件营销活动进行分析并迅速反应策划相关性事件营销活动；</p><p>d、借势或配合政府主旋律的新闻事件策划，根据政府当前出台的向观众政策，制定具有迎合性和支持性事件策划互动。</p><p>e、负责新媒体平台的推广策划、内容制定、媒体渠道开发运用等执行工作；</p><p><br></p><p><b>以上为工作职责，以下为工作能力要求</b></p><p>a：策划能力，文字功底和文案撰写能力</p><p>b：对品牌及市场营销有较深厚的理解，有良好的市场信息分析能力，能精确洞察客户的需求；预判市场走向。</p><p>c：对粉丝经济、娱乐营销，圈层化营销有了解。</p><p>d：有媒体资源，对整合营销中线上线下的资源都有全面的了解，并能够知道每种资源背后的用户，与能够达到怎样的效果有一定的预估能力</p><p><br></p><h2><b>四、产品运营</b></h2><p>a：产品统筹和推新产品的能力，懂产品设计和交互</p><p>b：洞察用户需求的能力</p><p>c：竞品调研分析的能力，运营效果数据分析能力</p><p>d：产品营销和活动策划能力</p><p>e：新功能和品牌的整体推广策略、创意把控、落地实现，并分析运营效果</p><p><br></p>', N'标题', NULL, 0, 9, 0, 0, CAST(N'2018-07-09T19:16:50.680' AS DateTime), CAST(N'2018-07-09T19:16:50.663' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (9, 4, NULL, N'第二章 运营有哪些能力', N'<p>第一：具备市场分析和热点感知能力</p><p>现在做淘宝店铺，绝对不能盲目跟风，看到别人的产品卖得好，就照搬过来卖，你不一定能够卖好。原因很简单，每个人拥有的资源和擅长的方面都不一样，别人能做好，肯定有他的原因。而你应该懂得分析市场或竞争对手，分析市场的发展趋势以及竞争对手产品的优势和劣势，找出自己的机会所在。找准市场定位之后再去做产品，做好这些然后锁定你的目标人群，了解目标人群的需求和喜好，有针对性的去发掘并放大目标人群的痛点。最后通过产品去解决目标人群的需求。</p><p>第二：熟悉产品并能很好的发掘产品卖点</p><p>任何一款产品都有自己独特的卖点，这一卖点将是消费者为之付款买单的最有力的理由。作为一名合格的网店运营，想要发掘产品卖点，首先要了解目标人群的需求以及对产品的关注点。整理出这些之后，交给美工，由美工在产品主图和详情页中凸显出来。移动互联网的全面到来，详情页的作用越来越被弱化，主图将是重中之重。不过详情页仍然要对产品卖点做进一步的介绍，让目标人群对产品有一个更加清晰的了解，进而发生购买。</p><p>第三：具备一定的店铺诊断能力</p><p>讲完产品之后，咱们回到店铺问题上来。店铺在不同阶段，都会存在一些不大不小的问题。那么作为店铺运营就应该懂得店铺诊断，找出店铺存在的问题，并有针对性的给出解决方案。举个栗子：当你发现店铺产品定价过高的时候，就应该根据行业的平均价格以及你自己本身的成本情况去制定一个合理的价格，这样才能让店铺有更好的发展。</p><p>第四：具备一定的数据分析能力</p><p>做淘宝店铺一定要懂得看数据，也需要懂得利用数据。但切记不要过分迷信数据，因为有时候数据也是会骗人的。淘宝网店的数据分析一般用到的工具就是生意参谋，作为运营来讲，市场行情和经营分析是需要经常关注的。不仅可以通过市场行情的流量榜、热销榜及时了解到行业最新动态，还可以结合经营分析中的数据，了解店铺的流量和来源，利用这些数据咱们就可以有针对性的对店铺作出改进和优化。</p><p>第五：具备站内站外的推广引流能力</p><p>流量是网店的根本，作为网店运营要懂得如何去策划活动、打造爆款群等技能，怎么做才能给店铺引入更多流量，如何提升流量转化率。免费的像自然搜索、活动报名、付费的像直通车、淘宝客、钻石展位也要熟悉。这样才能让推广给店铺带来更多的收益。</p><p>第六：具备一定的领导管理能力</p><p>一般来讲，网店的所有工作都是围绕着运营展开的。也就是说运营是整个团队的核心人物，像咱们前面所讲的，运营要懂得分配工作，也要协调好各个岗位之间的工作，让各个刚好相互配合把工作做好。并且针对各个岗位的工作负有监督和知道的责任，要想尽办法让整个团队高效工作，发挥出最大的效果。</p><p><br></p>', N'标题', NULL, 0, 12, 0, 0, CAST(N'2018-07-09T19:17:08.287' AS DateTime), CAST(N'2018-07-09T19:17:08.273' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (10, 4, N'/Upload/20180709/4581b0e6796044e68d2f6ac5445b3a5e.png', N'第三章 运营有哪些术语', N'<p>转载</p><p><br></p><h2><b>1、流量</b></h2><p>流量＝一定时间内，网站的访问量。</p><p><b>衡量流量的指标有：</b></p><p><b><br></b></p><p><b>UV（Unique Visitors）：独立访客数。</b></p><p>独立访客数和独立IP是两个概念。独立IP，要求访问者的IP地址各不相同；独立访客数则未必。</p><p>同一台电脑，你注册了一个新用户，你哥哥注册了另一个新用户。</p><p>此时，网站的后台会记录下1个独立IP，但同时会记录下2个UV。</p><p>同一台电脑，你和你哥哥都没有注册，只是浏览。</p><p>后台会记录下1个独立IP，及1个UV。</p><p>当然，在同一天内，不管一个独立IP下的独立访客访问多少次，后台都只记录1次。</p><p><br></p><p><b>PV（Page Views）：页面访问量</b></p><p>每一个用户，每打开一个页面，就是一个PV。</p><p>一个网站，从首页到注册成功一共有 5 张页面，分别是：</p><p>首页、填写用户名与密码、填写基础资料、填写高级资料、注册成功。</p><p>每一个用户成功从首页点击注册并完成注册流程，后台就会统计，网站因此获得了5个PV。</p><p>IP\UV\PV，构成了一个网站的独立访问数量。</p><p><br></p><p><b>RV（Repeat Visitors）：重复访客。</b></p><p>昨天小明来看了看我的订阅号，今天他又来了。小明就是一个RV。</p><p>重复访客彰显站点对用户的粘着程度，但建议不要把RV们看成整体，要作为个体对待。每一个重复访客都是这辈子为你折翼的天使，你看着办吧。</p><p><br></p><p><b>TP（Time On Page）：页面停留时间</b></p><p>王大壮最喜欢看新闻，所以他每天看XO站的新闻频道10分钟；李小勇最喜欢看美女，所以他每天看XO站的美女频道30分钟；……&nbsp;你想知道用户爱看什么吗？好好研究一下TP呗~</p><p><br></p><p><b>Traffic Sources：流量来源渠道</b></p><p>百度每天为你贡献了100个UV；用户直接输入网站为你贡献了10000个UV；微信每天为你带来1000个UV；……&nbsp;来源渠道很重要的哟。</p><p>提醒：当我们谈流量的时候，其实我们谈的是一个很大的概念，绝不仅仅是某一个指标。</p><p><br></p><h2>2、SEO 搜索引擎优化</h2><p>英文“Search Engine Optimization”缩写而来， 中文意译为「搜索引擎优化」。</p><p>SEO是一个我们经常听到的名词。同时也是一项运营工作。这项工作主要在 Web 端起作用。它通过优化页面上的各种标签、保持内容更新、管理与优化内外链等各项工作，让搜索引擎认识自己的网站，从而在用户搜索时，使自己的站点出现在较为靠前的位置。</p><p>通常，SEO的效果需要一段时间才能显现，一般来说，SEO是可以自行维护，无需花钱。当然，如果运营团队没有类似的经验，也可以通过外包给专门的公司去做处理。</p><p><br></p><h2>3、SEM 搜索引擎营销</h2><p>英文Search Engine Marketing的缩写， 意译为「搜索引擎营销」。你们所熟知并且一直诟病的「竞价排名」就是SEM的一种。通常，SEM不付费是没法做的。</p><p><br></p><h2>4、ASO 应用市场优化</h2><p>英文App Store Optimization的缩写，意译为「应用市场优化」。ASO对应的是SEO，它是一种让你的App能够更容易在应用商店的搜索结果中被呈现的一种推广技术。</p><p>它和SEO的做法实在太类似了，从App名称到介绍文案去覆盖热词，到尽量获得高分评论，不一而足。我想，如果一个人曾经做过SEO，对他做ASO一定是有帮助的。</p><p><br></p><h2>5、ROI 投资回报率</h2><p>投资回报率，这几乎是每一个老板在你做了活动、内容等动作之后，一定会关注的问题。</p><p>譬如，隔壁老王花了10万块做活动，7天带来了100万注册用户。对比一下，你家小明花了100万做活动，7天带来了10万注册用户。很明显，隔壁老王的ROI更好。</p><p><b>当我们讨论ROI的时候，一定要明确好：</b></p><p>1）究竟我做活动/内容的目的是什么，有没有达到这个目的？</p><p>2）具体的数字是多少，还有没有提升的空间？</p><p>你的对比对象，可以是行业，也可以是你自己。</p><p><br></p><h2>6、DAU 日活跃用户</h2><p>英文“Daily Active User”的缩写，意义为「日活跃用户」。这个概念，从游戏开始，普及到所有App，有点类似我们上一回聊到的UV概念，但又有所不同。</p><p>活跃的定义，虽然所谓行业标准是当日打开应用，但事实上，这应该是一个可自行定义的标准。在这一点上，很多同学，其实会有些迷惑。</p><p>譬如，一个工具扫描类的App，它的日活定义，我认为可能需要定义为：有扫描文档行为的用户，而不应该是，打开应用的用户。</p><p><br></p><h2><b>7、ARPU 值 用户平均收入</b></h2><p>这个缩写其实也是从游戏而来的。英文“Average Revenue Per User”的缩写，意为：「用户平均收入」。</p><p>某网游，每月有1000万用户，每月有1亿元收入，那么，该游戏当月的Arpu值为：10元。</p><p>某应用，1月有30万用户，1月收到1000万元收入，那么该应用1月的Arpu值为：33.3元。</p><p>必须注意的是，Arpu值并不反映利润情况，只反映收入情况。</p><p>所以，如果有人拿Arpu值对比，告诉你，上面这个应用比上面个网游更赚钱，请你优雅的一笑了之。</p><p><br></p><h2>8、CMS&nbsp;内容管理系统</h2><p>英文“Content Management System”的缩写，意为「内容管理系统」。简单的讲，CMS是由于Web 2.0下内容型产品爆发成长，由于市场需求而产生的一个内容管理系统。</p><p>最早的CMS系统，只会处理文本信息，但随着技术的进步，现在的CMS系统已经可以处理文本、图片、Flash、音视频等多种内容类型。市面上有很多开源的CMS系统，搭载的模块也各不相同。</p><p>如果你想快速搭建一个像知乎一样的社区，你就可以去买一个域名、租个空间，然后找一套开源CMS程序，装装弄弄就好。</p><p><br></p><h2>9、UGC 用户创造内容</h2><p>英文User Generated Content的缩写， 意译为「用户创造内容」。需要明确的是，UGC并不是一种业务类型，而是一种模式。</p><p><b>UGC的特点：</b></p><p>1、用户是内容供应者、消费者、传播者。</p><p>2、内容传播力度较强。</p><p>3、质量判定由专业人员下放到普通用户。</p><p>各种论坛是UGC，YouTube是UGC，微博是UGC……UGC充斥在我们身边，是目前最普遍也同时是最难做的一种内容模式。普遍是因为切换该模式几乎毫无门槛；难做是因为内容质量的把控和内容生成的促进，并无太好的办法。</p><p><br></p><h2>10、PGC 专家创造内容</h2><p>英文“Professional Generated Content”的缩写，意译为「专家创造内容」。UGC的对应是PGC，我们见过的PGC类型有：名人博客、名人微博、网络自制剧等。</p><p>有妖气、罗辑思维，都是PGC的代表。</p><p>UCG和PGC也会互相转化，更多的时候UGC会向PGC转化。这个转化过程，很多人称之为「大V成长记」。对于早期的知乎来说，是UGC社区，而现在，则更倾向于是一个PGC社区。</p><p>原因很简单：</p><p>1、马太效应，早期的User中很多人已经聚集了太多关注，因此，他们的内容永远在Timeline的前列。</p><p>2、草根用户的内容并不容易被发掘，进而更容易被掩埋。</p><p><br></p><h2>11、BBS 电子公告板</h2><p>英文Bulletin Board System的缩写，意译为「电子公告板」。1978年的2月16日，Ward Christensen和Randy Suess在美国芝加哥发布了历史上第一个BBS系统（Computerized Bulletin Board System/Chicago），其后经过几番修改，1984年美国的Tom Jonning开发了一套具有电子功能的电子公告板程序FIDO。</p><p>算下来，BBS已经有37年的历史了，嗯！当然，现在说起BBS，大家的第一反应是——论坛。没关系，并没有错<span style="color: inherit;">。</span></p><p><span style="color: inherit;"><br></span></p><h2>12、SNS 社交网站/社交网络服务</h2><p>国内，是“Social Network Sites”，指社交网站，既可以帮人们建立社交网络，也可以让人们的社交关系的动态进行呈现的网站服务。国外，是“Social Network Services”，指在帮助人们建立社会性网络的互联网应用服务。</p><p></p><p>其实我更喜欢国内的这个说法，因为 Services 这件事情，看起来很牛逼，但做起来很苦逼。</p><p><br></p>', N'标题', NULL, 0, 12, 0, 0, CAST(N'2018-07-09T19:18:10.413' AS DateTime), CAST(N'2018-07-09T19:18:10.397' AS DateTime), 1, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (11, 4, NULL, N'第五章 运营真的很广泛么？', N'<p></p><pre><font size="3">一、网站方面能力：<br>1.整体布局<br>分析30个经典网站的布局结构，主页面结构，次主页结构，页面结构，及相关联系。<br>2.整个UI<br>界面设计，分析20个网页的风格，查阅和学习色彩结构方面的内容，至少查看100个风格不同的网页。<br>3.网站结构能力<br>能在书面上画出一个网站的整个结构，分支结构，各子模块，以及其相关的联系和内容。要求画出两个中型网站的设计结构，之间联系和关系。<br>优秀：<br>能根据网站外在结构，外在URL就能分析网站结构，并知道其设计优劣。<br>通过网站结构，就能其发展前途有多少。<br><br>二、技术方面能力<br>1.了解各方面的技术对于网站平台的影响，知道什么样的服务器平台应于什么样的标准。要求了解互联网常用系统，三大平台，windows,　Linux,　UNIX,及其应用。<br>2.了解三大代码结构，ASP，PHP，JSP各种优劣，知道其应用。<br>3.了解三大数据库的应用级结构，access,　sqlserver,　mysql,每个数据特点及结构。<br>优秀：<br>对任何网站设计一目了然；<br>对任何数据库都能通过外在程序处理解决问题。<br><br>三、运营方面能力<br>1.了解市场方面的价格变化<br>包括供应方面的服务器价格，内容。随时关注于自己的成本。要求：对现在的服务器托管价格了解列表，做个成本表，核算自己的成本。<br>2.关注产品结构<br>随时关注自己的产品结构，了解销售渠道和销售价格。并准备设计新产品。要求：列出自己网站所能提供的产品和服务内容，知道什么样的价格可以把他们卖出去。<br>3.关注客户需求<br>了解最大的客户群是谁，和他们保持联系，做好客户的服务工作。并随时寻找新客户，了解潜在的客户。要求：列出自己的主要客户名单，知道自己的主要销售利润来源于哪里。<br>优秀：<br>面对任何一个人，能够熟练的讲解本公司网站业务，和他相关的关系。面对任何一个客户，都能直接设计出其适合的产品，并直接报价。<br><br>四、战略市场能力<br>1.熟知怎么样把网络能力和线下的资源紧密结合，并把网络和线下的资源相互的重新优化配合，产生出新的内容。要求：设计出三个新的产品或服务活动模式，即为合格。<br>2.了解常用的营销和销售模式，知道怎么样以最小的代价把信息传递给需要的客户。了解整合和互动营销的内容。要求，做出两三次营销活动，即为合格。培训：富爸爸销售狗。<br>3.知道在什么地方出现，去认识什么样的人。包括三方面的地方，有客户的地方，有同业的地方，有商业机会的地方。去见什么样的人，根据需要而变。要求：列出这方面三个不同的活动聚会。<br>优秀：<br>知道整个市场的风吹草动，了解每个对手的情况，比自己的客户都知道他们自己的公司。<br><br>五、团队管理能力<br>1.了解自己所领导和管理的人，业务能力和人格特质，知道是什么样的，能做什么样的事。要求：写出每个人的简历，特质，分析和配合。<br>2.设定工作计划，并能控制和反馈，紧密注意实施过程，和团队沟通，处理随时产生之问题。要求：写出三份工作实施计划，以主管角色保证两个计划的实施。<br>3.保持团队活力，随时注意成员情绪，在成员情绪陷入负面情绪时知道如何调解，为大家创造和保持一个快乐的工作环境。<br>优秀：<br>能够随时随地管理，随时随地沟通，随时随地的解决问题，随时随地的了解情况，随时随地的激励。<br><br>补充：<br>有了能力要做些什么事情呢？下面内容大家可以借鉴：<br>岗位职责：<br>1、网站规划：在公司经营战略指导下，进行市场调查和反馈，组织网站整体定位、风格设计、业务方向的综合策划，确立网站定位与发展方向；<br>2、运营项目策划：组织目标市场、竞争态势、客户需求等的调查，撰写市场分析与评述，创意新的赢利模式，策划网站运营、业务拓展和产品销售的综合推广措施，推动网站商业模式的形成和相关产品的设计、优化；<br>3、栏目与内容规划：根据网站定位及运营项目策划，确定相应栏目及其编辑方针，依此从信息源中筛选信息内容，进行内容的具体规划，并制定具体运营项目的工作计划，组织运营项目的实施；<br>4、商务拓展与合作：与其他网站、运营商建立良好的业务合作关系，发展与培养合作伙伴，协调公司与客户之间的资源，开展运营项目的推广工作，提高有效访问量，保证网络运营项目的顺利执行与业务目标的达成；<br>5、项目评估与调整：根据业绩、市场反馈等对网络运营项目进行监督、控制和绩效评估，及时调整市场策略与内容，保证项目运营目标的持续达成；<br>6、部门内部管理：根据公司经营方针和部门业务需要，合理设置部门组织结构和岗位，优化业务流程，合理配置人力资源，开发和培养员工能力，对员工绩效进行管理，提升部门工作效率，提高员工满意度。<br><br>需要做哪些文档工作呢？<br>1、总体策划方案（包括网站总体需求、建站目标分析、定位、成本及盈利；网站技术实现总体分析；网站总体设计总体分析；网站程序功能总体分析；）<br>2.界面示范策划；－－（各栏目的策划分析；主要栏目的示范设计样稿word方式；）<br>3、功能策划方案（程序后台总体分析；流程分析；数据库表结构；各字段分析；）<br>4、服务器相关文档（服务器web平台构建分析、维护及安全策划；）<br>5、运营相关策划（维护策划、网上推广方案、广告计划、新产品策划方案）<br>6、项目实施计划（开发流程、项目小组组建及成员、实施进度表、技术规范方案、）<br><br>调研--市场或者项目论证--完整方案策划--执行方案制定--最后论证--小市场测试--修正--正式执行</font></pre><p><br></p>', N'标题', NULL, 0, 12, 0, 0, CAST(N'2018-07-09T19:20:35.227' AS DateTime), CAST(N'2018-07-09T19:20:35.210' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (12, 4, NULL, N'第四章 运营有简历', N'<p align="center" style="text-align: center;"><img src="/upload/image/20180709/20180709192245_5067.png" alt="" class=""><br></p><p><br></p><p align="center" style="text-align: center;"><img src="/upload/image/20180709/20180709192330_0224.png" alt="" class=""><br></p><p><br></p><p align="center" style="text-align: center;"><img src="/upload/image/20180709/20180709192511_8661.png" alt="" class=""><br></p><p><br></p><p align="center" style="text-align: center;"><img src="/upload/image/20180709/20180709192526_8817.png" alt="" class=""><br></p><p><br></p>', N'标题', NULL, 0, 18, 0, 0, CAST(N'2018-07-09T19:25:48.367' AS DateTime), CAST(N'2018-07-09T19:25:48.367' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (13, 5, NULL, N'英语网站', N'<h2>词汇</h2><p>背单词，捐大米&nbsp;<a href="http://freerice.com/" target="_blank" style="background-color: rgb(255, 255, 255);">http://freerice.com/</a></p><p><br></p><h2>阅读</h2><p>全球书评&nbsp;<a href="https://www.goodreads.com/" target="_blank" style="background-color: rgb(255, 255, 255);">https://www.goodreads.com/</a></p><p><br></p><h2>论坛</h2><p>Quora&nbsp;<a href="https://www.quora.com/" target="_blank" style="background-color: rgb(255, 255, 255);">https://www.quora.com/</a></p><p>Reddit&nbsp;<a href="https://www.reddit.com/" target="_blank" style="background-color: rgb(255, 255, 255);">https://www.reddit.com/</a></p><p><br></p><h2>听</h2><p>首图合作 https://clcn.overdrivechina.cn/</p><p><br></p>', NULL, NULL, 0, 13, 0, 0, CAST(N'2018-07-10T23:20:32.210' AS DateTime), CAST(N'2018-07-10T23:20:32.210' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (14, 6, NULL, N'第一回 Sql常见的语句（一）', N'<p></p><ul><li>两表查询<br></li></ul><p></p><pre style="max-width:100%;overflow-x:auto;"><code class="sql hljs" codemark="1"><span class="hljs-keyword">SELECT</span> T.<span class="hljs-keyword">id</span>,TC.TCId <span class="hljs-keyword">FROM</span> Tickets <span class="hljs-keyword">AS</span> T <span class="hljs-keyword">INNER</span> <span class="hljs-keyword">JOIN</span> TicketChannelOperates <span class="hljs-keyword">AS</span> TC <span class="hljs-keyword">ON</span> T.<span class="hljs-keyword">id</span>=TC.TId ;

<p>SELECT&nbsp;T.id,TC.TCId&nbsp;FROM&nbsp;Tickets&nbsp;AS&nbsp;T,TicketChannelOperates&nbsp;AS&nbsp;TC&nbsp;WHERE&nbsp;T.id=TC.TId ;</p></code></pre><p></p><ul><li>三表查询<br></li></ul><p></p><pre style="max-width:100%;overflow-x:auto;"><code class="sql hljs" codemark="1"><span class="hljs-keyword">SELECT</span> T.<span class="hljs-keyword">id</span>,TC.TCId <span class="hljs-keyword">FROM</span> Tickets <span class="hljs-keyword">AS</span> T <span class="hljs-keyword">INNER</span> <span class="hljs-keyword">JOIN</span> TicketChannelOperates <span class="hljs-keyword">AS</span> TC <span class="hljs-keyword">ON</span> T.<span class="hljs-keyword">id</span>=TC.TId <span class="hljs-keyword">INNER</span> <span class="hljs-keyword">JOIN</span> TicketBlocks <span class="hljs-keyword">AS</span> TB <span class="hljs-keyword">ON</span> T.<span class="hljs-keyword">id</span>=TB.TID;

<span class="hljs-keyword">SELECT</span> * <span class="hljs-keyword">FROM</span> Tickets <span class="hljs-keyword">AS</span> T,TicketChannelOperates <span class="hljs-keyword">AS</span> TC,TicketBlocks <span class="hljs-keyword">AS</span> TB <span class="hljs-keyword">WHERE</span> T.<span class="hljs-keyword">id</span>=TC.TId <span class="hljs-keyword">AND</span> T.<span class="hljs-keyword">id</span>=TB.TID ;</code></pre><p></p><ul><li>Linq查询</li></ul><p></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">   <span class="hljs-keyword">var</span> source = <span class="hljs-keyword">new</span> int[] { <span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>, <span class="hljs-number">4</span>, <span class="hljs-number">5</span>, <span class="hljs-number">6</span>, <span class="hljs-number">7</span>, <span class="hljs-number">8</span>, <span class="hljs-number">9</span> };
            <span class="hljs-keyword">var</span> query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> source
                        <span class="hljs-keyword">let</span> m = x * <span class="hljs-number">100</span>
                        where m &gt; <span class="hljs-number">100</span>
                        select x;
            query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query
                    where x % <span class="hljs-number">2</span> == <span class="hljs-number">0</span>
                    select x;
            query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query
                    where x.ToString().Contains(<span class="hljs-string">"1"</span>)
                    select x;
            <span class="hljs-keyword">var</span> result = query.ToList();        <span class="hljs-comment">//此时开始计算结果</span>

            <span class="hljs-keyword">var</span> query1 = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> source
                         <span class="hljs-keyword">let</span> m = x * <span class="hljs-number">100</span>
                         where m &gt; <span class="hljs-number">100</span>
                         select x;
            <span class="hljs-keyword">var</span> rnd = <span class="hljs-keyword">new</span> Random();
            <span class="hljs-keyword">var</span> query2 = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> Enumerable.Range(<span class="hljs-number">0</span>, <span class="hljs-number">1000</span>)
                         select x * rnd.Next();
            query1 = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query1
                     where x.ToString().Contains(<span class="hljs-string">"1"</span>)
                     select x;
            <span class="hljs-keyword">var</span> query3 = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query2
                         where (<span class="hljs-keyword">from</span> y <span class="hljs-keyword">in</span> query1
                                where y + <span class="hljs-number">1</span> == x
                                select y).Any()
                         select x;
            <span class="hljs-keyword">var</span> result1 = query3.ToList();        <span class="hljs-comment">//此时开始计算结果</span></code></pre><p></p><ul><li>Linq多表查询<br></li></ul><p></p><p><br></p><ul><li><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1">  <span class="hljs-keyword">var</span> source1 = <span class="hljs-keyword">new</span> int[] { <span class="hljs-number">11</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>, <span class="hljs-number">14</span>, <span class="hljs-number">5</span>, <span class="hljs-number">16</span>, <span class="hljs-number">7</span> };
            List&lt;int&gt; source2 = <span class="hljs-keyword">new</span> List&lt;int&gt;() { <span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>, <span class="hljs-number">4</span>, <span class="hljs-number">5</span>, <span class="hljs-number">6</span>, <span class="hljs-number">7</span>, <span class="hljs-number">8</span>, <span class="hljs-number">9</span> };
            <span class="hljs-keyword">var</span> query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> source2
                        join y <span class="hljs-keyword">in</span> source1
                        on x.ToString() equals y.ToString()
                        where x&gt;<span class="hljs-number">2</span>
                        select x;
            <span class="hljs-keyword">var</span> result = query.ToList();  </code></pre></li></ul><p><br></p><p><br></p>', N'如题', NULL, 0, 12, 0, 0, CAST(N'2018-07-13T14:51:39.227' AS DateTime), CAST(N'2018-07-13T14:51:39.227' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (15, 6, NULL, N'第二回 有关Lambda和Linq表达式', N'<ul><li>Linq查询</li><li><p>LINQ 全称：语言集成查询-Language-IntegratedQuery。</p><p>LINQ语义:<br>类型&nbsp;查询变量&nbsp;=&nbsp;from&nbsp;临时变量in&nbsp;集合对象或数据库对象<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[where&nbsp;条件表达式]&nbsp; &nbsp; <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[order by&nbsp;条件]&nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;select&nbsp;临时变量中被查询的值&nbsp; &nbsp; <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[group by&nbsp;条件]<br>查询变量的作用是保存查询,而非查询结果<br><br>LINQ的分类:LINQ to Objects、LINQ to DataSets、LINQ to SQL、LINQ to Entities、LINQ to XML</p></li></ul><pre><code class="hljs cs" codemark="1">   <span class="hljs-keyword">var</span> source = <span class="hljs-keyword">new</span> <span class="hljs-keyword">int</span>[] { <span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>, <span class="hljs-number">4</span>, <span class="hljs-number">5</span>, <span class="hljs-number">6</span>, <span class="hljs-number">7</span>, <span class="hljs-number">8</span>, <span class="hljs-number">9</span> };
            <span class="hljs-keyword">var</span> query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> source
                        <span class="hljs-keyword">let</span> m = x * <span class="hljs-number">100</span>
                        <span class="hljs-keyword">where</span> m &gt; <span class="hljs-number">100</span>
                        <span class="hljs-keyword">select</span> x;
            query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query
                    <span class="hljs-keyword">where</span> x % <span class="hljs-number">2</span> == <span class="hljs-number">0</span>
                    <span class="hljs-keyword">select</span> x;
            query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query
                    <span class="hljs-keyword">where</span> x.ToString().Contains(<span class="hljs-string">"1"</span>)
                    <span class="hljs-keyword">select</span> x;
            <span class="hljs-keyword">var</span> result = query.ToList();        <span class="hljs-comment">//此时开始计算结果</span>

            <span class="hljs-keyword">var</span> query1 = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> source
                         <span class="hljs-keyword">let</span> m = x * <span class="hljs-number">100</span>
                         <span class="hljs-keyword">where</span> m &gt; <span class="hljs-number">100</span>
                         <span class="hljs-keyword">select</span> x;
            <span class="hljs-keyword">var</span> rnd = <span class="hljs-keyword">new</span> Random();
            <span class="hljs-keyword">var</span> query2 = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> Enumerable.Range(<span class="hljs-number">0</span>, <span class="hljs-number">1000</span>)
                         <span class="hljs-keyword">select</span> x * rnd.Next();
            query1 = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query1
                     <span class="hljs-keyword">where</span> x.ToString().Contains(<span class="hljs-string">"1"</span>)
                     <span class="hljs-keyword">select</span> x;
            <span class="hljs-keyword">var</span> query3 = <span class="hljs-function"><span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> query2
                         <span class="hljs-title">where</span> (<span class="hljs-params"><span class="hljs-keyword">from</span> y <span class="hljs-keyword">in</span> query1
                                <span class="hljs-keyword">where</span> y + <span class="hljs-number">1</span> == x
                                <span class="hljs-keyword">select</span> y</span>).<span class="hljs-title">Any</span>(<span class="hljs-params"></span>)
                         <span class="hljs-keyword">select</span> x</span>;
            <span class="hljs-keyword">var</span> result1 = query3.ToList();        <span class="hljs-comment">//此时开始计算结果</span></code></pre><ul><li>Linq多表查询</li><li><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-keyword">var</span> source1 = <span class="hljs-keyword">new</span> int[] { <span class="hljs-number">11</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>, <span class="hljs-number">14</span>, <span class="hljs-number">5</span>, <span class="hljs-number">16</span>, <span class="hljs-number">7</span> };
            List&lt;int&gt; source2 = <span class="hljs-keyword">new</span> List&lt;int&gt;() { <span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>, <span class="hljs-number">4</span>, <span class="hljs-number">5</span>, <span class="hljs-number">6</span>, <span class="hljs-number">7</span>, <span class="hljs-number">8</span>, <span class="hljs-number">9</span> };
            <span class="hljs-keyword">var</span> query = <span class="hljs-keyword">from</span> x <span class="hljs-keyword">in</span> source2
                        join y <span class="hljs-keyword">in</span> source1
                        on x.ToString() equals y.ToString()
                        where x&gt;<span class="hljs-number">2</span>
                        select x;
            <span class="hljs-keyword">var</span> result = query.ToList();  </code></pre></li></ul><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="java hljs" codemark="1">
            List&lt;Pet&gt; pets = <span class="hljs-keyword">new</span> List&lt;Pet&gt;{
                <span class="hljs-keyword">new</span> Pet { Name=<span class="hljs-string">"Barley"</span>, Age=<span class="hljs-number">8</span> },
                <span class="hljs-keyword">new</span> Pet { Name=<span class="hljs-string">"Boots"</span>, Age=<span class="hljs-number">4</span> },
                <span class="hljs-keyword">new</span> Pet { Name=<span class="hljs-string">"Whiskers"</span>, Age=<span class="hljs-number">1</span> }
            };

            List&lt;Pet2&gt; pets2 = <span class="hljs-keyword">new</span> List&lt;Pet2&gt;{
                <span class="hljs-keyword">new</span> Pet2 { Name=<span class="hljs-string">"Barley"</span>, Sex = <span class="hljs-string">"男"</span> },
                <span class="hljs-keyword">new</span> Pet2 { Name=<span class="hljs-string">"Boots"</span>, Sex = <span class="hljs-string">"男"</span>},
            };

            <span class="hljs-comment">//查询表达式(Linq)</span>
            var students1 = from t in pets
                            where t.Name == <span class="hljs-string">"Boots"</span>
                            select <span class="hljs-keyword">new</span> { t.Name, t.Age };
            <span class="hljs-comment">//点标记(Lambda)</span>
            var students2 = pets
                            .Where(t =&gt; t.Name == <span class="hljs-string">"Boots"</span>)
                            .Select(t =&gt; <span class="hljs-keyword">new</span> { t.Name, t.Age });

            var list = <span class="hljs-keyword">new</span> List&lt;string&gt;() { <span class="hljs-string">"张三1"</span>, <span class="hljs-string">"张三2"</span>, <span class="hljs-string">"张三3"</span>, <span class="hljs-string">"张三0"</span>, <span class="hljs-string">"李四9"</span>, <span class="hljs-string">"张三3"</span>, <span class="hljs-string">"李四"</span>, <span class="hljs-string">"张三2"</span>, <span class="hljs-string">"李四"</span> };

            var students3 = list
                         .Where((item, index) =&gt; item.Contains(<span class="hljs-string">"张三"</span>))
                         .Select((item, index) =&gt; <span class="hljs-keyword">new</span> { item, index })
                         .Reverse()<span class="hljs-comment">//反序</span>
                         .ToList();</code></pre><p><br></p><p align="center" style="text-align: center;"><img src="http://blog.azlinli.com/upload/image/20180713/20180713162407_0698.png" alt="" class=""></p><p align="center" style="text-align: center;"><img src="http://blog.azlinli.com/upload/image/20180713/20180713162431_7123.png" alt="" class=""></p><p><br></p><p><br></p><p><br></p><pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-number">1.</span>简单的linq语法
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = <span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme select r;
<span class="hljs-comment">//2</span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme;
<span class="hljs-comment">//3</span>
string sssql = <span class="hljs-string">"select * from Am_recProScheme"</span>;
<span class="hljs-number">2.</span>带where的查询
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = <span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme where r.rpId &gt; <span class="hljs-number">10</span> select r;
<span class="hljs-comment">//2</span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.Where(p =&gt; p.rpId &gt; <span class="hljs-number">10</span>);
<span class="hljs-comment">//3</span>
string sssql = <span class="hljs-string">"select * from Am_recProScheme where rpid&gt;10"</span>;
<span class="hljs-number">3.</span>简单的函数计算（count，min，max，sum）
<span class="hljs-comment">//1</span>
<span class="hljs-comment">////获取最大的rpId</span>
<span class="hljs-comment">//var ss = (from r in db.Am_recProScheme select r).Max(p =&gt; p.rpId);</span>
<span class="hljs-comment">////获取最小的rpId</span>
<span class="hljs-comment">//var ss = (from r in db.Am_recProScheme select r).Min(p =&gt; p.rpId);</span>
<span class="hljs-comment">//获取结果集的总数</span>
<span class="hljs-comment">//var ss = (from r in db.Am_recProScheme select r).Count();</span>
<span class="hljs-comment">//获取rpId的和</span>
<span class="hljs-keyword">var</span> ss = (<span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme select r).Sum(p =&gt; p.rpId);
 
<span class="hljs-comment">//2</span>
<span class="hljs-comment">//var ss1 = db.Am_recProScheme.Max(p=&gt;p.rpId);</span>
<span class="hljs-comment">//var ss1 = db.Am_recProScheme.Min(p =&gt; p.rpId);</span>
<span class="hljs-comment">//var ss1 = db.Am_recProScheme.Count() ;</span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.Sum(p =&gt; p.rpId); 
Response.Write(ss);
 
<span class="hljs-comment">//3</span>
string sssql = <span class="hljs-string">"select max(rpId) from Am_recProScheme"</span>;
sssql = <span class="hljs-string">"select min(rpId) from Am_recProScheme"</span>;
sssql = <span class="hljs-string">"select count(1) from Am_recProScheme"</span>;
sssql = <span class="hljs-string">"select sum(rpId) from Am_recProScheme"</span>;
<span class="hljs-number">4.</span>排序order by desc/asc
<span class="hljs-keyword">var</span> ss = <span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme where r.rpId &gt; <span class="hljs-number">10</span>
         orderby r.rpId descending  <span class="hljs-comment">//倒序</span>
         <span class="hljs-comment">// orderby r.rpId ascending   //正序</span>
         select r;
 
<span class="hljs-comment">//正序</span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.OrderBy(p =&gt; p.rpId).Where(p =&gt; p.rpId &gt; <span class="hljs-number">10</span>).ToList();
<span class="hljs-comment">//倒序</span>
<span class="hljs-keyword">var</span> ss2 = db.Am_recProScheme.OrderByDescending(p =&gt; p.rpId).Where(p =&gt; p.rpId &gt; <span class="hljs-number">10</span>).ToList();
 
string sssql = <span class="hljs-string">"select * from Am_recProScheme where rpid&gt;10 order by rpId [desc|asc]"</span>;
<span class="hljs-number">5.</span>top(<span class="hljs-number">1</span>)
<span class="hljs-comment">//如果取最后一个可以按倒叙排列再取值</span>
<span class="hljs-keyword">var</span> ss = (<span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme select r).FirstOrDefault();
 
<span class="hljs-comment">//（）linq to ef 好像不支持 Last() </span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.FirstOrDefault();
<span class="hljs-comment">//var ss1 = db.Am_recProScheme.First();          </span>
 
string sssql = <span class="hljs-string">"select top(1) * from Am_recProScheme"</span>;
<span class="hljs-number">6.</span>跳过前面多少条数据取余下的数据
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = (<span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme
          orderby r.rpId descending
          select r).Skip(<span class="hljs-number">10</span>); <span class="hljs-comment">//跳过前10条数据，取10条之后的所有数据   </span>
<span class="hljs-comment">//2  </span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.OrderByDescending(p =&gt; p.rpId).Skip(<span class="hljs-number">10</span>).ToList();
<span class="hljs-comment">//3</span>
string sssql = <span class="hljs-string">"select * from  (select ROW_NUMBER()over(order by rpId desc) as rowNum, * from [Am_recProScheme]) as t where rowNum&gt;10"</span>;
<span class="hljs-number">7.</span>分页数据查询
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = (<span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme
          where r.rpId &gt; <span class="hljs-number">10</span>
          orderby r.rpId descending
          select r).Skip(<span class="hljs-number">10</span>).Take(<span class="hljs-number">10</span>); <span class="hljs-comment">//取第11条到第20条数据                   </span>
 
<span class="hljs-comment">//2 Take(10): 数据从开始获取，获取指定数量（10）的连续数据</span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.OrderByDescending(p =&gt; p.rpId).Where(p =&gt; p.rpId &gt; <span class="hljs-number">10</span>).Skip(<span class="hljs-number">10</span>).Take(<span class="hljs-number">10</span>).ToList();
<span class="hljs-comment">//3</span>
string sssql = <span class="hljs-string">"select * from  (select ROW_NUMBER()over(order by rpId desc) as rowNum, * from [Am_recProScheme]) as t where rowNum&gt;10 and rowNum&lt;=20"</span>;
<span class="hljs-number">8.</span>包含，类似like <span class="hljs-string">''%%''</span>
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = <span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme
         where r.SortsText.Contains(<span class="hljs-string">"张"</span>)
         select r;
<span class="hljs-comment">//2</span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.Where(p =&gt; p.SortsText.Contains(<span class="hljs-string">"张"</span>)).ToList();
<span class="hljs-comment">//3</span>
string sssql = <span class="hljs-string">"select * from Am_recProScheme where SortsText like ''%张%''"</span>;
<span class="hljs-number">9.</span>分组group by
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = <span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme
         orderby r.rpId descending
         group r by r.recType into n
         select <span class="hljs-keyword">new</span>
         {
             n.Key,  <span class="hljs-comment">//这个Key是recType</span>
             rpId = n.Sum(r =&gt; r.rpId), <span class="hljs-comment">//组内rpId之和</span>
             MaxRpId = n.Max(r =&gt; r.rpId),<span class="hljs-comment">//组内最大rpId</span>
             MinRpId = n.Min(r =&gt; r.rpId), <span class="hljs-comment">//组内最小rpId</span>
         };
foreach (<span class="hljs-keyword">var</span> t <span class="hljs-keyword">in</span> ss)
{
    Response.Write(t.Key + <span class="hljs-string">"--"</span> + t.rpId + <span class="hljs-string">"--"</span> + t.MaxRpId + <span class="hljs-string">"--"</span> + t.MinRpId);
}
<span class="hljs-comment">//2</span>
<span class="hljs-keyword">var</span> ss1 = <span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme
          orderby r.rpId descending
          group r by r.recType into n
          select n;
foreach (<span class="hljs-keyword">var</span> t <span class="hljs-keyword">in</span> ss1)
{
    Response.Write(t.Key + <span class="hljs-string">"--"</span> + t.Min(p =&gt; p.rpId));
}
<span class="hljs-comment">//3</span>
<span class="hljs-keyword">var</span> ss2 = db.Am_recProScheme.GroupBy(p =&gt; p.recType);
foreach (<span class="hljs-keyword">var</span> t <span class="hljs-keyword">in</span> ss2)
{
    Response.Write(t.Key + <span class="hljs-string">"--"</span> + t.Min(p =&gt; p.rpId));
}
<span class="hljs-comment">//4</span>
string sssql = <span class="hljs-string">"select recType,min(rpId),max(rpId),sum(rpId) from Am_recProScheme group by recType"</span>;
<span class="hljs-number">10.</span>连接查询
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = <span class="hljs-keyword">from</span> r <span class="hljs-keyword">in</span> db.Am_recProScheme
         join w <span class="hljs-keyword">in</span> db.Am_Test_Result on r.rpId equals w.rsId
         orderby r.rpId descending
         select r;
<span class="hljs-comment">//2</span>
<span class="hljs-keyword">var</span> ss1 = db.Am_recProScheme.Join(db.Am_Test_Result, p =&gt; p.rpId, r =&gt; r.rsId, (p, r) =&gt; p).OrderByDescending(p =&gt; p.rpId).ToList();
<span class="hljs-comment">//3</span>
string sssql = <span class="hljs-string">"select r.* from  [Am_recProScheme] as r inner join [dbo].[Am_Test_Result] as t on r.[rpId] = t.[rsId] order by r.[rpId] desc"</span>;
<span class="hljs-number">11.</span>sql中的In
<span class="hljs-comment">//1</span>
<span class="hljs-keyword">var</span> ss = <span class="hljs-keyword">from</span> p <span class="hljs-keyword">in</span> db.Am_recProScheme
         where (<span class="hljs-keyword">new</span> int?[] { <span class="hljs-number">24</span>, <span class="hljs-number">25</span>,<span class="hljs-number">26</span> }).Contains(p.rpId)
         select p;
foreach (<span class="hljs-keyword">var</span> p <span class="hljs-keyword">in</span> ss)
{
    Response.Write(p.Sorts);
}
<span class="hljs-comment">//2</span>
string st = <span class="hljs-string">"select * from Am_recProScheme where rpId in(24,25,26)"</span></code></pre><p><br></p>', N'如题', NULL, 0, 14, 0, 0, CAST(N'2018-07-13T15:54:26.647' AS DateTime), CAST(N'2018-07-13T15:54:26.647' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (16, 6, NULL, N'第三回 手写js（一） —— 全选删除', N'<pre style="max-width:100%;overflow-x:auto;"><code class="html hljs xml" codemark="1"><span class="hljs-tag">&lt;<span class="hljs-name">style</span>&gt;</span><span class="css">
<span class="hljs-selector-tag">td</span> {
    <span class="hljs-attribute">border-right</span>: <span class="hljs-number">1px</span> dashed;
    <span class="hljs-attribute">border-bottom</span>: <span class="hljs-number">1px</span> dashed;
}
</span><span class="hljs-tag">&lt;/<span class="hljs-name">style</span>&gt;</span>

<span class="hljs-tag">&lt;<span class="hljs-name">div</span>&gt;</span>
	<span class="hljs-tag">&lt;<span class="hljs-name">table</span>&gt;</span>
	<span class="hljs-tag">&lt;<span class="hljs-name">thead</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"allCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"allCheck();"</span> /&gt;</span>全选   <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"allFanCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"allFanCheck();"</span> /&gt;</span>反选<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>姓名<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>年龄<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
	<span class="hljs-tag">&lt;/<span class="hljs-name">thead</span>&gt;</span>
	<span class="hljs-tag">&lt;<span class="hljs-name">tbody</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>张三<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>18<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span>  <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>李四<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>16<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span>  <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>王五<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>23<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
		<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
			<span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"itemCheck"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"itemClick();"</span>  <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> /&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>小熊猫<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">td</span>&gt;</span>24<span class="hljs-tag">&lt;/<span class="hljs-name">td</span>&gt;</span>
		<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
	<span class="hljs-tag">&lt;/<span class="hljs-name">tbody</span>&gt;</span>
<span class="hljs-tag">&lt;/<span class="hljs-name">table</span>&gt;</span>

<span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>
<span class="hljs-tag">&lt;<span class="hljs-name">script</span>&gt;</span><span class="javascript">
<span class="hljs-keyword">var</span> allCheckbox=<span class="hljs-built_in">document</span>.getElementsByName(<span class="hljs-string">"allCheck"</span>);
<span class="hljs-keyword">var</span> allFanCheckbox=<span class="hljs-built_in">document</span>.getElementsByName(<span class="hljs-string">"allFanCheck"</span>);
<span class="hljs-keyword">var</span> itemCheckboxList=<span class="hljs-built_in">document</span>.getElementsByName(<span class="hljs-string">"itemCheck"</span>);

<span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">allCheck</span>(<span class="hljs-params"></span>)</span>{
	<span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> i=<span class="hljs-number">0</span>;i&lt;itemCheckboxList.length;i++){
		itemCheckboxList[i].checked=allCheckbox[<span class="hljs-number">0</span>].checked;
	}
}
<span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">itemClick</span>(<span class="hljs-params"></span>)</span>{
	allCheckbox[<span class="hljs-number">0</span>].checked=<span class="hljs-literal">true</span>;
	<span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> i=<span class="hljs-number">0</span>;i&lt;itemCheckboxList.length;i++){
		allCheckbox[<span class="hljs-number">0</span>].checked &amp;=itemCheckboxList[i].checked;
	}
}

<span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">allFanCheck</span>(<span class="hljs-params"></span>)</span>{
	allCheckbox[<span class="hljs-number">0</span>].checked=<span class="hljs-literal">true</span>;
	<span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> i=<span class="hljs-number">0</span>;i&lt;itemCheckboxList.length;i++){
		itemCheckboxList[i].checked=!itemCheckboxList[i].checked;
		allCheckbox[<span class="hljs-number">0</span>].checked &amp;=itemCheckboxList[i].checked;
	}
}
</span><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span></code></pre><p><br></p>', N'日常', NULL, 0, 8, 0, 0, CAST(N'2018-07-15T17:03:04.003' AS DateTime), CAST(N'2018-07-15T17:03:03.987' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (17, 6, NULL, N'第三回 手写js（二） —— 轮播图', N'<pre style="max-width:100%;overflow-x:auto;"><code class="javascript hljs" codemark="1"><span class="hljs-keyword">var</span> QQ = <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{

    <span class="hljs-comment">// 公用函数</span>

    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">T$</span>(<span class="hljs-params">id</span>) </span>{ <span class="hljs-keyword">return</span> <span class="hljs-built_in">document</span>.getElementById(id); }

    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">T$</span>(<span class="hljs-params">root, tag</span>) </span>{ <span class="hljs-keyword">return</span> (root || <span class="hljs-built_in">document</span>).getElementsByTagName(tag); }

    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">$extend</span>(<span class="hljs-params">des, src</span>) </span>{ <span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> p <span class="hljs-keyword">in</span> src) { des[p] = src[p]; } <span class="hljs-keyword">return</span> des; }

    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">$each</span>(<span class="hljs-params">arr, callback, thisp</span>) </span>{

        <span class="hljs-keyword">if</span> (arr.forEach) {arr.forEach(callback, thisp);} 

        <span class="hljs-keyword">else</span> { <span class="hljs-keyword">for</span> (<span class="hljs-keyword">var</span> i = <span class="hljs-number">0</span>, len = arr.length; i &lt; len; i++) callback.call(thisp, arr[i], i, arr);}

    }

    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">currentStyle</span>(<span class="hljs-params">elem, style</span>) </span>{

        <span class="hljs-keyword">return</span> elem.currentStyle || <span class="hljs-built_in">document</span>.defaultView.getComputedStyle(elem, <span class="hljs-literal">null</span>);

    }

    <span class="hljs-comment">// 缓动类</span>

    <span class="hljs-keyword">var</span> Tween = {

        Quart: {

            easeOut: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">t,b,c,d</span>)</span>{

                <span class="hljs-keyword">return</span> -c * ((t=t/d<span class="hljs-number">-1</span>)*t*t*t - <span class="hljs-number">1</span>) + b;

            }

        },

        Back: {

            easeOut: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">t,b,c,d,s</span>)</span>{

                <span class="hljs-keyword">if</span> (s == <span class="hljs-literal">undefined</span>) s = <span class="hljs-number">1.70158</span>;

                <span class="hljs-keyword">return</span> c*((t=t/d<span class="hljs-number">-1</span>)*t*((s+<span class="hljs-number">1</span>)*t + s) + <span class="hljs-number">1</span>) + b;

            }

        },

        Bounce: {

            easeOut: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">t,b,c,d</span>)</span>{

                <span class="hljs-keyword">if</span> ((t/=d) &lt; (<span class="hljs-number">1</span>/<span class="hljs-number">2.75</span>)) {

                    <span class="hljs-keyword">return</span> c*(<span class="hljs-number">7.5625</span>*t*t) + b;

                } <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span> (t &lt; (<span class="hljs-number">2</span>/<span class="hljs-number">2.75</span>)) {

                    <span class="hljs-keyword">return</span> c*(<span class="hljs-number">7.5625</span>*(t-=(<span class="hljs-number">1.5</span>/<span class="hljs-number">2.75</span>))*t + <span class="hljs-number">.75</span>) + b;

                } <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span> (t &lt; (<span class="hljs-number">2.5</span>/<span class="hljs-number">2.75</span>)) {

                    <span class="hljs-keyword">return</span> c*(<span class="hljs-number">7.5625</span>*(t-=(<span class="hljs-number">2.25</span>/<span class="hljs-number">2.75</span>))*t + <span class="hljs-number">.9375</span>) + b;

                } <span class="hljs-keyword">else</span> {

                    <span class="hljs-keyword">return</span> c*(<span class="hljs-number">7.5625</span>*(t-=(<span class="hljs-number">2.625</span>/<span class="hljs-number">2.75</span>))*t + <span class="hljs-number">.984375</span>) + b;

                }

            }

        }

    }



    <span class="hljs-comment">// 主类构造函数</span>

    <span class="hljs-keyword">var</span> scrollTrans = <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">cid, sid, count, config</span>) </span>{

        <span class="hljs-keyword">var</span> self = <span class="hljs-keyword">this</span>;

        <span class="hljs-keyword">if</span> (!(self <span class="hljs-keyword">instanceof</span> scrollTrans)) {

            <span class="hljs-keyword">return</span> <span class="hljs-keyword">new</span> scrollTrans(cid, sid, count, config);

        } 

        self.container = T$(cid);

        self.scroller = T$(sid);

        <span class="hljs-keyword">if</span> (!(self.container || self.scroller)) { 

            <span class="hljs-keyword">return</span>;

        } 

        self.config = $extend(defaultConfig, config || {});

        self.index = <span class="hljs-number">0</span>;

        self.timer = <span class="hljs-literal">null</span>;

        self.count = count;

        self.step = self.scroller.offsetWidth / count;

    };

    

    <span class="hljs-comment">// 默认配置</span>

    <span class="hljs-keyword">var</span> defaultConfig = {

        trigger: <span class="hljs-number">1</span>, <span class="hljs-comment">// 触发方式1:click other: mouseover</span>

        auto: <span class="hljs-literal">true</span>, <span class="hljs-comment">// 是否自动切换</span>

        tween: Tween.Quart.easeOut, <span class="hljs-comment">// 默认缓动类</span>

        Time: <span class="hljs-number">10</span>, <span class="hljs-comment">// 滑动延时</span>

        duration: <span class="hljs-number">50</span>,    <span class="hljs-comment">// 切换时间</span>

        pause: <span class="hljs-number">3000</span>, <span class="hljs-comment">// 停顿时间</span>

        start: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{}, <span class="hljs-comment">// 切换开始执行函数</span>

        end: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{} <span class="hljs-comment">// 切换结束执行函数</span>

    };



    scrollTrans.prototype = {

        <span class="hljs-keyword">constructor</span>: scrollTrans,

        transform: function(index) {

            <span class="hljs-keyword">var</span> self = <span class="hljs-keyword">this</span>;

            index == <span class="hljs-literal">undefined</span> &amp;&amp; (index = self.index);

            index &lt; <span class="hljs-number">0</span> &amp;&amp; (index = self.count - <span class="hljs-number">1</span>) || index &gt;= self.count &amp;&amp; (index = <span class="hljs-number">0</span>);            

            self.time = <span class="hljs-number">0</span>;

            self.target = -<span class="hljs-built_in">Math</span>.abs(self.step) * (self.index = index);

            self.begin = <span class="hljs-built_in">parseInt</span>(currentStyle(self.scroller)[<span class="hljs-string">''left''</span>]);

            self.change = self.target - self.begin;

            self.duration = self.config.duration;

            self.start();

            self.run();

        },



        run: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{

            <span class="hljs-keyword">var</span> self = <span class="hljs-keyword">this</span>;

            clearTimeout(self.timer);

            <span class="hljs-keyword">if</span> (self.change &amp;&amp; self.time &lt; self.duration) {

                self.moveTo(<span class="hljs-built_in">Math</span>.round(self.config.tween(self.time++, self.begin, self.change, self.duration)));

                self.timer = setTimeout(<span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{self.run()}, self.config.Time);

            } <span class="hljs-keyword">else</span> {

                self.moveTo(self.target);

                self.config.auto &amp;&amp; (self.timer = setTimeout(<span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{self.next()}, self.config.pause));

            }

        },



        moveTo: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">i</span>) </span>{

            <span class="hljs-keyword">this</span>.scroller.style.left = i + <span class="hljs-string">''px''</span>;

        },



        next: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{

            <span class="hljs-keyword">this</span>.transform(++<span class="hljs-keyword">this</span>.index);

        }

    };



    <span class="hljs-keyword">return</span> {

        scroll: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">cid, sid, count, config</span>) </span>{

                <span class="hljs-built_in">window</span>.onload = <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{

                    <span class="hljs-keyword">var</span> frag = <span class="hljs-built_in">document</span>.createDocumentFragment(),

                        nums = [];

                    <span class="hljs-keyword">for</span> (<span class="hljs-keyword">var</span> i = <span class="hljs-number">0</span>; i &lt; count; i++) {

                        <span class="hljs-keyword">var</span> li = <span class="hljs-built_in">document</span>.createElement(<span class="hljs-string">''li''</span>);

                        (nums[i] = frag.appendChild(<span class="hljs-built_in">document</span>.createElement(<span class="hljs-string">''li''</span>))).innerHTML = i + <span class="hljs-number">1</span>;

                    }

                    T$(<span class="hljs-string">''c_page''</span>).appendChild(frag);



                    <span class="hljs-comment">// 调用主类</span>

                    <span class="hljs-keyword">var</span> st = scrollTrans(cid, sid, count, config);

                    $each(nums, <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">o, i</span>) </span>{

                        o[st.config.trigger == <span class="hljs-number">1</span> ? <span class="hljs-string">''onclick''</span> : <span class="hljs-string">''onmouseover''</span>] = <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{ o.className = <span class="hljs-string">''on''</span>; st.transform(i); }

                        o.onmouseout = <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{ o.className = <span class="hljs-string">''''</span>; st.transform();}

                    });

                    st.start = <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>) </span>{

                        $each(nums, <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">o, i</span>) </span>{

                            o.className = st.index == i ? <span class="hljs-string">''on''</span> : <span class="hljs-string">''''</span>;

                        });    

                    };

                    st.transform();

                }

        }

    }

}();

    

QQ.scroll(<span class="hljs-string">''c_container''</span> <span class="hljs-comment">/*外部容器ID*/</span>, <span class="hljs-string">''scroller''</span><span class="hljs-comment">/*滑动容器ID*/</span>, <span class="hljs-number">5</span><span class="hljs-comment">/*切换图片数目*/</span>, {trigger: <span class="hljs-number">0</span>} <span class="hljs-comment">/*默认配置*/</span>);</code></pre><p><br></p><p>引用地址：<a href="http://www.cnblogs.com/bluedream2009/archive/2010/07/03/1770578.html" target="_blank" style="background-color: rgb(255, 255, 255);">http://www.cnblogs.com/bluedream2009/archive/2010/07/03/1770578.html</a></p><p>这位大神之作，给他打广告，侵删</p><p><br></p>', N'日常', NULL, 0, 3, 0, 0, CAST(N'2018-07-15T17:07:42.737' AS DateTime), CAST(N'2018-07-15T17:07:42.737' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (18, 6, NULL, N'第四回 常见C#面试题（一）', N'<p>1.<span style="color: inherit;">值类型和引用类型的区别？写出C#的样例代码。</span></p><blockquote><p>答：基于值类型的变量直接包含值。将一个值类型变量赋给另一个值类型变量时，将复制包含的值。这与引用类型变量的赋值不同，引用类型变量的赋值只复制对对象的引用，而不复制对象本身。</p></blockquote><p>所有的值类型均隐式派生自 System.ValueType。</p><p>与引用类型不同，从值类型不可能派生出新的类型。但与引用类型相同的是，结构也可以实现接口。</p><p>与引用类型不同，值类型不可能包含 null 值。然而，可空类型功能允许将 null 赋给值类型。<span style="color: inherit;">&nbsp;</span></p><p>每种值类型均有一个隐式的默认构造函数来初始化该类型的默认值。</p><p>值类型主要由两类组成：结构、枚举</p><p>结构分为以下几类：Numeric（数值）类型、整型、浮点型、decimal、bool、用户定义的结构。</p><blockquote><p>引用类型的变量又称为对象，可存储对实际数据的引用。声明引用类型的关键字：class、interface、delegate、内置引用类型： object、strin</p></blockquote><p><br></p><p><br></p><p>2.<span style="color: inherit;">C#中的接口和类有什么异同。</span></p><p>答：</p><p>异：</p><p>不能直接实例化接口。</p><p>接口不包含方法的实现。</p><p>接口、类和结构可从多个接口继承。但是C# 只支持单继承：类只能从一个基类继承实现。</p><p>类定义可在不同的源文件之间进行拆分。</p><p>同：</p><p>接口、类和结构可从多个接口继承。</p><p>接口类似于抽象基类：继承接口的任何非抽象类型都必须实现接口的所有成员。</p><p>接口可以包含事件、索引器、方法和属性。<span style="color: inherit;">&nbsp;</span><span style="color: inherit;">一个类可以实现多个接口。</span></p>', N'日常', NULL, 0, 10, 0, 0, CAST(N'2018-07-15T17:32:10.017' AS DateTime), CAST(N'2018-07-15T17:32:10.017' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (19, 7, NULL, N'第一篇  《四世同堂》', N'<blockquote><p>第七回：一个被捉进笼子的小鸟，尽管立志不再啼唱，又有什么用呢？他有点儿头疼。</p></blockquote><blockquote><p>第九回：...每逢她给客人拿出咖啡或果酱的时候，她必要再三的说明：“这是由英国府拿出来的！”“英国府”三个字仿佛粘在了她的口中，像口香糖似的那么甜美。</p></blockquote><blockquote><p>第十一回：...瑞宣也很兴奋，可是还保持着安详，不愿因兴奋而卤莽，因卤莽而败事。慢条斯理，他说......</p></blockquote><blockquote><p>第十三回：...可是，凭着他的北平小贩应有的修养，他把失望都严严的封在心里，不准走漏出半点味儿来......</p></blockquote><blockquote><p>第十四回：...他想说两句有止恸(tong)收泪的作用的话，可是说不出来；一个亡了国的人去安慰另一个亡了国的人，等于屠场中的两头牛相对哀鸣......</p></blockquote><p><br></p>', N'老舍', NULL, 0, 13, 0, 0, CAST(N'2018-07-17T11:27:26.437' AS DateTime), CAST(N'2018-07-17T11:27:26.420' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (20, 7, NULL, N'第二篇 《围城》', N'<blockquote><p>第一回：...忠厚老实人的恶毒，像饭里的砂砾或者出骨鱼片里未净的刺，会给人一种不期待的伤痛......</p></blockquote><blockquote><p>第一回：...忠厚老实人的恶毒，像饭里的砂砾或者出骨鱼片里未净的刺，会给人一种不期待的伤痛......</p></blockquote><blockquote><p>第一回：...忠厚老实人的恶毒，像饭里的砂砾或者出骨鱼片里未净的刺，会给人一种不期待的伤痛......</p></blockquote><p><br></p>', N'外边的人想进来，里边的人要出去', NULL, 0, 5, 0, 0, CAST(N'2018-07-22T12:31:07.243' AS DateTime), CAST(N'2018-07-22T12:31:07.243' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (21, 8, NULL, N'Brodway HD百老汇高清戏剧影像—《乐在当下》', N'<p>剧名：《乐在当下》Present Laughter</p><p>类型：舞台剧，NTLive高清戏剧影像</p><p>日期：2018年8月4日</p><p>地点：北京国图剧场</p><p><br></p><p>以下是戏剧小白给自己的科普~</p><p><br></p><h2>剧目介绍</h2><p>曾经两度获得托尼奖的<b>凯文·克莱恩（Kevin&nbsp;Kline）</b>十余年后重返百老汇舞台，挑战的正是英国传奇剧作家<b>诺埃尔·考沃德（Noël&nbsp;Coward）</b>爵士的经典喜剧《乐在当下》（Present&nbsp;Laughter）！
</p><p>&nbsp;
</p><p>这部被视为考沃德半自传式的作品，讲述了一个陷入中年危机的自恋演员盖瑞·艾森戴（Garry&nbsp;Essendine）在开始一段非洲之旅前，不得不试图甩掉一个疯狂的剧作家、一些想要引诱他的女人和长期伴随他左右的秘书和伴侣。考沃德在1942年的首演版和1958年的百老汇复排版中都亲自上阵，身兼导演和主演。作为一个经典角色，此后有彼得·奥图尔爵士、伊恩·麦克莱恩爵士等戏骨演员先后出演，在纽约、伦敦及世界各地常演不衰。
</p><p>&nbsp;
</p><p>此次百老汇复排由托尼奖提名导演Moritz&nbsp;von&nbsp;Stuelpnagel执导，在百老汇圣詹姆斯剧院连续演出101场，凭借《万尼亚和索尼亚和马莎和斯派克》（Vanya&nbsp;and&nbsp;Sonia&nbsp;and&nbsp;Masha&nbsp;and&nbsp;Spike）获得托尼奖提名的克莉丝汀·尼森（Kristine&nbsp;Niesen）、以及主演过《老爸老妈浪漫史》、《复仇者联盟》的寇碧·史莫德斯（Cobie&nbsp;Smulders）纷纷加盟，而暌违百老汇十年之久的克莱恩也不负这个伟大角色，凭此摘得个人第三座托尼奖杯，《纽约邮报》称赞克莱恩的表现“臻于完美”，《纽约时报》惊呼“它应该获得托尼奖最佳复排话剧”，Time&nbsp;Out纽约版也称赞本戏是&nbsp;“对诺埃尔·考沃德的作品一次绝对精彩的复排。”</p><p style="text-align: right; ">—— <a href="http://www.gtyszx.com/ticket/385" target="_blank">国图艺术中心</a></p><p><br></p><h2>什么是 NT Live？</h2><p>全称：<a href="http://ntlive.nationaltheatre.org.uk/" target="_blank">National Theatre Live</a>，<span style="color: inherit;">由英国国家剧院现场摄制并直播的“高清戏剧影像”。</span></p><p><span style="color: inherit;">就像直播运动会或是演唱会一般，多个机位+现场导播给屏幕前的观众们最直观的体验。2009年由海伦·米伦（Helen&nbsp;Mirren）主演的《费德尔》（Phèdre）是NTLive的第一位成员。在这部戏在剧院上演之时，英国各地228家影院也同时坐着将近5万观众，看到了这部戏的现场同步直播。</span></p><p style="text-align: right; ">—— <a href="https://www.zhihu.com/question/42004712/answer/109713735" target="_blank">知乎</a></p><p><br></p><p>观看体验：褒贬不一，有人认为是单纯的作为电影、录像看，无法替代现场观剧带来的乐趣与感受；另一种观点，演出水准比较高、就是为了看名人演出，毕竟飞到当地看、和团队来国内演出的机会都很少；高清戏剧影像作为入门、推广还是不错的。</p><p><br></p><p>除了英国的 NT Live，还有这些：</p><p>RSC&nbsp;Live&nbsp;皇家莎士比亚剧院现场
</p><p>Live&nbsp;from&nbsp;Stratford-upon-Avon&nbsp;埃文河畔斯特拉福德的莎剧现场
</p><p>Almeida&nbsp;Theatre&nbsp;Live&nbsp;阿尔梅达剧院现场
</p><p>Branagh&nbsp;TheatreLive&nbsp;布拉纳剧团现场
</p><p>BroadwayHD&nbsp;百老汇高清
</p><p>StageRussia&nbsp;HD&nbsp;俄罗斯高清舞台影像</p><p><br></p><h2>托尼奖是？</h2><p>托尼奖全称为安东尼特·佩瑞奖，是由美国戏剧协会为纪念该协会创始人之一的安东尼特·佩瑞女士而设立的。托尼奖设立于1947年4月6日，被视为美国话剧和音乐剧的最高奖，常设奖项24个，每年六月举行颁奖仪式，通过哥伦比亚广播公司播出。</p><p><br></p><p>部分涉及获奖的剧目：</p><p>《制作人》(The Producers)</p><p>《乌托邦海岸》(The&nbsp;Coast&nbsp;of&nbsp;Utopia)</p><p>《狮子王》(The&nbsp;Lion&nbsp;King)</p><p style="text-align: right; ">—— <a href="https://baike.baidu.com/item/%E6%89%98%E5%B0%BC%E5%A5%96/1397196" target="_blank">百度百科</a></p><p><br></p><h2><b>凯文·克莱恩（Kevin&nbsp;Kline）</b></h2><p><b><br></b></p><p><b><br></b></p><h2><b>诺埃尔·考沃德（Noël&nbsp;Coward）</b></h2><p><br></p>', N'百老汇高清出品，三度托尼奖得主', NULL, 0, 21, 0, 0, CAST(N'2018-08-03T00:15:55.180' AS DateTime), CAST(N'2018-08-03T00:15:54.837' AS DateTime), 0, NULL)
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (22, 9, NULL, N'手写系列之 —— Vue', N'<p><img src="/upload/image/20180807/20180807161245_4261.png" alt=""><br></p><p><img src="/upload/image/20180807/20180807162322_7230.png" alt=""><br></p><p><br></p>', N'
            在JavaScript中，我们经常需要去循环迭代方法操作数组对象等，常见等循环方法有 `for`、`for in`、`for of`、`forEach`等。

          ', N'', 0, 8, 0, 0, CAST(N'2018-08-07T16:23:26.067' AS DateTime), CAST(N'2018-08-07T16:23:26.050' AS DateTime), 0, N'lao zhang')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (23, 9, NULL, N'Errors Fetch error: Inter Server Error /swagger/v1/swagger.json', N'
1、如果遇到问题，这样的：

![WeChat Screenshot_20190112131600.png](/images\0112131608WeChat Screenshot_20190112131600.png)

请在浏览器 =》 F12 ==》 console 控制台 ==》点击错误信息地址
![WeChat Screenshot_20190112131648.png](/images\0112131657WeChat Screenshot_20190112131648.png)

或者直接链接http://localhost:xxxxx/swagger/v1/swagger.json，就能看到错误了', NULL, N'tbug', 0, 2, 0, 0, CAST(N'2019-01-12T13:17:31.537' AS DateTime), CAST(N'2019-01-12T13:17:19.033' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (24, 9, NULL, N'An unhandled exception occurred while processing the request', N'![WeChat Screenshot_20190112135649.png](/images/0112135703WeChat Screenshot_20190112135649.png)

这是因为接口json文档定义和调用不是一个

1、定义：

ConfigureServices 方法中的  services.AddSwaggerGen 注册的一个名字 c.SwaggerDoc("v1", 

2、调用：

Configure 方法中的 app.UseSwaggerUI(c =>   调用  c.SwaggerEndpoint("/swagger/v1/swagger.js；

看看两者是否一致', N'UnknownSwaggerDocument：Unknown Swagger document - v1', N'tbug', 0, 2, 0, 0, CAST(N'2019-01-12T13:58:37.983' AS DateTime), CAST(N'2019-01-12T13:58:28.387' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (25, 9, NULL, N'为什么 post 数据，接口获取不到参数', N'问题同上
解决方法很简单：
只需要在接口参数位置，加上
> formbody
![WeChat Screenshot_20190112191431.png](/images\0112191741WeChat Screenshot_20190112191431.png)

|很帅|的|呀|
|-|-|-|
|content1|content2|content3|
', N'为什么 post 数据，接口获取不到参数', N'tbug', 0, 2, 0, 0, CAST(N'2019-01-12T19:18:19.043' AS DateTime), CAST(N'2019-01-12T19:18:07.727' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (26, 9, NULL, N'升级.net core 2.2 后，报错', N'## 解决
这个错误，是因为没有安装指定的运行时导致的，
去地址下载

[下载地址](https://www.microsoft.com/net/download/windows)

![WeChat Screenshot_20190112191959.png](/images\0112192255WeChat Screenshot_20190112191959.png)', N'HTTP 错误 500.21 - Internal Server Error 处理程序"aspNetCore"在其模块列表中有一个错误模块', N'tbug', 0, 2, 0, 0, CAST(N'2019-01-12T19:23:32.503' AS DateTime), CAST(N'2019-01-12T19:23:26.827' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (27, 10, NULL, N'vue 接口为什么获取不到数据', N'# 问题：
~~3我的vue和.net core 服务都开启了，并且swagger也能正常访问接口，也实现跨域了，但是vue就是访问不了接口，是为什么？~~

![微信截图_20190113225617.png](/images\0113230019微信截图_20190113225617.png)


![微信截图_20190113225637.png](/images\0113230026微信截图_20190113225637.png)

# 解决办法
> 请注意这是 https 协议，不是http', N'我的vue和.net core 服务都开启了，并且swagger也能正常访问接口，也实现跨域了，但是vue就是访问不了接口，是为什么？', N'tbug', 0, 0, 0, 0, CAST(N'2019-01-13T23:01:51.173' AS DateTime), CAST(N'2019-01-13T23:01:51.157' AS DateTime), 0, N'Laozhang（老张）')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (28, 9, N'/images\0115232026微信截图_20190115231957.jpg', N'如何默认首页就是swagger？', N'# 问题：
无法在服务器里设置默认首页为swagger首页？

# 解决：
> 需要配置 swagger 的 RoutePrefix 路由前缀
![WeChat Screenshot_20190114115544.png](/images\0114124317WeChat Screenshot_20190114115544.png)

![WeChat Screenshot_20190114115638.png](/images\0114124323WeChat Screenshot_20190114115638.png)
', N'我在本地可以在launchsettings.json里配置好了自动跳转swagger，但是放到服务器就不行了，为啥？', N'tbug', 0, 0, 0, 0, CAST(N'2019-01-14T12:43:42.230' AS DateTime), CAST(N'2019-01-14T12:43:27.353' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (29, 9, N'/images\0115221600timg.jpg', N'如何实现基于单独类的AOP编程？', N'# 解决方案：
这个很简单的，只需要这么写即可88
```c#
public class Love
    {
        // 一定要是虚方法
        public virtual string SayLoveU()
        {
            return "I ♥ U";
        }

    }

//---------------------------
////这个是在 serviceconfigure里配置
////只能注入该类中的虚方法
builder.RegisterAssemblyTypes(Assembly.GetAssembly(typeof(Love)))
    .EnableClassInterceptors()
    .InterceptedBy(typeof(BlogLogAOP));
```

![WeChat Screenshot_20190115115432.png](/images\0115115548WeChat Screenshot_20190115115432.png)

![WeChat Screenshot_20190115115351.png](/images\0115115601WeChat Screenshot_20190115115351.png)', N'现在有了基于接口dll的服务层注入，还有没有接口层的服务注入，那我要是想单独注入一个class类呢？', N'tbug', 0, 0, 0, 0, CAST(N'2019-01-15T11:56:07.357' AS DateTime), CAST(N'2019-01-15T11:56:07.327' AS DateTime), 0, N'哲学')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (30, 9, N'', N'CQRS跨域的时候，为什么POST请求，是两次？', N'1出于安全考虑，并不是所有域名访问后端服务都可以。其实在正式跨域之前，浏览器会根据需要发起一次预检（也就是option请求），用来让服务端返回允许的方法（如get、post），被跨域访问的Origin（来源或者域），还有是否需要Credentials(认证信息)等。那么浏览器在什么情况下能预检呢？

## 二、两种请求方式

> 浏览器将CORS请求分为两类：简单请求（simple request）和非简单请求（not-simple-request）,
简单请求浏览器不会预检，而非简单请求会预检。这两种方式怎么区分？


#### 同时满足下列三大条件，就属于简单请求，否则属于非简单请求

1.请求方式只能是：GET、POST、HEAD
2.HTTP请求头限制这几种字段：Accept、Accept-Language、Content-Language、Content-Type、Last-Event-ID
3.Content-type只能取：application/x-www-form-urlencoded、multipart/form-data、text/plain

#### 对于简单请求，浏览器直接请求，会在请求头信息中，增加一个origin字段，来说明本次请求来自哪个源（协议+域名+端口）。服务器根据这个值，来决定是否同意该请求，服务器返回的响应会多几个头信息字段，如图所示：上面的头信息中，三个与CORS请求相关，都是以Access-Control-开头。

1.Access-Control-Allow-Origin：该字段是必须的，* 表示接受任意域名的请求，还可以指定域名

2.Access-Control-Allow-Credentials：该字段可选，是个布尔值，表示是否可以携带cookie，（注意：如果Access-Control-Allow-Origin字段设置*，此字段设为true无效）

3.Access-Control-Allow-Headers：该字段可选，里面可以获取Cache-Control、Content-Type、Expires等，如果想要拿到其他字段，就可以在这个字段中指定。比如图中指定的GUAZISSO

![微信截图_20190115235742.png](/images\0115235801微信截图_20190115235742.png)
', N'用GET请求，每次都是一起就行了，但是post请求，需要两次，具体的内容，可以查看下边正文内容。', N'tbug', 0, 0, 0, 0, CAST(N'2019-01-15T23:58:12.717' AS DateTime), CAST(N'2019-01-15T23:58:12.717' AS DateTime), 0, N'哲丶学')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (31, 11, N'', N'【测试】DDD领域驱动设计知多少', N'这是一个测试帖子

首先要知道DDD是一种开发理念，核心是维护一个反应领域概念的模型（领域模型是软件最核心的部分，反应了软件的业务本质），然后通过大量模式来指导模型设计与开发。

DDD的一般过程是：首先通过软件需求规格说明书或原型生成一个领域模型（类、类的属性、类与类之间的关系）；然后根据模式（应该如何分层？、领域逻辑写在哪？与持久化如何交互？如何协调多对象领域逻辑？如何实现逻辑与数据存储解耦等）指导来实现代码模型。

DDD中最核心的是Domain Model（领域模型），和领域模型相对的是事务脚本。领域模型和事务脚本说到底就是面向对象和面向过程的区别。

|的d|听听|uu|
|-|-|-|
|content1|content2|content3|
', N'这个是为了测试登录使用', N'tbug', 1, 0, 0, 0, CAST(N'2019-01-16T16:55:26.400' AS DateTime), CAST(N'2019-01-16T16:55:26.337' AS DateTime), 0, N'admin')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (32, 13, N'/images\0117185602WeChat Screenshot_20190117185535.jpg', N'所有 Github 在线地址', N'Nuxt.tBug（nuxt+.netcore项目） ：

[https://github.com/anjoy8/Nuxt.tBug](https://github.com/anjoy8/Nuxt.tBug)

[http://123.206.33.109:7090](http://123.206.33.109:7090)
***


Blog.Core（.net core项目）:

[https://github.com/anjoy8/Blog.Core](https://github.com/anjoy8/Blog.Core)

[http://123.206.33.109:8081/](http://123.206.33.109:8081/)

***


Blog.Vue（vue+.netcore项目）:

[https://github.com/anjoy8/Blog.Vue](https://github.com/anjoy8/Blog.Vue)

[http://123.206.33.109:8077/](http://123.206.33.109:8077/)
', N'本项目中出现的bug的源代码，包含了NetCore、Vue、DDD等', N'tbug', 0, 0, 0, 0, CAST(N'2019-01-17T18:58:58.633' AS DateTime), CAST(N'2019-01-17T18:58:58.553' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (33, 9, N'', N'JWT这步时报了一个错误 JWT is not well formed: ''[PII is hidden]''', N'# 问题：
System.ArgumentException:“IDX12709: CanReadToken() returned false. JWT is not well formed: ''[PII is hidden]''.
The token needs to be in JWS or JWE Compact Serialization Format. (JWS): ''EncodedHeader.EndcodedPayload.EncodedSignature''. (JWE): ''EncodedProtectedHeader.EncodedEncryptedKey.EncodedInitializationVector.EncodedCiphertext.EncodedAuthenticationTag''.”

# 解决方案：
待定
[https://jwt.io/#debugger-io](https://jwt.io/#debugger-io)

你这个是JWT的格式错误：

1、在线检查是否格式正确：https://jwt.io/#debugger-io

2、你是不是没有配置密钥key？

 
3、检查下你的JWT的发行人（audience），生成和校验是否一致，
U mye have different audience on token generation and validation', N'CanReadToken() returned false. JWT is not well formed: ''[PII is hidden]''.', N'tbug', 0, 3, 0, 0, CAST(N'2019-01-20T20:02:58.840' AS DateTime), CAST(N'2019-01-20T20:02:58.807' AS DateTime), 0, N'admins')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (34, 10, N'', N'【未解决】新建vue-cli3.0的时候新建项目的时候，报错', N'# 问题：

```js

Module parse failed: Unexpected token (19:13)
You may need an appropriate loader to handle this file type.
|     // which is lazy-loaded when the route is visited.
|     component: function component() {
>       return import(
|       /* webpackChunkName: "about" */
|       ''./views/About.vue'');

 @ ./src/main.js 6:0-30 10:10-16
 @ multi (webpack)-dev-server/client?http://10.0.75.1:8080/sockjs-node (webpack)/hot/dev-server.js ./src/main.js


```

# 解决方案：', N'You may need an appropriate loader to handle this file type.', N'tbug', 1, 0, 0, 0, CAST(N'2019-01-21T17:50:43.723' AS DateTime), CAST(N'2019-01-21T17:50:43.677' AS DateTime), 0, N'admins')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (35, 9, N'', N'.net core 2.2 使用 FileInfo() 路径错误【2、log4.config无法生成错误日志】', N'问题同上
# 回答
可以在项目的 .csproj 文件中，去掉 InProcess 模块

![image.png](/images\0308143538image.png)



### 其他回答

最近把项目更新到了ASP.Net Core 2.2，发布之后发现在IIS下使用SQLite数据库不行了，报异常说不能打开数据库。"unable to open database file"，奇了个怪了。照理说这个不是权限就是路径错了，权限直接加了Everyone也无济于事，后来换成绝对路径就可以了，那说明确实是路径错了。

但是写的相对路径肯定是没错的，使用 dotnet 命令来运行也是正常的， dotnet ZKEACMS.WebHost.dll。

ConnectionString
"ConnectionString": "Data Source=Database.sqlite"
后来想起了之前有看过的这篇令人激动的文章：

Up to 400% improved throughput on IIS due to in-process hosting support
就是2.2可以使用In Process的托管模式，说性能有惊天地泣鬼神的提升，就想说会不会是这玩意的问题，毕竟当初升级时也是我主动改的这个：

<Project Sdk="Microsoft.NET.Sdk.Web">
  <PropertyGroup>
    <AspNetCoreHostingModel>InProcess</AspNetCoreHostingModel>
  </PropertyGroup>
</Project>
于是我改了一下web.config，切换成使用旧的模式： modules="AspNetCoreModuleV2" -> modules="AspNetCoreModule"，然后程序就正常运行了。

妥妥的写个issue给微软：https://github.com/aspnet/AspNetCore/issues/6117

我再使用In Process的托管模式做了一下debug，看到了令人惊奇的结果，这个当前目录竟然变成了IIS的目录，难怪相对路径错了。



解决方式
主动设置一下当前目录为程序根目录：

System.IO.Directory.SetCurrentDirectory(hostingEnvironment.ContentRootPath);
', N'这样获取文件，会定位到 C:\Program Files\IIS Express', N'tbug', 0, 0, 0, 0, CAST(N'2019-01-23T08:23:40.720' AS DateTime), CAST(N'2019-01-23T08:23:40.720' AS DateTime), 0, N'QQ')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (36, 11, N'', N'如何识别聚合与聚合根？', N'# 思路：

### 如何识别聚合与聚合根？

明确含义：一个Bounded Context（界定的上下文）可能包含多个聚合，每个聚合都有一个根实体，叫做聚合根；

识别顺序：1先找出哪些实体可能是聚合根，再逐个分析每个聚合根的边界，即该聚合根应该聚合哪些实体或值对象；最后再划分Bounded Context；

聚合边界确定法则：根据不变性约束规则（Invariant）。不变性规则有两类：1）聚合边界内必须具有哪些信息，如果没有这些信息就不能称为一个有效的聚合；2）聚合内的某些对象的状态必须满足某个业务规则；

 

#### 例子分析1：订单模型

Order（一 个订单）必须有对应的客户信息，否则就不能称为一个有效的Order；同理，Order对OrderLineItem有不变性约束，Order也必须至少有一个OrderLineItem(一条订单明细)，否 则就不能称为一个有效的Order；另外，Order中的任何OrderLineItem的数量都不能为0，否则认为该OrderLineItem是无效 的，同时可以推理出Order也可能是无效的。因为如果允许一个OrderLineItem的数量为0的话，就意味着可能会出现所有 OrderLineItem的数量都为0，这就导致整个Order的总价为0，这是没有任何意义的，是不允许的，从而导致Order无效；所以，必须要求 Order中所有的OrderLineItem的数量都不能为0；那么现在可以确定的是Order必须包含一些OrderLineItem，那么应该是通 过引用的方式还是ID关联的方式来表达这种包含关系呢？这就需要引出另外一个问题，那就是先要分析出是OrderLineItem是否是一个独立的聚合 根。回答了这个问题，那么根据上面的规则就知道应该用对象引用还是用ID关联了。那么OrderLineItem是否是一个独立的聚合根呢？因为聚合根意 味着是某个聚合的根，而聚合有代表着某个上下文边界，而一个上下文边界又代表着某个独立的业务场景，这个业务场景操作的唯一对象总是该上下文边界内的聚合 根。想到这里，我们就可以想想，有没有什么场景是会绕开订单直接对某个订单明细进行操作的。也就是在这种情况下，我们 是以OrderLineItem为主体，完全是在面向OrderLineItem在做业务操作。有这种业务场景吗？没有，我们对 OrderLineItem的所有的操作都是以Order为出发点，我们总是会面向整个Order在做业务操作，比如向Order中增加明细，修改 Order的某个明细对应的商品的购买数量，从Order中移除某个明细，等等类似操作，我们从来不会从OrderlineItem为出发点去执行一些业 务操作；另外，从生命周期的角度去理解，那么OrderLineItem离开Order没有任何存在的意义，也就是说OrderLineItem的生命周 期是从属于Order的。所以，我们可以很确信的回答，OrderLineItem是一个实体。

 

#### 例子分析2：帖子与回复的模型，
做个对比，以便更好地理解。

不 变性分析：帖子和回复之间有不变性规则吗？似乎我们只知道一点是肯定的，那就是帖子和回复之间的关系，1：N的关系；除了这个之外，我们看不到任何其他的 不变性规则。那么这个1：N的对象关系是一种不变性规则吗？不是！首先，一个帖子可以没有任何回复，帖子也不对它的回复有任何规则约束，它甚至都不知道自 己有多少个回复；再次，发表了一个回复和帖子也没有任何关系；其次，发表回复对帖子没有任何改变；从业务场景的角度去分析，我们有发表帖子的场景，有发表 回复的场景。当在发表回复的时候，是以回复为主体的，帖子只是这个回复里所包含的必要信息，用于说明这个回复是对哪个帖子的回复。这些都说明帖子和回复之 间找不出任何不变性约束的规则；因为帖子和回复都有各自独立的业务场景的需要，所以可以很容易理解它们都是独立的聚合根；那也很容易知道该如何建立他们之 间的关联了，但是我们要尽量减少关联，所以只保留回复对帖子的关联即可；帖子没有任何必要去保存一个回复的ID的列表；那么你可能会说，当我删除一个帖子 后，回复应该是没有存在的意义的呀？不对，不是没有存在的意义，而是删除了帖子后导致了回复对帖子的关联信息的缺失，导致数据不一致。这是因为帖子和回复 之间有一种必然的联系（1：N），回复一定会有一个对应的帖子；但是回复有其自己的生命周期，不应该随着帖子的删除而级联删除。这种情况下，如果你删除了 帖子，就导致回复也成为了一条无效的数据；所以，我们绝对不允许删除任何聚合根，因为一旦你删除了聚合根，那就意味着与该聚合根相关的其他任何聚合根都会 有外键引用缺失的问题，会导致整个领域模型数据的不一致；所以，永远都不要删除聚合根；


## 总结
我认为：判断是不是聚合根，就看这个实体有没有自己的仓储，如果有，就是聚合根，因为聚合内不允许通讯修改



参考：[http://www.cnblogs.com/netfocus/archive/2012/02/12/2347938.html](http://www.cnblogs.com/netfocus/archive/2012/02/12/2347938.html)', N'主要不是很清楚如何对一个项目，一个上下文内，如何确定聚合根，聚合，实体，值对象的划分。', N'tbug', 0, 1, 0, 0, CAST(N'2019-01-24T11:25:17.223' AS DateTime), CAST(N'2019-01-24T11:25:17.207' AS DateTime), 0, N'老张的哲学')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (37, 10, N'', N'https://admin.vuebulma.com/#/', N'# 一级标题', N'https://admin.vuebulma.com/#/', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-05T21:46:40.830' AS DateTime), CAST(N'2019-02-05T21:46:40.830' AS DateTime), 0, N'https://admin.vuebulma.com/#/')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (38, 11, N'', N'阿斯顿', N'啊实打实大苏打', N'阿斯顿阿三', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-07T14:00:05.813' AS DateTime), CAST(N'2019-02-07T14:00:05.813' AS DateTime), 0, N'啊实打实大苏打')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (39, 12, N'', N'1', N'11111111111111111111111', N'1', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-13T13:52:14.077' AS DateTime), CAST(N'2019-02-13T13:52:13.983' AS DateTime), 0, N'1')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (40, 10, N'', N'test', N'**ssssssssdf**', N'set', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-15T22:16:41.620' AS DateTime), CAST(N'2019-02-15T22:16:41.620' AS DateTime), 0, N'111')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (41, 9, N'', N'JWT这步时报了一个错误', N'# 问题：
System.ArgumentException:“IDX12709: CanReadToken() returned false. JWT is not well formed: ''[PII is hidden]''.
The token needs to be in JWS or JWE Compact Serialization Format. (JWS): ''EncodedHeader.EndcodedPayload.EncodedSignature''. (JWE): ''EncodedProtectedHeader.EncodedEncryptedKey.EncodedInitializationVector.EncodedCiphertext.EncodedAuthenticationTag''.”

# 解决方案：
待定
[https://jwt.io/#debugger-io](https://jwt.io/#debugger-io)

你这个是JWT的格式错误：

1、在线检查是否格式正确：https://jwt.io/#debugger-io

2、你是不是没有配置密钥key？

 
3、检查下你的JWT的发行人（audience），生成和校验是否一致，
U mye have different audience on token generation and validation', N'CanReadToken() returned false. JWT is not well formed: ''[PII is hidden]''.', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-19T14:34:18.307' AS DateTime), CAST(N'2019-01-20T20:02:58.807' AS DateTime), 0, N'admins')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (42, 10, N'', N'JWT这步时报了一个错误33', N'# 问题：
System.ArgumentException:“IDX12709: CanReadToken() returned false. JWT is not well formed: ''[PII is hidden]''.
The token needs to be in JWS or JWE Compact Serialization Format. (JWS): ''EncodedHeader.EndcodedPayload.EncodedSignature''. (JWE): ''EncodedProtectedHeader.EncodedEncryptedKey.EncodedInitializationVector.EncodedCiphertext.EncodedAuthenticationTag''.”

# 解决方案：
待定
[https://jwt.io/#debugger-io](https://jwt.io/#debugger-io)

你这个是JWT的格式错误：

1、在线检查是否格式正确：https://jwt.io/#debugger-io

2、你是不是没有配置密钥key？

 
3、检查下你的JWT的发行人（audience），生成和校验是否一致，
U mye have different audience on token generation and validation', N'CanReadToken44() returned false. JWT is not well formed: ''[PII is hidden]''.', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-19T14:35:31.897' AS DateTime), CAST(N'2019-01-20T20:02:58.807' AS DateTime), 0, N'admins444')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (43, 10, N'', N'e', N'eeeeeeeeeee', N'e', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-20T10:27:10.250' AS DateTime), CAST(N'2019-02-20T10:27:10.250' AS DateTime), 0, N'e')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (44, 12, N'', N'5', N'5', N'5', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-26T14:06:08.480' AS DateTime), CAST(N'2019-02-26T14:06:08.480' AS DateTime), 0, N'5')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (45, 9, N'', N'1', N'1', N'1', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-28T09:48:58.867' AS DateTime), CAST(N'2019-02-28T09:48:58.867' AS DateTime), 0, N'1')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (46, 12, N'', N'e', N'e', N'', N'tbug', 1, 0, 0, 0, CAST(N'2019-02-28T17:54:50.473' AS DateTime), CAST(N'2019-02-28T17:54:50.473' AS DateTime), 0, N'e')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (47, 12, N'/images\0304182454cmb_up.jpg', N'321', N'121212122', N'212', N'tbug', 1, 0, 0, 0, CAST(N'2019-03-04T18:25:02.593' AS DateTime), CAST(N'2019-03-04T18:25:02.577' AS DateTime), 0, N'1212')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (48, 9, N'', N'.net core api 使用异步编程的时间对比', N'```c#

  [Route("api/[controller]/[action]")]
    [ApiController]
    public class HomeController : ControllerBase
    {
        [HttpGet]
        public long Index()
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            ContentManagement service = new ContentManagement();
            var content = service.GetContent();
            var count = service.GetCount();
            var name = service.GetName();

            watch.Stop();
            var result = watch.ElapsedMilliseconds;
            return result;
        }

        [HttpGet]
        public async Task<long> IndexAsync()
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            ContentManagement service = new ContentManagement();
            var contentTask = service.GetContentAsync();
            var countTask = service.GetCountAsync();
            var nameTask = service.GetNameAsync();

            var content = await contentTask;
            var count = await countTask;
            var name = await nameTask;
            watch.Stop();
            var result = watch.ElapsedMilliseconds;
            return result;
        }

        [HttpGet]
        public async Task<long> IndexAsync2()
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            ContentManagement service = new ContentManagement();
            var contentTask = await service.GetContentAsync();
            var countTask = await service.GetCountAsync();
            var nameTask = await service.GetNameAsync();

            watch.Stop();
            var result = watch.ElapsedMilliseconds;
            return result;
        }
    }
    public class ContentManagement
    {
        public string GetContent()
        {
            Thread.Sleep(2000);
            return "content";
        }

        public int GetCount()
        {
            Thread.Sleep(5000);
            return 4;
        }

        public string GetName()
        {
            Thread.Sleep(3000);
            return "Matthew";
        }
        public async Task<string> GetContentAsync()
        {
            await Task.Delay(2000);
            return "content";
        }

        public async Task<int> GetCountAsync()
        {
            await Task.Delay(5000);
            return 4;
        }

        public async Task<string> GetNameAsync()
        {
            await Task.Delay(3000);
            return "Matthew";
        }
    }

```
', N'async 和 await 到底如何使用', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-08T16:59:03.117' AS DateTime), CAST(N'2019-03-08T16:59:03.117' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (49, 9, N'/images\0311095114bottombg.jpg', N'1321', N'132131', N'13', N'tbug', 1, 0, 0, 0, CAST(N'2019-03-11T09:51:21.997' AS DateTime), CAST(N'2019-03-11T09:51:21.997' AS DateTime), 0, N'13')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (50, 11, N'', N'11', N'### 的的
- 阿道夫
- 阿斯蒂芬
|column1|column2|column3|
|1-|2-|-3|
|content1|content2|content3|
', N'22', N'tbug', 1, 0, 0, 0, CAST(N'2019-03-11T15:33:08.203' AS DateTime), CAST(N'2019-03-11T15:33:08.203' AS DateTime), 0, N'11')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (51, 9, N'', N'.netcore 发布错误 502.5 process failure', N'![image.png](/images\0313213553image.png)

## 猜想一：
没有安装对应的SDK，可以尝试 命令行运行：
dotnet run
检测是否正常。

## 猜想二：
发布到IIS出错，可能是缺少文件', N'错误一：502.5', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-13T21:37:31.103' AS DateTime), CAST(N'2019-03-13T21:37:31.103' AS DateTime), 0, N'admin')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (52, 12, N'/images\0318131923WeChat Screenshot_20190318131331.jpg', N'云服务器安装 SqlServer 2008 R2', N'选择网盘下载的下载解压后是镜像文件，还需要解压一次直接右键点击解如图所示选项，官网下载安装包的可以跳过前两步





等待解压完，过程可能会比较慢

解压完后双击如图所示选项

![image.png](/images\0320162640image.png)

安装SQL Server 2008R2需要.NET Framework 3.5 SP1支持

这里我们的操作系统是WindowsServer 2008 R2，已经默认自带了.NET Framework 3.5 SP1

如果电脑没安装会提示安装
![image.png](/images\0320162648image.png)


选择左侧的安装，双击右边的“全新安装或向现有安装添加功能”

![image.png](/images\0320162658image.png)

确定

![image.png](/images\0320162710image.png)

输入产品密钥，下一步（产品密钥就是上面显示的，直接下一步，需要产品密钥的话文末有，可以输入试试）

![image.png](/images\0320162728image.png)

接受许可条款，下一步

![image.png](/images\0320162743image.png)

安装(可能需要重启)

![image.png](/images\0320162753image.png)

下一步

![image.png](/images\0320163501image.png)

SQL Server功能安装
![image.png](/images\0320163513image.png)


选择需要的组件，这里点全选，安装所有组件

选择安装路径，下一步
![image.png](/images\0320163525image.png)


下一步
![image.png](/images\0320163539image.png)


默认实例，下一步
![image.png](/images\0320163549image.png)


下一步

![image.png](/images\0320163605image.png)

服务账户设置，选择对所有SQL Server服务使用相同的账户（双击打开）

![image.png](/images\0320163626image.png)

输入操作系统的账户名和密码，确定（如果用户名不是这个的话则点开用户名后面的小三角选择第一项，不需要输入密码，直接确定，然后点击下一步）

![image.png](/images\0320163642image.png)

身份验证模式：混合模式

设置系统管理员（sa）的密码



点添加，指定SQL Server管理员为操作系统登录账号（win10管理员账号不一样，添加就行了）

下一步

![image.png](/images\0320163703image.png)

下一步



默认，下一步



下一步



下一步



安装



正在安装中



安装完成，点关闭



Win7打开界面大同小异，这是win10打开界面

把服务器类型点开，选择数据库引擎，直接Windows身份登陆，不用改成SQL server身份验证，点击登陆

安装完成

 

http://www.microsoft.com/zh-cn/download/details.aspx?id=23650 （官网下载地址）

 

链接：https://pan.baidu.com/s/1pLp86td  密码：e1qx（百度网盘下载地址）

 

Microsoft SQLServer 2008 R2序列号密钥

开发版32位：MC46H-JQR3C-2JRHY-XYRKY-QWPVM
开发版64位：FTMGC-B2J97-PJ4QG-V84YB-MTXX8

工组版：XQ4CB-VK9P3-4WYYH-4HQX3-K2R6Q
WEB版：FP4P7-YKG22-WGRVK-MKGMX-V9MTM

数据中心版32位：PTTFM-X467G-P7RH2-3Q6CG-4DMYB
数据中心版64位：DDT3B-8W62X-P9JD6-8MX7M-HWK38

企业版32位：R88PF-GMCFT-KM2KR-4R7GB-43K4B
企业版64位：GYF3T-H2V88-GRPPH-HWRJP-QRTYB

标准版32位：CXTFT-74V4Y-9D48T-2DMFW-TX7CY
标准版64位：B68Q6-KK2R7-89WGB-6Q9KR-QHFDW

注：若中途安装错误，导致安装失败，需要到控制面板卸载，然后删除安装目录的文件夹，再删除注册表里SQL server选项，然后重新进行安装，若不删除干净，安装还是会失败


https://blog.csdn.net/qq_41432123/article/details/79053486', N'云服务器安装 SqlServer 2008 R2', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-18T13:22:14.450' AS DateTime), CAST(N'2019-03-18T13:22:14.450' AS DateTime), 0, N'老张')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (53, 9, N'/images\0320102616WeChat Screenshot_20190320102601.jpg', N'为什么 要在 框架里面加上  Repository 和 Irepository', N'### 首先仓储的作用是隔离：
1、可以使业务逻辑和数据操作隔离开；

2、可以实现Mock数据（比如单元测试）；

3、可以实现AOP缓存；

4、仓储是一个管理员，不是一个执行者，面向集合领域，而不是单纯的表的CURD；

5、在DDD中会有更好的体现；



### 其次使用仓储接口：

1、是面向抽象编程，面向接口编程

', N'为什么 要在 框架里面加上  Repository 和 Irepository', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-20T10:31:00.347' AS DateTime), CAST(N'2019-03-20T10:31:00.347' AS DateTime), 0, N'Blog.Core')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (54, 12, N'', N'怎么彻底删除SQLServer2008 卸载SQLServer2008', N'当然删除的入口还是Windows系统的“程序和功能”里面的“卸载或者更改程序"，在什么位置你肯定是知道的。然后找到Microsoft SQL Server 2008 (64-bit)，右键点击“卸载或者更新。”（注：虽然里面有很多以Microsoft SQL Server 2008开头的，但是选择这个主的程序就可以了，其它组件在删除过程中会自动被删除掉）。

![image.png](/images\0320164035image.png)
![image.png](/images\0320164052image.png)

稍后会出现”删除实例“窗口，选择下一步。

![image.png](/images\0320164142image.png)

出现”选择功能“对话框，这时一定要注意点选”全选“按钮，一个一个点可以会有纰漏，再次安装会提示错误。再选”下一步“按钮。

![image.png](/images\0320164158image.png)
卸载程序会进行规则检查，看是否符合卸载的条件要求，如果能够卸载，点选”下一步“，就会出现要删除功能的组件树，如果没有符合要求，比如说”需要重启“什么的，就重启一下电脑，再回到上面 第一步开始操作。此时，点击”删除“按钮。

![image.png](/images\0320164213image.png)



漫长的删除过程就开始了，删除完成以后，删除进度里所有的状态是”成功“。


![image.png](/images\0320164229image.png)

再点击”下一步“，提示删除完成 ，点击关闭按钮。
![image.png](/images\0320164245image.png)
还没有完，我们再回到”卸载或更改程序“里面，删除以Microsoft SQLServer 2008开头的程序，一般情况下只有两个，还是右键选择删除，很快就删除掉了。

![image.png](/images\0320164300image.png)
还没有完，我们要删除安装SQLServer2008时，安装实例时选择的安装目录，不然再次安装会提示已存在的问题。
![image.png](/images\0320164319image.png)
删除注册表经我测试没有必要，微软不会Low到那种程度。另外一定要注意的是”重启电脑“，一定要”重启电脑“。

10
好了，如果你上面的都做到了，SQlServer2008 也就无影无踪了。下次安装也不受影响了。

https://jingyan.baidu.com/album/54b6b9c086973d2d583b47da.html?picindex=2', N'怎么彻底删除SQLServer2008 卸载SQLServer2008', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-20T16:43:23.310' AS DateTime), CAST(N'2019-03-20T16:43:23.310' AS DateTime), 0, N'SQLServer')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (55, 9, N'', N'为什么 return Json(xxx) 失败，报错，无效等', N'# 解答

```c#

BlogController : Controller
如果你的控制器继承的是 controller ，是可以 return Json 的

```


但是：
```c#
BlogController : ControllerBase
如果你是继承的 controllerbase 的话 ，return Json（） 是不能使用的，可以使用 return OK();

不过这个时候注意：
1、是OK！大写；
2、返回的类型记得要改掉，不要这么写：
public JsonResult xxx(){
  return OK(xxx);
}

public string xxx(){
  return OK("hi");
}
你可以这么写：

```
', N'为什么 return Json(xxx) 失败，报错，无效等', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-21T13:53:37.707' AS DateTime), CAST(N'2019-03-21T13:53:37.707' AS DateTime), 0, N'lz')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (56, 14, N'', N'关于作者', N'#### 老张的哲学
#### 姓名：Anson Zhang
#### 现居住地：北京市-北京
#### 职位：软件工程师
#### 感兴趣的技术：看书、dotnet、vue
#### 最近目标：带一批小伙伴一起学习，能学会那种
#### QQ群: 867095512
![image.png](/images\0322140054image.png)', N'关于作者', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-22T14:01:00.893' AS DateTime), CAST(N'2019-03-22T14:01:00.893' AS DateTime), 0, N'老张的哲学')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (57, 9, N'', N'NetCore 升级现有Core2.0 项目到 2.1+ ', N'![image.png](/images\0325150847image.png)

二. 更新现有2.0项目到2.1
1. 修改 项目版本
右键点击解决方案管理器中的项目， 选择编辑项目名.csproj


![image.png](/images\0325151054image.png)
 

将 <TargetFramework>netcoreapp2.0</TargetFramework> 中的2.0改为2.1，保存。

2. 将引用 Microsoft.AspNetCore.All  替换为 Microsoft.AspNetCore.App 
项目依赖中找到 Microsoft.AspNetCore.All ，移除它， 在Nugget中搜索并安装 Microsoft.AspNetCore.App 

注意：以下内容依旧包含在 Microsoft.AspNetCore.All 中， 而 Microsoft.AspNetCore.App 中不存在

```c#

Microsoft.AspNetCore.ApplicationInsights.HostingStartup
Microsoft.AspNetCore.AzureAppServices.HostingStartup
Microsoft.AspNetCore.AzureAppServicesIntegration
Microsoft.AspNetCore.DataProtection.AzureKeyVault
Microsoft.AspNetCore.DataProtection.AzureStorage
Microsoft.AspNetCore.Server.Kestrel.Transport.Libuv
Microsoft.AspNetCore.SignalR.Redis
Microsoft.Data.Sqlite
Microsoft.Data.Sqlite.Core
Microsoft.EntityFrameworkCore.Sqlite
Microsoft.EntityFrameworkCore.Sqlite.Core
Microsoft.Extensions.Caching.Redis
Microsoft.Extensions.Configuration.AzureKeyVault
Microsoft.Extensions.Logging.AzureAppServices
Microsoft.VisualStudio.Web.BrowserLink

```

所以如果项目中需要用到这些内容， 可以单独引用它们， 而不建议再次整体引用 Microsoft.AspNetCore.All 

3. 修改其他引用
再次打开*.csproj文件， 可以看到对应的 Microsoft.AspNetCore.All 已经替换为Microsoft.AspNetCore.App 了
```

删除各种 <DotNetCliToolReference Include="********" Version="2.0.3" />  例如： <DotNetCliToolReference Include="Microsoft.EntityFrameworkCore.Tools.DotNet" Version="2.0.3" /> 
```

最终这个*.csproj文件类似这样
``
<Project Sdk="Microsoft.NET.Sdk.Web">
  <PropertyGroup>
    <TargetFramework>netcoreapp2.1</TargetFramework>
    <UserSecretsId>aspnet-{Project Name}-{GUID}</UserSecretsId>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="Microsoft.AspNetCore.App" />
    <PackageReference Include="Microsoft.VisualStudio.Web.CodeGeneration.Design" Version="2.1.0" PrivateAssets="All" />
  </ItemGroup>
</Project>
```
复制代码
4.修改Program.cs
修改Main方法和BuildWebHost方法， 结果如下


  ```

  public class Program
    {
        public static void Main(string[] args)
        {
            CreateWebHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                .UseStartup<Startup>();
    }
```
复制代码
5. 修改Startup', N'NetCore 升级现有Core2.0 项目到 2.1+ ', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-25T15:11:07.757' AS DateTime), CAST(N'2019-03-25T15:11:07.727' AS DateTime), 0, N'LAOZ')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (58, 13, N'', N'1', N'32131', N'1', N'tbug', 1, 0, 0, 0, CAST(N'2019-03-29T16:21:01.230' AS DateTime), CAST(N'2019-03-29T16:21:01.230' AS DateTime), 0, N'1')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (59, 11, N'', N'顶顶顶顶顶顶顶顶顶从', N'
++**```下划线

```
**++', N'顶顶顶顶顶顶顶c', N'tbug', 1, 0, 0, 0, CAST(N'2019-03-30T08:51:57.870' AS DateTime), CAST(N'2019-03-30T08:51:57.870' AS DateTime), 0, N'顶顶顶顶顶顶顶顶')
INSERT [dbo].[TopicDetail] ([Id], [TopicId], [tdLogo], [tdName], [tdContent], [tdDetail], [tdSectendDetail], [tdIsDelete], [tdRead], [tdCommend], [tdGood], [tdCreatetime], [tdUpdatetime], [tdTop], [tdAuthor]) VALUES (60, 9, N'', N'netcore 2.2 发布IIS报错，HTTP Error 500.30–ANCM In-Process Start Failure', N'## 解决方案一：

![image.png](/images\0331215933image.png)


## 解决方案二：




---


## 其他解决方案：
While preparing an app to run on my local IIS server for the first time I received this error. It provides some clues as to what is happening but does not give a direct cause and can be very frustrating when trying to get that app ready for production.

HTTP Error 500.30 - ANCM In-Process Start Failure
Common causes of this issue:
The application failed to start
The application started but then stopped
The application started but threw an exception during startup
Troubleshooting steps:
Check the system event log for error messages
Enable logging the application process'' stdout messages
Attach a debugger to the application process and inspect
For more information visit: https://go.microsoft.com/fwlink/?LinkID=2028265
The page that we receive here basically takes us to the standard installation for the ASP.NET Core Module, which may be a good place to start to see if there was a misconfiguration when the module was installed.

Now if the issue continues there are some ways to determine what the issue is

Check Application Event Log
Access the Application Event Log:

Open the Start menu, search for Event Viewer, and then select the Event Viewer app.
In Event Viewer, open the Windows Logs node.
Select Application to open the Application Event Log.
Search for errors associated with the failing app. Errors have a value of IIS AspNetCore Module or IIS Express AspNetCore Module in the Source column.
Run the app at a command prompt
Many start-up errors don’t produce much useful information in the Application Event Log. Another option is to run the app at a command prompt on the hosting system if there is access to do that.

Framework-dependent deployment
If the app is deployed as framework-dependent:

At a command prompt or PowerShell window, navigate to the folder that contains the app and launch the app by executing the assembly with dotnet.exe.
dotnet .\<assembly_name>.dll – substitute <assembly_name> with the name of the application
In the console window, if there are any errors they will written in the output.
If the errors only occur when making a request to the app, launch a browser and make a request to the app. Usually this will be at http://localhost:5000/. If the app responds normally with no error, the problem more likely related to the hosting configuration and not the app.
Self-contained deployment
If the app is deployed as self-contained then follow the above steps substituting <assembly_name>.exe for dotnet .\<assembly_name>.dll and follow the rest of the steps.

ASP.NET Core Module stdout log
To enable and view stdout logs:

Navigate to the app folder on the host system.
If the logs folder isn’t present create the folder.
Edit the web.config file. Set stdoutLogEnabled to true and change the stdoutLogFile path to point to the logs folder (for example: .\logs\stdout) stdout in the path is the log file name prefix.
Ensure your application pool’s identity has write permissions to the logs folder.
Save the updated web.config file.
Make a request to the app or site.
Look in the logs folder and find the latest log file.
Check the file for errors.
Once trouble shooting is complete make sure to turn off logging in the web.config file by setting stdoutLogEnabled to false

Hopefully this helps solve your issue.', N'netcore 2.2 发布IIS报错，HTTP Error 500.30–ANCM In-Process Start Failure', N'tbug', 0, 0, 0, 0, CAST(N'2019-03-31T21:58:34.343' AS DateTime), CAST(N'2019-03-31T21:58:34.343' AS DateTime), 0, N'anson')
SET IDENTITY_INSERT [dbo].[TopicDetail] OFF
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, 15, 1, NULL, NULL, CAST(N'2018-11-02T00:51:25.060' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, 14, 2, NULL, NULL, CAST(N'2018-11-02T00:51:25.060' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, 18, 3, NULL, NULL, CAST(N'2018-11-02T00:51:25.060' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, 23, 4, 23, NULL, CAST(N'2019-02-18T23:53:26.423' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 0, 1, 2, 1, NULL, CAST(N'2019-02-19T00:20:44.190' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, 1, 1, 1, NULL, CAST(N'2019-02-19T00:20:54.087' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, 13, 1, 13, NULL, CAST(N'2019-02-19T00:21:53.173' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, 0, 19, 6, 19, NULL, CAST(N'2019-02-25T00:38:05.700' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, 24, 7, 24, NULL, CAST(N'2019-02-26T11:15:19.433' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
ALTER TABLE [dbo].[TopicDetail] ADD  DEFAULT ((0)) FOR [tdTop]
GO
ALTER TABLE [dbo].[Module]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Module_dbo.Module_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Module] ([Id])
GO
ALTER TABLE [dbo].[Module] CHECK CONSTRAINT [FK_dbo.Module_dbo.Module_ParentId]
GO
ALTER TABLE [dbo].[ModulePermission]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModulePermission_dbo.Module_ModuleId] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModulePermission] CHECK CONSTRAINT [FK_dbo.ModulePermission_dbo.Module_ModuleId]
GO
ALTER TABLE [dbo].[ModulePermission]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModulePermission_dbo.Permission_PermissionId] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModulePermission] CHECK CONSTRAINT [FK_dbo.ModulePermission_dbo.Permission_PermissionId]
GO
ALTER TABLE [dbo].[OperateLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OperateLog_dbo.sysUserInfo_User_uID] FOREIGN KEY([User_uID])
REFERENCES [dbo].[sysUserInfo] ([uID])
GO
ALTER TABLE [dbo].[OperateLog] CHECK CONSTRAINT [FK_dbo.OperateLog_dbo.sysUserInfo_User_uID]
GO
ALTER TABLE [dbo].[TopicDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TopicDetail_dbo.Topic_TopicId] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TopicDetail] CHECK CONSTRAINT [FK_dbo.TopicDetail_dbo.Topic_TopicId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRole_dbo.Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_dbo.UserRole_dbo.Role_RoleId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRole_dbo.sysUserInfo_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[sysUserInfo] ([uID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_dbo.UserRole_dbo.sysUserInfo_UserId]
GO
