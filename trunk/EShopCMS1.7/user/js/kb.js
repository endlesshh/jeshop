
function checkspace(checkstr) {
  var str = '';
  for(i = 0; i < checkstr.length; i++) {
    str = str + ' ';
  }
  return (str == checkstr);
}
function check()
{
  if(checkspace(document.admininfo.admin.value)) {
	document.admininfo.admin.focus();
    alert("管理员用户名不能为空！");
	return false;
  }
  if(checkspace(document.admininfo.UserPassword.value)) {
	document.admininfo.UserPassword.focus();
    alert("密码不能为空！");
	return false;
  }
    if(checkspace(document.admininfo.passcode.value)) {
	document.admininfo.passcode.focus();
    alert("验证码不能为空！");
	return false;
  }
	document.admininfo.submit();
  }
  
  //定义当前是否大写的状态
var password1; var CapsLockValue=0;
var checkSoftKey;
var pIsPWD=false;
var ps;	
function setVariables() {
tablewidth=630;
tableheight=20;
if (navigator.appName == "Netscape") {
horz=".left";
vert=".top";
docStyle="document.";
styleDoc="";
innerW="window.innerWidth";
innerH="window.innerHeight";
offsetX="window.pageXOffset";
offsetY="window.pageYOffset";
}
else {
horz=".pixelLeft";
vert=".pixelTop";
docStyle="";
styleDoc=".style";
innerW="document.body.clientWidth";
innerH="document.body.clientHeight";
offsetX="document.body.scrollLeft";
offsetY="document.body.scrollTop";
}
}
function checkLocation() {
if (checkSoftKey) {
objectXY="softkeyboard";
var availableX=eval(innerW);
var availableY=eval(innerH);
var currentX=eval(offsetX);
var currentY=eval(offsetY);
x=availableX-tablewidth+currentX;
y=currentY;
evalMove();
}
setTimeout("checkLocation()",0);
}
function evalMove() {
eval(docStyle + objectXY + styleDoc + vert + "=" + y);
}
self.onError=null;
currentX = currentY = 0;  
whichIt = null;           
lastScrollX = 0; lastScrollY = 0;
NS = (document.layers) ? 1 : 0;
IE = (document.all) ? 1: 0;
function heartBeat() {
if(IE) { diffY = document.body.scrollTop; diffX = document.body.scrollLeft; }
if(NS) { diffY = self.pageYOffset; diffX = self.pageXOffset; }
if(diffY != lastScrollY) {
percent = .1 * (diffY - lastScrollY);
if(percent > 0) percent = Math.ceil(percent);
else percent = Math.floor(percent);
if(IE) document.all.softkeyboard.style.pixelTop += percent;
if(NS) document.softkeyboard.top += percent; 
lastScrollY = lastScrollY + percent;}
if(diffX != lastScrollX) {
percent = .1 * (diffX - lastScrollX);
if(percent > 0) percent = Math.ceil(percent);
else percent = Math.floor(percent);
if(IE) document.all.softkeyboard.style.pixelLeft += percent;
if(NS) document.softkeyboard.left += percent;
lastScrollX = lastScrollX + percent;	}		}
function checkFocus(x,y) { 
stalkerx = document.softkeyboard.pageX;
stalkery = document.softkeyboard.pageY;
stalkerwidth = document.softkeyboard.clip.width;
stalkerheight = document.softkeyboard.clip.height;
if( (x > stalkerx && x < (stalkerx+stalkerwidth)) && (y > stalkery && y < (stalkery+stalkerheight))) return true;
else return false;}
function grabIt(e) {
checkSoftKey = false;
if(IE) {
whichIt = event.srcElement;
while (whichIt.id!=null&&whichIt.id.indexOf("softkeyboard") == -1) {
whichIt = whichIt.parentElement;
if (whichIt == null) { return true; } }
if(whichIt.style!=null){
whichIt.style.pixelLeft = whichIt.offsetLeft;
whichIt.style.pixelTop = whichIt.offsetTop;
}
currentX = (event.clientX + document.body.scrollLeft);
currentY = (event.clientY + document.body.scrollTop); 	
} else { 
window.captureEvents(Event.MOUSEMOVE);
if(checkFocus (e.pageX,e.pageY)) { 
whichIt = document.softkeyboard;
StalkerTouchedX = e.pageX-document.softkeyboard.pageX;
StalkerTouchedY = e.pageY-document.softkeyboard.pageY;} }
return true;	}
function moveIt(e) {
if (whichIt == null) { return false; }
if(IE) {
if(whichIt.style!=null){
newX = (event.clientX + document.body.scrollLeft);
newY = (event.clientY + document.body.scrollTop);
distanceX = (newX - currentX);    distanceY = (newY - currentY);
currentX = newX;    currentY = newY;
whichIt.style.pixelLeft += distanceX;
whichIt.style.pixelTop += distanceY;
if(whichIt.style.pixelTop < document.body.scrollTop) whichIt.style.pixelTop = document.body.scrollTop;
if(whichIt.style.pixelLeft < document.body.scrollLeft) whichIt.style.pixelLeft = document.body.scrollLeft;
if(whichIt.style.pixelLeft > document.body.offsetWidth - document.body.scrollLeft - whichIt.style.pixelWidth - 20) whichIt.style.pixelLeft = document.body.offsetWidth - whichIt.style.pixelWidth - 20;
if(whichIt.style.pixelTop > document.body.offsetHeight + document.body.scrollTop - whichIt.style.pixelHeight - 5) whichIt.style.pixelTop = document.body.offsetHeight + document.body.scrollTop - whichIt.style.pixelHeight - 5;
event.returnValue = false;
}
} else { 
whichIt.moveTo(e.pageX-StalkerTouchedX,e.pageY-StalkerTouchedY);
if(whichIt.left < 0+self.pageXOffset) whichIt.left = 0+self.pageXOffset;
if(whichIt.top < 0+self.pageYOffset) whichIt.top = 0+self.pageYOffset;
if( (whichIt.left + whichIt.clip.width) >= (window.innerWidth+self.pageXOffset-17)) whichIt.left = ((window.innerWidth+self.pageXOffset)-whichIt.clip.width)-17;
if( (whichIt.top + whichIt.clip.height) >= (window.innerHeight+self.pageYOffset-17)) whichIt.top = ((window.innerHeight+self.pageYOffset)-whichIt.clip.height)-17;
return false;}
return false;	}
function dropIt() {whichIt = null;
if(NS) window.releaseEvents (Event.MOUSEMOVE);
return true;	}
if(NS) {window.captureEvents(Event.MOUSEUP|Event.MOUSEDOWN);
window.onmousedown = grabIt;
window.onmousemove = moveIt;
window.onmouseup = dropIt;	}
if(IE) {
document.onmousedown = grabIt;
document.onmousemove = moveIt;
document.onmouseup = dropIt;	}
var style1="<style>";
style1+=".zxwbut {BORDER-RIGHT: 0px solid; PADDING-RIGHT: 1px; BORDER-TOP: 0px solid; PADDING-LEFT: 0px;FONT-SIZE: 14px; BORDER-LEFT: 0px solid; CURSOR: hand;PADDING-TOP: 1px; BORDER-BOTTOM: 0px solid; width:25px; height:20px;}";
style1+=".zxwmub {width:25px;BORDER-RIGHT:1px solid; PADDING-RIGHT: 1px; BORDER-TOP: 0px solid; PADDING-LEFT: 0px; FONT-SIZE: 12px; BORDER-LEFT: 0px solid; CURSOR: hand; PADDING-TOP: 1px; BORDER-BOTTOM: 0px solid;height:21px;}";
style1+=".table_title {FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#B2DEF7, EndColorStr=#7AB7DA); height:26px;padding-top: 3px;}";
style1+=".btn_input {BORDER-RIGHT: #2C59AA 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #2C59AA 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#C3DAF5); BORDER-LEFT: #2C59AA 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #2C59AA 1px solid}";
style1+="</style>";	
document.write(style1);																																																			
document.write("<DIV align=center id=\"softkeyboard\" name=\"softkeyboard\" style=\"position:absolute; left:0px; top:0px; width:400px; z-index:180;display:none\"><table id=\"CalcTable\" width=\"\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\"><FORM id=Calc name=Calc action=\"\" method=post autocomplete=\"off\"><tr><td class=\"table_title\" title=\"尊敬的客户：为了保证网上交易安全,建议使用密码输入器输入密码!\" align=\"right\" valign=\"middle\" bgcolor=\"\" style=\"cursor: default;height:30\"><INPUT type=hidden value=\"\" name=password><INPUT type=hidden value=ok name=action2>&nbsp<font style=\"font-weight:bold; font-size:13px; color:#075BC3\">领先网络软件密码输入</font>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp&nbsp;<INPUT id=useKey class=\"btn_input\" type=button value=\"使用键盘输入\" bgtype=\"1\" onclick=\"password1.readOnly=0;password1.focus();closekeyboard();password1.value='';\"><span style=\"width:2px;\"></span></td></tr><tr align=\"center\"><td align=\"center\" bgcolor=\"#FFFFFF\"><table align=\"center\" width=\"%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\">\n<tr align=\"left\" valign=\"middle\"> \n<td> <input type=button value=\" ~ \"></td>\n<td> <input type=button value=\" ! \"></td>\n<td> <input type=button value=\" @ \"></td>\n<td> <input type=button value=\" # \"></td>\n<td> <input type=button value=\" $ \"></td>\n<td><input type=button value=\" % \"></td>\n<td><input type=button value=\" ^ \"></td>\n<td> <input type=button value=\" & \"></td>\n<td><input type=button value=\" * \"></td>\n<td><input type=button value=\" ( \"></td>\n<td><input type=button value=\" ) \"></td>\n<td><input type=button value=\" _ \"></td>\n<td> <input type=button value=\" + \"></td>\n<td><input type=button value=\" | \"></td>\n<td colspan=\"1\" rowspan=\"2\"> <input name=\"button10\" type=button value=\" 退格\" onclick=\"setpassvalue();\"  onDblClick=\"setpassvalue();\" style=\"width:100px;height:40px\"> \n</td>\n</tr>\n<tr align=\"left\" valign=\"middle\"> \n<td><input type=button value=\" ` \"></td>\n<td><input type=button bgtype=\"2\" name=\"button_number1\" value=\" 1 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number2\" value=\" 2 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number3\" value=\" 3 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number4\" value=\" 4 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number5\" value=\" 5 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number6\" value=\" 6 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number7\" value=\" 7 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number8\" value=\" 8 \"></td>\n<td> <input type=button bgtype=\"2\" name=\"button_number9\" value=\" 9 \"></td>\n<td> <input bgtype=\"2\"  name=\"button_number0\" type=button value=\" 0 \"></td>\n<td> <input type=button value=\" - \"></td>\n<td> <input type=button value=\" = \"></td>\n<td> <input type=button value=\" \\ \"></td>\n<td> </td>\n</tr>\n<tr align=\"left\" valign=\"middle\"> \n<td> <input type=button value=\" q \"></td>\n<td> <input type=button value=\" w \"></td>\n<td> <input type=button value=\" e \"></td>\n<td> <input type=button value=\" r \"></td>\n<td> <input type=button value=\" t \"></td>\n<td> <input type=button value=\" y \"></td>\n<td> <input type=button value=\" u \"></td>\n<td> <input type=button value=\" i \"></td>\n<td> <input type=button value=\" o \"></td>\n<td> <input name=\"button8\" type=button value=\" p \"></td>\n<td> <Input name=\"button9\" type=button value=\" { \"></td>\n<td> <input type=button value=\" } \"></td>\n<td> <input type=button value=\" [ \"></td>\n<td> <input type=button value=\" ] \"></td>\n<td><input name=\"button9\" type=button onClick=\"capsLockText();setCapsLock();\"  onDblClick=\"capsLockText();setCapsLock();\" value=\"切换大/小写\" style=\"width:100px;\"></td>\n</tr>\n<tr align=\"left\" valign=\"middle\"> \n<td> <input type=button value=\" a \"></td>\n<td> <input type=button value=\" s \"></td>\n<td> <input type=button value=\" d \"></td>\n<td> <input type=button value=\" f \"></td>\n<td> <input type=button value=\" g \"></td>\n<td> <input type=button value=\" h \"></td>\n<td> <input type=button value=\" j \"></td>\n<td> <input name=\"button3\" type=button value=\" k \"></td>\n<td> <input name=\"button4\" type=button value=\" l \"></td>\n<td> <input name=\"button5\" type=button value=\" : \"></td>\n<td> <input name=\"button7\" type=button value=\" &quot; \"></td>\n<td> <input type=button value=\" ; \"></td>\n<td> <input type=button value=\" ' \"></td>\n<td rowspan=\"2\" colspan=\"2\"> <input name=\"button12\" type=button onclick=\"OverInput();\" value=\"   确定  \" style=\"width:126px;height:42px;\"></td>\n</tr>\n<tr align=\"left\" valign=\"middle\"> \n<td><input name=\"button2\" type=button value=\" z \"></td>\n<td> <input type=button value=\" x \"></td>\n<td> <input type=button value=\" c \"></td>\n<td> <input type=button value=\" v \"></td>\n<td> <input type=button value=\" b \"></td>\n<td> <input type=button value=\" n \"></td>\n<td> <input type=button value=\" m \"></td>\n<td> <input type=button value=\" &lt; \"></td>\n<td> <input type=button value=\" &gt; \"></td>\n<td> <input type=button value=\" ? \"></td>\n<td> <input type=button value=\" , \"></td>\n <td> <input type=button value=\" . \"></td>\n <td> <input type=button value=\" / \"></td>\n</tr>\n</table></td></FORM></tr></table></DIV>");

