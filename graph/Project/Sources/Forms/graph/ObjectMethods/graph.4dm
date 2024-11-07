Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		
		OBJECT SET ENABLED:C1123(*; "btn.line.@"; False:C215)
		
		WA OPEN URL:C1020(*; OBJECT Get name:C1087; File:C1566(File:C1566("/RESOURCES/html/graph.html").platformPath; fk platform path:K87:2).platformPath)
		
	: (FORM Event:C1606.code=On End URL Loading:K2:47)
		
		OBJECT SET ENABLED:C1123(*; "btn.line.@"; True:C214)
		
		WA EXECUTE JAVASCRIPT FUNCTION:C1043(*; OBJECT Get name:C1087; "setup")
		
End case 