var t;
t=outlookbar.addtitle('网站会员管理')
outlookbar.additem('待审&nbsp;&nbsp;会员管理',t,'../user/default.asp')
outlookbar.additem('已审&nbsp;&nbsp;会员管理',t,'../user/check.asp')
outlookbar.additem('未付费会员管理',t,'../user/charge.asp')
outlookbar.additem('已付费会员管理',t,'../user/payment.asp')
outlookbar.additem('待续费会员管理',t,'../user/arrearage.asp')

t=outlookbar.addtitle('商业机会管理')
outlookbar.additem('待审商业机会',t,'../commerce/default.asp')
outlookbar.additem('已审商业机会',t,'../commerce/admin_check.asp')

t=outlookbar.addtitle('产品展厅管理')
outlookbar.additem('等审产品管理',t,'../product/default.asp')
outlookbar.additem('已审产品管理',t,'../product/admin_check.asp')
outlookbar.additem('推荐产品管理',t,'../product/admin_tuijian.asp')

t=outlookbar.addtitle('公司库管理')
outlookbar.additem('待审公司管理',t,'../company/default.asp')
outlookbar.additem('已审公司管理',t,'../company/admin_check.asp')
outlookbar.additem('推荐公司管理',t,'../company/admin_tuijian.asp')

t=outlookbar.addtitle('新闻栏目管理')
outlookbar.additem('行业资讯管理',t,'../news/default.asp')
outlookbar.additem('网站动态管理',t,'../zxdt/default.asp')
outlookbar.additem('成功案例管理',t,'../cgal/default.asp')
outlookbar.additem('商业服务管理',t,'../qyfw/default.asp')

t=outlookbar.addtitle('行业分类管理')
outlookbar.additem('行业分类管理',t,'../sort/sort.asp')

t=outlookbar.addtitle('网站系统管理')
outlookbar.additem('管理员帐号管理',t,'../system/Admin_Admin.asp')
outlookbar.additem('查看服务器变量',t,'../system/admin_server.asp')

t=outlookbar.addtitle('退出管理系统')	
outlookbar.additem('<br><img src=exit.ico border=0><br>退出管理系统',t,'../exitsystem.asp')
