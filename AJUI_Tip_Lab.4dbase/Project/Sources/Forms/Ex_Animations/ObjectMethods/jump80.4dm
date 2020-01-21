C_TEXT:C284($objectName_t)
$objectName_t:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.TargetName($objectName_t)
		Form:C1466.tip.TipName($objectName_t)
		Form:C1466.tip.TipPosition("bottom")
		Form:C1466.tip.BackgroundColor("yellow")
		Form:C1466.tip.TipboxMaxWidth(150)
		Form:C1466.tip.TextLabel("Jump on set to 80%")
		
		Form:C1466.tip.BlinkNumber(0)
		Form:C1466.tip.JumpNumber(3)
		Form:C1466.tip.JumpDuration(1000)
		Form:C1466.tip.JumpOn(80)
		Form:C1466.tip.JumpOffset(20)
		
		Form:C1466.tip.Show()
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">JumpNumber</span>(3)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">JumpDuration</span>(1000)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">JumpOn</span>(80)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">JumpOffset</span>(20)</span>"
		
End case 