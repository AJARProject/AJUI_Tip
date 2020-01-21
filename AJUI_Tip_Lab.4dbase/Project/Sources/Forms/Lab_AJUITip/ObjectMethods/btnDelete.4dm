C_POINTER:C301($templates_ptr)
C_BOOLEAN:C305($isDeleted)
C_TEXT:C284($templateName)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnDelete:=newTemplateButton 
		Form:C1466.btnDelete.Name("btnDelete")
		Form:C1466.btnDelete.Label(AJUI_btn_default;"Delete")
		Form:C1466.btnDelete.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994410---delete-dustbin-garbage-recycle-bin-trash-can.svg")
		
		Form:C1466.tipDelete:=tip_templatesButtons ("btnDelete";"Delete template")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnDelete"))
			Form:C1466.tipDelete.TextLabel("Delete template")
			Form:C1466.tipDelete.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipDelete.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		
		
	: (Form event code:C388=On Clicked:K2:4)
		C_POINTER:C301($templates_ptr)
		$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
		$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
		$fileName_t:=Replace string:C233($templates_ptr->{$templates_ptr->};$icon;"")
		
		CONFIRM:C162("Are you sure that you want to delete\rthis template ?";"Yes just do it !";"Oups! Don't")
		If (OK=1)
			
			
			If ($fileName_t#"")
				If ($fileName_t="@.json")
					  //do nothing
				Else 
					$fileName_t:=$fileName_t+".json"
				End if 
				
				$pathName_t:=getTlocPath (Replace string:C233($fileName_t;".json";"")+$icon)
				
				$testPathName:=Test path name:C476($pathName_t+$fileName_t)
				
				  //delete template
				If ($testPathName=1)  //check file
					$checkFolder:="@"+Replace string:C233($fileName_t;".json";Folder separator:K24:12)
					If ($pathName_t=$checkFolder)
						DELETE FOLDER:C693($pathName_t;Delete with contents:K24:24)
					Else 
						DELETE DOCUMENT:C159($pathName_t+$fileName_t)
					End if 
					If (OK=1)
						$position:=Find in array:C230($templates_ptr->;$templates_ptr->{$templates_ptr->})
						If ($position>0)
							DELETE FROM ARRAY:C228($templates_ptr->;$position)
							$templates_ptr->:=0
						End if 
						Form:C1466.oldName:=Form:C1466.currentNameTemplate
						
						  //take first template if list not empty, else new template
						If (Size of array:C274($templates_ptr->)>0)
							
							$templates_ptr->:=1
							$templateName:=$templates_ptr->{1}
							$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
							$templateName:=Substring:C12($templateName;1;Length:C16($templateName)-4)
							$template_obj:=New object:C1471("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
							Form:C1466.currentNameTemplate:=$templateName
							Form:C1466.tips[Form:C1466.currentNameTemplate]:=New AJUI_Tip ($template_obj)
							
						Else 
							Form:C1466.currentNameTemplate:="tipLab"
							Form:C1466.tips[Form:C1466.currentNameTemplate]:=New AJUI_Tip 
							Form:C1466.tips[Form:C1466.currentNameTemplate].TipName("tipLab")
							
							
						End if 
						Form:C1466.tips[Form:C1466.currentNameTemplate].TargetName("fieldExample_obj")
						Form:C1466.currentTip:=OB Copy:C1225(Form:C1466.tips[Form:C1466.currentNameTemplate])
						
						
						ALERT:C41("Template deleted")
						
						Form:C1466.btnSave.Enable(False:C215)
						Form:C1466.btnSave.Draw()
						
						SET TIMER:C645(-1)
						
					Else 
						ALERT:C41("Unknow error : can't delete the template")
						Form:C1466.btnDelete.OnClick("")
					End if 
					
				Else 
					ALERT:C41("File not found"+"\r\r"+$pathName_t)
					Form:C1466.btnDelete.OnClick("")
				End if 
			End if 
			
		End if 
		
End case 


Form:C1466.btnDelete.Draw()

