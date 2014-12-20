<cfscript>
	if(isDefined('url.event')){eventName = url.event;}
	else{eventName = "home";}
	
	// Home
	if(eventName=="home")
	{
		eventHead = "intro";
		eventView = "home.cfm";
	};
	
	// Dev Log
	if(eventName=="devlog")
	{
		eventHead = "devlog";
		eventView = "log.cfm";
	};
	
	// About
	if(eventName=="about")
	{
		eventHead = "about";
		eventView = "about.cfm";
	};
</cfscript>

<html>
	<head>
		<title>Quizapped</title>

		<!--- Zurb Styles and Scripts --->
		<link rel="stylesheet" href="styles/foundation.css" />
		<script src="scripts/vendor/modernizr.js"></script>

		<!--- Custom Styles --->
		<style>
			nav.top-bar
			{
				text-align:center;
			}
			
			section.top-bar-section
			{
				display: inline-block;
			}
		</style>
	</head>
	<body>

		<!--- Navigation --->
		<cfinclude template="navigation.cfm"/>

		<!--- Content --->
		<cfoutput><cfinclude template="#eventView#"/></cfoutput>

		<!--- Zurb Scripts --->
		<script src="scripts/vendor/jquery.js"></script>
		<script src="scripts/foundation.min.js"></script>
		<script>
			$(document).foundation();
		</script>
	</body>
</html>