//%attributes = {}
  // Tip_code ( ) 
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 22.08.19, 16:25:38
	  // ----------------------------------------------------
	  // Method: Tip_code
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


Form:C1466.tipCode:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form:C1466.tipCode.TipName("AJUI_Tip_Code")
Form:C1466.tipCode.TipDuration(0)
Form:C1466.tipCode.AutoRebuild(False:C215)

  // ----------------------
  // Target
  // ----------------------
Form:C1466.tipCode.TipPosition("bottom-center")
Form:C1466.tipCode.TargetName("btnCode")
Form:C1466.tipCode.TargetOffset(0)
Form:C1466.tipCode.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
Form:C1466.tipCode.CornerRadius(5)
Form:C1466.tipCode.TipboxMaxWidth(0)
Form:C1466.tipCode.TipboxMaxHeight(0)
Form:C1466.tipCode.Padding(0)
Form:C1466.tipCode.BorderSize(3)
Form:C1466.tipCode.BorderColor("#808080")
Form:C1466.tipCode.BorderOpacity(100)
Form:C1466.tipCode.BackgroundColor("lightgrey")
Form:C1466.tipCode.BackgroundOpacity(100)



  // ----------------------
  // Arrow
  // ----------------------
Form:C1466.tipCode.ArrowWidth(20)
Form:C1466.tipCode.ArrowHeight(10)
Form:C1466.tipCode.ArrowPosition("center")
Form:C1466.tipCode.ArrowOffset(10)



  // ----------------------
  // SubForm
  // ----------------------
Form:C1466.tipCode.SubformName("sfCode")

