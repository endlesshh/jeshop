var dir=1;
var speed=1;
demo2.innerHTML=demo1.innerHTML;
function Marquee(){
	if (dir>0  && (demo2.offsetWidth-demo.scrollLeft)<=0) demo.scrollLeft=0;
	if (dir<0 &&(demo.scrollLeft<=0)) demo.scrollLeft=demo2.offsetWidth
	demo.scrollLeft+=dir
	
	demo.onmouseover=function() {clearInterval(MyMar)}
	demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
}
function r_left(){if (dir=-1)dir=1}
function r_right(){if (dir=1)dir=-1}
var MyMar=setInterval(Marquee,speed)