function addValue(newValue)
{
if (CapsLockValue==0)
{
var str=Calc.password.value;
if(str.length<password1.maxLength)
{
Calc.password.value += newValue;
}			
if(str.length<=password1.maxLength)
{
password1.value=Calc.password.value;
pspassword1();
}
}
else
{
var str=Calc.password.value;
if(str.length<password1.maxLength)
{
//Calc.password.value += newValue.toUpperCase();
Calc.password.value += newValue;
}
if(str.length<=password1.maxLength)
{
password1.value=Calc.password.value;
pspassword1();
}
}
}

function setpassvalue()
{
var longnum=Calc.password.value.length;
var num
num=Calc.password.value.substr(0,longnum-1);
Calc.password.value=num;
var str=Calc.password.value;
password1.value=Calc.password.value;
pspassword1();
}

function OverInput()
{
var str=Calc.password.value;
password1.value=Calc.password.value;
removeJiamiName();
pspassword1();
closekeyboard();
Calc.password.value="";
password1.readOnly=1;
}

function closekeyboard(theForm)
{
softkeyboard.style.display="none";
if(null!=unhideSelect){
unhideSelect();
}
}

function showkeyboard()
{
randomNumberButton();
var th = password1;
var ttop  = th.offsetTop;
var thei  = th.clientHeight;
var tleft = th.offsetLeft;
var ttyp  = th.type;
while (th = th.offsetParent){ttop+=th.offsetTop; tleft+=th.offsetLeft;}
softkeyboard.style.top  = ttop+thei+16;
softkeyboard.style.left = tleft-100;
softkeyboard.style.display="block";
password1.readOnly=1;
password1.blur();
document.all.useKey.focus();
if(null!=hideSelect){
hideSelect();
}
}

