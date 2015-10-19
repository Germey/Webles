

var menu_table="<table width='100%' cellspacing='0' cellpadding='2'>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_cr.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertTable()'>插入表格</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_sx.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tableProp()'>表格属性</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_sx2.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='cellProp()'>单元格属性</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_tr.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(1)'>插入一行</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_trdel.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(2)'>删除一行</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_td.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(3)'>插入一列</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_tddel.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(4)'>删除一列</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_hby.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(5)'>向右合并</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_hbx.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(6)'>向下合并</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='btn/table_cf.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(7)'>拆分单元格</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><a>---</a></td></tr>";
menu_table+="</table>";

//下拉菜单相关代码
 var h;
 var w;
 var l;
 var t;
 var topMar = 1;
 var leftMar = -2;
 var space = 1;
 var isvisible;
 var MENU_SHADOW_COLOR='#E1F4EE';//定义下拉菜单阴影色
 var global = window.document
 global.fo_currentMenu = null
 global.fo_shadows = new Array


function scolor(obj)
{
  obj.style.backgroundColor="";
}
function rcolor(obj)
{
  obj.style.backgroundColor="#E1F4EE";
}


function tableProp(){
	var tableflag=false;
	message.focus();
	var xsel=message.document.selection;
	var xobj=message.document.selection.createRange();
	if(xsel.type=="None"||xsel.type=="Text"){
		xsel=xobj.parentElement();
		while(xsel.tagName!="BODY"&&tableflag==false){
			if(xsel.tagName=="TABLE"){tableflag=true;}
			if(tableflag==false){xsel=xsel.parentElement;}
		}
	}else if(xsel.type=="Control"){
		xsel=xobj.item(0);
		if(xsel.tagName=="TABLE"){
			tableflag=true;
		}else{
			while(xsel.tagName!="BODY"&&tableflag==false){
				if(xsel.tagName=="TABLE"){tableflag=true;}
				if(tableflag==false){xsel=xsel.parentElement;}
			}
		}
	}
	if(tableflag==true){
		if(xsel.className!=""&&xsel.className!=null){tableclass=xsel.className;}else{tableclass="";}
		if(xsel.width!=""&&xsel.width!=null){tablewidthspecified="yes";tablewidth=xsel.width;}else{tablewidthspecified="no";tablewith="";}
		if(xsel.align!=""&&xsel.align!=null){tablealign=xsel.align;}else{tablealign="";}
		if(xsel.border!=""&&xsel.border!=null){tablebordersize=xsel.border;}else{tablebordersize="";}
		if(xsel.cellPadding!=""&&xsel.cellPadding!=null){tablecellpadding=xsel.cellPadding;}else{tablecellpadding="";}
		if(xsel.cellSpacing!=""&&xsel.cellSpacing!=null){tablecellspacing=xsel.cellSpacing;}else{tablecellspacing="";}
		if(xsel.borderColor!=""&&xsel.borderColor!=null){tablebordercolor=xsel.borderColor;}else{tablebordercolor="";}
		if(xsel.bgColor!=""&&xsel.bgColor!=null){tablebackgroundcolor=xsel.bgColor;}else{tablebackgroundcolor="";}
		tableiscancel="";
		window.showModalDialog("editor_tableprops.html",window," dialogWidth: 350px; dialogHeight: 300px; help: no;scroll: no; status: no");
		if(tableiscancel=="no"){
			if(tablewidthspecified=="yes"){
				var tw1="";
				if(tablewidthtype=="percentage"){
					tw1=tablewidth+"%";
				}else{
					tw1=tablewidth;
				}
				xsel.width=tw1;
			}else{
				xsel.removeAttribute("width",0);
			}
			if(tablealign!=""&&tablealign!="Default"){xsel.align=tablealign;}else{xsel.removeAttribute("align",0);}
			if(tableclass!=""&&tableclass!="Default"){xsel.className=tableclass;}else{xsel.removeAttribute("className",0);}
			if(tablebordersize!=""&&tablebordersize!=null){xsel.border=tablebordersize;}else{xsel.removeAttribute("border",0);}
			if(tablecellpadding!=""&&tablecellpadding!=null){xsel.cellPadding=tablecellpadding;}else{xsel.removeAttribute("cellPadding",0);}
			if(tablecellspacing!=""&&tablecellspacing!=null){xsel.cellSpacing=tablecellspacing;}else{xsel.removeAttribute("cellSpacing",0);}
			if(tablebordercolor!=""&&tablebordercolor!="Default"){xsel.borderColor=tablebordercolor;}else{xsel.removeAttribute("borderColor",0);}
			if(tablebackgroundcolor!=""&&tablebackgroundcolor!="Default"){xsel.bgColor=tablebackgroundcolor;}else{xsel.removeAttribute("bgColor",0);}
		}
	}
}

