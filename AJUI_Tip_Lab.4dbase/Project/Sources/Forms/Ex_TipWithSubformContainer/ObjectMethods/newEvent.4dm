
Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.tip.TargetName("newEvent")
		Form:C1466.tip.ActivateShadow(True:C214)
		Form:C1466.tip.Show()
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">SubformName</span>(zz_fakeCalendar)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#009900;font-weight:bold\"></span><span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">BackgroundColor</span>(\"#212121\")</span>"
		
End case 