function setCapsLock()
{
if (CapsLockValue==0)
{
CapsLockValue=1
}
else 
{
CapsLockValue=0
}
}
function setCalcborder()
{
CalcTable.style.border="1px solid #148791"
}
function setHead()
{
CalcTable.cells[0].style.backgroundColor="#ADEFF3"	
}
function setCalcButtonBg()
{
for(var i=0;i<Calc.elements.length;i++)
{
if(Calc.elements[i].type=="button"&&Calc.elements[i].bgtype!="1")
{
if(Calc.elements[i].bgtype=="2"){
Calc.elements[i].className="zxwmub";
}else{
Calc.elements[i].className="zxwbut";
}
var str1=Calc.elements[i].value;
str1=str1.trim();
if(str1.length==1)
{
}
var thisButtonValue=Calc.elements[i].value;
thisButtonValue=thisButtonValue.trim();
if(thisButtonValue.length==1)
{
Calc.elements[i].onclick=
function ()
{
var thisButtonValue=this.value;
thisButtonValue=thisButtonValue.trim();
thisButtonValue=jiamiMimaKey(thisButtonValue);
addValue(thisButtonValue);
}
Calc.elements[i].ondblclick=
function ()
{
var thisButtonValue=this.value;
thisButtonValue=thisButtonValue.trim();
thisButtonValue=jiamiMimaKey(thisButtonValue);
addValue(thisButtonValue);
}
}
}
}
}
function initCalc()
{
setCalcborder();
setHead();
setCalcButtonBg();
}
String.prototype.trim = function()
{
return this.replace(/(^\s*)|(\s*$)/g, "");
}
var capsLockFlag;
capsLockFlag=true;
function capsLockText()
{
if(capsLockFlag)
{
for(var i=0;i<Calc.elements.length;i++)
{
var char=Calc.elements[i].value;
var char=char.trim()
if(Calc.elements[i].type=="button"&&char>="a"&&char<="z"&&char.length==1)
{
Calc.elements[i].value=" "+String.fromCharCode(char.charCodeAt(0)-32)+" "
}
}
}
else
{
for(var i=0;i<Calc.elements.length;i++)
{
var char=Calc.elements[i].value;
var char=char.trim()
if(Calc.elements[i].type=="button"&&char>="A"&&char<="Z"&&char.length==1)
{
Calc.elements[i].value=" "+String.fromCharCode(char.charCodeAt(0)+32)+" "
}
}
}
capsLockFlag=!capsLockFlag;
}

