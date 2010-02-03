function SetCwinHeight(){
  var bobo=document.getElementById("bobo"); //iframe id
  if (document.getElementById){
   if (bobo && !window.opera){
    if (bobo.contentDocument && bobo.contentDocument.body.offsetHeight){
     bobo.height = bobo.contentDocument.body.offsetHeight;
    }else if(bobo.Document && bobo.Document.body.scrollHeight){
     bobo.height = bobo.Document.body.scrollHeight;
    }
   }
  }
 }

function showPageList(id,allNum)
{
for(var i=1;i<=allNum;i++)
{
  if(i==id)
  {
  $("#page"+i).show();
  $("#curpagelist").html("当前第"+i+"页");
  }else{
   $("#page"+i).hide();
   }
}
}
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
 

//this is my simle card
function cart( email ) {
	this.totalItems 	= 0;
	this.totalPrice	= 0.00;
	this.items 		= new Array();
	this.userEmail = email;
	this.subString= new String();
	// order of columns, you change the order here or by accessing the value in your html
	this.ItemColumns = ['Image','Name','Price','Options','Quantity','Total'];
	
	/*	function to initialize the cart when the page is loaded  */
	this.initialize = function () {
		if( !readCookie("simpleCart") ) {
			this.totalItems  = 0;
			this.totalPrice = 0.00;
		} else {
			data = readCookie("simpleCart").split("&");
			this.totalItems = data[0]*1;
			this.totalPrice = data[1]*1;
			for(x=2;x < (data.length);x++) {
				newItem = new item();
				itemData = data[x].split(",");
				i=0;
				for(i=0;i<itemData.length;i++) {
					pair = itemData[i].split('=');
					newItem.addValue(pair[0],pair[1]);
				}
				if(!newItem.getValue('name') || !newItem.getValue('price') || !newItem.getValue('quantity')) {
					//alert("商品加入购物车不成功"+newItem.getValue('name')+newItem.getValue('price')+newItem.getValue('quantity'));
					return false;
				}
				this.items[x-2] = newItem;
			}
			
		}
		this.setUpEvents();
		this.updateCookie();
		this.updatePageElements();
		return;
	};
	
	/* the two functions below are event listener functions.  when using 
	 * addEventListener, 'this' in the scope of the called function is either 
	 * the element with the listener or the document (in IE).  they simply avoid 
	 * using the this variable due to this scope issue.
	 */
	
	this.checkOutEvent = function() {
		simpleCart.checkOut();
		return false;
	};
	
	this.emptyEvent = function() {
		simpleCart.empty();
		return false;
	};
	this.getSubmit = function()
	{
		this.updatePageElements();
		return this.subString;
		}
	
	this.remove = function(itemvar)
	{
	     data = itemvar.split('=');
	
		found = false;
		var temp = new Array();
		for(x=0; x < this.items.length;x++ )
		
		{
			tempItem = this.items[x];	
			
			if( tempItem.getValue('name')==data[1] ) {
				found = true;
				
				this.totalItems = this.totalItems - parseFloat(tempItem.getValue('quantity'));
				this.totalPrice = this.totalPrice - parseFloat(tempItem.getValue('price'))*parseFloat(tempItem.getValue('quantity'));
			}
			if( found ) {
				if( x < ( this.items.length - 1 ) ) {
					temp[x] = this.items[x+1];
				} 
			} else {
				temp[x] = this.items[x];
			}
		}
		this.items = temp;
		this.updateCookie();
		this.updatePageElements();
		return false;
		}
	/* set up the Event Listeners for the empty cart and checkout
	 * links in the page. 
	 */
	
	this.setUpEvents = function() {
			var x=0,element,elements = getElementsByClassName('simpleCart_total');

			x=0;
			elements = getElementsByClassName('simpleCart_checkout');
			for( x=0;x<elements.length;x++) {
				element = elements[x];
				if( element.addEventListener ) {
					element.addEventListener("click", this.checkOutEvent, false );
				} else if( element.attachEvent ) {
				  	element.attachEvent( "onclick", this.checkOutEvent );
					//this is the cart of show my heart
				}
			}
			x=0;
			elements = getElementsByClassName('simpleCart_empty');
			for( x=0;x<elements.length;x++) {
				element = elements[x];
				if( element.addEventListener ) {
					element.addEventListener("click", this.emptyEvent, false );
				} else if( element.attachEvent ) {
				  	element.attachEvent( "onclick", this.emptyEvent );
				}
			}
			return;
	};
	
	/*	add an item to the shopping cart with the name and price.
	 *  if there is an item with the same value for every field, 
	 *  the quantity for that item will increase.  if any field 
	 *  is different, the item will be considered new.  if a quantity
	 *  is specified, that will be the quanitity of that item that 
	 *  that will be added.
	 */	
	this.add = function() {
		newItem = new item();
		var x=0;
		for(x=0;x<arguments.length;x++){
			temp = arguments[x];
			data = temp.split('=');
			newItem.addValue(data[0],data[1]);
		}
		if(!newItem.getValue('name') || !newItem.getValue('price')) {
			//alert('没有名称和价格 不能加入到购物车');
			return false;
		}
		isnew = true;
		if(!newItem.getValue('quantity')) {
			newItem.addValue('quantity',1);
		}
		this.totalItems = this.totalItems + newItem.getValue('quantity');
		x=0;
		for( x=0;x < this.items.length;x++ ) {
			tempItem = this.items[x];
			if( tempItem.equalTo(newItem) ) {
				tempItem.addValue( 'quantity' , (parseInt(tempItem.getValue('quantity')) + parseInt(newItem.getValue('quantity')) ) );
				this.totalPrice = this.totalPrice + parseFloat( tempItem.getValue('price') );
				isnew = false;
			}
		}
		if( isnew ) {
			this.items[this.items.length] = newItem;
			this.totalPrice = this.totalPrice + parseFloat(newItem.getValue('price'));
		}
		this.updateCookie();
		this.updatePageElements();
		$.messager.show('<font color=red>购物车提示信息</font>', '<font color=green style=font-size:12px;>已经加入到购物车！购物车中目前有<font color=#ff0000>'+this.totalItems+'</font>件商品，价值：<font color=#ff0000>'+this.totalPrice+'元</font>请继续购物<a href=buycar.jspx><font color=#ff0000>进入购物车</font></a>');

		return;
	};
	
	this.addItem = function(newItem) {
		var x=0;
		for(x=0;x<this.items.length;x++) {
			var tempItem = this.items[x];
			if( tempItem.equalTo(newItem) ){
				tempItem.addValue('quantity', parseInt(newItem.getValue('quantity')) + parseInt(tempItem.getValue('quantity')) );
				this.totalItems = this.totalItems + parseInt(newItem.getValue('quantity'));
				this.totalPrice = this.totalPrice + parseInt(newItem.getValue('quantity'))*parseFloat(newItem.getValue('price'));
				return;
			}
		}
		this.items[this.items.length] = newItem;
		this.totalItems = this.totalItems + parseInt(newItem.getValue('quantity'));
		this.totalPrice = this.totalPrice + parseInt(newItem.getValue('quantity'))*parseFloat(newItem.getValue('price'));
		return;
	};
	
	/* this function will update the cookie used to store the cart info
	 * when anything is changed in the cart. 
	 */ 
	this.updateCookie = function () {
		cookieString = String(this.totalItems) + "&" + String(this.totalPrice);
		x=0;
		for(x=0;x<this.items.length;x++ ) {
			tempItem = this.items[x];
			cookieString = cookieString + "&" + tempItem.cookieString();
		}
		createCookie("simpleCart", cookieString, 30 );
	}
	
	// reset the variables of the cart, update the cookies
	this.empty = function () {
		this.items = new Array();
		this.totalItems = 0;
		this.totalPrice = 0.00;
		this.updateCookie();
		this.updatePageElements();
		return false;
	};
	
	/* remove an item from the items array when an item
	 * is removed from the cart
	 */
	this.deleteItem = function( item ) {  
		found = false;
		var temp = new Array();
		for(x=0; x < this.items.length;x++ ) {
			tempItem = this.items[x];		
			if( tempItem.equalTo(item) ) {
				found = true;
				this.totalItems = this.totalItems - parseFloat(tempItem.getValue('quantity'));
				this.totalPrice = this.totalPrice - parseFloat(tempItem.getValue('price'));
			}
			if( found ) {
				if( x < ( this.items.length - 1 ) ) {
					temp[x] = this.items[x+1];
				} 
			} else {
				temp[x] = this.items[x];
			}
		}
		this.items = temp;
		this.updateCookie();
		this.updatePageElements();
		return false;
	};
	
	// determine if there are any options 
	this.options = function() {
		var x=0;
		for(x=0;x<this.items.length;x++) {
			var temp = this.items[x];
			if( temp.optionList() ) {
				return true;
			}
		}
		return false;
	};
	
	// update elements on html pages
	this.updatePageElements = function() {
		var x=0,element,elements = getElementsByClassName('simpleCart_total');
		for( x=0;x<elements.length;x++) {
			element = elements[x];
			element.innerHTML = this.returnTotalPrice();
		}
		x=0;
		elements = getElementsByClassName('simpleCart_quantity');
		for( x=0;x<elements.length;x++) {
			element = elements[x];
			element.innerHTML = String(this.totalItems);
		}
		elements = getElementsByClassName('simpleCart_items');
		for( x=0;x<elements.length;x++) 
		{
			cartTable = elements[x];
			newRow = document.createElement('div');
			var x=0,i=0;
			//delete all current rows
			while (cartTable.childNodes[0]) {
			    cartTable.removeChild(cartTable.childNodes[0]);
			}
			
			// create the header
			for( x=0;x<this.ItemColumns.length;x++) {
				if( this.ItemColumns[x] != 'Options' || this.options() ) {
					tempCell = document.createElement('div');
					//tempCell.innerHTML = "显示信息："+this.ItemColumns[x];
					switch(x)
					{
						case 0:
						tempCell.innerHTML = "商品图片";
						break;
						case 1:
						tempCell.innerHTML = "商品名称";
						break;
						case 2:
						tempCell.innerHTML = "商品单价";
						break;
						case 3:
						tempCell.innerHTML = "商品参数";
						break;
						case 5:
						//tempCell.innerHTML = "移出";
						break;
						case 4:
						tempCell.innerHTML = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品数量";
						break;
						case 6:
						tempCell.innerHTML = "小计金额";
						break;
						
						
						
						}
					
					
					
					tempCell.className = "item" + this.ItemColumns[x];
					newRow.appendChild(tempCell);
				}
			}
			newRow.className = "cartHeaders";
			cartTable.appendChild(newRow);
			
			// create a row for each item
			x=0;
			for( x=0;x<this.items.length;x++ ) {
				tempItem = this.items[x];
				newRow = document.createElement('div');
				i=0;
				for(i=0;i<this.ItemColumns.length;i++) {
					tempCell = document.createElement('div');
					tempCell.className = "item" + this.ItemColumns[i];
					if( this.ItemColumns[i] == 'Image' ) {
						if( tempItem.getValue('image') ) {
							tempCell.innerHTML = '<img title="header=[] body=[<img width=150 height=150 src=' + tempItem.getValue('image') + '>]" width=70 height=70 src="' + tempItem.getValue('image') + '" />';
						}
					}
					if( this.ItemColumns[i] == 'Name' ) {
						tempCell.innerHTML = tempItem.getValue('name');
					} else if (	this.ItemColumns[i] == 'Price' ) {
						tempCell.innerHTML = this.returnFormattedPrice( tempItem.getValue('price'));
					} else if ( this.ItemColumns[i] == 'Options' && this.options() ) {
						tempCell.innerHTML = tempItem.optionList();
					} else if (	this.ItemColumns[i] == 'Quantity' ) {
						tempCell.innerHTML = '<span onClick="simpleCart.updateQuantity(' + tempItem.functionString() +',\'new_quantity=\' + '+parseInt((tempItem.getValue('quantity'))-1)+');return false;" style=float:left;cursor:hand>减 &nbsp;</span><input style=float:left type="text" onblur="simpleCart.updateQuantity(' + tempItem.functionString() +',\'new_quantity=\' + this.value);return false;"value="' + tempItem.getValue('quantity') + '" /><span onClick="simpleCart.updateQuantity(' + tempItem.functionString() +',\'new_quantity=\' + '+(parseInt(tempItem.getValue('quantity'))+1)+');return false;" style=float:left;cursor:hand>&nbsp;加</span>';
						tempCell.innerHTML = tempCell.innerHTML + "<span class='nxiaoji'>"+this.returnFormattedPrice( parseInt(tempItem.getValue('quantity'))* parseInt(tempItem.getValue('price')))+"</span>";
					} else if (	this.ItemColumns[i] == 'Total' ) {
						tempCell.innerHTML = this.returnFormattedPrice( tempItem.getValue('quantity')* tempItem.getValue('price') );
						//传入一个itemObject
						tempCell.innerHTML = '<span title='+tempItem.functionString()+' style=cursor:hand;float:right; onClick=simpleCart.remove(this.title)>移出</span>';
						
					}
					newRow.appendChild(tempCell);
				}
				newRow.className = "itemContainer"
				cartTable.appendChild(newRow);
			}
			// create totals row
			newRow = document.createElement('div');
			tempCell = document.createElement('div');
			//tempCell.innerHTML = String("商品总计数量："+this.totalItems);
			tempCell.className = "totalItems";
			newRow.appendChild(tempCell);
			tempCell = document.createElement('div');
			tempCell.innerHTML = String("商品总计数量：<b>"+this.totalItems) + "</b>&nbsp;&nbsp;&nbsp;&nbsp;商品总计金额："+this.returnTotalPrice();
			tempCell.className = "totalPrice";
			newRow.appendChild(tempCell);
			newRow.className = "totalRow";
			cartTable.appendChild(newRow);
		}
		
		
		//购物车简单显示商品名称
		elements = getElementsByClassName('simpleCart_itemsSimple');
		for( x=0;x<elements.length;x++) 
		{
			cartTable = elements[x];
			newRow = document.createElement('div');
			var x=0,i=0;
			//delete all current rows
			while (cartTable.childNodes[0]) {
			    cartTable.removeChild(cartTable.childNodes[0]);
			}
			
			
			x=0;
			for( x=0;x<this.items.length;x++ ) {
				tempItem = this.items[x];
				newRow = document.createElement('div');
				i=0;
				for(i=0;i<this.ItemColumns.length;i++) {
					tempCell = document.createElement('span');
					if( this.ItemColumns[i] == 'Name' ) {
						tempCell.innerHTML = tempItem.getValue('name');
					}
					
					newRow.appendChild(tempCell);
				}
				newRow.className = "itemContainer"
				cartTable.appendChild(newRow);
			}
			// create totals row
			newRow = document.createElement('span');
			tempCell = document.createElement('span');
			//tempCell.innerHTML = String("商品总计数量："+this.totalItems);
			tempCell.className = "totalItems";
			newRow.appendChild(tempCell);
			tempCell = document.createElement('div');
			tempCell.innerHTML = String("商品总计数量：<b>"+this.totalItems) + "</b>&nbsp;&nbsp;&nbsp;&nbsp;商品总计金额："+this.returnTotalPrice()+"&nbsp;&nbsp;";
			tempCell.className = "totalPrice";
			newRow.appendChild(tempCell);
			newRow.className = "totalRow";
			cartTable.appendChild(newRow);
		}
		
		
		
		
		
		//罗列出来要提交的订单
		var i,j=0,des,counter;
		var strn  = "buycarSubmit.jsp?cmd=_cart" +
		   			"&upload=1" +
		        	"&business=" + this.userEmail + 
					"&currency_code=USD" +
		  			"&lc=US";
		counter = 0;
        var strsub = "";
          for (counter = 0; counter < this.items.length; counter++) { 
			tempItem = this.items[counter];
			j = counter + 1; 
			
			pdata = tempItem.getValue('name').split('=');
			strsub = strsub + "<input type=text name=pid_"+j+"  value='"+pdata[0]+"'>";
			strsub = strsub + "<input type=text name=pname_"+j+"  value='"+pdata[1]+"'>";
			strsub = strsub + "<input type=text name=pNum_"+j+"  value='"+tempItem.getValue('quantity')+"'>";
			strsub = strsub + "<input type=text name=pValue_"+j+"  value='"+tempItem.getValue('price')+"'>";	
		}
		    strsub = strsub + "<input type=text name=itemNum  value='"+j+"'>";
			strsub = strsub + "<input type=text name=allMoney value='"+this.returnTotalPrice()+"'>";
			strsub = strsub + "<input type=text name=allNum value='"+this.totalItems+"'>";
		//
		
		this.subString = strsub;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return false;	
	};
	
	
	
	
	
	
	
	// return the cart total 
	this.returnTotalPrice = function() {
		return this.returnFormattedPrice( this.totalPrice );
	};
	
	// return a price with the format $xxx.xx
	this.returnFormattedPrice = function( price ) {
		temp = Math.round(price*100);
		change = String(temp%100);
		if( change.length == 0) {
			change = "00";
		} else if( change.length == 1) {
			change = "0" + change;
		}
		temp = String(Math.floor(temp/100));
		return temp + "." + change;
	};
	
	this.updateQuantity = function() {
		newItem = new item();
		x=0;
		for(x=0;x<arguments.length;x++){
			temp = arguments[x];
			data = temp.split('=');
			if( data[0] == 'new_quantity') {
				var new_quantity = data[1];
			} else {
				newItem.addValue(data[0],data[1]);
			}
		}
		if( new_quantity < 1 ) {
			this.deleteItem( newItem );
			return;
		}
		newQuan = new_quantity - newItem.getValue('quantity');
		newItem.addValue('quantity', newQuan );
		this.addItem(newItem);
		this.updateCookie();
		this.updatePageElements();
		return false;
	}
	
	
	this.checkSubmit= function() { 
		
		var winpar = "scrollbars,location,resizable,status";
		var i,j=0,des,counter;
		var strn  = "buycarSubmit.jsp?cmd=_cart" +
		   			"&upload=1" +
		        	"&business=" + this.userEmail + 
					"&currency_code=USD" +
		  			"&lc=US";
		counter = 0;
        var strsub = "";
          for (counter = 0; counter < this.items.length; counter++) { 
			tempItem = this.items[counter];
			j = counter + 1; 
			pdata = tempItem.getValue('name').split('=');
			strsub = strsub + "<input type=text name=pid_"+j+"  value='"+pdata[0]+"'>";
			strsub = strsub + "<input type=text name=pname_"+j+"  value='"+pdata[1]+"'>";
			strsub = strsub + "<input type=text name=pNum_"+j+"  value='"+tempItem.getValue('quantity')+"'>";
			strsub = strsub + "<input type=text name=pValue_"+j+"  value='"+tempItem.getValue('price')+"'>";
			
			
			
			strn = strn + 	"&item_name_"    + j + "=" + tempItem.getValue('name') +
		                	"&item_number_"  + j + "=" + j +
		                	"&quantity_"     + j + "=" + tempItem.getValue('quantity') +
		                	"&amount_"       + j + "=" + this.returnFormattedPrice(tempItem.getValue('price') ) +
		      				"&no_shipping_"  + j + "=" + "0" +
							"&no_note_"   	 + j + "=" + "1";
							
			if( tempItem.optionList() ) {
				strn = strn + "&on0_"		+ j + "=" + "Options" +
				 			  "&os0_"		+ j + "=" + tempItem.optionList();
			}			
				
		}
		strsub = strsub + "<input type=text name=itemNum  value='"+counter+"'>";
			strsub = strsub + "<input type=text name=allMoney value='"+this.returnTotalPrice()+"'>";
			strsub = strsub + "<input type=text name=allNum value='"+this.totalItems+"'>";
		strn = strn + "&itemNum="+counter;
		
		//tempCell.innerHTML = String("商品总计数量：<b>"+this.totalItems) + "</b>&nbsp;&nbsp;&nbsp;&nbsp;商品总计金额："+this.returnTotalPrice()+"&nbsp;&nbsp;";
		
		
		//window.open (strn, "paypal", winpar);
		return false;
	};
	
	
	
	// send user to paypal checkout with all the items in the cart
	this.checkOut = function() { 
		if( this.totalItems == 0 ){
			alert("购物车为空！不能在收银台结账");
			return false;
		} 
		var winpar = "scrollbars,location,resizable,status";
		var i,j=0,des,counter;
		var strn  = "subCarmit.jspx?cmd=_cart" +
		   			"&upload=1" +
		        	"&business=" + this.userEmail + 
					"&currency_code=USD" +
		  			"&lc=US";
		counter = 0;
		for (counter = 0; counter < this.items.length; counter++) { 
			tempItem = this.items[counter];
			j = counter + 1; 
			
			var sname = tempItem.getValue('name');
			//;sname.split("_")[0]
			//strn = strn + 	"&item_name=" + tempItem.getValue('name') +
			strn = strn + 	"&item_name=" + sname.split("_")[0] +
		                	"&item_number=" + j +
		                	"&quantity=" + tempItem.getValue('quantity') +
		                	"&amount=" + tempItem.getValue('price') +
		      				"&no_shipping=" + "0" +
							"&no_note=" + "1";
						
			if( tempItem.optionList() ) {
				strn = strn + "&on0_"		+ j + "=" + "Options" +
				 			  "&os0_"		+ j + "=" + tempItem.optionList();
			}			
				
		}
		
		strn = strn + "&itemNum="+j;
		
		strn = strn + "&allMoney="+this.returnTotalPrice();
		strn = strn + "&allcount="+this.totalItems;
		window.location.href=strn;
		//window.open (strn, "paypal", winpar);
		return false;
	};
}

