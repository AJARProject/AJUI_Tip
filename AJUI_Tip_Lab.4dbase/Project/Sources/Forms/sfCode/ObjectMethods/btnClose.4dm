
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnClose:=btn_subform 
		Form:C1466.btnClose.Name("btnClose")
		Form:C1466.btnClose.Label(AJUI_btn_default;"Close")
		
		
		
	: (Form event code:C388=On Clicked:K2:4)
		
		CALL FORM:C1391(Current form window:C827;"closeCodeTip")
		
End case 

Form:C1466.btnClose.Draw()