function randomNumberButton(){
var a = new Array(10);  
a[0]=0;a[1]=1;a[2]=2;a[3]=3;a[4]=4;a[5]=5;a[6]=6;a[7]=7;a[8]=8;a[9]=9;
var randomNum;
var times=10;
for(var i=0;i<10;i++){
randomNum = parseInt(Math.random()*10);
var tmp=a[0];
a[0]=a[randomNum];
a[randomNum]=tmp;
}
Calc.button_number0.value=" "+a[0]+" ";
Calc.button_number1.value=" "+a[1]+" ";
Calc.button_number2.value=" "+a[2]+" ";
Calc.button_number3.value=" "+a[3]+" ";
Calc.button_number4.value=" "+a[4]+" ";
Calc.button_number5.value=" "+a[5]+" ";
Calc.button_number6.value=" "+a[6]+" ";
Calc.button_number7.value=" "+a[7]+" ";
Calc.button_number8.value=" "+a[8]+" ";
Calc.button_number9.value=" "+a[9]+" ";
}

function hideSelect(){
var i=0;
while(i<document.getElementsByTagName("select").length){
document.getElementsByTagName("select")[i].style.visibility = "hidden";
i=i+1;
}
}

function unhideSelect(){
var i=0;
while(i<document.getElementsByTagName("select").length){
document.getElementsByTagName("select")[i].style.visibility = "visible";
i=i+1;
}
}


