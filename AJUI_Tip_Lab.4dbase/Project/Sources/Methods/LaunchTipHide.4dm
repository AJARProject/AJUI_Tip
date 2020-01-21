//%attributes = {}
  // MI 05-Mar-2019 08:34:24 (GMT+1)

If (Undefined:C82($1))
	If (Form:C1466.tip=Null:C1517)
		BEEP:C151
		ALERT:C41("Bug")
	Else 
		Form:C1466.tip.Hide()
	End if 
Else 
	C_OBJECT:C1216($1;$instanceTip_obj)
	$instanceTip_obj:=$1
	$instanceTip_obj.Hide()
End if 