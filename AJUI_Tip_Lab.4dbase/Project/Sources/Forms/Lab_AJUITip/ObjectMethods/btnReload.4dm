C_POINTER:C301($templates_ptr)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnReload:=newTemplateButton 
		Form:C1466.btnReload.Name("btnReload")
		Form:C1466.btnReload.Label(AJUI_btn_default;"Reload")
		Form:C1466.btnReload.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994399---refresh-reload-repeat-rotate-sync.svg")
		
		Form:C1466.tipReload:=tip_templatesButtons ("btnReload";"Reload template")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnReload"))
			Form:C1466.tipReload.TextLabel("Reload template")
			Form:C1466.tipReload.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipReload.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		
	: (Form event code:C388=On Clicked:K2:4)
		$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
		
		  //reload currentBtn
		$templateName:=$templates_ptr->{$templates_ptr->}
		
		
		$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
		$templateName:=Substring:C12($templateName;1;Length:C16($templateName)-4)
		$template_obj:=New object:C1471("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
		Form:C1466.currentNameTemplate:=$templateName
		Form:C1466.tips[Form:C1466.currentNameTemplate]:=New AJUI_Tip ($template_obj)
		Form:C1466.tips[Form:C1466.currentNameTemplate].TargetName("fieldExample_obj")
		
		formulasGetValues 
		
		
		REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
		refresh 
		
		Form:C1466.btnSave.Enable(False:C215)
		Form:C1466.btnSave.Draw()
		
		redrawTip 
		
End case 


Form:C1466.btnReload.Draw()