this.checkOutOther = function() { 
		if( this.totalItems == 0 ){
			alert("购物车为空！不能在收银台结账");
			return false;
		} 
		var winpar = "scrollbars,location,resizable,status";
		var i,j=0,des,counter;
		var strn  = "subCarmit.jspx?cmd=_cart" +
		   			"&upload=1" +
		        	"&business=" + this.userEmail + 
					"&currency_code=USD" +
		  			"&lc=US";
		counter = 0;
		for (counter = 0; counter < this.items.length; counter++) { 
			tempItem = this.items[counter];
			j = counter + 1; 
			
			strn = strn + 	"&item_name_"    + j + "=" + tempItem.getValue('name') +
		                	"&item_number_"  + j + "=" + j +
		                	"&quantity_"     + j + "=" + tempItem.getValue('quantity') +
		                	"&amount_"       + j + "=" + tempItem.getValue('price') +
		      				"&no_shipping_"  + j + "=" + "0" +
							"&no_note_"   	 + j + "=" + "1";
						
			if( tempItem.optionList() ) {
				strn = strn + "&on0_"		+ j + "=" + "Options" +
				 			  "&os0_"		+ j + "=" + tempItem.optionList();
			}			
				
		}
		
		strn = strn + "&itemNum="+j;
		
		strn = strn + "&allMoney="+this.returnTotalPrice();
		strn = strn + "&allcount="+this.totalItems;
		window.location.href=strn;
		window.open (strn, "paypal", winpar);
		return false;
	
}
/*************************************************************************************************
         This is the item class.  It will contain an array of name-value pairs.
 *************************************************************************************************/