function cellProp(){
	var cellflag=false;
	message.focus();
	var xsel=message.document.selection;
	var xobj=message.document.selection.createRange();
	if(xsel.type=="None"||xsel.type=="Text"){
		xsel=xobj.parentElement();
		while(xsel.tagName!="BODY"&&cellflag==false){
			if(xsel.tagName=="TD"){cellflag=true;}
			if(cellflag==false){xsel=xsel.parentElement;}
		}
	}else if(xsel.type=="Control"){
		xsel=xobj.item(0);
		if(xsel.tagName=="TD"){
			cellflag=true;
		}else{
			while(xsel.tagName!="BODY"&&cellflag==false){
				if(xsel.tagName=="TD"){cellflag=true;}
				if(cellflag==false){xsel=xsel.parentElement;}
			}
		}
	}
	if(cellflag==true){
		if(xsel.width!=""&&xsel.width!=null){tablewidthspecified="yes";tablewidth=xsel.width;}else{tablewidthspecified="no";tablewith="";}
		if(xsel.align!=""&&xsel.align!=null){tablealign=xsel.align;}else{tablealign="";}
		if(xsel.className!=""&&xsel.className!=null){tablecellclass=xsel.className;}else{tablecellclass="";}
		if(xsel.vAlign!=""&&xsel.vAlign!=null){tablevalign=xsel.vAlign;}else{tablevalign="";}
		if(xsel.borderColor!=""&&xsel.borderColor!=null){tablebordercolor=xsel.borderColor;}else{tablebordercolor="";}
		if(xsel.bgColor!=""&&xsel.bgColor!=null){tablebackgroundcolor=xsel.bgColor;}else{tablebackgroundcolor="";}
		tableiscancel="";
		window.showModalDialog("editor_cellprops.html",window,"dialogWidth: 400px; dialogHeight: 230px;help: no;scroll: no; status: no");
		if(tableiscancel=="no"){
			if(tablewidthspecified=="yes"){
				var tw1="";
				if(tablewidthtype=="percentage"){tw1=tablewidth+"%";}else{tw1=tablewidth;}
				xsel.width=tw1;
			}else{
				xsel.removeAttribute("width",0);
			}
			if(tablealign!=""&&tablealign!="Default"){xsel.align=tablealign;}else{xsel.removeAttribute("align",0);}
			if(tablevalign!=""&&tablevalign!="Default"){xsel.vAlign=tablevalign;}else{xsel.removeAttribute("vAlign",0);}
			if(tablecellclass!=""&&tablecellclass!="Default"){xsel.className=tablecellclass;}else{xsel.removeAttribute("className",0);}
			if(tablebordercolor!=""&&tablebordercolor!="Default"){xsel.borderColor=tablebordercolor;}else{xsel.removeAttribute("borderColor",0);}
			if(tablebackgroundcolor!=""&&tablebackgroundcolor!="Default"){xsel.bgColor=tablebackgroundcolor;}else{xsel.removeAttribute("bgColor",0);}
		}
	}
}
function table_ir()
{
	tablecommand("ir");
}
function table_dr()
{
	tablecommand("dr");
}
function table_ic()
{
	tablecommand("ic");
}
function table_dc()
{
	tablecommand("dc");
}
function table_mc()
{
	tablecommand("mc");
}
function table_md()
{
	tablecommand("md");
}
function table_sc()
{
	tablecommand("sc");
}


