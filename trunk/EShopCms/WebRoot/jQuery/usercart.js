// JavaScript Document

//为了解决用户使用购物车功能编写   
//  作者：杨龙  2009-7-18
//******************************
//购物车功能
// 显示信息： 商品编号 商品名称 商品图片 用户ID 网站价 数量 总计  
   //合计金额  商品总数目



var prolist = new Array();
var newpro = new Array();
var tprolist = new Array();
var allProNum = 0;
initusercart();
updatelist();

var isHide = true;
var isDuiBi = true;
if(isHide)
{
	$('.myusercart_list').hide();
	}
if(isDuiBi)
{
	$('.myuserduibi_list').hide();
	}	


var ElementCheckInterval = setInterval("updatelist()", 2500);
var ElementCheckIntervalduibi = setInterval("updataduibi()", 2500); 


//商品对比信息
function addDuiBi(proId,proName,proPrice,mprice,userId,picPath,punit)
{
	if(tprolist ==null)
	{
		tprolist = new Array();
	var dpro = new Array();
	dpro[0] = proId;
	dpro[1] = proName;
	dpro[2] = proPrice;
	dpro[3] = mprice;
	dpro[4] = userId;
	dpro[5] = picPath;
	dpro[6] = punit;
	tprolist[0] = dpro;
		}else
		{
	
	var isExit = false;
	for(var i=0;i<tprolist.length;i++)
	{
		var temppro = new Array();
		var temppro = tprolist[i];
		if(temppro[0]==proId)
		{
			isExit = true;
			}else
			{
				isExit = false;
				}
		
		
		}
	
			
	if(!isExit)
	{
		var dpro = new Array();
	dpro[0] = proId;
	dpro[1] = proName;
	dpro[2] = proPrice;
	dpro[3] = mprice;
	dpro[4] = userId;
	dpro[5] = picPath;
	dpro[6] = punit;
	
		tprolist[tprolist.length] = 	dpro;
		
		
			}
		$.cookie('myuserduibi',tprolist);
			
		     var strs = new String();
			strs = "<font color=green style=font-size:12px;>商品放入对比框中！请打开对比框查看商品列表<br></font>";
			$.messager.show('<font color=red>加入商品对比成功</font>', strs);	
			
	updataduibi();
		}		
	 var strs = new String();
	strs = "<font color=green style=font-size:12px;>商品放入对比框中！请打开对比框查看商品列表<br></font>";
    $.messager.show('<font color=red>加入商品对比成功</font>', strs);	
	}
//移出对比
function revDuiBi(proId)
{
	if(tprolist == null)
	{
		
		}else{
			
	var ttpros = new Array();
	var ttnum = 0;
	for(var i =0;i<tprolist.length;i++)
	{
		var newpros = new Array();
		newpros = tprolist[i];
		if(proId==newpros[0])
		{
			
			}else
			{
				ttpros[ttnum] = newpros;
				ttnum ++;
				}
		}
       tprolist = new Array();
	   tprolist = ttpros;
	   $.cookie('myuserduibi',ttpros);
			}
			
			updataduibi();
	}