function item () {
	this.names	= new Array();
	this.values	= new Array();
	
	/* add a name-value pair to the item,
	 * return false and alert if the names 
	 * and values don't match.
	 */
	this.addValue = function(name,value) {
		if( this.names.length != this.values.length ) {
			alert("name and value array lengths do not match for this item!");
			return false;
		}
		found = false;
		var a=0;
		for(a=0;a<this.names.length;a++) {
			if( this.names[a] == name ) {
				this.values[a] = value;
				return;
			}
		}
		if( !found ) {
			this.names[this.names.length]	= name;
			this.values[this.values.length]	= value;
		}
		return;
	};
	

	
	/* return the value associated with the
	 * name key, return null if the name is not
	 * found
	 */
	this.getValue = function(name) {
		var g=0;
		for(g=0;g<this.names.length;g++) {
			if(name==this.names[g]) {
				return this.values[g];
			}
		}
		return null;
	};
	
	/* return true if the item is equal to 
	 * the item passed in, false otherwise 
	 */
	this.equalTo = function(item) {
		if(this.getSize() != item.getSize() ) {
			return false;
		} 
		var q=0;
		for(q=0;q<this.names.length;q++) {
			if( this.names[q] != 'quantity' && (item.getValue(this.names[q]) != this.values[q]) ) {
				return false;
			}
		}
		return true;
	};

	this.getSize = function() {
		return this.names.length;
	};
	
	this.cookieString = function() {
		returnString = '';
		var i=0;
		returnString = this.names[i] + "=" + this.values[i];
		i=1;
		for(i=1;i<this.names.length;i++) {
			returnString = returnString + "," + this.names[i] + "=" + this.values[i];
		}
		return returnString;
	};
	
	this.functionString = function() {
		returnString = '\'';
		var f=0;
		returnString = '\'' + this.names[f] + "=" + this.values[f];
		f=1;
		for(f=1;f<this.names.length;f++) {
			returnString = returnString + "','" + this.names[f] + "=" + this.values[f];
		}
		returnString = returnString + '\'';
		return returnString;
	}
	
	this.optionList = function() {
		returnString = '';
		if( this.getSize() < 4 ) {
			return null;
		}
		var o=0;
		for(o=0;o<this.names.length;o++) {
			if(this.names[o] != 'quantity' && this.names[o] != 'price' && this.names[o] != 'name' && this.names[o] != 'image') {
				returnString = returnString + this.names[o] + ':' + this.values[o] + ', ';
			}
		}
		while(returnString.charAt(returnString.length-1)==',' || returnString.charAt(returnString.length-1)==' ' || returnString.charAt(returnString.length)==':'){
			returnString = returnString.substring(0,returnString.length-1);
		}
		return returnString;
	};
}
	

