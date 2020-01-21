Case of 
		
	: (Form event code:C388=On Load:K2:1)
		GOTO OBJECT:C206(*;"shadowRuler_obj")
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.BackgroundColor("yellow")
		Form:C1466.tip.TextFontColor("gray")
		Form:C1466.tip.TextFontSize(13)
		Form:C1466.tip.BorderColor("silver")
		Form:C1466.tip.BorderSize(1)
		Form:C1466.tip.TipboxMaxWidth(200)
		Form:C1466.tip.TipPosition("top")
		Form:C1466.tip.TargetMargin(10)
		
		Tip_different_shadow 
		
		
	: (Form event code:C388=On Timer:K2:25)
		
		
End case 