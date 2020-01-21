//%attributes = {}
  // formulaSetValue ( ) 
  //
  //
  // this method executes the Setter corresponding to the property so its value has been modified in the listbox 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 20.08.19, 13:22:37
	  // ----------------------------------------------------
	  // Method: formulaSetValue
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
Form:C1466.tips[Form:C1466.currentNameTemplate].Hide()

C_POINTER:C301($values_ptr;$property_ptr)
$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
$values_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")

  //call the Setter method
Form:C1466.tips[Form:C1466.currentNameTemplate][Form:C1466.properties[$values_ptr->-1].formula]($values_ptr->{$values_ptr->}.value)

If ($property_ptr->{$property_ptr->}="@color@")
	setArrayColor ($values_ptr->{$values_ptr->}.value;$values_ptr->)
End if 


Form:C1466.btnSave.Enable(True:C214)
Form:C1466.btnSave.Draw()

  //Redraw button
Form:C1466.tipShow.TextLabel("Show Tip")
Form:C1466.btnShow.Label(AJUI_btn_default;"Show")
Form:C1466.btnShow.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
Form:C1466.btnShow.Draw()

setPropertyStyle 
redrawTip 