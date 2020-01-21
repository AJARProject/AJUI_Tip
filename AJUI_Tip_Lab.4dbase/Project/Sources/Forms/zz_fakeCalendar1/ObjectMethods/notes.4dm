Case of 
	: (Form event code:C388=On Getting Focus:K2:7)
		OBJECT Get pointer:C1124(Object current:K67:2)->:=""
		OBJECT SET RGB COLORS:C628(*;"notes";0x00FFFFFF;-16)
	: (Form event code:C388=On Losing Focus:K2:8)
		If (OBJECT Get pointer:C1124(Object current:K67:2)->="")
			OBJECT SET RGB COLORS:C628(*;"notes";0x00C0C0C0;-16)
			OBJECT Get pointer:C1124(Object current:K67:2)->:="Notes"
		End if 
End case 