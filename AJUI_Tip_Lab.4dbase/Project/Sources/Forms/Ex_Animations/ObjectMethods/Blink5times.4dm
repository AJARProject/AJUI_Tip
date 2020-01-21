
C_TEXT:C284($objectName_t)
$objectName_t:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
		
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.TargetName($objectName_t)
		Form:C1466.tip.TipName($objectName_t)
		Form:C1466.tip.TipPosition("top")
		Form:C1466.tip.BackgroundColor("yellow")
		Form:C1466.tip.TipboxMaxWidth(150)
		Form:C1466.tip.TextLabel("Blink number set to 5")
		
		Form:C1466.tip.JumpNumber(0)
		Form:C1466.tip.BlinkNumber(5)
		Form:C1466.tip.BlinkDuration(1000)
		Form:C1466.tip.BlinkOn(50)
		
		Form:C1466.tip.Show()
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BlinkNumber</span>(5)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BlinkDuration</span>(1000)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BlinkOn</span>(50)</span>"
		
End case 
