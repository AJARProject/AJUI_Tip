

Case of 
		
	: (Form event code:C388=On Clicked:K2:4)
		$code_t:=Form:C1466.code
		$code_t:=ST Get plain text:C1092($code_t)
		SET TEXT TO PASTEBOARD:C523($code_t)
		BEEP:C151
		ALERT:C41("Copy done !")
End case 