function updataduibi()
{
	
	var elements = $('.myuserduibi_list');
	
	
	for(var tt= 0 ;tt<elements.length;tt++)
	{
	
	
	//显示对比对话框
	    var str = new String();
		str =  str + "<br><table cellspacing=1 width=100% style='border:1px #FF99CC outset;'>";
		str =  str + "<tr><th bgcolor=#FF99CC colspan=8 height=25>  商品对比 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='isShowOrHideusercart' onClick='showDuiBi()'  style='cursor:hand;'><font color=#009900><b>关闭商品对比显示</b></font></span</th></tr>";
		str =  str + "<tr><th bgcolor=#FF99CC height=25>商品编号</th><th bgcolor=#FF99CC>商品图片</th><th bgcolor=#FF99CC>商品名称</th><th bgcolor=#FF99CC>网站价格</th><th bgcolor=#FF99CC>市场价格</th><th bgcolor=#FF99CC>单位</th><th bgcolor=#FF99CC>移出对比</th><th width=150 bgcolor=#FF99CC>加入购物车</th></tr>";
	
	
	for(var i =0;i<tprolist.length;i++)
	{
	
		
		var tempro =  new Array();
		tempro = tprolist[i];
		
	
	 	str =  str + "<tr><td  align=center  width=80><b>"+tempro[0]+"</b></td><td width='80'><img style='padding:2px;' width=80 height=80 src='../upfile/"+tempro[5]+"'></td><td>"+tempro[1]+"</td><td><b><font color=#ff0000>"+tempro[2]+"</font></b>&nbsp;元</td><td width=150>"+tempro[3]+"元&nbsp;&nbsp;&nbsp;&nbsp;</td><td><b><font color=#ff0000>"+tempro[6]+"</font><b>&nbsp;</td><td><span style='cursor:hand' onClick='revDuiBi("+tempro[0]+")'>移出对比框</span></td><td width=150><span onClick=addNewPro("+tempro[0]+",'"+tempro[1]+"',"+tempro[2]+","+tempro[4]+",'"+tempro[5]+"',1,'"+tempro[6]+"') style='cursor:hand'>加入购物车</span></td></tr>";
	
		//alert(' '); onClick='addNewPro("+tempro[0]+","+tempro[1]+","+tempro[2]+","+tempro[4]+","+tempro[5]+",1,"+tempro[6]+")' 
	
	}
	
	
	
	
	
	str = str + "<tr><td height=30  bgcolor=#FF99CC colspan=8><a href='#' onclick='cleanduibi();return false;'>清空对比</a></td></tr>";	
	str = str + "</table>";	
	
	elements[tt].innerHTML = str;
	
	
	
	
	
	}
	
	
	if(isDuiBi)
    {
	$('.myuserduibi_list').hide();
	
	}else
	{
		$('.myuserduibi_list').show();
		}
	
	
	
	
	}	
	
	
	function cleanduibi()
	{
		$.cookie('myuserduibi',null);
		tprolist = new Array();
		updataduibi();
		}
function initusercart()
{
	
	
	//初始化购物车
	if($.cookie('myusercart')!=null)
	{
		//读取正常信息
		prolist = new Array();
		var myusercart = new Array();
		myusercart = $.cookie('myusercart');
		
	 	var mylist = myusercart.split(',');
		var newpros = new Array();
		var allnum = 0;
		var tpnum =0;
	    var productNum=0;
		
		for(var i = 0;i<mylist.length;i++)
		{
			
			//显示数据的初始化功能 显示初始化数据

			if(tpnum==7)
			{
				newpros[tpnum-1] = newpros[tpnum-2]*newpros[tpnum-5];
				//alert(newpros[tpnum]+":序号"+tpnum);
				newpros[tpnum] = mylist[i];
				prolist[productNum] = newpros;  //
				productNum++;
				newpros = new Array();
				tpnum = 0;
			}else
			{
				newpros[tpnum] = mylist[i];
				tpnum++;
				}
				
		
			
		}
		
		allProNum = productNum;
		
		
		}else
		{
prolist = new Array();
newpro = new Array();	
allProNum = 0;
			}	
			updatelist();
			
			
			
			
			//初始化对比框 
			
			
			if($.cookie('myuserduibi')!=null)
			{
				tprolist = new Array();
				var tdata = new Array();
				tdata = $.cookie('myuserduibi');
				tlist = new Array();
				tlist  = tdata.split(",");
				var newpros = new Array();
				var tpnum = 0
				var productNum = 0;
				for(var tl=0;tl<tlist.length;tl++)
				{
					
					
					if(tpnum==6)
			{
				
				//alert(newpros[tpnum]+":序号"+tpnum);
				newpros[tpnum] = tlist[tl];
				tprolist[productNum] = newpros;  //
				productNum++;
				newpros = new Array();
				tpnum = 0;
			}else
			{
				newpros[tpnum] = tlist[tl];
				tpnum++;
				}
					
					
					}
				
				
				
				
				}else
				{
					tprolist = new Array();
					
					}
			updataduibi();
	
			
}


