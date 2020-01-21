//%attributes = {}

C_TEXT:C284($1;$objName_t)

If (Count parameters:C259=0)
	$objName_t:=OBJECT Get name:C1087(Object current:K67:2)
Else 
	$objName_t:=$1
End if 

Form:C1466.tip.TipName("test1")
Form:C1466.tip.TargetName($objName_t)
Form:C1466.tip.CornerRadius(3)
Form:C1466.tip.TextFontSize(14)
Form:C1466.tip.TextFontColor("gray")
Form:C1466.tip.BackgroundColor("yellow")
Form:C1466.tip.BackgroundOpacity(100)
Form:C1466.tip.TipPosition($objName_t;False:C215)
Form:C1466.tip.TextLabel("• Tip position: "+$objName_t+"\r• Arrow position: "+Form:C1466.tip.arrow.position)
Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TipPosition</span>(\""+Form:C1466.tip.target.tipPosition+"\")"
Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">ArrowPosition</span>(\""+Form:C1466.tip.arrow.position+"\")</span>"
Form:C1466.tip.Show()

