C_POINTER:C301($templates_ptr)
C_COLLECTION:C1488($templates_col;$templates_col2)

$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		CLEAR VARIABLE:C89($templates_ptr->)
		
		If (Form:C1466.templateLocPref.path_global#"")
			$folder:=Folder:C1567(Form:C1466.templateLocPref.path_global;fk platform path:K87:2)
			If ($folder.exists)
				$templates_col:=AJUI_Tip_loadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].global.name+" (G)")
				End for 
			End if 
		End if 
		
		If (Form:C1466.templateLocPref.path_personal#"")
			$folder:=Folder:C1567(Form:C1466.templateLocPref.path_personal;fk platform path:K87:2)
			If ($folder.exists)
				
				$templates_col:=AJUI_Tip_loadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].global.name+" (P)")
				End for 
			End if 
		End if 
		
		If (Form:C1466.templateLocPref.path_shared#"")
			$folder:=Folder:C1567(Form:C1466.templateLocPref.path_shared;fk platform path:K87:2)
			If ($folder.exists)
				
				$templates_col:=AJUI_Tip_loadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].global.name+" (S)")
				End for 
			End if 
		End if 
		
		SORT ARRAY:C229($templates_ptr->)
		
		
	: (Form event code:C388=On Data Change:K2:15)
		
		OBJECT SET ENABLED:C1123(*;"save_btn";True:C214)
		
	: (Form event code:C388=On Clicked:K2:4)  //when the user select an element
		
		Form:C1466.oldName:=Form:C1466.currentNameTemplate
		
		GOTO OBJECT:C206(*;"")
		
		$templateName:=$templates_ptr->{$templates_ptr->}
		
		
		$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
		$templateName:=Substring:C12($templateName;1;Length:C16($templateName)-4)
		$template_obj:=New object:C1471("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
		Form:C1466.currentNameTemplate:=$templateName
		Form:C1466.tips[Form:C1466.currentNameTemplate]:=New AJUI_Tip ($template_obj)
		Form:C1466.tips[Form:C1466.currentNameTemplate].TargetName("fieldExample_obj")
		Form:C1466.currentTip:=OB Copy:C1225(Form:C1466.tips[Form:C1466.currentNameTemplate])
		
		
		
		Form:C1466.btnSave.Enable(False:C215)
		Form:C1466.btnSave.Draw()
		
		SET TIMER:C645(-1)
End case 