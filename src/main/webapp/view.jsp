<%@ include file="/init.jsp" %>

<script type="text/javascript">
    var tagsLoaded = false;
    
    Liferay.Portlet.ready(
        function(){
            if(tagsLoaded === false) {
                tagsLoaded = true;
                $('.slide-out-div').tabSlideOut({
                    tabHandle: '.handle',           //class of the element that will become your tab
                    pathToTabImage: '/icon.png',    //path to the image for the tab //Optionally can be set using css
                    imageHeight: '100px',           //height of tab image           //Optionally can be set using css
                    imageWidth: '34px',             //width of tab image            //Optionally can be set using css
                    tabLocation: 'right',           //side of screen where tab lives, top, right, bottom, or left
                    speed: 300,                     //speed of animation
                    action: 'click',                //options: 'click' or 'hover', action to trigger animation
                    topPos: '125px',                //position from the top/ use if tabLocation is left or right
                    leftPos: '20px',                //position from left/ use if tabLocation is bottom or top
                    fixedPosition: true             //options: true makes it stick(fixed position) on scroll
                });
            }
        }
    );

</script>
    
<style type="text/css">    
.slide-out-div {
	padding: 7px;
	width: 425px;
	font-size: 0.95em;
	background: rgba(240,240,240,0.9);
	-moz-box-shadow: -5px 2px 7px rgba(0,0,0,0.75); 
	-webkit-box-shadow: -5px 2px 7px rgba(0,0,0,0.75);
	box-shadow: -5px 2px 7px rgba(0,0,0,0.75);
	border: 2px solid white;
	z-index: 150;    
}      

.handle {
	margin-top: -2px;
	font-size: 24px;
	font-family: Segoe UI,Helvetica,Arial,sans-serif;
	color: #FFFFFF;
	background-color: #1B1A1A;
	
	text-shadow: 4px 2px 4px black;
	border-top: 2px solid white;	
	border-bottom: 2px solid white;
	border-left: 2px solid white;
	border-right:2px solid rgba(181,189,200,0.93);
	z-index: 100;		
	border: 2px solid white;
	border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
	-moz-box-shadow: -5px 2px 7px rgba(0,0,0,0.75); 
	-webkit-box-shadow: -5px 2px 7px rgba(0,0,0,0.75);
	box-shadow: -5px 2px 7px rgba(0,0,0,0.75);
	   
	background: #b5bdc8;
	background: -moz-linear-gradient(right, #b5bdc8 0%, #828c95 36%, #28343b 100%);
	background: -webkit-gradient(linear, right, left, color-stop(0%,#b5bdc8), 
	                color-stop(36%,#828c95), color-stop(100%,#28343b));
	background: -webkit-linear-gradient(right, #b5bdc8 0%, #828c95 36%, #28343b 100%);
	background: -o-linear-gradient(right, #b5bdc8 0%, #828c95 36%, #28343b 100%);
	background: -ms-linear-gradient(right, #b5bdc8 0%, #828c95 36%, #28343b 100%);
	background: linear-gradient(right, #b5bdc8 0%, #828c95 36%, #28343b 100%); 
	 
	cursor: pointer;
	  
	opacity: 0.9;
}

.vertical {
	margin-left: 4px;
	margin-top: 50px;
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
	width: 75px \0/;
	height: 34px \0/;
	margin: 0 \0/;
}
</style>
<liferay-theme:defineObjects />
<portlet:defineObjects />

<div class="slide-out-div">
	<div class="handle">
		<div class="vertical"><%= LanguageUtil.get(pageContext, "com.tuneit.SlideOutTagsCloudPortlet.tags")%></div>
	</div>
	<liferay-ui:asset-tags-navigation 
		classNameId="0"
		displayStyle="cloud"
		hidePortletWhenEmpty="true"
		maxAssetTags="100"
		showAssetCount="true"
		showZeroAssetCount="true"/>   
</div>
 
