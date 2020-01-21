//%attributes = {}
  // MI 18-Dec-2015 11:24:53 (GMT+1)
C_TEXT:C284($objName_t)

$objName_t:=OBJECT Get name:C1087(Object current:K67:2)


Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		  //hide the previous tip
		Form:C1466.tip.Hide(Form:C1466.tip)
		
		Form:C1466.tip.TargetName($objName_t)
		
		
		  // set the specific settings for each object
		Case of 
			: ($objName_t="x-small_button")
				Form:C1466.tip.TextFontSize(6)
				Form:C1466.tip.TextLabel("A little bit too small ?")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">FontSize</span>(6)"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"A little bit too small ?\")</span>"
				
			: ($objName_t="small_button")
				Form:C1466.tip.TextFontSize(8)
				Form:C1466.tip.TextLabel("Small is beautifull")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontSize</span>(8)"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"Small is beautifull\")</span>"
				
			: ($objName_t="medium_button")
				Form:C1466.tip.TextFontSize(13)
				Form:C1466.tip.TextLabel("Simply medium")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontSize</span>(13)"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"Simply medium\")</span>"
				
			: ($objName_t="large_button")
				Form:C1466.tip.TextFontSize(16)
				Form:C1466.tip.TextLabel("Large enough")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontSize</span>(16)"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"Large enough\")</span>"
				
			: ($objName_t="x-large_button")
				Form:C1466.tip.TextFontSize(24)
				Form:C1466.tip.TextLabel("Xtra Large")
				Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextFontSize</span>(24)"
				Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TextLabel</span>(\"Xtra Large\")</span>"
				
			Else 
				
		End case 
		
		Form:C1466.tip.Show()
		
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tip.Hide(Form:C1466.tip)
		
End case 