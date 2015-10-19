
var bNetscape4plus = (navigator.appName == "Netscape" && navigator.appVersion.substring(0,1) >= "4"); 
var bExplorer4plus = (navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.substring(0,1) >= "4"); 
function CheckUIElements(){ 
        var yMenuFrom, yMenuTo, yButtonFrom, yButtonTo, yOffset, timeoutNextCheck; 

        if ( bNetscape4plus ) { 
                yMenuFrom   = document["quick"].top; 
                yMenuTo     = top.pageYOffset + 122; 
        } 
        else if ( bExplorer4plus ) { 
                yMenuFrom   = parseInt (quick.style.top, 10); 
                yMenuTo     = document.body.scrollTop + 122; 
        } 

        timeoutNextCheck = 500; 

        if ( Math.abs (yButtonFrom - (yMenuTo + 152)) < 6 && yButtonTo < yButtonFrom ) { 
                setTimeout ("CheckUIElements()", timeoutNextCheck); 
                return; 
        } 

        if ( yButtonFrom != yButtonTo ) { 
                yOffset = Math.ceil( Math.abs( yButtonTo - yButtonFrom ) / 10 ); 
                if ( yButtonTo < yButtonFrom ) 
                        yOffset = -yOffset; 

                if ( bNetscape4plus ) 
                        document["divLinkButton"].top += yOffset; 
                else if ( bExplorer4plus ) 
                        divLinkButton.style.top = parseInt (divLinkButton.style.top, 10) + yOffset; 

                timeoutNextCheck = 10; 
        } 
        if ( yMenuFrom != yMenuTo ) { 
                yOffset = Math.ceil( Math.abs( yMenuTo - yMenuFrom ) / 20 ); 
                if ( yMenuTo < yMenuFrom ) 
                        yOffset = -yOffset; 

                if ( bNetscape4plus ) 
                        document["quick"].top += yOffset; 
                else if ( bExplorer4plus ) 
                        quick.style.top = parseInt (quick.style.top, 10) + yOffset; 

                timeoutNextCheck = 10; 
        } 

        setTimeout ("CheckUIElements()", timeoutNextCheck); 
} 

function OnLoad() 
{ 
        var y; 
        if ( top.frames.length ) 
        if ( bNetscape4plus ) { 
                document["quick"].top = top.pageYOffset + 122; 
                document["quick"].visibility = "visible"; 
        } 
        else if ( bExplorer4plus ) { 
                quick.style.top = document.body.scrollTop + 122; 
                quick.style.visibility = "visible"; 
        } 
        CheckUIElements(); 
        return true; 
} 
OnLoad(); 