function cleanall()
{
	if(!confirm('是否确定要清空购物车'))
	{
		return false;
		}
prolist = new Array();
newpro = new Array();	
allProNum = 0;
$.cookie('myusercart',null);
updatelist();
	}
	
	
	function addProNum(proId)
	{
		
		var tempro = new Array();
	var tempnum = 0;
	for(var i=0;i<prolist.length;i++)
	{
		var newpros = new Array();
		newpros = prolist[i];
		if(proId==newpros[0])
		{
			newpros[5]++;
			newpros[6] = newpros[2]*newpros[5];
			
			tempro[tempnum] = newpros;
			tempnum++;
			}else
			{
				
				tempro[tempnum] = newpros;
				tempnum++;
				}

		allProNum ++;	

    }
	
	updatelist();
	}
	
	function addnewProNum(proId,pronum)
	{
		if(pronum == 0)
		{
			
			return;
			}
			if(isNaN(pronum))
			{
				alert('商品数量请输入数字');
				return;
				}
		var tempro = new Array();
	var tempnum = 0;
	for(var i=0;i<prolist.length;i++)
	{
		var newpros = new Array();
		newpros = prolist[i];
		if(proId==newpros[0])
		{
			newpros[5]=parseInt(pronum);
			newpros[6] = newpros[2]*newpros[5];
			
			tempro[tempnum] = newpros;
			tempnum++;
			}else
			{
				
				tempro[tempnum] = newpros;
				tempnum++;
				}

		allProNum ++;	

    }
	updatelist();
	
	}
	
	
	
	
function subProNum(proId)
	{
		
		var tempro = new Array();
	var tempnum = 0;
	for(var i=0;i<prolist.length;i++)
	{
		var newpros = new Array();
		newpros = prolist[i];
		if(proId==newpros[0])
		{
			if(newpros[5]>=1)
			{
			newpros[5]--;
			newpros[6] = newpros[2]*newpros[5];
			
			tempro[tempnum] = newpros;
			tempnum++;
				
				}else
				{
					//移出购物车
					
					delePro(proId);
					
					}
					
					
			
			}else
			{
				
				tempro[tempnum] = newpros;
				tempnum++;
				}

			

    }
	allProNum --;
$.cookie('myusercart',prolist);	
updatelist();
		}
		
		
		
function delePro(proId)
{
	if(!confirm('是否将该商品移出购物车'))
	{
		return false;
		}
	//initusercart();
	var tempro = new Array();
	var tempnum = 0;
	var palNum = 0;
	for(var int=0;i<prolist.length;i++)
	{
		var newpros = new Array() ;
		newpros = prolist[i];
		if(proId==parseInt(newpros[0]))
		{
			
			}else
			{
			
				tempro[tempnum] = newpros;
				tempnum++;
				}
    }
prolist = new Array();
prolist = tempro;
$.cookie('myusercart',prolist);	

updatelist();
	}


function getProlist()
{
	
	}

