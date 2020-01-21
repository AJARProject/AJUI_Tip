C_POINTER:C301($templates_ptr)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnShow:=newTemplateButton 
		Form:C1466.btnShow.Name("btnShow")
		Form:C1466.btnShow.Label(AJUI_btn_default;"Show")
		Form:C1466.btnShow.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
		
		Form:C1466.tipShow:=tip_templatesButtons ("btnShow";"Show Tip")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnShow"))
			Form:C1466.tipShow.TextRotation("")
			Form:C1466.tipShow.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipShow.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.tipShow.Hide()
		
		If (Form:C1466.btnShow.Label(AJUI_btn_default)="Show")
			Form:C1466.tipShow.TextLabel("Hide Tip")
			Form:C1466.btnShow.Label(AJUI_btn_default;"Hide")
			Form:C1466.btnShow.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994371---eye-hidden-hide-invisible-private.svg")
			Form:C1466.tips[Form:C1466.currentNameTemplate].Hide()
			
		Else 
			Form:C1466.tipShow.TextLabel("Show Tip")
			Form:C1466.btnShow.Label(AJUI_btn_default;"Show")
			Form:C1466.btnShow.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
			redrawTip 
		End if 
		
		
		
End case 


Form:C1466.btnShow.Draw()