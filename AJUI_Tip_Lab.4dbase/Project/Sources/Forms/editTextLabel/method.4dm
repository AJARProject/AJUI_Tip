$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		
		If (Position:C15("#";Form:C1466.backgroundColor;1)=1)
			$R_l:=Hexa2Dec (Substring:C12(Form:C1466.backgroundColor;2;2)) << 16
			$G_l:=Hexa2Dec (Substring:C12(Form:C1466.backgroundColor;4;2)) << 8
			$B_l:=Hexa2Dec (Substring:C12(Form:C1466.backgroundColor;6;2))
			$bgColor:=$R_l+$G_l+$B_l
		Else 
			$bgColor:=SVG_Get_named_color_value (Form:C1466.backgroundColor)
		End if 
		
		If (Position:C15("#";Form:C1466.fontColor;1)=1)
			$R_l:=Hexa2Dec (Substring:C12(Form:C1466.fontColor;2;2)) << 16
			$G_l:=Hexa2Dec (Substring:C12(Form:C1466.fontColor;4;2)) << 8
			$B_l:=Hexa2Dec (Substring:C12(Form:C1466.fontColor;6;2))
			$fontColor:=$R_l+$G_l+$B_l
		Else 
			$fontColor:=SVG_Get_named_color_value (Form:C1466.fontColor)
		End if 
		
		OBJECT SET RGB COLORS:C628(*;"background";$fontColor;$bgColor)
End case 
