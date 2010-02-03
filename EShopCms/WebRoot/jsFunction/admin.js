/*全选的功能*/
function selectAllCheck(cid,mid)
{if($("#"+cid).attr("checked")==true){$("input[name='"+mid+"']").each(function(i){this.checked=true;})}else{$("input[name='"+mid+"']").each(function(i){this.checked =false;})}}
/*
反选
*/
function selectreCheck(cid,mid)
{if($("#"+cid).attr("checked")==true){$("input[name='"+mid+"']").each(function(i){if(this.checked==true){this.checked=false}else{this.checked=true}})}else{$("input[name='"+mid+"']").each(function(i){if(this.checked==true){this.checked=false}else{this.checked=true}})}}