function tablecommand(command)
{
	var cellflag=false;
	var rowflag=false;
	var tableflag=false;
	var cellindex,rowindex,tableref;
	message.focus();
	var xsel=message.document.selection;
	var xobj=message.document.selection.createRange();
	if(xsel.type=="None"||xsel.type=="Text"){
		xsel=xobj.parentElement();
		while(xsel.tagName!="BODY"&&cellflag==false){
			if(xsel.tagName=="TD"){cellindex=xsel.cellIndex;cellflag=true;}
			if(cellflag==false){xsel=xsel.parentElement;}
		}
	}else if(xsel.type=="Control"){
		xsel=xobj.item(0);
		if(xsel.tagName=="TD"){
			cellindex=xsel.cellIndex;
			cellflag=true;
		}else{
			while(xsel.tagName!="BODY"&&cellflag==false){
				if(xsel.tagName=="TD"){cellindex=xsel.cellIndex;cellflag=true;}
				if(cellflag==false){xsel=xsel.parentElement;}
			}
		}
	}
	if(cellflag==true){
		xsel=message.document.selection;
		xobj=message.document.selection.createRange();
		if(xsel.type=="None"||xsel.type=="Text"){
			xsel=xobj.parentElement();
			while(xsel.tagName!="BODY"&&rowflag==false){
				if(xsel.tagName=="TR"){
					rowindex=xsel.rowIndex;
					rowflag=true;
				}
				if(rowflag==false){xsel=xsel.parentElement;}
			}
		}else if(xsel.type=="Control"){
			xsel=xobj.item(0);
			if(xsel.tagName=="TR"){
				rowindex=xsel.rowIndex;
				rowflag=true;
			}else{
				while(xsel.tagName!="BODY"&&rowflag==false){
					if(xsel.tagName=="TR"){
						rowindex=xsel.rowIndex;
						rowflag=true;
					}
					if(rowflag==false){
						xsel=xsel.parentElement;
					}
				}
			}
		}
		xsel=message.document.selection;
		xobj=message.document.selection.createRange();
		if(xsel.type=="None"||xsel.type=="Text"){
			xsel=xobj.parentElement();
			while(xsel.tagName!="BODY"&&tableflag==false){
				if(xsel.tagName=="TABLE"){tableflag=true;}
				if(tableflag==false){xsel=xsel.parentElement;}
			}
		}else if(xsel.type=="Control"){
			xsel=xobj.item(0);
			if(xsel.tagName=="TABLE"){
				tableflag=true;
			}else{
				while(xsel.tagName!="BODY"&&tableflag==false){
					if(xsel.tagName=="TABLE"){tableflag=true;}
					if(tableflag==false){xsel=xsel.parentElement;}
				}
			}
		}
		if(command==3){
			var temprowcount=xsel.rows.length;
			var tempcell;
			var tempspancount=0;
			var tempspanholder;
			var tempcellwidth=xsel.rows[rowindex].cells[cellindex].width;
			var xpositequiv=-1;
			var xposcount=0;
			while(xposcount<=cellindex){
				xpositequiv+=parseInt(xsel.rows[rowindex].cells[xposcount].colSpan);
				xposcount++;
			}
			var ypositequiv=-1;
			var yposcount=0;
			var ymax=xsel.rows[rowindex].cells.length;
			while(yposcount<=ymax-1){
				ypositequiv+=parseInt(xsel.rows[rowindex].cells[yposcount].colSpan);
				yposcount++;
			}
			var idealinsert=xpositequiv+1;
			var zi2=0;
			var zirowtouse=0;
			var zirowtot=xsel.rows.length;
			var rowarray=new Array(zirowtot);
			var rowarray2=new Array(zirowtot);
			for(init1=0;init1<=zirowtot-1;init1++){
				rowarray[init1]=0;
				rowarray2[init1]=0;
			}
			for(zi1=0;zi1<=zirowtot-1;zi1++){
				zi2=0;
				while(zi2<idealinsert&&(rowarray[zi1]==null||rowarray[zi1]<idealinsert)){
					rowarray[zi1]+=parseInt(xsel.rows[zi1].cells[zi2].colSpan);
					rowarray2[zi1]++;
					zi2++;
				}
			}
			var allequal=true;
			var zi3a,zi3b;
			var zthemax=0;
			for(zi3=0;zi3<=zirowtot-1;zi3++){
				zi3a=rowarray[0];
				zi3b=rowarray[zi3];
				if(zi3b>zthemax){zthemax=zi3b;}
				if(zi3a!=zi3b){allequal=false;}
			}
			if(allequal==false){
				var zi4=0;
				var allequal2=true;
				while(zthemax<=ypositequiv&&allequal==false){
					for(zi5=0;zi5<=zirowtot-1;zi5++){
						rowarray[zi5]+=parseInt(xsel.rows[zi5].cells[rowarray2[zi5]].colSpan);
					}
					for(zi3=0;zi3<=zirowtot-1;zi3++){
						zi3a=rowarray[0];
						zi3b=rowarray[zi3];
						if(zi3b>zthemax){zthemax=zi3b;}
						if(zi3a!=zi3b){allequal2=false;}
					}
					if(allequal2==true){allequal=true;}
					for(zi8=0;zi8<=zirowtot-1;zi8++){rowarray2[zi8]++;}
					}
				}
				var zi9;
				for(zi7=0;zi7<=zirowtot-1;zi7++){
					zi9=xsel.rows[zi7].insertCell(rowarray2[zi7]);
					zi9.width=tempcellwidth;
				}
		}else if(command==4){
			var temprowcount=xsel.rows.length;
			for(iccount=0;iccount<=temprowcount-1;iccount++){
				xsel.rows[iccount].deleteCell(cellindex);
			}
			}else if(command==1){
				var tempcell;
				var tempcellb;
				var tempcellcount=xsel.rows[rowindex].cells.length;
				var cellcolarray=new Array(tempcellcount);
				var cellrowarray=new Array(tempcellcount);
				for(cacount=0;cacount<=tempcellcount-1;cacount++){
					cellcolarray[cacount]=xsel.rows[rowindex].cells(cacount).colSpan;
					cellrowarray[cacount]=xsel.rows[rowindex].cells(cacount).rowSpan;
				}
				tempcell=xsel.insertRow(rowindex);
				for(cbcount=0;cbcount<=tempcellcount-1;cbcount++){
					tempcellb=tempcell.insertCell();
					if(cellcolarray[cbcount]!=1){tempcellb.colSpan=cellcolarray[cbcount];}
				}
		}else if(command==2){
				var temprowcount=xsel.rows.length;tempcell=xsel.deleteRow(rowindex);
		}else if(command==5){
				if(xsel.rows[rowindex].cells[cellindex+1]){
					var x=parseInt(xsel.rows[rowindex].cells[cellindex].colSpan)+parseInt(xsel.rows[rowindex].cells[cellindex+1].colSpan);
					var y=xsel.rows[rowindex].cells[cellindex].innerHTML+" "+xsel.rows[rowindex].cells[cellindex+1].innerHTML;
					xsel.rows[rowindex].deleteCell(cellindex+1);
					xsel.rows[rowindex].cells[cellindex].colSpan=x;
					xsel.rows[rowindex].cells[cellindex].innerHTML=y;
				}
		}else if(command==6){
				var yatemprow=xsel.rows.length;
				var yamax=0;
				for(ya1=0;ya1<=yatemprow-1;ya1++){
					var ypositequiv=-1;
					var yposcount=0;
					var ymax=xsel.rows[ya1].cells.length;
					while(yposcount<=ymax-1){
						ypositequiv+=parseInt(xsel.rows[ya1].cells[yposcount].colSpan);
						yposcount++;
					}
					if(ypositequiv>yamax){yamax=ypositequiv;}
				}
				var rowarray=new Array();
				var rowarray2=new Array();
				var myrowcount=xsel.rows.length;
				for(ra1=0;ra1<=myrowcount-1;ra1++){
					rowarray[ra1]=new Array();
					rowarray2[ra1]=0;
					for(cr1=0;cr1<=yamax;cr1++){rowarray[ra1][cr1]=777;}
				}
				var tempra;
				var ra2=0;
				for(ra3=0;ra3<=yamax;ra3++){
					ra2=0;
					while(ra2<=myrowcount-1){
						if(xsel.rows[ra2].cells[ra3]){
							tempra=parseInt(xsel.rows[ra2].cells[ra3].rowSpan);
							if(tempra>1){
								rowarray[ra2][ra3]=ra3+rowarray2[ra2];
								for(zoo=1;zoo<=tempra-1;zoo++){rowarray2[ra2+zoo]--;}
							}
						}
						if(rowarray[ra2][ra3-1]!=ra3+rowarray2[ra2]){
							rowarray[ra2][ra3]=ra3+rowarray2[ra2];
						}else{
							rowarray[ra2][ra3]=555;
						}
						ra2++;
					}
				}
				var samx="";
				var samcount=0;
				for(rx1=0;rx1<=myrowcount-1;rx1++){
					samcount=rowarray[rx1].length;
					for(rx2=0;rx2<=samcount-1;rx2++){
						samx+="-"+rowarray[rx1][rx2];
					}
					samx+="\n";
				}
				var j=parseInt(xsel.rows[rowindex].cells[cellindex].rowSpan);
				var jcount=rowarray[rowindex].length;
				var jval=0;
				for(jc1=0;jc1<=jcount-1;jc1++){
					if(rowarray[rowindex][jc1]==cellindex){jval=jc1;}
				}
				if(xsel.rows[rowindex+j]){
					var cellindex2=rowarray[rowindex+j][jval];
					var x=parseInt(xsel.rows[rowindex].cells[cellindex].rowSpan)+parseInt(xsel.rows[rowindex+j].cells[cellindex2].rowSpan);
					var y=xsel.rows[rowindex].cells[cellindex].innerHTML+" "+xsel.rows[rowindex+j].cells[cellindex2].innerHTML;
					xsel.rows[rowindex+j].deleteCell(cellindex2);
					xsel.rows[rowindex].cells[cellindex].rowSpan=x;
					xsel.rows[rowindex].cells[cellindex].innerHTML=y;
				}
		}else if(command==7){
				var getrowspan=parseInt(xsel.rows[rowindex].cells[cellindex].rowSpan);
				var getcolspan=parseInt(xsel.rows[rowindex].cells[cellindex].colSpan);
				if(getrowspan>1){
					var xr1=getrowspan-1;
					var xrposit=rowindex;
					var xrcposit=cellindex;
					var xrholder;xsel.rows[rowindex].cells[cellindex].rowSpan=1;
					for(xr2=1;xr2<=xr1;xr2++){
						xrholder=xsel.rows[xrposit+xr2].insertCell(xrcposit);
						xrholder.colSpan=xsel.rows[rowindex].cells[cellindex].colSpan;
					}
				}
				if(getcolspan>1){
					var yr1=getcolspan-1;
					var yrposit=rowindex;
					var yrcposit=cellindex;
					var yrholder;xsel.rows[rowindex].cells[cellindex].colSpan=1;
					for(yr2=1;yr2<=yr1;yr2++){
						yrholder=xsel.rows[yrposit].insertCell(yrcposit);
						yrholder.rowSpan=xsel.rows[rowindex].cells[cellindex].rowSpan;
					}
				}
			}
		}
}






