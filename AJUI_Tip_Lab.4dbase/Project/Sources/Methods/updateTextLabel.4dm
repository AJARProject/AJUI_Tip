//%attributes = {}
  // updateTextLabel (  ) 
  //
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 26.08.19, 09:34:38
	  // ----------------------------------------------------
	  // Method: updateTextLabel
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
C_POINTER:C301($values_ptr)
$values_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")


Form:C1466.tips[Form:C1466.currentNameTemplate].TextLabel(Form:C1466.tip_sf_details.textLabel)

Form:C1466.btnSave.Enable(True:C214)
Form:C1466.btnSave.Draw()

  //Redraw button
Form:C1466.tipShow.TextLabel("Show Tip")
Form:C1466.btnShow.Label(AJUI_btn_default;"Show")
Form:C1466.btnShow.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
Form:C1466.btnShow.Draw()

Form:C1466.tipTextLabel.Hide()

redrawTip 