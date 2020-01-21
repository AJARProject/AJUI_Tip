//%attributes = {}
C_TEXT:C284($1)

Form:C1466.tip.Hide(Form:C1466.tip)
Form:C1466.tip.TargetName(OBJECT Get name:C1087(Object current:K67:2))
Form:C1466.tip.TipName("Font")
Form:C1466.tip.TextFontName(OBJECT Get name:C1087(Object current:K67:2))
If (Count parameters:C259=1)
	Form:C1466.tip.TextLabel("Font : "+Form:C1466.tip.text.fontName+" - "+$1)
Else 
	Form:C1466.tip.TextLabel("Font : "+Form:C1466.tip.text.fontName)
End if 
Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontName</span>(\""+Form:C1466.tip.text.fontName+"\")</span>"
Form:C1466.tip.Show()
