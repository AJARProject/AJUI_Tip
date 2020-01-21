Case of 
		
	: (Form event code:C388=On Load:K2:1)
		GOTO OBJECT:C206(*;"")
		Form:C1466.tip:=New AJUI_Tip 
		
		Form:C1466["arrow_"+Form:C1466.tip.arrow.position]:=1  // set rb True
		
		If (Position:C15(Form:C1466.tip.arrow.position;"topmiddlecenterbottom")>0)
			FORM GOTO PAGE:C247(2)
		Else 
			FORM GOTO PAGE:C247(1)
		End if 
		
		
	: (Form event code:C388=On Clicked:K2:4)
		
	: (Form event code:C388=On Page Change:K2:54)
		tip_perfect_arrow_position (Form:C1466.tip.target.tipPosition)
		
		
	: (Form event code:C388=On Timer:K2:25)
		
	: (Form event code:C388=On Outside Call:K2:11)
		
		
		
		
End case 