function updatelist()
{
	var elements = $('.myusercart_list');
	
	
	for(var i = 0 ;i<elements.length;i++)
	{
		
		//
		
		var str = new String();
		str =  str + "<br><table cellspacing=1 width=100% style='border:1px #FF99CC outset;'>";
		str =  str + "<tr><th bgcolor=#FF99CC colspan=7 height=25>  商品购物车 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class='isShowOrHideusercart' onClick='showHidecart()'  style='cursor:hand;'><font color=#009900><b>关闭购物车</b></font></span></th></tr>";
		str =  str + "<tr><th bgcolor=#FF99CC height=25>商品编号</th><th bgcolor=#FF99CC>商品图片</th><th bgcolor=#FF99CC>商品名称</th><th bgcolor=#FF99CC>商品价格</th><th bgcolor=#FF99CC>商品数量</th><th bgcolor=#FF99CC>合计金额</th><th bgcolor=#FF99CC>移出购物车</th></tr>";
		
		
		var ppnum = 0;
		var pallMoney = 0.00;
		for(var j=0;j<prolist.length;j++)
		{
		var tempro =  new Array();
		tempro = prolist[j];
		if(tempro.length==0)
		{
			str =  str + "<tr><td colspan=6>目前购物车为空</td></tr>";
			carStr = carStr + "您没有放入任何商品";
			}else
			{
				
				ppnum = parseInt(ppnum) + parseInt(tempro[5]);
				pallMoney = pallMoney + parseInt(tempro[5])*parseFloat(tempro[2])
				str =  str + "<tr><td   width=80><b>"+tempro[0]+"</b></td><td width='80'><img style='padding:2px;' width=80 height=80 src='../upfile/"+tempro[4]+"'></td><td>"+tempro[1]+"</td><td><b><font color=#ff0000>"+tempro[2]+"</font></b>&nbsp;元</td><td width=150><span style='cursor:hand' onclick='subProNum("+tempro[0]+")'>  减 </span>&nbsp;&nbsp;&nbsp;&nbsp;<b>"+tempro[5]+"</b>("+tempro[7]+")&nbsp;&nbsp;&nbsp;&nbsp;<span  style='cursor:hand' onclick='addProNum("+tempro[0]+")'>  加 </span>&nbsp;&nbsp;&nbsp;<input onblur='addnewProNum("+tempro[0]+",this.value)' name='pro"+tempro[0]+"'  type=text  style='width:20px;' size=4></td><td><b><font color=#ff0000>"+tempro[6]+"</font><b>&nbsp;元</td><td><span style='cursor:hand' onClick='delePro("+tempro[0]+")'>移出购物车</span></td></tr>";
				
				carStr = carStr + "商品编号： "+tempro[0]+" \t商品名称："+tempro[1]+"\t 商品价格："+tempro[2]+"\t 商品数量："+tempro[5]+"\t金额"+tempro[6]+"元\r\n";
				}
		
		}
		
		
		str = str + "<tr><td height=30  bgcolor=#FF99CC colspan=7>商品总数量："+ppnum+"件  &nbsp;&nbsp;商品价格总计："+pallMoney+"元  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=# onClick='return cleanall()'>清空购物车</a>&nbsp;&nbsp;结账请直接到在线订单！ 直接修改商品数目后点击空白处可直接修改数目</td></tr>";	
		str = str + "</table>";	
		
		elements[i].innerHTML=str;
		
		}
		
		ppnum = 0;
		pallMoney = 0.00;
		//设计订单框
		var cartorders = $('.productOrder_list');
			for(var t = 0 ;t<cartorders.length;t++)
	{
		
		var carStr = new String();  //放入订单栏目之内
		
		for(var tj=0;tj<prolist.length;tj++)
		{
			var tempro =  new Array();
		tempro = prolist[tj];
		if(tempro.length==0)
		{
			carStr = carStr + "您没有放入任何商品";
			}else
			{
				ppnum = parseInt(ppnum) + parseInt(tempro[5]);
				pallMoney = pallMoney + parseInt(tempro[5])*parseFloat(tempro[2]);
				carStr = carStr + "商品编号：【 "+tempro[0]+" 】\t商品名称：【"+tempro[1]+"】\t 商品价格：【"+tempro[2]+"元】\t 商品数量：【"+tempro[5]+tempro[7]+"】\t金额:【"+tempro[6]+"】元";
				}
				
			
		}
		carStr = carStr + "           商品总数量：【"+ppnum+"】件  &nbsp;&nbsp;商品价格总计：【"+pallMoney+"】元";
			cartorders[t].innerHTML=carStr;
		
	}
		
	// 关于购物车状态信息 conusercart
	
	    ppnum = 0;
		pallMoney = 0.00;
		//设计订单框
		cartorders = $('.conusercart_list');
			for(var t = 0 ;t<cartorders.length;t++)
	{
		
		var carStr = new String();  //放入订单栏目之内
		
		for(var tj=0;tj<prolist.length;tj++)
		{
			var tempro =  new Array();
		tempro = prolist[tj];
		if(tempro.length==0)
		{
			carStr = carStr + "您没有放入任何商品";
			}else
			{
				ppnum = parseInt(ppnum) + parseInt(tempro[5]);
				pallMoney = pallMoney + parseInt(tempro[5])*parseFloat(tempro[2]);
				//carStr = carStr + "商品编号：【 "+tempro[0]+" 】\t商品名称：【"+tempro[1]+"】\t 商品价格：【"+tempro[2]+"元】\t 商品数量：【"+tempro[5]+tempro[7]+"】\t金额:【"+tempro[6]+"】元";
				}
				
			showDuiBi
		}
		    carStr = carStr + "           商品总数量：【<font color=#ff0000>"+ppnum+"</font>】件  &nbsp;&nbsp;价格总计：【<font color=#ff0000>"+pallMoney+"</font>】元 &nbsp;&nbsp;<span class='isShowOrHideusercart' onClick='showHidecart()'  style='cursor:hand;'><font color=#009900><b>显示购物车</b></font></span>&nbsp;&nbsp;<span class='isShowOrHideusercart' onClick='showDuiBi()'  style='cursor:hand;'><font color=#009900><b>显示商品对比</b></font></span>";
			cartorders[t].innerHTML=carStr;
		
	}
		
	if(isHide)
    {
	$('.myusercart_list').hide();
	$('.isShowOrHideusercart').innerHTML='显示购物车';
	
	}else
	{
		$('.myusercart_list').show();
		$('.isShowOrHideusercart').innerHTML='隐藏购物车';
		}
	
	
	
	
	}
	
