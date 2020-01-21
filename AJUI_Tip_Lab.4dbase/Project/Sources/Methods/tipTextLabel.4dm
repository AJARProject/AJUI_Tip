//%attributes = {}
  // tipTextLabel ( ) 
  //
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 26.08.19, 09:07:05
	  // ----------------------------------------------------
	  // Method: tipTextLabel
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


Form:C1466.tipTextLabel:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form:C1466.tipTextLabel.TipName("AJUI_Tip_TextLabel")
Form:C1466.tipTextLabel.TipDuration(0)
Form:C1466.tipTextLabel.AutoRebuild(False:C215)

  // ----------------------
  // Target
  // ----------------------
Form:C1466.tipTextLabel.TipPosition("right-middle")
Form:C1466.tipTextLabel.TargetName("")
Form:C1466.tipTextLabel.TargetOffset(0)
Form:C1466.tipTextLabel.TargetMargin(12)


  // ----------------------
  // Container
  // ----------------------
Form:C1466.tipTextLabel.CornerRadius(5)
Form:C1466.tipTextLabel.TipboxMaxWidth(0)
Form:C1466.tipTextLabel.TipboxMaxHeight(0)
Form:C1466.tipTextLabel.Padding(0)
Form:C1466.tipTextLabel.BorderSize(3)
Form:C1466.tipTextLabel.BorderColor("#808080")
Form:C1466.tipTextLabel.BorderOpacity(100)
Form:C1466.tipTextLabel.BackgroundColor("lightgrey")
Form:C1466.tipTextLabel.BackgroundOpacity(100)


  // ----------------------
  // Arrow
  // ----------------------
Form:C1466.tipTextLabel.ArrowWidth(20)
Form:C1466.tipTextLabel.ArrowHeight(10)
Form:C1466.tipTextLabel.ArrowPosition("center")
Form:C1466.tipTextLabel.ArrowOffset(10)


  // ----------------------
  // SubForm
  // ----------------------
Form:C1466.tipTextLabel.SubformName("editTextLabel")

