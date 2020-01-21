Case of 
		
	: (Form event code:C388=On Load:K2:1)
		GOTO OBJECT:C206(*;"")
		Form:C1466.tip:=New AJUI_Tip 
		
	: (Form event code:C388=On Clicked:K2:4)
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
	: (Form event code:C388=On Mouse Move:K2:35)
		GET MOUSE:C468(x;y;mb)
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
	: (Form event code:C388=On Data Change:K2:15)
		
	: (Form event code:C388=On Outside Call:K2:11)
		
		
	: (Form event code:C388=On Resize:K2:27)
		
	: (Form event code:C388=On Timer:K2:25)
		
	: (Form event code:C388=On Validate:K2:3)
		
	: (Form event code:C388=On Close Box:K2:21)
		
	: (Form event code:C388=On Before Data Entry:K2:39)
		
	: (Form event code:C388=On After Edit:K2:43)
		
	: (Form event code:C388=On After Keystroke:K2:26)
		
	: (Form event code:C388=On Alternative Click:K2:36)
		
	: (Form event code:C388=On Long Click:K2:37)
		
	: (Form event code:C388=On Unload:K2:2) | (Form event code:C388=On Close Box:K2:21)
		
		SVG_CLEAR (USAMap_ref)  // for sanity
		
		CANCEL:C270
		
		
		
		
End case 
