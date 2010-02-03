 function CLSscroll()
 {	 
 /************************************************************
 *     程序员杨龙：2008年3月31号    QQ:274797328     *
/ ***********************************************************
 * 如果您使用，请留下这段声明，不会影响您的速度，这也是对我的这点工作的默认    *
 //filepath = 'filename,fileSRC,tooltip,urlPath|filename,fileUrl,tooltip|filename,fileUrl,tooltip'
 //参数说明：filepath,stype,width,height,speed,picWidth,picHeight
 // filepath: 要显示的图片，以filepath的格式排列 |图片名称，图片地址，提示文本|
 //Style :显示的样式：1 向左动  2 向右动 3 向上东 4 向下东
 //width:滚的宽
 //height:滚动高
 //picwidth:图片宽 
 //picHeight:图片高
 ************************************************************/
	this.arrList ;this.arrpic ; this.divout; this.divin; this.divinner;
	  this.filepath; var stype=1; this.width;
	  this.height;  //显示滚动的一些特性属性 
	  var speed;var thisStat; var interID ;
	  this.start  = function (filepath,stypes,width,height,speed,picWidth,picHeight)
	  {
		   stype    = stypes;
		  return this.onInit (filepath,stypes,width,height,speed,picWidth,picHeight);
		  }	  
	   this.onInit = function(filepath,stype,width,height,speed,picWidth,picHeight)
	 {
		 
		 this.filepath = filepath;
		    
		 this.width    = width;
		 this.height   = height;
		 this.speed   = speed;
        	 var filepaths = filepath.split("|");
		 this.arrList   = new Array(filepaths.length);
		 //数组初始化
		  arrpic = "";
		// alert('width='+width+'hei+'+height+'speed'+speed);
		 if(stype ==3 || stype ==4 )
		 {
			  for(var i = 0;i<filepaths.length;i++)
		 {	
		 
			 var temps = filepaths[i].split(",");  
				 arrpic = arrpic +"<div><a href='"+temps[3]+"'><div style='background-color:#999999;padding-right:6px;padding-bottom:3px;padding-left:6px;padding-top:3px;border:1px  #cccccc outset;'><div style='padding-right:3px;padding-bottom:3px;padding-left:3px;padding-top:3px;border:1px  #cccccc outset;'><img border=0 alt='"+temps[2]+"'  width='"+picWidth+"' height='"+picHeight+"' src='"+temps[1]+"' ></div></div></a></div><div align='center'><a href='"+temps[3]+"'><div style='padding-right:3px;padding-bottom:3px;padding-left:3px;padding-top:3px;border:1px  #ececec outset;'>"+temps[0]+"</div></a></div></div><br>";
			 }
			 
			  var divouts =             "<div style='margin-top:20px;' ><div  id=demo style='overflow:hidden;height:"+this.height+"px;width:"+this.width+"px;'>";
		 divouts= divouts+"<table id='myshow'   border=0><tr ><td id=demo1>"+arrpic+"</td></tr>";
		 divouts= divouts+"<tr><td  id=demo2></td></div></div>";
		 document.write(divouts);		 
			 }else{  
			 arrpic ="<table border=0><tr>";
		 for(var i = 0;i<filepaths.length;i++)
		 {			 
			 var temps = filepaths[i].split(",");
				 arrpic = arrpic +"<td><div><a href='"+temps[3]+"'><div style='background-color:#999999;padding-right:6px;padding-bottom:3px;border-bottom:0px;padding-left:6px;padding-top:3px;border:1px  #cccccc outset;'><div style='padding-right:3px;padding-bottom:3px;padding-left:3px;padding-top:3px;border:1px  #ececec outset;'><img border=0 alt='"+temps[2]+"'  width='"+picWidth+"' height='"+picHeight+"' src='"+temps[1]+"' ></div></div></a></div><div align=center><a href='"+temps[3]+"'><div style='padding-right:3px;padding-bottom:3px;padding-left:3px;padding-top:3px;border:1px  #ececec outset;'>"+temps[0]+"</div></a></div></td>";
			 }
			  arrpic = arrpic+"</tr></table>";
			   var divouts =             "<div style='margin-top:20px;' ><div  id=demo style='overflow:hidden;height:"+this.height+"px;width:"+this.width+"px;'>";
		       divouts= divouts+"<table id='myshow'   border=0><tr><td id=demo1>"+arrpic+"</td>";
		      divouts= divouts+"<td id=demo2></td></div></div>";
		      document.write(divouts);
			 }	
		divinner =  document.getElementById("demo2");   // end
               divin=document.getElementById("demo1");        //begin
              divout=document.getElementById("demo");        //container
	      document.getElementById("myshow").onmouseover = this.onMouseOver;
	      document.getElementById("myshow").onmouseout = this.onMouseOut;
	      divinner.innerHTML = divin.innerHTML;	
	      interID = window.setInterval(run,100);	     
		 }		 
       //这里是滚动的函数
         
	 function run()
	 { 
	
		 //向左滚动
		 if(stype ==1)
		 {
			
		 if(eval(divinner.offsetWidth -divout.scrollLeft)<=0 )
		 {
			 divout.scrollLeft-= divin.offsetWidth;
			 }else
			 {
				 divout.scrollLeft+=5;   //这里是调节滚动的速度 
	   } 
	        }
		//向右滚动
		 if(stype ==2)
		 {
			
		 if(eval(divinner.offsetWidth -divout.scrollLeft)>=0 )
		 {
			 divout.scrollLeft+= divin.offsetWidth;
			 }else
			 {
				 divout.scrollLeft-=5;   //这里是调节滚动的速度 
	   } 
	        }
			//向上滚动
			 if(stype ==3)
		 {
			
		 if(eval(divinner.offsetHeight -divout.scrollTop)<=0 )
		 {
			 divout.scrollTop-= divin.offsetHeight;
			 }else
			 {
				 divout.scrollTop  +=5;   //这里是调节滚动的速度 
	   } 
	        }
		 if(stype ==4)
		 {
			
		 if(eval(divinner.offsetHeight -divout.scrollTop)>=0 )
		 {
			 divout.scrollTop+= divin.offsetHeight;
			 }else
			 {
				 divout.scrollTop  -=5;   //这里是调节滚动的速度 
	   } 
	        }		
		 }
	 this.onMouseOver = function()
	 {	
		  window.clearInterval(interID);			
      // 	       
		 }
	 this.onMouseOut   = function()
	 {		   
		     interID =  window.setInterval(run,100);	
		// 
		 }
		 
	 }