function  jiamiMimaKey(newValue) {
	if (typeof(b) == "undefined" || typeof(ifUseYinshe) == "undefined" || ifUseYinshe == 0) {return newValue;}
	var everyone = '';
	var afterPass = '';
	for (var i=0;i<newValue.length;i++ ) {
			everyone = newValue.charAt(i);
			for (var j =0;j<((b.length)/2);j++) {
					if (everyone == b[2*j]) {
							afterPass = afterPass + b[2*j+1];
							break;
					}
			}
		}
		newValue= afterPass;
		if (typeof(jiami) != "undefined"){
				jiami = 1;
		}		
		return afterPass;
}

function removeJiamiName() {
		var jiamiObjectname = password1.name; 
		var jiamiObjectnameBefore = jiamiObjectname + ',';
		var jiamiObjectnameAll = ','+jiamiObjectname + ',';
		if (typeof(keyjiamiName) != "undefined") {
				if (keyjiamiName.indexOf(jiamiObjectnameBefore) == 0) {
						keyjiamiName = keyjiamiName.substring(jiamiObjectnameBefore.length);
				} else if (keyjiamiName.indexOf(jiamiObjectnameAll) != -1) {
						keyjiamiName.replace(jiamiObjectnameBefore,',');
				}
	  }
	
} 

function pspassword1(){
	var passwd=password1.value;
	var PWD=document.getElementsByName("PWD");
	if(PWD!=null && ps!=null && pIsPWD) {

//add by lvwj modify date:20070226

	    ps.update(getStartPassword(passwd));
	}
}
password1=null;		
initCalc();
if (typeof document.attachEvent!='undefined') {
   window.attachEvent('onload',init);
   document.attachEvent('onmousemove',moveMouse);
   document.attachEvent('onclick',checkMove); }
else {
   window.addEventListener('load',init,false);
   document.addEventListener('mousemove',moveMouse,false);
   document.addEventListener('click',checkMove,false);
}

var oDv=document.createElement("div");
var dvHdr=document.createElement("div");
var dvBdy=document.createElement("div");
var windowlock,boxMove,fixposx,fixposy,lockX,lockY,fixx,fixy,ox,oy,boxLeft,boxRight,boxTop,boxBottom,evt,mouseX,mouseY,boxOpen,totalScrollTop,totalScrollLeft;
boxOpen=false;
ox=10;
oy=10;
lockX=0;
lockY=0;

function init() {
 oDv.appendChild(dvHdr);
 oDv.appendChild(dvBdy);
 oDv.style.position="absolute";
 oDv.style.visibility='hidden';
 document.body.appendChild(oDv); 
}

