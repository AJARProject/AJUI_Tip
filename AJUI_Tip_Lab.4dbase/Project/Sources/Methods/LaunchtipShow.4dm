//%attributes = {}
If (Undefined:C82($1))
	If (Form:C1466.tip=Null:C1517)
		BEEP:C151
	Else 
		Form:C1466.tip.Show()
	End if 
Else 
	C_OBJECT:C1216($1;$instanceTip_obj)
	$instanceTip_obj:=$1
	$instanceTip_obj.Show()
End if 


