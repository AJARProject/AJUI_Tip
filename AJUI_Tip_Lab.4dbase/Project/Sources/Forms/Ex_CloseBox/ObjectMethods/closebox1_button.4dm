$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1)
		
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.initialTipS.Hide()
		
		Form:C1466.tip1:=New AJUI_Tip 
		Form:C1466.tip1.TextLabel("Small closeBox defined in this Tip")
		Form:C1466.tip1.TargetName(OBJECT Get name:C1087(Object current:K67:2))
		Form:C1466.tip1.CloseBoxSize(5)
		Form:C1466.tip1.ActivateOnClickCB(True:C214)
		Form:C1466.tip1.CloseBoxDisplay(True:C214)
		Form:C1466.tip1.TextFontSize(10)
		Form:C1466.tip1.TipName("CB1")
		Form:C1466.tip1.TipPosition("bottom")
		Form:C1466.tip1.TipboxMaxWidth(100)
		Form:C1466.tip1.Show()
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CloseBoxSize</span>(5)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">ActivateOnClickCB</span>(<span style=\"color:#009900;font-weight:bold\">True</span>)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CloseBoxDisplay</span>(<span style=\"color:#009900;font-weight:bold\">True</span>)</span>"
End case 