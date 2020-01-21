  // MI 21-Feb-2019 16:19:30 (GMT+1)


C_POINTER:C301($effect_prt;$opacity_prt;$timer_obj_prt)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		GOTO OBJECT:C206(*;"")
		Form:C1466.tip:=New AJUI_Tip 
		
		  //C_OBJECT(myForm)
		  //myForm:=New object
		
		
		
	: (Form event code:C388=On Timer:K2:25)
		
		
		
End case 


