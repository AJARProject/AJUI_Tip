
Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.tip:=New AJUI_Tip 
		
		Form:C1466.tip.TipName("page2")
		Form:C1466.tip.TargetName("btn_page2")
		Form:C1466.tip.TextLabel("We are in page : "+String:C10(FORM Get current page:C276))
		Form:C1466.tip.CornerRadius(3)
		Form:C1466.tip.TextFontSize(14)
		Form:C1466.tip.TextFontColor("white")
		Form:C1466.tip.BackgroundColor("blue")
		Form:C1466.tip.BackgroundOpacity(80)
		Form:C1466.tip.TipPosition("top";False:C215)
		Form:C1466.tip.CloseBoxDisplay(True:C214)
		
		Form:C1466.tip.Show()
		
End case 