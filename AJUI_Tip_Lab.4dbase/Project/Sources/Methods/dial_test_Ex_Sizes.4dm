//%attributes = {}
C_BOOLEAN:C305($1)

If (Count parameters:C259=0)
	$ref_process:=New process:C317(Current method name:C684;0;Current method name:C684;True:C214)
	SHOW PROCESS:C325($ref_process)
	BRING TO FRONT:C326($ref_process)
Else 
	
	$ref_win:=Open form window:C675("Ex_Sizes";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
	DIALOG:C40("Ex_Sizes")
	CLOSE WINDOW:C154($ref_win)
	
End if 

