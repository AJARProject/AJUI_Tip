$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1)
		
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.initialTipM.Hide()
		
		Form:C1466.tip2:=New AJUI_Tip 
		Form:C1466.tip2.TextLabel("Yes, you can display more than 1 tip at once !")
		
		Form:C1466.tip2.TipName("CB2")
		Form:C1466.tip2.TargetName(OBJECT Get name:C1087(Object current:K67:2))
		Form:C1466.tip2.CloseBoxSize(6)
		Form:C1466.tip2.ActivateOnClickCB(True:C214)
		Form:C1466.tip2.CloseBoxDisplay(True:C214)
		Form:C1466.tip2.TextFontSize(12)
		Form:C1466.tip2.TipPosition("right")
		Form:C1466.tip2.TipboxMaxWidth(100)
		Form:C1466.tip2.Show()
		
		Form:C1466.tip3:=New AJUI_Tip 
		Form:C1466.tip3.TextLabel("Yes, you can display more than 1 tip at once !")
		
		Form:C1466.tip3.TipName("CB3")
		Form:C1466.tip3.TargetName(OBJECT Get name:C1087(Object current:K67:2))
		Form:C1466.tip3.CloseBoxSize(6)
		Form:C1466.tip3.ActivateOnClickCB(True:C214)
		Form:C1466.tip3.CloseBoxDisplay(True:C214)
		Form:C1466.tip3.TextFontSize(12)
		Form:C1466.tip3.TipPosition("left")
		Form:C1466.tip3.TipboxMaxWidth(100)
		Form:C1466.tip3.Show()
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CloseBoxSize</span>(6)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">ActivateOnClickCB</span>(<span style=\"color:#009900;font-weight:bold\">True</span>)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CloseBoxDisplay</span>(<span style=\"color:#009900;font-weight:bold\">True</span>)</span>"
		
		
End case 