//*************************************************************************************************
// Thanks to Peter-Paul Koch for these cookie functions! (http://www.quirksmode.org/js/cookies.html)
//*************************************************************************************************
function createCookie(name,value,days) {
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function eraseCookie(name) {
	createCookie(name,"",-1);
}

//*************************************************************************************************
/*
	Developed by Robert Nyman, http://www.robertnyman.com
	Code/licensing: http://code.google.com/p/getelementsbyclassname/
*/	
var getElementsByClassName = function (className, tag, elm){
	if (document.getElementsByClassName) {
		getElementsByClassName = function (className, tag, elm) {
			elm = elm || document;
			var elements = elm.getElementsByClassName(className),
				nodeName = (tag)? new RegExp("\\b" + tag + "\\b", "i") : null,
				returnElements = [],
				current;
			for(var i=0, il=elements.length; i<il; i+=1){
				current = elements[i];
				if(!nodeName || nodeName.test(current.nodeName)) {
					returnElements.push(current);
				}
			}
			return returnElements;
		};
	}
	else if (document.evaluate) {
		getElementsByClassName = function (className, tag, elm) {
			tag = tag || "*";
			elm = elm || document;
			var classes = className.split(" "),
				classesToCheck = "",
				xhtmlNamespace = "http://www.w3.org/1999/xhtml",
				namespaceResolver = (document.documentElement.namespaceURI === xhtmlNamespace)? xhtmlNamespace : null,
				returnElements = [],
				elements,
				node;
			for(var j=0, jl=classes.length; j<jl; j+=1){
				classesToCheck += "[contains(concat(' ', @class, ' '), ' " + classes[j] + " ')]";
			}
			try	{
				elements = document.evaluate(".//" + tag + classesToCheck, elm, namespaceResolver, 0, null);
			}
			catch (e) {
				elements = document.evaluate(".//" + tag + classesToCheck, elm, null, 0, null);
			}
			while ((node = elements.iterateNext())) {
				returnElements.push(node);
			}
			return returnElements;
		};
	}
	else {
		getElementsByClassName = function (className, tag, elm) {
			tag = tag || "*";
			elm = elm || document;
			var classes = className.split(" "),
				classesToCheck = [],
				elements = (tag === "*" && elm.all)? elm.all : elm.getElementsByTagName(tag),
				current,
				returnElements = [],
				match;
			for(var k=0, kl=classes.length; k<kl; k+=1){
				classesToCheck.push(new RegExp("(^|\\s)" + classes[k] + "(\\s|$)"));
			}
			for(var l=0, ll=elements.length; l<ll; l+=1){
				current = elements[l];
				match = false;
				for(var m=0, ml=classesToCheck.length; m<ml; m+=1){
					match = classesToCheck[m].test(current.className);
					if (!match) {
						break;
					}
				}
				if (match) {
					returnElements.push(current);
				}
			}
			return returnElements;
		};
	}
	return getElementsByClassName(className, tag, elm);
};
//*************************************************************************************************

function createCart(){
	simpleCart.initialize();
	return;
}
var ElementCheckInterval = setInterval("simpleCart.updatePageElements()", 2000);
window.onload = createCart;
simpleCart = new cart("y_flash@163.com");
 function CheckMoneyToUserACount(SUrl,ShowDiv){
 $.ajax({
		type: "post",
		url: SUrl,
		beforeSend: function(XMLHttpRequest){
		ShowDiv.html("");
		ShowDiv.append("<font color=#ff0000 style='font-size:12px'>充值核查中！请等待.....</font>");
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