function Check(t,n)
{
if(n==1) t.className ="none"
else
if(n==2) t.className ="none"
else t.className ="None"
}

function FormatText(command, option){
	
  	frames.message.document.execCommand(command, true, option);
  	frames.message.focus();
}
function setMode(newMode)
{
  bTextMode = newMode;
  var cont;
  if (bTextMode) {
    cleanHtml();
    cleanHtml();

    cont=message.document.body.innerHTML;
    message.document.body.innerText=cont;
  } else {
    cont=message.document.body.innerText;
    message.document.body.innerHTML=cont;
  }
  message.focus();
}

function cleanHtml()
{
  var fonts = message.document.body.all.tags("FONT");
  var curr;
  for (var i = fonts.length - 1; i >= 0; i--) {
    curr = fonts[i];
    if (curr.style.backgroundColor == "#ffffff") curr.outerHTML	= curr.innerHTML;
  }

}
function help()
{
    var helpmess;
    helpmess="---------------填写帮助---------------\r\n\r\n"+
         "1.请不要发表有危险性的脚本。\r\n\r\n"+
         "2.如果要书写源代码，请选中\r\n\r\n"+
         "　查看HTML源代码书写.\r\n\r\n"+
         "3.需要你自己运行,才能看效果.\r\n\r\n"+
         "4.如果书写js，尽量不要在这儿书写.\r\n\r\n";
    alert(helpmess);
}


