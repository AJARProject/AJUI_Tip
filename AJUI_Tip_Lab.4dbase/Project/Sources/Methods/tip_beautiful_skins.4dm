//%attributes = {}
  // MI 21-Feb-2019 16:15:55 (GMT+1)
C_TEXT:C284($objName_t)

$objName_t:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		
		  //Now it's time to select the current tip
		Form:C1466.tip.TargetName($objName_t)
		Form:C1466.tip.TipName("skin")
		Form:C1466.tip.TipPosition("top")
		Form:C1466.tip.BorderColor("gray")
		Form:C1466.tip.BorderSize(2)
		Form:C1466.tip.TextFontSize(14)
		Form:C1466.tip.TipboxMaxWidth(100)
		Form:C1466.tip.BackgroundOpacity(100)
		
		Case of 
			: ($objName_t="black_button")
				
				Form:C1466.tip.BackgroundColor("dark")
				Form:C1466.tip.TextFontColor("green")
				Form:C1466.tip.TextLabel("The dark skin")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"dark\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"green\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"The dark skin\")</span>"
				
			: ($objName_t="white_button")
				Form:C1466.tip.BackgroundColor("white")
				Form:C1466.tip.TextFontColor("gray")
				Form:C1466.tip.TextLabel("A light skin with a flat rendering")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"white\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"gray\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"A light skin with a flat rendering\")</span>"
				
			: ($objName_t="gray_button")
				
				Form:C1466.tip.BackgroundColor("gray")
				Form:C1466.tip.TextFontColor("white")
				Form:C1466.tip.TextLabel("A nice and cool gray skin.")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"gray\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"white\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"A nice and cool gray skin.\"</span>"
				
			: ($objName_t="blue_button")
				Form:C1466.tip.BackgroundColor("blue")
				Form:C1466.tip.TextFontColor("white")
				Form:C1466.tip.BorderColor("white")
				Form:C1466.tip.BorderSize(3)
				Form:C1466.tip.TextLabel("Blue skin with white stroke is everything 😉")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"blue\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"white\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BorderColor</span>(\"white\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BorderSize</span>(3)</span>"
				
			: ($objName_t="red_button")
				Form:C1466.tip.BackgroundColor("#FF0000")
				Form:C1466.tip.TextFontColor("white")
				Form:C1466.tip.BorderColor("white")
				Form:C1466.tip.TextLabel("Great for error messages 😱")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"#FF0000\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"white\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BorderColor</span>(\"white\")</span>"
				
			: ($objName_t="green_button")
				Form:C1466.tip.BackgroundColor("green")
				Form:C1466.tip.TextFontColor("white")
				Form:C1466.tip.TextLabel("A nice green skin 🐸")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"green\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"white\")</span>"
				
			: ($objName_t="yellow_button")
				Form:C1466.tip.BackgroundColor("yellow")
				Form:C1466.tip.TextFontColor("gray")
				Form:C1466.tip.TextLabel("The classic yellow skin 🍋")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"yellow\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"gray\")</span>"
				
			: ($objName_t="lightblue_button")
				Form:C1466.tip.BackgroundColor("lightblue")
				Form:C1466.tip.TextFontColor("dark")
				Form:C1466.tip.TextLabel("A light blue skin")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"lightblue\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"dark\")</span>"
				
			: ($objName_t="lightpink_button")
				Form:C1466.tip.BackgroundColor("lightpink")
				Form:C1466.tip.TextFontColor("dark")
				Form:C1466.tip.BorderColor("red")
				Form:C1466.tip.BorderSize(3)
				Form:C1466.tip.TextLabel("light pink for the girl 🦄")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"lightpink\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontColor</span>(\"dark\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BorderColor</span>(\"red\")"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BorderSize</span>(3)</span>"
				
			Else 
				
		End case 
		
		Form:C1466.tip.Show()
		
		
End case 