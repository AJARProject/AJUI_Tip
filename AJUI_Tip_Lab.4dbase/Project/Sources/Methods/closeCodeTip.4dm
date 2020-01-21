//%attributes = {}
  // closeCodeTip ( ) 
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 22.08.19, 16:36:00
	  // ----------------------------------------------------
	  // Method: closeCodeTip
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

  //enable/disable template buttons
If (Form:C1466.btnSaveActive)
	templatesButtonsEnable (True:C214)
Else 
	templatesButtonsEnable (True:C214;"btnSave")
End if 

Form:C1466.tipCode.Hide()