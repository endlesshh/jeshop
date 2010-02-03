function adRotator() {};
adRotator.initialize=function(o,width,height)
{
	// script by blueDestiny

	this._t = new Array();
	this._l = new Array();
	this._p = new Array();
	this._i = new Image();
	this._c = 0;
	this._f = false;
	this._o = o;

	this._timeout = null;
	this._html = "";

	// configration.
	// @ image width
	// @ image height
	// @ rotator speed
	// @ filter type

	this._w = width;
	this._h = height;
	this._s = 4;
	this._x = 23;

	return this;
};
adRotator.add=function(p,t,l) { with (this)
{
	_p.push(p);
	_t.push(t);
	_l.push(l);
}};

adRotator.load=function() { with (adRotator)
{
	if( _i.readyState=='complete' )
	{
		if(_p.length-1==_c)
		{
			_f = true;
			_c = 0;
			window.clearTimeout(_timeout);
			//getRef("AdRotator").innerHTML="complete";
			adRotator.play();
		}
		else
		{
			_c++;
			getRef(_o).innerHTML="total images " + _p.length + ", loading picture " + _c + ' ' + _i.readyState + "...";
			_timeout=window.setTimeout(adRotator.load,10)
		}
	}
	else
	{
		getRef(_o).innerHTML="total images " + _p.length + ", loading picture " + _c + ' ' + _i.readyState + "...";
		_timeout=window.setTimeout(adRotator.load,10)
	}
}};

adRotator.play=function() { with (adRotator)
{
	if( _f )
	{
	_html = "";
	_html += '<table style="border:1px solid #cccccc;"><tr><td style="font-size:9pt;font-family:tahoma;font-weight:bold;">'
	_html += '<div id="rotatorPlayer"'
			+ ' style="width:' + _w + ''
			+ ';height:"' + _h + '"'
			+ '>'
	_html += '<a href="' + ( _l[_c] ? _l[_c] : "javascript:void(0);" ) + '">';
	_html += '<img  id="rotatorPic" src="' + _p[_c] + '"'
			+ ' width="' + _w + '"'
			+ ' height="' + _h + '"'
			+ (_t[_c]?' title="' + _t[_c] + '"':'')
			+ ' style="border:1px solid cccccc;FILTER:revealTrans(transition=' + _x + ',duration=1);"'
			+ ' >';
	_html += (_t[_c]?('</a><div style="padding:5px 5px 5px 5px;height:15px;" align="center">' + (_c+1) + '. ' + _t[_c] + '</div>'):'<p></p>');
	_html += '';
	_html += "</div>";
	_html += '<div align="right">';

	for(var i=0; i<_p.length; i++)
		_html += '<span'
					+ ' style="border:1px solid #cccccc;padding:1px 5px 1px 5px;height:20px;text-align:center;cursor:'
					+ (_c==i ? ('default;background-color:red;"') : 'hand;" onclick="adRotator.select(' + i + ')"')
					+ '>'
					+ (i>8?(i+1):('0'+(i+1)))+ '</span> ';

	_html += "</div></td></tr></table>";
	getRef(_o).innerHTML = _html;

	getRef("rotatorPic").filters[0].Apply();
	getRef("rotatorPic").filters[0].Play();

	next();
	}
	else
	{
		_i.src = _p[_c];
		adRotator.load();
	}
}};
adRotator.next=function() { with (this)
{
	(_p.length-1==_c) ? _c=0 : _c++;
	_timeout=window.setTimeout(adRotator.play,_s*1000);
}};
adRotator.select=function(i) { with (this)
{
	window.clearTimeout(_timeout);
	_c=i;
	adRotator.play();
}};
adRotator.set=function(second) { with (this)
{
	window.clearTimeout(_timeout);
	if((/\d+/).test(second)==true)
	{
		_s=second;
		adRotator.play();
	}
	else
	{
		alert("must be digit!")
		adRotator.play();
	}
}};
function getRef(id)
{
	return (document.all?document.all(id):document.getElementById(id));
}
