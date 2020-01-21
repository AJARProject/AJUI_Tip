//%attributes = {}


C_TEXT:C284($objName_t)

$objName_t:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
	: (Form event code:C388=On Losing Focus:K2:8)
		
		Form:C1466.tip.Hide()
		
	: (Form event code:C388=On Getting Focus:K2:7)
		mytip_yellow 
		Form:C1466.tip.TargetName($objName_t)
		Form:C1466.tip.TimerFadeIn(300)
		Form:C1466.tip.TimerFadeOut(300)
		Form:C1466.tip.TipDuration(3000)
		
		Form:C1466.tip.ActivateFadeIn(True:C214)
		Form:C1466.tip.ActivateFadeOut(True:C214)
		
		
		Case of 
			: ($objName_t="lastName_obj")
				Form:C1466.tip.TipPosition("top")
				Form:C1466.tip.TextLabel("Last Name field")
				
			: ($objName_t="firstName_obj")
				Form:C1466.tip.TipPosition("right")
				Form:C1466.tip.TextLabel("First Name field")
				
			: ($objName_t="address_obj")
				Form:C1466.tip.TipPosition("right-bottom")
				Form:C1466.tip.TipboxMaxWidth(150)
				Form:C1466.tip.TextLabel("Address field")
				
			: ($objName_t="zip_obj")
				Form:C1466.tip.ActivateOnClickCB(True:C214)
				Form:C1466.tip.TipPosition("left")
				Form:C1466.tip.TextLabel("ZIP field")
				
			: ($objName_t="country_obj")
				Form:C1466.tip.TipPosition("left")
				Form:C1466.tip.ActivateOnClickCB(True:C214)
				Form:C1466.tip.TipPosition("left")
				Form:C1466.tip.TextLabel("Country field")
				
			: ($objName_t="city_obj")
				Form:C1466.tip.TipPosition("top")
				Form:C1466.tip.TextLabel("City field")
				
			Else 
				Form:C1466.tip.TipPosition("right")
		End case 
		
		  //Form.tip.currentLvl:=1
		  //Form.tip.TipName($objName_t)
		Form:C1466.tip.Show()
		  //LaunchtipShow (Form.tip)
		  //SubformLaunchShow
		
End case 