function cleanAndPaste(html) {
	// Remove all SPAN tags
	html = html.replace(/<\/?SPAN[^>]*>/gi, "" );
	// Remove Class attributes
	html = html.replace(/<(\w[^>]*) class=([^ |>]*)([^>]*)/gi, "<$1$3") ;
	// Remove Style attributes
	html = html.replace(/<(\w[^>]*) style="([^"]*)"([^>]*)/gi, "<$1$3") ;
	// Remove Lang attributes
	html = html.replace(/<(\w[^>]*) lang=([^ |>]*)([^>]*)/gi, "<$1$3") ;
	// Remove XML elements and declarations
	html = html.replace(/<\\?\?xml[^>]*>/gi, "") ;
	// Remove Tags with XML namespace declarations: <o:p></o:p>
	html = html.replace(/<\/?\w+:[^>]*>/gi, "") ;
	// Replace the &nbsp;
	html = html.replace(/&nbsp;/, " " );
	// Transform <P> to <DIV>
	var re = new RegExp("(<P)([^>]*>.*?)(<\/P>)","gi") ;	// Different because of a IE 5.0 error
	html = html.replace( re, "<div$2</div>" ) ;
return html;
}
function wordclean()
{
  var cont;
    cont=message.document.body.innerHTML;
message.document.body.innerHTML=cleanAndPaste(cont);
}

