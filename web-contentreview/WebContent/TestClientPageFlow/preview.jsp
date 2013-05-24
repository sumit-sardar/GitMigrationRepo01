
<%@ page import="java.io.*"%>
<%@ page import=" java.util.*"%>
<%@ page import=" javax.servlet.http.HttpSession"%>
<%@ page import=" javax.servlet.http.HttpServletRequest"%>

<%
    String eliminatorResource = "eliminator.swf";
    String url = request.getRequestURL().toString().trim();
    int lastSlash = url.lastIndexOf("/");
    url = url.substring(0,lastSlash).trim().replaceAll("https:","http:").replaceAll(":443",":80").replaceAll(":7002",":7001");
    System.out.println(url);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>

<TITLE>Presentation Canvas</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<link rel="SHORTCUT ICON"
	href="http://www.laszlosystems.com/favicon.ico">
<meta name="viewport" content="width=device-width; initial-scale=1.0;">
<title>Online Assessment System</title>
<script type="text/javascript" src="../includes/embed-compressed.js"></script>
<script type="text/javascript" src="../includes/manipulative_manager.js"></script>
<script type="text/javascript" src="../lps/includes/laslinks_utils.js"></script>
<style type="text/css">
html,body { /* http://www.quirksmode.org/css/100percheight.html */
	height: 100%;
	/* prevent browser decorations */
	margin: 0;
	padding: 0;
	border: 0 none;
	text-rendering: optimizeLegibility;
}

body {
	background-color: #ffffff;
	-webkit-font-smoothing: antialiased;
	/* -moz-font-smoothing: antialiased; - No longer available in FF */
	font-smoothing: antialiased; //
	text-rendering: optimizeLegibility;
}

img {
	border: 0 none;
}

@font-face {
	font-family: "CTB";
	src: url("ctbmodules/resources/fonts/OASmathv3.ttf");
}

@font-face {
	font-family: "CTB";
	src: url("ctbmodules/resources/fonts/OASmathv3 Bold.ttf");
	font-weight: bold;
}

@font-face {
	font-family: "CTB";
	src: url("ctbmodules/resources/fonts/OASmathv3 Italic.ttf");
	font-style: italic;
}

@font-face {
	font-family: "CTB";
	src: url("ctbmodules/resources/fonts/OASmathv3 BoldItalic.ttf");
	font-weight: bold;
	font-style: italic;
}
</style>
<!--[if IE]>
        <style type="text/css">
            /* Fix IE scrollbar braindeath */
            html { overflow: auto; overflow-x: hidden; }
        </style>
        <![endif]-->
<script type="text/javascript">
<!--
var _LDB_BypassSetFocusOnPageLoad = 0;
var spText;
var fontAccom;
var backColorString;
var xscalefactor = 1;
var yscalefactor = 1;
var currentLasAssetItemId;
var autoPlayEvent = "false";
var LASAssetPath = "/ContentReviewWeb/ContentReviewPageFlow/items/"; 

function getLasAssetPath(){
	lz.embed.setCanvasAttribute("LASAssetPath", LASAssetPath);
}

//This is to revert the change for the header group in javascript side. Because this is not going to be parsed by Flash.
String.prototype.replaceAll = function(stringToFind,stringToReplace){
    var temp = this;
    var index = temp.indexOf(stringToFind);
        while(index != -1){
            temp = temp.replace(stringToFind,stringToReplace);
            index = temp.indexOf(stringToFind);
        }
        return temp;
    }
function showFootnote(header)
{
    header = header.replaceAll("&amp;","&");
	lz.embed.setCanvasAttribute("footnotedata", header);
}
function load() {
    <%
    String productType = (String) session.getAttribute( "productType" );
    %>
     var productTypeVal = "<%=productType%>";
     if(productTypeVal == 'Laslinks'){
        loadJsApplication();
     }else {
        loadSwfApplication();
     }
}


function isMac(){
	return (window.navigator.platform.indexOf("Mac") != -1);
}

function closeBrowser()
{
	if(isMac()){
		location.href="close.html";
	}
	else{
		window.close();
	}
}

function updateLDB(){
	_LDB_BypassSetFocusOnPageLoad = 1;
}
function showElement(element){
    element.style.display="block";
}

