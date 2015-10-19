// 添加到收藏夹
function AddFavorite(sTitle, sUrl){
	if (document.all){
		window.external.addFavorite(sUrl, sTitle);
	} else if (window.sidebar) {
		window.sidebar.addPanel(sTitle, sUrl, '');
	}
}

// 设为首页
function SetHomepage(sUrl){
	if (document.all)    {
		document.body.style.behavior='url(#default#homepage)';
		document.body.setHomePage(sUrl); 
	}else if (window.sidebar) {
		if(window.netscape) {
			try {  
				netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");  
			}catch (e) {  
				alert( "该操作被浏览器拒绝，如果想启用该功能，请在地址栏内输入 about:config,然后将项 signed.applets.codebase_principal_support 值该为true" );  
			}
		} 
		var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components. interfaces.nsIPrefBranch);
		prefs.setCharPref('browser.startup.homepage', sUrl);
	}
}

// 插入Flash
function parseFlash(swf, swf_width, swf_height) {
	document.write('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="'+ swf_width +'" height="'+ swf_height +'"> ');
	document.write('<param name="movie" value="'+ swf +'"> ');
	document.write('<param name="quality" value="high"> ');
	document.write('<param name="wmode" value="transparent"> ');
	document.write('<embed src="'+ swf +'" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="'+ swf_width +'" height="'+ swf_height +'"></embed> ');
	document.write('</object>');
}


$(document).ready(function() {
	// 链接在窗口中打开
	$(document).ready(function() {
		$('a[rel="external"]').attr('target', '_blank');
	});

	// 设置左右栏的高度
	if($('#sidebar').height() < $('#main').height()) {
		$('#sidebar').height( $('#main').height() );
	}
	//alert( 'sidebar: ' + $('#sidebar').height() );
	//alert( 'main: ' + $('#main').height() );
	
	// 点击设为首页
	$('.sethome').click(function() {
		SetHomepage(document.location.href);
	});

	// 点击添加到收藏夹
	$('.addfav').click(function() {
		AddFavorite(document.title, document.location.href);
	});

	// banner
	if( $('.ad0 img').width() > 960 ) {
		$('.ad0 img').width(960);
	}
});

