Case of 
		
	: (Form event code:C388=On Load:K2:1)
		GOTO OBJECT:C206(*;"")
		
		Form:C1466.initialTipS:=New AJUI_Tip 
		Form:C1466.initialTipS.TextLabel("Clic on the buttons to display the tips")
		Form:C1466.initialTipS.TipPosition("top")
		Form:C1466.initialTipS.TipName("initialTipS")
		Form:C1466.initialTipS.TargetName("closebox1_button")
		Form:C1466.initialTipS.Show()
		
		Form:C1466.initialTipM:=OB Copy:C1225(Form:C1466.initialTipS)
		Form:C1466.initialTipM.TipName("initialTipM")
		Form:C1466.initialTipM.TargetName("closebox2_button")
		Form:C1466.initialTipM.Show()
		
		Form:C1466.initialTipL:=OB Copy:C1225(Form:C1466.initialTipS)
		Form:C1466.initialTipL.TipName("initialTipL")
		Form:C1466.initialTipL.TargetName("closebox3_button")
		Form:C1466.initialTipL.Show()
		
		
		
	: (Form event code:C388=On Outside Call:K2:11)
		
	: (Form event code:C388=On Timer:K2:25)
		
		
		
		
End case 