var myflashinstalled = 0;
var myflashversion = 0;
var myMSDetect = "false";

function mydetectFlash(){
    mydetectFlashUsingJavascript();
    if(myMSDetect == "true"){
        mydetectFlashUsingVBScript();
    }
    myflashversion = new Number(myflashversion);
}

function mydetectFlashUsingJavascript(){
    if (navigator.plugins && navigator.plugins.length)
    {
        navigator.plugins.refresh(true);
        x = navigator.plugins["Shockwave Flash"];
        if (x)
        {
            myflashinstalled = 2;
            if (x.description)
            {
                y = x.description;
                myflashversion = y.charAt(y.indexOf('.')-1);
            }
        }
        else
            myflashinstalled = 1;
        if (navigator.plugins["Shockwave Flash 2.0"])
        {
            myflashinstalled = 2;
            myflashversion = 2;
        }
    }
    else if (navigator.mimeTypes && navigator.mimeTypes.length)
    {
        x = navigator.mimeTypes['application/x-shockwave-flash'];
        if (x && x.enabledPlugin)
            myflashinstalled = 2;
        else
            myflashinstalled = 1;
    }
    else
        myMSDetect = "true";
}

function setSPText(arg){
	if(arg=="")
     	arg=" ";
    spText = arg; 	
    lz.embed.setCanvasAttribute('sptext',arg);
}

function storeScratchPadText(args){	
	spText = args;
}

function mydetectFlashUsingVBScript() {
    document.write('<SCRIPT LANGUAGE="VBScript">on error resume next\nIf myMSDetect = "true" Then\nFor i = 2 to 8\nIf Not(IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash." & i))) Then\nElse\nmyflashinstalled = 2\nmyflashversion = i\nEnd If\nNext\nEnd If\nIf myflashinstalled = 0 Then\nmyflashinstalled = 1\nEnd If</SCRIPT>');
}

function setManipState(args){
	lz.embed.setCanvasAttribute('manipstate',args);
}

function setTTStext(args){
	lz.embed.setCanvasAttribute('ttstext',args);
}

function setAnswerNow(args){
	lz.embed.setCanvasAttribute('setanswer',args);
}
function getReadable(){
	return lz.embed.lzapp.getCanvasAttribute('readable');
}

function freezeUI(){
if(document.getElementById('__lz0')){
		document.getElementById('__lz0').contentWindow.freezeUI();
	}
}

function unlockUI(){
if(document.getElementById('__lz0')){
		document.getElementById('__lz0').contentWindow.unlockUI();
	}
}

function setScaleFactor(args){

	args = args.split('|');
	xscalefactor = args[0];
	yscalefactor = args[1];
	
}
function getFontAccomodation(){
	var fontAccom = lz.embed.lzapp.getCanvasAttribute('fontString');
	fontAccom = fontAccom.split("|");
	var fontObj = new Object();
	fontObj.hasFont = fontAccom[0];
	fontObj.bgcolor = fontAccom[1].replace('0x', '#');
	fontObj.fgcolor = fontAccom[2].replace('0x', '#');
	return fontObj;
}

function getBackColorAccomodation(){
	var backColorString = lz.embed.lzapp.getCanvasAttribute('backColorString');
	backColorString = backColorString.split("|");
	var bgColorObj = new Object();
	bgColorObj.stemArea = backColorString[0].replace('0x', '#');
	bgColorObj.responseArea = backColorString[1].replace('0x', '#');
	return bgColorObj;
}
function setHtmlGeneralManip(htmlGeneralManip){
  	lz.embed.setCanvasAttribute('htmlManip',htmlGeneralManip);
}

function exitPleaseWaitPopup(){
	lz.embed.setCanvasAttribute('exitPleaseWaitPopup','true');
}

function getOpenManipData(){
	return lz.embed.lzapp.getCanvasAttribute('htmlOpenManip');
}
function setFootnoteText(arg){
	lz.embed.setCanvasAttribute('footnotetext',arg);
}

function setFocusOnScratchpad(){
document.getElementById('__lz0').contentWindow.setFocus();
}

function setCurLasItemId(id) {
	currentLasAssetItemId = id;
	assetCount = 0;
	checkAnswered = false;
}


