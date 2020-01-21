$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.tips:=New object:C1471()
		
		C_POINTER:C301($property_ptr;$value_ptr;$category_ptr)
		
		$category_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"category_col")
		ARRAY TEXT:C222($category_ptr->;0)
		COLLECTION TO ARRAY:C1562(Form:C1466.properties;$category_ptr->;"category")
		
		$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
		ARRAY TEXT:C222($property_ptr->;0)
		COLLECTION TO ARRAY:C1562(Form:C1466.properties;$property_ptr->;"property")
		
		$value_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")
		ARRAY OBJECT:C1221($value_ptr->;0)
		COLLECTION TO ARRAY:C1562(Form:C1466.properties;$value_ptr->;"value_object")
		
		ARRAY POINTER:C280($_hierarchy;0)
		APPEND TO ARRAY:C911($_hierarchy;$category_ptr)
		APPEND TO ARRAY:C911($_hierarchy;$property_ptr)
		
		LISTBOX SET HIERARCHY:C1098(*;"LB_properties";True:C214;$_hierarchy)
		OBJECT SET RGB COLORS:C628(*;"category_col";0x0000;0x00B0B0B0)
		OBJECT SET FONT STYLE:C166(*;"category_col";Bold:K14:2)
		OBJECT SET VISIBLE:C603(*;"property_col";False:C215)
		
		C_POINTER:C301($templates_ptr)
		$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
		If (Size of array:C274($templates_ptr->)>0)
			$templates_ptr->:=1
			$templateName:=$templates_ptr->{1}
			$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
			$templateName:=Substring:C12($templateName;1;Length:C16($templateName)-4)
			$template_obj:=New object:C1471("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
			Form:C1466.currentNameTemplate:=$templateName
			Form:C1466.tips[Form:C1466.currentNameTemplate]:=New AJUI_Tip ($template_obj)
		Else 
			Form:C1466.currentNameTemplate:="tipLab"
			Form:C1466.tips[Form:C1466.currentNameTemplate]:=New AJUI_Tip 
			Form:C1466.tips[Form:C1466.currentNameTemplate].TipName("tipLab")
			
			
		End if 
		Form:C1466.tips[Form:C1466.currentNameTemplate].TargetName("fieldExample_obj")
		Form:C1466.currentTip:=OB Copy:C1225(Form:C1466.tips[Form:C1466.currentNameTemplate])
		
		formulasGetValues 
		refresh 
		redrawTip 
		
	: ($evt=On Timer:K2:25)
		
		Form:C1466.tips[Form:C1466.oldName].Hide()
		
		formulasGetValues 
		REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
		refresh 
		redrawTip 
		SET TIMER:C645(0)
		
	: ($evt=On Unload:K2:2)
		AJUI_Tip_clearCache   //clean the interprocess in the component
End case 
