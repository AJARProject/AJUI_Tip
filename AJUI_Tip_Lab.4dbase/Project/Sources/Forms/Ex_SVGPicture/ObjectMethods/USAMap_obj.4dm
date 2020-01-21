  // MI 25-Jan-2016 09:57:32 (GMT+1)
C_POINTER:C301($USAMap_ptr)
C_TEXT:C284($State_id;$StateName_t;$svgpathexample_t)
C_OBJECT:C1216($footerCoordinate_obj)

C_LONGINT:C283(MouseX;MouseY)


C_LONGINT:C283(MouseX;MouseY)




Case of 
	: (Form event code:C388=On Load:K2:1)
		C_LONGINT:C283(left_l;top_l;right_l;bottom_l)
		C_TEXT:C284(USAMap_ref)
		
		OBJECT GET COORDINATES:C663(*;"USAMap_obj";left_l;top_l;right_l;bottom_l)
		
		$svgpathexample_t:=Get 4D folder:C485(Current resources folder:K5:16)
		$svgpathexample_t:=$svgpathexample_t+"images"+Folder separator:K24:12
		  //$svgpathexample_t:=$svgpathexample_t+"USA.svg"
		$svgpathexample_t:=$svgpathexample_t+"Map_of_USA_States_with_names_white.svg"
		$USAMap_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"USAMap_obj")
		READ PICTURE FILE:C678($svgpathexample_t;$USAMap_ptr->)
		
		If (OK=1)
			USAMap_ref:=SVG_Open_picture ($USAMap_ptr->)
		End if 
		
	: (Form event code:C388=On Mouse Move:K2:35)
		C_LONGINT:C283(dx;dy)
		  // get the object ID where the click was done
		OBJECT GET COORDINATES:C663(*;"USAMap_obj";left_l;top_l;right_l;bottom_l)
		Form:C1466.dx:=MouseX
		Form:C1466.dy:=MouseY
		$State_id:=SVG Find element ID by coordinates:C1054(*;OBJECT Get name:C1087(Object current:K67:2);Form:C1466.dx;Form:C1466.dy)
		$StateName_t:=Substring:C12($State_id;1;Length:C16($State_id))
		
		If ($StateName_t#"")
			
			Form:C1466.tip.TargetCoordinates(Form:C1466.dx+left_l;Form:C1466.dy+top_l)
			Form:C1466.tip.TextLabel($StateName_t)
			Form:C1466.tip.TipPosition("top")
			Form:C1466.tip.Show()
		End if 
		
		
		
End case 