function eventMonitor(id,event) {

	var currIframeId = frameFolderObject[id];
 	if(event == 'play' || event == 'jsplay') {
 		setPlayingAttr(event,'true');
 		iframeObject[currentLasAssetItemId][currIframeId]['playEvent'] = true;
 		//console.log("Is Playing :",iframeObject[currentLasAssetItemId][currIframeId]['playEvent']);
 		playSingleAsset(currIframeId);
 		if(iframeObject[currentLasAssetItemId]) {
 			if(iframeObject[currentLasAssetItemId][currIframeId]['folder'] == id) {
 				iframeObject[currentLasAssetItemId][currIframeId]['clickedOnce'] = true;	// To know whether it is clicked once or not.
 				 getCurrentPlayOrder(currIframeId);
 			}
 		}
 		 
 		 unlockResponseArea(currIframeId);
 		
 		
 	} else if(event == 'finished' || event == 'endTrack' || event == 'pause') {
 		if( event == 'endTrack' || event == 'pause'){
 			setPlayingAttr(event,'false');
 		}
	 		iframeObject[currentLasAssetItemId][currIframeId]['playEvent'] = false;
	 		//console.log("event -- ",event);
	 		if(iframeObject[currentLasAssetItemId]) {
	 			if(iframeObject[currentLasAssetItemId][currIframeId]['folder'] == id) {
	 				if(iframeObject[currentLasAssetItemId][currIframeId]['clickedOnce']) {
	 					iframeObject[currentLasAssetItemId][currIframeId]['playedOnce'] = true; // To know whether the asset is atleast played once or not.
	 				}
	 			}
	 		}
	 		enableNextButton(id);
 		  if(autoPlayEvent == 'true') {
	 			autoPlayEvent = "false";
	 		}
	 		restrictNavigation('unlock');
 		
 	} else if (event == 'reset') {
 		//setPlayingAttr('false');
 	}
 	 	else if (event == 'autoplayEndTrack') {
 		setPlayingAttr('false');
 	  	autoPlayEvent = "false";	
 	}
 	//lz.embed.setCanvasAttribute("bringBackFocus", 'true');
}

function callManipOutOfFrameCheck(testClientMouseUp) {
	var elementArr = document.getElementsByTagName('iframe');
	if(elementArr[0] != null && elementArr[0] != undefined && elementArr[0].id) {
		document.getElementById(elementArr[0].id).contentWindow.manipOutOfFrameCheck(testClientMouseUp);
	}
}
//------------------
function callTestMouseUp1() {
   	lz.embed.setCanvasAttribute('testMouseUp','true');
}

function fromWrapper() {
	lz.embed.setCanvasAttribute('fromWrapper','true');
}
function showMagnify() {	
		isMagnifierVisible = "true";
		if(jQuery("#magnifierWindow").length < 1){
			jQuery('body').addpowerzoom({
					defaultpower: 1.5,
					powerrange: [1.5,2],
					largeimage: null,
					magnifiersize: [300,100] 
				});
		}	
		jQuery(ddpowerzoomer.$magnifier.outer).hide();
		jQuery.ajax({
			url: "servlet/PersistenceServlet.do?method=captureScreenshot",
			dataType: "xml",
			success: function(data) {
			//xmlDoc = jQuery.parseXML( data ),
		    xml = jQuery( data ),
		    ok = xml.find( "OK" );
			//alert(ok);
			var timeStamp = ok.text();//jQuery(jQuery.parseXML(data)).find("ok").text();
			//alert(timeStamp);
			var imageName = "cache/screenshot"+timeStamp+".png"
			
			jQuery(ddpowerzoomer.$magnifier.outer).css('left',(document.body.clientWidth/2 - 165)+ 'px');
			jQuery(ddpowerzoomer.$magnifier.outer).css('top',(document.body.clientHeight/2 - 75) + 'px');
			jQuery(ddpowerzoomer.$magnifier.outer).show();
			jQuery(ddpowerzoomer).initMagnify({largeimage:imageName});
			}
		});
			
		
	}
function hideMagnify() {		
	isMagnifierVisible = "false";
	jQuery(ddpowerzoomer.$magnifier.outer).hide();
}
function displayMagnifier() {		
	
	jQuery(ddpowerzoomer.$magnifier.outer).show();
}

