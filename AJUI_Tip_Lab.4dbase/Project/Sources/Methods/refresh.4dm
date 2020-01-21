//%attributes = {}
  // refresh ( ) 
  //
  // Refresh the form objects when we create, choice, delete or reload a template

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 23.08.19, 09:09:27
	  // ----------------------------------------------------
	  // Method: refresh
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

  //Redraw button
Form:C1466.tipShow.TextLabel("Show Tip")
Form:C1466.btnShow.Label(AJUI_btn_default;"Show")
Form:C1466.btnShow.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
Form:C1466.btnShow.Draw()


  //check template protect
If (Form:C1466.tips[Form:C1466.currentNameTemplate].protect)
	Form:C1466.btnProtect.Label(AJUI_btn_default;"Unprotect")
	Form:C1466.btnProtectBanner.DrawBanner()
	OBJECT SET VISIBLE:C603(*;"RectProtect";True:C214)
	Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994412---key-lock-open-password-unlock.svg")
Else 
	Form:C1466.btnProtect.Label(AJUI_btn_default;"Protect")
	Form:C1466.btnProtectBanner.HideBanner()
	OBJECT SET VISIBLE:C603(*;"RectProtect";False:C215)
	Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994379---lock-padlock-privacy-protection-security.svg")
End if 

Form:C1466.btnProtect.Draw()
