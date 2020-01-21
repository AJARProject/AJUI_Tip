Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		$CurveStart_ruler_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"CurveStart_ruler")
		$CurveEnd_ruler_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"CurveEnd_ruler")
		$ArrowCurve_ruler_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"ArrowCurve_ruler")
		
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.BackgroundColor("lightblue")
		Form:C1466.tip.TextFontColor("gray")
		Form:C1466.tip.TextFontSize(13)
		Form:C1466.tip.TipboxMaxWidth(120)
		Form:C1466.tip.BorderColor("green")
		Form:C1466.tip.BorderSize(1)
		Form:C1466.tip.TipPosition("top")
		Form:C1466.tip.TargetName("curvedTip")
		Form:C1466.tip.TextLabel("This is an exemple of a curved arrow !!!")
		Form:C1466.tip.ArrowWidth(20)
		Form:C1466.tip.ArrowHeight(16)
		Form:C1466.tip.Curved(True:C214)
		
		Form:C1466.tip.CornerCurveStart(0.2)
		Form:C1466.tip.CornerCurveEnd(0.2)
		Form:C1466.tip.ArrowCurve(0.84)
		Form:C1466.tip.Show()
		
		$CurveStart_ruler_ptr->:=Form:C1466.tip.CornerCurveStart()*100
		$CurveEnd_ruler_ptr->:=Form:C1466.tip.CornerCurveEnd()*100
		$ArrowCurve_ruler_ptr->:=Form:C1466.tip.ArrowCurve()*100
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">Curved</span> (True)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CornerCurveStart</span> ("+String:C10(Form:C1466.tip.CornerCurveStart())+")"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CornerCurveEnd</span> ("+String:C10(Form:C1466.tip.CornerCurveEnd())+")"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">ArrowCurve</span> ("+String:C10(Form:C1466.tip.ArrowCurve())+")</span>"
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">Curved</span> (True)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CornerCurveStart</span> ("+String:C10(Form:C1466.tip.CornerCurveStart())+")"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">CornerCurveEnd</span> ("+String:C10(Form:C1466.tip.CornerCurveEnd())+")"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">ArrowCurve</span> ("+String:C10(Form:C1466.tip.ArrowCurve())+")</span>"
		
		
End case 

REDRAW WINDOW:C456(Current form window:C827)