function pic()
{if (!validateMode()) return;
message.focus();

var range =message.document.selection.createRange();

  var arr = showModalDialog("pic.html", "", "dialogWidth:30em; dialogHeight:15em; status:0;help:0");
  
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  b=ss[1];
  c=ss[2];
  d=ss[3];
  e=ss[4];
  f=ss[5];
  var str1;
str1="<p align=center><a title='点击图片看全图' target='_blank' href='"+a+"'>"
str1=str1+"<img src='"+a+"' alt='"+b+"' style='"+c+"'"
str1=str1+" onload='javascript:if(this.width>500)this.width=500'"
str1=str1+" border=0 align='"+e+"'></a><br>"+d+"</P>"

   range.pasteHTML(str1);
   }
  else message.focus();
}

function flash()
{if (!validateMode()) return;
message.focus();

var range =message.document.selection.createRange();

  var arr = showModalDialog("flash.html", "", "dialogWidth:30em; dialogHeight:13em; status:0;help:0");
  
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  a="uploadflash/"+a
  b=ss[1];
  c=ss[2];
  var str1;
str1="<p align=center>"
str1=str1+"<embed src="+a+" width="+b+" height="+c+">"
str1=str1+"</P>"

   range.pasteHTML(str1);
   }
  else message.focus();
}

function vedio()
{if (!validateMode()) return;
message.focus();

var range =message.document.selection.createRange();

  var arr = showModalDialog("vedio.html", "", "dialogWidth:30em; dialogHeight:13em; status:0;help:0");
  
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  a="uploadvedio/"+a
  b=ss[1];
  c=ss[2];
  var str1;
str1="<p align=center>"
str1=str1+"<embed src="+a+" width="+b+" height="+c+" autostart=true loop=true>"
str1=str1+"</P>"

   range.pasteHTML(str1);
   }
  else message.focus();
}

function getfile()
{if (!validateMode()) return;
message.focus();

var range =message.document.selection.createRange();

  var arr = showModalDialog("file.html", "", "dialogWidth:30em; dialogHeight:13em; status:0;help:0");
  
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  a="uploadfile/"+a
  b=ss[1];
  var str1;
str1="<p align=left>"
str1=str1+"<a title="+b+" href=downloadfile.aspx?filename="+a+">"
str1=str1+b
str1=str1+"</a></p>"
   range.pasteHTML(str1);
   }
  else message.focus();
}

