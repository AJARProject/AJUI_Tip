
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnUpdateTextLabel:=btn_subform 
		Form:C1466.btnUpdateTextLabel.Name("btnUpdateTextLabel")
		Form:C1466.btnUpdateTextLabel.Label(AJUI_btn_default;"Update")
		
		
	: (Form event code:C388=On Clicked:K2:4)
		
		CALL FORM:C1391(Current form window:C827;"updateTextLabel")
		
End case 

Form:C1466.btnUpdateTextLabel.Draw()
