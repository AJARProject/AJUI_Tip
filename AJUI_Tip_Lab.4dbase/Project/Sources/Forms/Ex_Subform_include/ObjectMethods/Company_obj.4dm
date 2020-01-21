

$objName_t:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
		
	: (Form event code:C388=On Getting Focus:K2:7) | (Form event code:C388=On Clicked:K2:4)
		
		  // display the current tip
		mytip_yellow 
		Form:C1466.tip.TargetName($objName_t)
		Form:C1466.tip.TipName($objName_t)
		Form:C1466.tip.TimerFadeIn(300)
		Form:C1466.tip.ActivateFadeIn(True:C214)
		Form:C1466.tip.TextLabel("Put the company name\rin this field")
		Form:C1466.tip.TipPosition("right")
		Form:C1466.tip.Show()
		
	: (Form event code:C388=On Losing Focus:K2:8)
		
		Form:C1466.tip.Hide(Form:C1466.tip)
		
		
End case 