function defHdrStyle() {
 dvHdr.innerHTML='<img  style="vertical-align:middle"  src="info.gif">&nbsp;&nbsp;'+dvHdr.innerHTML;
 dvHdr.style.fontWeight='bold';
 dvHdr.style.width='150px';
 dvHdr.style.fontFamily='arial';
 dvHdr.style.border='1px solid #cccccc';
 dvHdr.style.padding='3';
 dvHdr.style.fontSize='11';
 dvHdr.style.color='#333333';
 dvHdr.style.background='#DBDBDB';
 dvHdr.style.filter='alpha(opacity=85)'; // IE
 dvHdr.style.opacity='0.85'; // FF
}

function defBdyStyle() {
 dvBdy.style.borderBottom='1px solid #cccccc';
 dvBdy.style.borderLeft='1px solid #cccccc';
 dvBdy.style.borderRight='1px solid #cccccc';
 dvBdy.style.width='150px';
 dvBdy.style.fontFamily='arial';
 dvBdy.style.fontSize='11';
 dvBdy.style.padding='3';
 dvBdy.style.color='#666666';
 dvBdy.style.background='#FFFFFF';
 dvBdy.style.filter='alpha(opacity=85)'; // IE
 dvBdy.style.opacity='0.85'; // FF
}

function checkElemBO(txt) {
if (!txt || typeof(txt) != 'string') return false;
if ((txt.indexOf('header')>-1)&&(txt.indexOf('body')>-1)&&(txt.indexOf('[')>-1)&&(txt.indexOf('[')>-1)) 
   return true;
else
   return false;
}

function scanBO(curNode) {
   if (checkElemBO(curNode.title)) {
         curNode.boHDR=getParam('header',curNode.title);
         curNode.boBDY=getParam('body',curNode.title);
   curNode.boCSSBDY=getParam('cssbody',curNode.title);   
   curNode.boCSSHDR=getParam('cssheader',curNode.title);
   curNode.IEbugfix=(getParam('hideselects',curNode.title)=='on')?true:false;
   curNode.fixX=parseInt(getParam('fixedrelx',curNode.title));
   curNode.fixY=parseInt(getParam('fixedrely',curNode.title));
   curNode.absX=parseInt(getParam('fixedabsx',curNode.title));
   curNode.absY=parseInt(getParam('fixedabsy',curNode.title));
   curNode.offY=(getParam('offsety',curNode.title)!='')?parseInt(getParam('offsety',curNode.title)):10;
   curNode.offX=(getParam('offsetx',curNode.title)!='')?parseInt(getParam('offsetx',curNode.title)):10;
   curNode.fade=(getParam('fade',curNode.title)=='on')?true:false;
   curNode.fadespeed=(getParam('fadespeed',curNode.title)!='')?getParam('fadespeed',curNode.title):0.04;
   curNode.delay=(getParam('delay',curNode.title)!='')?parseInt(getParam('delay',curNode.title)):0;
   if (getParam('requireclick',curNode.title)=='on') {
    curNode.requireclick=true;
    document.all?curNode.attachEvent('onclick',showHideBox):curNode.addEventListener('click',showHideBox,false);
    document.all?curNode.attachEvent('onmouseover',hideBox):curNode.addEventListener('mouseover',hideBox,false);
   }
   else {// Note : if requireclick is on the stop clicks are ignored      
      if (getParam('doubleclickstop',curNode.title)!='off') {
       document.all?curNode.attachEvent('ondblclick',pauseBox):curNode.addEventListener('dblclick',pauseBox,false);
      } 
      if (getParam('singleclickstop',curNode.title)=='on') {
       document.all?curNode.attachEvent('onclick',pauseBox):curNode.addEventListener('click',pauseBox,false);
      }
     }
   curNode.windowLock=getParam('windowlock',curNode.title).toLowerCase()=='off'?false:true;
   curNode.title='';
   curNode.hasbox=1;
    }
    else
       curNode.hasbox=2;   
}


function getParam(param,list) {
 var reg = new RegExp('([^a-zA-Z]' + param + '|^' + param + ')\\s*=\\s*\\[\\s*(((\\[\\[)|(\\]\\])|([^\\]\\[]))*)\\s*\\]');
 var res = reg.exec(list);
 var returnvar;
 if(res)
  return res[2].replace('[[','[').replace(']]',']');
 else
  return '';
}

function Left(elem){ 
 var x=0;
 if (elem.calcLeft)
  return elem.calcLeft;
 var oElem=elem;
 while(elem){
   if ((elem.currentStyle)&& (!isNaN(parseInt(elem.currentStyle.borderLeftWidth)))&&(x!=0))
    x+=parseInt(elem.currentStyle.borderLeftWidth);
   x+=elem.offsetLeft;
   elem=elem.offsetParent;
   } 
 oElem.calcLeft=x;
 return x;
 }

