C_TEXT:C284($objectName_t)
$objectName_t:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.TargetName($objectName_t)
		Form:C1466.tip.TipName($objectName_t)
		Form:C1466.tip.BackgroundColor("lightblue")
		Form:C1466.tip.TipboxMaxWidth(150)
		Form:C1466.tip.TextLabel("Clic on this field to activate the auto-hidding of this tip after 5 seconds")
		Form:C1466.tip.Show()
		
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.TargetName($objectName_t)
		Form:C1466.tip.TipName($objectName_t)
		Form:C1466.tip.BackgroundColor("yellow")
		Form:C1466.tip.TipboxMaxWidth(150)
		Form:C1466.tip.TipDuration(5000)
		Form:C1466.tip.ActivateFadeIn(False:C215)
		Form:C1466.tip.TextLabel("auto-hidding after 5 seconds")
		Form:C1466.tip.Show()
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TipDuration</span>(5000)</span>"
		
End case 