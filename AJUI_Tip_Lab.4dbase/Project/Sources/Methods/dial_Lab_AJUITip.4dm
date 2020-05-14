//%attributes = {}
C_BOOLEAN:C305($1)


If (Count parameters:C259=0)
	$ref_process:=New process:C317(Current method name:C684;0;Current method name:C684;True:C214)
	SHOW PROCESS:C325($ref_process)
	BRING TO FRONT:C326($ref_process)
Else 
	C_OBJECT:C1216($lab)
	$lab:=loadPropertiesCollections 
	$lab.templateLocPref:=TLoc_loadPathSettings 
	$lab.tip_sf_details:=New object:C1471
	$ref_win:=Open form window:C675("Lab_AJUITip";Plain form window:K39:10)
	DIALOG:C40("Lab_AJUITip";$lab)
	CLOSE WINDOW:C154($ref_win)
	
End if 