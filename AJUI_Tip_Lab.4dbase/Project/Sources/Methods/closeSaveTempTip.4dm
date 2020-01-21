//%attributes = {}
  // closeSaveTempTip ( param1 ) 
  //
  // param1 : (boolean) save  template
  //
  // Save the template if validate 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.12.19, 16:29:23
	  // ----------------------------------------------------
	  // Method: closeSaveTempTip
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
C_BOOLEAN:C305($1)


If ($1)
	C_OBJECT:C1216($file;$folder)
	C_TEXT:C284($templateName)
	C_POINTER:C301($templates_ptr)
	
	$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
	$icon:=Form:C1466.tip_sf_details.tempIcon
	$templateName:=Form:C1466.tips[Form:C1466.currentNameTemplate].TipName()
	
	  //save template
	Form:C1466.tips[Form:C1466.currentNameTemplate].Export($templateName;getTlocPath ($icon))
	$folder:=Folder:C1567(getTlocPath ($icon)+$templateName+Folder separator:K24:12;fk platform path:K87:2)
	If ($folder.exists)
		$folder.delete(Delete with contents:K24:24)
	End if 
	
	$pos:=Find in array:C230($templates_ptr->;$templateName+$icon)
	If ($pos>0)
		  //nothing to do
	Else 
		APPEND TO ARRAY:C911($templates_ptr->;$templateName+$icon)
		SORT ARRAY:C229($templates_ptr->)
		$pos:=Find in array:C230($templates_ptr->;$templateName+$icon)
		$templates_ptr->:=$pos
	End if 
	
	Form:C1466.btnSave.Enable(False:C215)
	
	Form:C1466.currentTip:=OB Copy:C1225(Form:C1466.tips[Form:C1466.currentNameTemplate])
	templatesButtonsEnable (True:C214;"btnSave")
	
Else 
	templatesButtonsEnable (True:C214)
End if 

Form:C1466.tipSaveTemplateSubform.Hide()