function showHidecart()
{
	
	if(isHide)
	{
		isHide = false;
		$('.isShowOrHideusercart').innerHTML='显示购物车';
		}else
		{
			isHide = true;
			$('.isShowOrHideusercart').innerHTML='隐藏购物车';
			}
	
	$('.myusercart_list').slideToggle(500);
	}
	
	
	
	function showDuiBi()
	{
		if(isDuiBi)
		{
			isDuiBi = false;
			
			}else
			{
				isDuiBi = true;
			
				}
				
				$('.myuserduibi_list').slideToggle(500);
		}
	
	
function addNewPro(proId,proName,proPrice,userId,picPath,proNum,punit)
{
	
	
	
	var pro = new Array();
	pro[0] = proId;
	pro[1] = proName;
	pro[2] = proPrice;
	pro[3] = userId;
	pro[4] = picPath;
	pro[5] = proNum;
	pro[6] = pro[2]*pro[5];
	if(punit=='')
	{
		punit = '暂无';
		}
	pro[7] = punit;
	var pnum = 0; //商品的总数量
	var pmon =0.00; //商品的总价格
	
	
	if(prolist == null)
	{
		prolist = new Array();
		prolist[0] = pro;
		
		
		}else
		{
			var isbis = false;
			for(var i=0;i<prolist.length;i++) //查看是否有重复的
			{
				if(prolist[i][0]==proId)
				{
					prolist[i][5]++;
					prolist[i][6] = prolist[i][2]*(prolist[i][5]);
					isbis = true;
					
					}
				
				}
				
			if(!isbis)
			{
			var tpronum = prolist.length;
			prolist[tpronum] = pro;
				}	
				
				for(var i=0;i<prolist.length;i++) //查看是否有重复的
			{
			
				pnum = parseInt(pnum) + parseInt(prolist[i][5]);
				pmon = parseFloat(pmon) + parseFloat(prolist[i][6]);
				}
				
				
			
			}
			
			$.cookie('myusercart',prolist);
			var strs = new String();
			strs = "<font color=green style=font-size:12px;>商品已经放入购物车中，请您继续购物<br> 商品总数量：<font color=#ff0000><b>"+pnum+"</b></font>件<br>商品总价格：<font color=#ff0000><b>"+pmon+" </b></font>元</font>";
			$.messager.show('<font color=red>加入购物车成功</font>', strs);
			updatelist();
	}

function showProList()
{
	return "<sss>ss<sss>";
	}