function validateMode()
{
  if (!bTextMode) return true;
  alert("请先取消查看HTML源代码，进入“编辑”状态，然后再使用系统编辑功能!");
  message.focus();
  return false;
}


function forecolor()
{
				col = websn_getTblCol();
  				if (col != "" && col != null) {
				frames.message.document.execCommand("ForeColor",false,col);
}
}
//文字背影颜色
function bgcolor()
{
				col = websn_getTblCol();
  				if (col != "" && col != null) {
				frames.message.document.execCommand("BackColor",false,col);
}
}


function websn_getTblCol() {
 if (document.createAttribute) {
   var retCol = dlgColHelperTbl.ChooseColorDlg();
   retCol = retCol.toString(16);
   if (retCol.length < 6) {
     var tmp = "000000".substring(0,6-retCol.length);
     retCol = tmp.concat(retCol);
	 var c = 66;
   }
 }
 else {
  bascol = showModalDialog("colpick.html", "", "dialogWidth:350px; dialogHeight:370px; status:no; help:no");
  if (bascol != null) {
    retCol = bascol['col'];
  }
 }
 return retCol;
}



function InsertTable()
{
  if (!	validateMode())	return;
  message.focus();
  var range = message.document.selection.createRange();
  var arr = showModalDialog("editor_inserttable.html", "", "dialogWidth:450px;dialogHeight:200px;help: no; scroll: no; status: no");

  if (arr != null){
	range.pasteHTML(arr);
  }
  message.focus();
}










function HideMenu() 
{
 var mX;
 var mY;
 var vDiv;
 var mDiv;
	if (isvisible == true)
{
		vDiv = document.all("menuDiv");
		mX = window.event.clientX + document.body.scrollLeft;
		mY = window.event.clientY + document.body.scrollTop;
		if ((mX < parseInt(vDiv.style.left)) || (mX > parseInt(vDiv.style.left)+vDiv.offsetWidth) || (mY < parseInt(vDiv.style.top)-h) || (mY > parseInt(vDiv.style.top)+vDiv.offsetHeight)){
			vDiv.style.visibility = "hidden";
			isvisible = false;
		}
}
}

function ShowMenu(vMnuCode,tWidth) {
	vSrc = window.event.srcElement;
	vMnuCode = "<table id='submenu' cellspacing=1 cellpadding=3 style='width:"+tWidth+"' class=menu onmouseout='HideMenu()'><tr height=23><td nowrap align=left class=MenuBody>" + vMnuCode + "</td></tr></table>";

	h = vSrc.offsetHeight;
	w = vSrc.offsetWidth;
	l = vSrc.offsetLeft + leftMar+2   ;
	t = vSrc.offsetTop + topMar + h + space-32;
	vParent = vSrc.offsetParent;
	while (vParent.tagName.toUpperCase() != "BODY")
	{
		l += vParent.offsetLeft;
		t += vParent.offsetTop;
		vParent = vParent.offsetParent;
	}

	menuDiv.innerHTML = vMnuCode;
	menuDiv.style.top = t;
	menuDiv.style.left = l;
	menuDiv.style.visibility = "visible";
	isvisible = true;
    makeRectangularDropShadow(submenu, MENU_SHADOW_COLOR, 4)
}

function makeRectangularDropShadow(el, color, size)
{
	var i;
	for (i=size; i>0; i--)
	{
		var rect = document.createElement('div');
		var rs = rect.style
		rs.position = 'absolute';
		rs.left = (el.style.posLeft + i) + 'px';
		rs.top = (el.style.posTop + i) + 'px';
		rs.width = el.offsetWidth + 'px';
		rs.height = el.offsetHeight + 'px';
		rs.zIndex = el.style.zIndex - i;
		rs.backgroundColor = color;
		var opacity = 1 - i / (i + 1);
		rs.filter = 'alpha(opacity=' + (100 * opacity) + ')';
		el.insertAdjacentElement('afterEnd', rect);
		global.fo_shadows[global.fo_shadows.length] = rect;
	}
}







