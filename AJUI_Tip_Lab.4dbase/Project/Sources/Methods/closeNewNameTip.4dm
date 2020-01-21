//%attributes = {}
  // closeNewNameTip ( param1 ) 
  //
  // param1 : (boolean) add new template
  //
  // Add the new template if validate and update the form objects

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 11.12.19, 08:19:41
	  // ----------------------------------------------------
	  // Method: closeNewNameTip
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
C_BOOLEAN:C305($1)
C_TEXT:C284($nameTemplate;$newNameTemplate)

If ($1)
	$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
	Form:C1466.oldName:=Form:C1466.currentNameTemplate
	
	  //check it's a rename or a new template
	If (Form:C1466.tip_sf_details.rename)
		$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
		$fileName:=Form:C1466.tips[Form:C1466.currentNameTemplate].TipName()
		$pos:=Find in array:C230($templates_ptr->;$fileName+$icon)
		If ($pos>0)
			C_OBJECT:C1216($file;$folder)
			
			If ($fileName#"")
				If ($fileName="@.json")
					  //do nothing
				Else 
					$fileName:=$fileName+".json"
				End if 
				
				$pathName:=getTlocPath ($fileName+$icon)
				$file:=File:C1566($pathName+$fileName;fk platform path:K87:2)
				
				  //replace the old template with the new one
				If ($file.exists)  //check file
					$newNameTemplate:=Form:C1466.tip_sf_details.templateName
					$file:=$file.rename($newNameTemplate+".json")
					
					If ($file.exists)
						Form:C1466.tips[Form:C1466.currentNameTemplate].Hide()
						Form:C1466.tips[$newNameTemplate]:=New AJUI_Tip (OB Copy:C1225(Form:C1466.tips[Form:C1466.currentNameTemplate]))
						Form:C1466.currentNameTemplate:=$newNameTemplate
						Form:C1466.tips[Form:C1466.currentNameTemplate].TipName($newNameTemplate)
						Form:C1466.tips[Form:C1466.currentNameTemplate].Export($newNameTemplate;$pathName)
						
						$folder:=Folder:C1567($pathName;fk platform path:K87:2)
						If ($folder.name=(Replace string:C233($fileName;".json";"")))
							$folder:=$folder.rename($newNameTemplate)
							If (Not:C34($folder.exists))
								ALERT:C41("File renamed correctly, but the renaming of the folder failed")
							End if 
						End if 
						
						$templates_ptr->{$templates_ptr->}:=$newNameTemplate+$icon
						
						SORT ARRAY:C229($templates_ptr->)
						$pos:=Find in array:C230($templates_ptr->;Form:C1466.tips[Form:C1466.currentNameTemplate].TipName()+$icon)
						$templates_ptr->:=$pos
						
					Else 
						ALERT:C41("Unknow error : can't rename the template")
					End if 
				Else 
					ALERT:C41("File not found"+"\r\r"+$pathName)
				End if 
			End if 
		Else 
			ALERT:C41("No template selected")
		End if 
	Else 
		Form:C1466.tips[Form:C1466.currentNameTemplate].Hide()
		  //create new template
		Form:C1466.currentNameTemplate:=Form:C1466.tip_sf_details.templateName
		Form:C1466.tips[Form:C1466.currentNameTemplate]:=New AJUI_Tip ()
		Form:C1466.tips[Form:C1466.currentNameTemplate].TipName(Form:C1466.tip_sf_details.templateName)
		Form:C1466.tips[Form:C1466.currentNameTemplate].TargetName("fieldExample_obj")
		
		  //save new template
		$icon:=Form:C1466.tip_sf_details.tempIcon
		$nameTemplate:=Form:C1466.tips[Form:C1466.currentNameTemplate].TipName()
		Form:C1466.tips[Form:C1466.currentNameTemplate].Export($nameTemplate;getTlocPath ($icon))
		$pos:=Find in array:C230($templates_ptr->;$nameTemplate)
		If ($pos>0)
			  //nothing to do
		Else 
			$nameTemplate:=$nameTemplate+$icon
			APPEND TO ARRAY:C911($templates_ptr->;$nameTemplate)
			SORT ARRAY:C229($templates_ptr->)
			$pos:=Find in array:C230($templates_ptr->;$nameTemplate)
			$templates_ptr->:=$pos
		End if 
		
		Form:C1466.btnSave.Enable(False:C215)
		Form:C1466.btnSave.Draw()
		
		formulasGetValues 
		REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
		
	End if 
	
	refresh 
	redrawTip 
	Form:C1466.currentBtn:=OB Copy:C1225(Form:C1466.tips[Form:C1466.currentNameTemplate])
	
	  //enable/disable template buttons
	templatesButtonsEnable (True:C214;"btnSave")
Else 
	  //enable/disable template buttons
	If (Form:C1466.btnSaveActive)
		templatesButtonsEnable (True:C214)
	Else 
		templatesButtonsEnable (True:C214;"btnSave")
	End if 
End if 

Form:C1466.tipNewTemplate.Hide()