function Top(elem){
  var x=0;
  if (elem.calcTop)
   return elem.calcTop;
  var oElem=elem;
  while(elem){  
    if ((elem.currentStyle)&& (!isNaN(parseInt(elem.currentStyle.borderTopWidth)))&&(x!=0))
    x+=parseInt(elem.currentStyle.borderTopWidth); 
   x+=elem.offsetTop;
          elem=elem.offsetParent;
   } 
   oElem.calcTop=x;
   return x;
   
}

var ah,ab;
function applyStyles() {
 if(ab)
  oDv.removeChild(dvBdy);
 if (ah)
  oDv.removeChild(dvHdr);
 dvHdr=document.createElement("div");
 dvBdy=document.createElement("div");
 CBE.boCSSBDY?dvBdy.className=CBE.boCSSBDY:defBdyStyle();
 CBE.boCSSHDR?dvHdr.className=CBE.boCSSHDR:defHdrStyle();
 dvHdr.innerHTML=CBE.boHDR;
 dvBdy.innerHTML=CBE.boBDY;
 ah=false;
 ab=false;
 if (CBE.boHDR!='') {  
  oDv.appendChild(dvHdr);
  ah=true;
 } 
 if (CBE.boBDY!=''){
  oDv.appendChild(dvBdy);
  ab=true;
 } 
}

var CSE,iterElem,LSE,CBE,LBE, totalScrollLeft, totalScrollTop, width, height ;
var ini=false;

// Customised function for inner window dimension
function SHW() {
   if (document.body && (document.body.clientWidth !=0)) {
      width=document.body.clientWidth;
      height=document.body.clientHeight;
   }
   if (document.documentElement && (document.documentElement.clientWidth!=0) && (document.body.clientWidth + 20 >= document.documentElement.clientWidth)) {
      width=document.documentElement.clientWidth;   
      height=document.documentElement.clientHeight;   
   }   
   return [width,height];
}


