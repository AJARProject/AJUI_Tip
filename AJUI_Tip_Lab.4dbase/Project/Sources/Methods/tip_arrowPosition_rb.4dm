//%attributes = {}
$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1)
		
	: ($evt=On Clicked:K2:4)
		  //C_POINTER($currentObject_ptr)
		  //$currentObject_ptr:=OBJECT Get pointer(Object current)
		Form:C1466.tip.ArrowPosition(OBJECT Get title:C1068(*;OBJECT Get name:C1087(Object current:K67:2)))
		  //$currentObject_ptr->:=1
		tip_perfect_arrow_position (Form:C1466.tip.target.tipPosition)
End case 