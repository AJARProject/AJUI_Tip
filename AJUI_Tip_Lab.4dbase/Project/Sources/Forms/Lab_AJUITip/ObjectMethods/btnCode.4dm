

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnCode:=newTemplateButton 
		Form:C1466.btnCode.Name("btnCode")
		Form:C1466.btnCode.Label(AJUI_btn_default;"Show Code")
		Form:C1466.btnCode.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994429---bag-briefcase-business-portfolio-suitcase.svg")
		
		Tip_code 
		
		Form:C1466.tipCodeTemp:=tip_templatesButtons ("btnCode";"Show code")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnCode"))
			Form:C1466.tipCodeTemp.TextLabel("Show code")
			Form:C1466.tipCodeTemp.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipCodeTemp.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
	: (Form event code:C388=On Clicked:K2:4)
		
		If (OBJECT Get enabled:C1079(*;"btnCode"))
			Form:C1466.tipCodeTemp.Hide()
			Form:C1466.btnSaveActive:=OBJECT Get enabled:C1079(*;"btnSave")
			templatesButtonsEnable (False:C215;"btnCode")
			Form:C1466.tip_sf_details:=New object:C1471("tip";Form:C1466.tips[Form:C1466.currentNameTemplate])
			Form:C1466.tipCode.TargetName("btnCode")
			Form:C1466.tipCode.Show()
		End if 
		
		
		
End case 

Form:C1466.btnCode.Draw()