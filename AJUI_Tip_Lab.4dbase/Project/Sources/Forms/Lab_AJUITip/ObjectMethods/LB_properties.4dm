
$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1)
		tipTextLabel 
	: ($evt=On Data Change:K2:15)
		
		formulaSetValue 
		
		
	: ($evt=On Clicked:K2:4) & (Not:C34(Macintosh control down:C544)) & (Not:C34(Macintosh command down:C546))
		$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
		$property:=$property_ptr->{$property_ptr->}
		
		  //text label properties : open the tip
		If ($property="value")
			C_LONGINT:C283($left;$top;$right;$bottom)
			GET MOUSE:C468($mouseX;$mouseY;$mouseZ)
			LISTBOX GET CELL POSITION:C971(*;"LB_properties";$mouseX;$mouseY;$col;$row)  // four parameters syntax
			LISTBOX GET CELL COORDINATES:C1330(*;"LB_properties";$col;$row;$left;$top;$bottom;$right)
			Form:C1466.tipTextLabel.TargetCoordinates($left;$top;$bottom;$right)
			Form:C1466.tip_sf_details.textLabel:=Form:C1466.tips[Form:C1466.currentNameTemplate].TextLabel()
			Form:C1466.tip_sf_details.backgroundColor:=Form:C1466.tips[Form:C1466.currentNameTemplate].BackgroundColor()
			Form:C1466.tip_sf_details.fontColor:=Form:C1466.tips[Form:C1466.currentNameTemplate].TextFontColor()
			Form:C1466.tipTextLabel.Show()
		End if 
		
		  //advanced listbox : handle the alternative button
	: ($evt=On Alternative Click:K2:36)
		C_POINTER:C301($values_ptr)
		$values_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")
		
		
		  //color properties : launch the color picker
		$bgcolor_l:=Select RGB color:C956(setPickerColor ($values_ptr->{$values_ptr->}.value);"Select the Background Color")
		$bgcolor_t:=Replace string:C233(String:C10($bgcolor_l;"&$");"$";"")
		$bgcolor_t:=(6-Length:C16($bgcolor_t)*"0"+$bgcolor_t)
		$bgcolor_t:="#"+$bgcolor_t
		
		$values_ptr->{$values_ptr->}.value:=$bgcolor_t
		
		formulaSetValue 
		
End case 
