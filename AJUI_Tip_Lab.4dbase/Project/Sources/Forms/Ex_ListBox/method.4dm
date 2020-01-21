  // MI 31-Mar-2016 16:28:25 (GMT+1)


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(Column1;10)
		ARRAY REAL:C219(Column2;10)
		ARRAY DATE:C224(Column3;10)
		For ($ind_l;1;10)
			Column1{$ind_l}:="A"+String:C10($ind_l)
			Column2{$ind_l}:=10000+$ind_l
			Column3{$ind_l}:=Current date:C33+$ind_l
		End for 
		
		GOTO OBJECT:C206(*;"")
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.BackgroundOpacity(80)
		
		
		
		
		
		
End case 

