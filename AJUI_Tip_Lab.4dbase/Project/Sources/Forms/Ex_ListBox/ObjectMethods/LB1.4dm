C_LONGINT:C283($bottom_l;$col_l;$left_l;$row_l;$right_l;$top_l;$x1_l;$x2_l;$y1_l;$y2_l)
C_POINTER:C301($Ptr)
C_TEXT:C284($footer_t;$header_t)
C_OBJECT:C1216($coordinateCellLB_obj;$footerCoordinate_obj;$headerCoordinate_obj)

ARRAY TEXT:C222($lbObjectName_at;0)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		
		
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.tip.Hide(Form:C1466.tip)
		Form:C1466.tip.TargetName("")
		Form:C1466.tip.TipPosition("right")
		GET MOUSE:C468($mouseX_l;$mouseY_l;$mouseZ_l)
		Form:C1466.mx:=$mouseX_l
		Form:C1466.my:=$mouseY_l
		LISTBOX GET CELL POSITION:C971(*;"LB1";$mouseX_l;$mouseY_l;$col_l;$row_l)  // four parameters syntax
		LISTBOX GET CELL COORDINATES:C1330(*;"LB1";$col_l;$row_l;$x1_l;$y1_l;$x2_l;$y2_l)
		OBJECT GET COORDINATES:C663(*;"LB1";$xa_l;$ya_l;$xa2_l;$ya2_l)
		Form:C1466.x:=$x1_l
		Form:C1466.y:=$y1_l
		Form:C1466.x2:=$x2_l
		Form:C1466.y2:=$y2_l
		
		If ($x1_l=$x2_l) & ($y1_l=$y2_l)  // if click on empty row
			$Ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
			OBJECT GET COORDINATES:C663($Ptr->;$left_l;$top_l;$right_l;$bottom_l)
			Form:C1466.tip.TipPosition("top")
			Form:C1466.tip.TargetCoordinates($left_l;$top_l;$right_l;$bottom_l)
		Else 
			Form:C1466.tip.TargetCoordinates($x1_l;$y1_l;$x2_l;$y2_l)
		End if 
		
		Form:C1466.tip.TextLabel("Column: "+String:C10($col_l)+" - Row: "+String:C10($row_l))
		Form:C1466.tip.TipName("xLB1")
		Form:C1466.tip.Show()
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TargetCoordinates</span>(<span style=\"color:#A658FF\">$left_l</span>"+";<span style=\"color:#A658FF\">$top_l</span>;<span style=\"color:#A658FF\">$right_l</span>;<span style=\"color:#A658FF\">$bottom_l</span>)</span>"
		
		
		
	: (Form event code:C388=On Header Click:K2:40)
		Form:C1466.tip.Hide(Form:C1466.tip)
		GET MOUSE:C468($mouseX_l;$mouseY_l;$mouseZ_l)
		Form:C1466.mx:=$mouseX_l
		Form:C1466.my:=$mouseY_l
		$Ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
		$header_t:=OBJECT Get title:C1068($Ptr->)
		Form:C1466.tip.global.tipDuration:=0
		OBJECT GET COORDINATES:C663($Ptr->;$left_l;$top_l;$right_l;$bottom_l)
		Form:C1466.x:=$left_l
		Form:C1466.y:=$top_l
		Form:C1466.x2:=$right_l
		Form:C1466.y2:=$bottom_l
		
		Form:C1466.tip.TipPosition("top")
		Form:C1466.tip.TargetCoordinates($left_l;$top_l;$right_l;$bottom_l)
		Form:C1466.tip.TextLabel("Header: "+$header_t)
		Form:C1466.tip.TipName("xLB1")
		Form:C1466.tip.Show()
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TargetCoordinates</span>(<span style=\"color:#A658FF\">$left_l</span>"+";<span style=\"color:#A658FF\">$top_l</span>;<span style=\"color:#A658FF\">$right_l</span>;<span style=\"color:#A658FF\">$bottom_l</span>)</span>"
		
	: (Form event code:C388=On Footer Click:K2:55)
		C_LONGINT:C283(Footer1;Footer2;Footer3)
		Form:C1466.tip.Hide(Form:C1466.tip)
		GET MOUSE:C468($mouseX_l;$mouseY_l;$mouseZ_l)
		Form:C1466.mx:=$mouseX_l
		Form:C1466.my:=$mouseY_l
		  // 4D don't provide a way to get the Form Object Name of the footer or header button
		  // So we need to use a pointer to get the coordinate of the footer or header button
		  // and to test the ptr to know exactly which footer or header button we have clicked :-/
		$Ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
		$footerHeight_l:=LISTBOX Get footers height:C1146($Ptr->)
		
		Case of 
			: (->Footer1=$Ptr)
				$footer_t:="Footer 1"
			: (->Footer2=$Ptr)
				$footer_t:="Footer 2"
			: (->Footer3=$Ptr)
				$footer_t:="Footer 3"
		End case 
		
		OBJECT GET COORDINATES:C663($Ptr->;$left_l;$top_l;$right_l;$bottom_l)
		Form:C1466.x:=$left_l
		Form:C1466.y:=$top_l
		Form:C1466.x2:=$right_l
		Form:C1466.y2:=$bottom_l
		Form:C1466.tip.TipPosition("top")
		Form:C1466.tip.TargetCoordinates($left_l;$top_l;$right_l;$bottom_l)
		Form:C1466.tip.TextLabel("Footer: "+$footer_t+" value: "+String:C10($Ptr->))
		Form:C1466.tip.TipName("xLB1")
		Form:C1466.tip.Show()
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#009900;font-weight:bold\">Form</span>.<span style=\"color:#B0927E\">tip</span>.<span style=\"color:#709D71\">TargetCoordinates</span>(<span style=\"color:#A658FF\">$left_l</span>"+";<span style=\"color:#A658FF\">$top_l</span>;<span style=\"color:#A658FF\">$right_l</span>;<span style=\"color:#A658FF\">$bottom_l</span>)</span>"
		
End case 