function setMouseUpVal() {
	lz.embed.setCanvasAttribute('mouseUpFired','false');
}

var currentFrameId;
function frameID(frameid){
	currentFrameId = frameid;
}
function isSPRequired(){
	var isSP = lz.embed.lzapp.getCanvasAttribute('scratchpadRequired');
	return isSP;
}
function enableHotKeys(arg) {
	lz.embed.setCanvasAttribute('keysPressed',arg);
}
function enableManipBar(arg) {
	lz.embed.setCanvasAttribute('enableManipBar',arg);
}
function setIframeIsLoaded(){
	lz.embed.setCanvasAttribute('iframeIsLoaded',true);
}

function hideTooltip() {
    var isTooltip = lz.embed.lzapp.getCanvasAttribute('isTooltip');
    if(isTooltip == true || isTooltip == 'true')
		lz.embed.setCanvasAttribute('hideTooltip',"hildTooltip");
}

function enablePasswordFocus(){
    var myFlash = document.getElementById( 'lzapp' );
     if ( myFlash ) { 
      myFlash.focus(); 
     }
}
	
	
//-->
</script>
<style type="text/css">
body {
	background-color: #6691B4;
	margin: 0px;
	overflow: hidden;
}
</style>
</HEAD>

<!--SA041005 start -->

<BODY onload="load()">
<div id="needFlash9" style="display: none">
<table height="100%" width="100%">
	<tr>
		<td height="30%" width="100%" colspan="3">&nbsp;</td>
	</tr>
	<tr>
		<td height="40%" width="20%">&nbsp;</td>
		<td height="40%" width="60%" bgcolor="#527DA4">
		<table>
			<tr>
				<td valign="top" style="padding: 10px"><font color="white"
					size="6" face="Arial">The test cannot start because this
				computer is missing Flash 9.</font><br />
				</td>
			</tr>
			<tr>
				<td valign="top" style="padding: 20px"><font color="white"
					size="5" face="Arial">Please show this screen to the person
				in charge of testing and request a Flash 9 installation.</font></td>

			</tr>
			<tr>
				<td valign="bottom" style="padding: 20px" width="100%" align="right">
				<input type="image" src="images/close.png" onclick="closeBrowser();" />
				</td>
			</tr>
		</table>
		</td>
		<td height="40%" width="20%"></td>
	</tr>
	<tr>
		<td height="10%" width="20%">&nbsp;</td>
		<td height="10%" width="60%" valign="top"><font color="#527DA4"
			size="2" face="Arial">CTB/McGraw-Hill</font></td>
		<td height="10%" width="20%"></td>
	</tr>
	<tr>
		<td height="20%" width="100%" colspan="3">&nbsp;</td>
	</tr>
</table>
</div>

<SCRIPT type="text/javaScript">
		if(!isMac()){
			document.write('<OBJECT ID="LDBJSBridgeCTL" CLASSID="CLSID:56871AC2-4683-4D8E-B5EB-E7E3AA40DD52" VIEWASTEXT WIDTH=0 HEIGHT = 0></OBJECT>');
		}
	</SCRIPT>

<div id="appcontainer"></div>
<div id="lzsplash"
	style="z-index: 10000000; top: 0; left: 0; width: 100%; height: 100%; position: fixed; display: table">
<p style="display: table-cell; vertical-align: middle; align: center;">
<div id="lzsplashtext"
	style="display: block; margin: 20% auto; font-size: 12px; font-family: Helvetica, sans-serif;"
	align="center">Loading...</div>