var ID=null;
function moveMouse(e) {
   //boxMove=true;
 e?evt=e:evt=event;
 
 CSE=evt.target?evt.target:evt.srcElement;
 
 if (!CSE.hasbox) {
    // Note we need to scan up DOM here, some elements like TR don't get triggered as srcElement
    iElem=CSE;
    while ((iElem.parentNode) && (!iElem.hasbox)) {
       scanBO(iElem);
       iElem=iElem.parentNode;
    }    
 }
 
 if ((CSE!=LSE)&&(!isChild(CSE,dvHdr))&&(!isChild(CSE,dvBdy))){  
    if (!CSE.boxItem) {
   iterElem=CSE;
   while ((iterElem.hasbox==2)&&(iterElem.parentNode))
     iterElem=iterElem.parentNode; 
   CSE.boxItem=iterElem;
   }
  iterElem=CSE.boxItem;
  if (CSE.boxItem&&(CSE.boxItem.hasbox==1))  {
   LBE=CBE;
   CBE=iterElem;
   if (CBE!=LBE) {
    applyStyles();
    if (!CBE.requireclick)
     if (CBE.fade) {
      if (ID!=null)
       clearTimeout(ID);
      ID=setTimeout("fadeIn("+CBE.fadespeed+")",CBE.delay);
     }
     else {
      if (ID!=null)
       clearTimeout(ID);
      COL=1;
      ID=setTimeout("oDv.style.visibility='visible';ID=null;",CBE.delay);      
     }
    if (CBE.IEbugfix) {hideSelects();} 
    fixposx=!isNaN(CBE.fixX)?Left(CBE)+CBE.fixX:CBE.absX;
    fixposy=!isNaN(CBE.fixY)?Top(CBE)+CBE.fixY:CBE.absY;   
    lockX=0;
    lockY=0;
    boxMove=true;
    ox=CBE.offX?CBE.offX:10;
    oy=CBE.offY?CBE.offY:10;
   }
  }
  else if (!isChild(CSE,dvHdr) && !isChild(CSE,dvBdy) && (boxMove)) {
   // The conditional here fixes flickering between tables cells.
   if ((!isChild(CBE,CSE)) || (CSE.tagName!='TABLE')) {      
      CBE=null;
      if (ID!=null)
       clearTimeout(ID);
      fadeOut();
      showSelects();
   }
  }
  LSE=CSE;
 }
 else if (((isChild(CSE,dvHdr) || isChild(CSE,dvBdy))&&(boxMove))) {
  totalScrollLeft=0;
  totalScrollTop=0;
  
  iterElem=CSE;
  while(iterElem) {
   if(!isNaN(parseInt(iterElem.scrollTop)))
    totalScrollTop+=parseInt(iterElem.scrollTop);
   if(!isNaN(parseInt(iterElem.scrollLeft)))
    totalScrollLeft+=parseInt(iterElem.scrollLeft);
   iterElem=iterElem.parentNode;   
  }
  if (CBE!=null) {
   boxLeft=Left(CBE)-totalScrollLeft;
   boxRight=parseInt(Left(CBE)+CBE.offsetWidth)-totalScrollLeft;
   boxTop=Top(CBE)-totalScrollTop;
   boxBottom=parseInt(Top(CBE)+CBE.offsetHeight)-totalScrollTop;
   doCheck();
  }
 }
 
 if (boxMove&&CBE) {
  // This added to alleviate bug in IE6 w.r.t DOCTYPE
  bodyScrollTop=document.documentElement&&document.documentElement.scrollTop?document.documentElement.scrollTop:document.body.scrollTop;
  bodyScrollLet=document.documentElement&&document.documentElement.scrollLeft?document.documentElement.scrollLeft:document.body.scrollLeft;
  mouseX=evt.pageX?evt.pageX-bodyScrollLet:evt.clientX-document.body.clientLeft;
  mouseY=evt.pageY?evt.pageY-bodyScrollTop:evt.clientY-document.body.clientTop;
  if ((CBE)&&(CBE.windowLock)) {
   mouseY < -oy?lockY=-mouseY-oy:lockY=0;
   mouseX < -ox?lockX=-mouseX-ox:lockX=0;
   mouseY > (SHW()[1]-oDv.offsetHeight-oy)?lockY=-mouseY+SHW()[1]-oDv.offsetHeight-oy:lockY=lockY;
   mouseX > (SHW()[0]-dvBdy.offsetWidth-ox)?lockX=-mouseX-ox+SHW()[0]-dvBdy.offsetWidth:lockX=lockX;   
  }
  oDv.style.left=((fixposx)||(fixposx==0))?fixposx:bodyScrollLet+mouseX+ox+lockX+"px";
  oDv.style.top=((fixposy)||(fixposy==0))?fixposy:bodyScrollTop+mouseY+oy+lockY+"px";  
  
 }
}

function doCheck() { 
 if (   (mouseX < boxLeft)    ||     (mouseX >boxRight)     || (mouseY < boxTop) || (mouseY > boxBottom)) {
  if (!CBE.requireclick)
   fadeOut();
  if (CBE.IEbugfix) {showSelects();}
  CBE=null;
 }
}

function pauseBox(e) {
   e?evt=e:evt=event;
 boxMove=false;
 evt.cancelBubble=true;
}

function showHideBox(e) {
 oDv.style.visibility=(oDv.style.visibility!='visible')?'visible':'hidden';
}

function hideBox(e) {
 oDv.style.visibility='hidden';
}

var COL=0;
var stopfade=false;
function fadeIn(fs) {
  ID=null;
  COL=0;
  oDv.style.visibility='visible';
  fadeIn2(fs);
}

function fadeIn2(fs) {
  COL=COL+fs;
  COL=(COL>1)?1:COL;
  oDv.style.filter='alpha(opacity='+parseInt(100*COL)+')';
  oDv.style.opacity=COL;
  if (COL<1)
   setTimeout("fadeIn2("+fs+")",20);  
}


function fadeOut() {
 oDv.style.visibility='hidden';
 
}

function isChild(s,d) {
 while(s) {
  if (s==d) 
   return true;
  s=s.parentNode;
 }
 return false;
}

var cSrc;
function checkMove(e) {
 e?evt=e:evt=event;
 cSrc=evt.target?evt.target:evt.srcElement;
 if ((!boxMove)&&(!isChild(cSrc,oDv))) {
  fadeOut();
  if (CBE&&CBE.IEbugfix) {showSelects();}
  boxMove=true;
  CBE=null;
 }
}

function showSelects(){
   var elements = document.getElementsByTagName("select");
   for (i=0;i< elements.length;i++){
      elements[i].style.visibility='visible';
   }
}

function hideSelects(){
   var elements = document.getElementsByTagName("select");
   for (i=0;i< elements.length;i++){
   elements[i].style.visibility='hidden';
   }
}

