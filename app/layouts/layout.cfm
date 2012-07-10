<cfoutput>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>#application.appName#</title>	
	<link href="#APPLICATION.root#styles/main.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="container">
	
		<div id="header">
			<a href="#application.root#">
				<img src="/images/header.jpg" width="800" height="200" border="0" />
			</a>
		</div>
		
		<div id="content">
			#application.loader.request()#<br />
		</div>
		
	</div>
</body>
</html>
</cfoutput>