</p>
</div>
<script type="text/javascript" defer>
 function loadJsApplication(){
 						try {
	                  lz.embed.dhtml({url: '/ContentReviewWeb/TestClientPageFlow/TestClient.js?servletUrl=/ContentReviewWeb/TestClientPageFlow', lfcurl: '/ContentReviewWeb/TestClientPageFlow/lps/includes/lfc/LFCdhtml.js', serverroot: '/ContentReviewWeb/TestClientPageFlow/lps/resources/', bgcolor: '#6691b4', width: '100%', height: '100%', id: 'lzapp', accessible: 'false', cancelmousewheel: false, cancelkeyboardcontrol: false, skipchromeinstall: false, usemastersprite: false, approot: '', appenddivid: 'appcontainer'});
                       setTimeout(function(){
                    	removeStatusDiv();
                        }, 500);
	                  lz.embed.applications.lzapp.onload = function loaded() {
	                    // called when this application is done loading
	                    //removeStatusDiv();
	                  }
	                  } catch (exception) {
	                  	//alert("Exception"+ exception.message);
	                  }
                  }
                  function loadSwfApplication(){
                      lz.embed.resizeWindow('100%', '100%');
	                  lz.embed.swf({url: '/ContentReviewWeb/TestClientPageFlow/TestClient.lzx.swf?&lzr=swf10&servletUrl=<%=url%>&eliminatorResource=http://oascqa-ewdc.ctb.com/ContentReviewWeb/resources/eliminator.swf', allowfullscreen: 'true', bgcolor: '#6691B4', width: '100%', height: '100%', id: 'lzapp', accessible: 'false', cancelmousewheel: false, appenddivid: 'appcontainer', wmode: 'transparent'});
					  //lz.embed.swf({url: 'TestClient.lzx.swf?&lzr=swf10&folder=calif&servletUrl=http://192.168.2.2:12345/servlet/fixed&eliminatorResource=resources/eliminator.swf', allowfullscreen: 'false', bgcolor: '#6691B4', width: '100%', height: '100%', id: 'lzapp', accessible: 'false', cancelmousewheel: false, appenddivid: 'appcontainer'});
					  	
	                  lz.embed.applications.lzapp.onloadstatus = function loadstatus(p) {
	                    // called with a percentage (0-100) indicating load progress
	                    var el = document.getElementById('lzsplashtext');
	                    if (el) {
	                        if (p == 100) {
	                            var splash = document.getElementById('lzsplash');
	                            if (splash) {
	                                splash.parentNode.removeChild(splash);
	                            }
	                        } else {
	                            el.innerHTML = p + '% loaded'
	                        }
	                    }
	                  }
	
	                  lz.embed.applications.lzapp.onload = function loaded() {
	                    // called when this application is done loading and the 
	                    // canvas has initted
	                  }
	              }
                  
                  function removeStatusDiv() {
                    var el = document.getElementById('lzsplashtext');
                        if (el) {
                            var splash = document.getElementById('lzsplash');
                            if (splash) {
                                splash.parentNode.removeChild(splash);
                            }
	                    }
                  }
   /*               lz.embed.resizeWindow('100%', '100%');
                  lz.embed.swf({url: '/ContentReviewWeb/TestClientPageFlow/TestClient.lzx.swf?&lzr=swf10&servletUrl=<%=url%>&eliminatorResource=http://oascqa-ewdc.ctb.com/ContentReviewWeb/resources/eliminator.swf', allowfullscreen: 'true', bgcolor: '#6691B4', width: '100%', height: '100%', id: 'lzapp', accessible: 'false', cancelmousewheel: false, appenddivid: 'appcontainer', wmode: 'transparent'});
				  //lz.embed.swf({url: 'TestClient.lzx.swf?&lzr=swf10&folder=calif&servletUrl=http://192.168.2.2:12345/servlet/fixed&eliminatorResource=resources/eliminator.swf', allowfullscreen: 'false', bgcolor: '#6691B4', width: '100%', height: '100%', id: 'lzapp', accessible: 'false', cancelmousewheel: false, appenddivid: 'appcontainer'});
				  	
                  lz.embed.applications.lzapp.onloadstatus = function loadstatus(p) {
                    // called with a percentage (0-100) indicating load progress
                    var el = document.getElementById('lzsplashtext');
                    if (el) {
                        if (p == 100) {
                            var splash = document.getElementById('lzsplash');
                            if (splash) {
                                splash.parentNode.removeChild(splash);
                            }
                        } else {
                            el.innerHTML = p + '% loaded'
                        }
                    }
                  }

                  lz.embed.applications.lzapp.onload = function loaded() {
                    // called when this application is done loading and the 
                    // canvas has initted
                  }
                  
      */            
                </script>
<noscript>Please enable JavaScript in order to use this
application.</noscript>
</body>
</html>