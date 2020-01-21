//%attributes = {}
  // MI 01-Mar-2019 17:02:00 (GMT+1)
C_TEXT:C284($objName_t)

  // get the name of the current object
$objName_t:=OBJECT Get name:C1087(Object current:K67:2)


Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.code:=""
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Case of 
				
			: ($objName_t="degree_0_button")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#B0927E\">text</span>.<span style=\"color:#B0927E\">rotation</span>:=\"\"</span>"
				
			: ($objName_t="degree_90_button")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#B0927E\">text</span>.<span style=\"color:#B0927E\">rotation</span>:=\"right\"</span>"
				
			: ($objName_t="degree_270_button")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#B0927E\">text</span>.<span style=\"color:#B0927E\">rotation</span>:=\"left\"</span>"
				
		End case 
		
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		Form:C1466.tip.TargetName($objName_t)
		
		
		Case of 
				
			: ($objName_t="degree_0_button")
				
				Form:C1466.tip.text.rotation:=""
				Form:C1466.tip.TextLabel("Text reset rotation. Clic to this button to get the code")
				Form:C1466.tip.BackgroundColor("plum")
				Form:C1466.tip.TipPosition("top")
				Form:C1466.tip.Show()
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#B0927E\">text</span>.<span style=\"color:#B0927E\">rotation</span>:=\"\"</span>"
				
			: ($objName_t="degree_90_button")
				
				Form:C1466.tip.text.rotation:="right"
				Form:C1466.tip.TextLabel("Text rotation set to right. Clic to this button to get the code")
				Form:C1466.tip.BackgroundColor("#DA70D6")
				Form:C1466.tip.TipPosition("right")
				Form:C1466.tip.Show()
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#B0927E\">text</span>.<span style=\"color:#B0927E\">rotation</span>:=\"right\"</span>"
				
			: ($objName_t="degree_270_button")
				
				Form:C1466.tip.text.rotation:="left"
				Form:C1466.tip.TextLabel("Text rotation set to left. Clic to this button to get the code")
				Form:C1466.tip.BackgroundColor("#801A80")
				Form:C1466.tip.TipPosition("left")
				Form:C1466.tip.Show()
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#B0927E\">text</span>.<span style=\"color:#B0927E\">rotation</span>:=\"left\"</span>"
				
			Else 
				
		End case 
		
		
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		
		
End case 