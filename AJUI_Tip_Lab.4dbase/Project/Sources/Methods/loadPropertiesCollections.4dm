//%attributes = {}
  // loadPropertiesCollections (  ) -> return
  //
  // $lab : (object) (return) listbox content
  //
  // Init listbox structure and content

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 20.08.19, 08:51:35
	  // ----------------------------------------------------
	  // Method: loadPropertiesCollections
	  // Description
	  // 
	  // this method initializes in a collection the structure of the listbox (advanced listbox) 
	  // by associating the properties and their formulas associated with the states. The hierarchy is also defined via the category.
	  //
	  // With the advanced listbox options of 4D, we can define the type and the presentation of the content of each line. For example, we use the atlernative button for the color properties.
	
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($0;$lab)

$lab:=New object:C1471
$lab.properties:=New collection:C1472()

  //Target
$lab.properties.push(New object:C1471("category";"Target";"property";"margin";"formula";"TargetMargin";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Target";"property";"offset";"formula";"TargetOffset";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
ARRAY TEXT:C222($_tipPos;0)
APPEND TO ARRAY:C911($_tipPos;"left-top")
APPEND TO ARRAY:C911($_tipPos;"left-middle")
APPEND TO ARRAY:C911($_tipPos;"left-bottom")
APPEND TO ARRAY:C911($_tipPos;"top-left")
APPEND TO ARRAY:C911($_tipPos;"top-center")
APPEND TO ARRAY:C911($_tipPos;"top-right")
APPEND TO ARRAY:C911($_tipPos;"right-top")
APPEND TO ARRAY:C911($_tipPos;"right-middle")
APPEND TO ARRAY:C911($_tipPos;"right-bottom")
APPEND TO ARRAY:C911($_tipPos;"bottom-left")
APPEND TO ARRAY:C911($_tipPos;"bottom-center")
APPEND TO ARRAY:C911($_tipPos;"bottom-right")
$pictPos_obj:=New object:C1471("value";"right-middle";"valueType";"text")
OB SET ARRAY:C1227($pictPos_obj;"requiredList";$_tipPos)
$lab.properties.push(New object:C1471("category";"Target";"property";"tipPosition";"formula";"TipPosition";"value_object";$pictPos_obj))

  //Container
$lab.properties.push(New object:C1471("category";"Container";"property";"backgroundColor";"formula";"BackgroundColor";"value_object";New object:C1471("value";"yellow";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Container";"property";"backgroundOpacity";"formula";"BackgroundOpacity";"value_object";New object:C1471("value";100;"valueType";"integer";"min";0;"max";100)))
$lab.properties.push(New object:C1471("category";"Container";"property";"cornerRadius";"formula";"CornerRadius";"value_object";New object:C1471("value";5;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Container";"property";"padding";"formula";"Padding";"value_object";New object:C1471("value";10;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Container";"property";"maxHeight";"formula";"TipboxMaxHeight";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Container";"property";"maxWidth";"formula";"TipboxMaxWidth";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))

  //Border
$lab.properties.push(New object:C1471("category";"Border";"property";"borderColor";"formula";"BorderColor";"value_object";New object:C1471("value";"gray";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Border";"property";"borderOpacity";"formula";"BorderOpacity";"value_object";New object:C1471("value";100;"valueType";"integer";"min";0;"max";100)))
$lab.properties.push(New object:C1471("category";"Border";"property";"borderSize";"formula";"BorderSize";"value_object";New object:C1471("value";1;"valueType";"integer";"min";0)))

  //Shadow
$lab.properties.push(New object:C1471("category";"Shadow";"property";"shadowOn";"formula";"ActivateShadow";"value_object";New object:C1471("value";False:C215;"valueType";"boolean")))
$lab.properties.push(New object:C1471("category";"Shadow";"property";"shadowOffset";"formula";"ShadowOffset";"value_object";New object:C1471("value";2;"valueType";"integer";"min";0)))

  //Text
$lab.properties.push(New object:C1471("category";"Text";"property";"value";"formula";"TextLabel";"value_object";New object:C1471("label";"Edit text Label...";"valueType";"event")))
$lab.properties.push(New object:C1471("category";"Text";"property";"fontColor";"formula";"TextFontColor";"value_object";New object:C1471("value";"";"valueType";"text";"alternateButton";True:C214)))
ARRAY TEXT:C222($_fontName;0)
FONT LIST:C460($_fontName)
$fontName_obj:=New object:C1471("value";"Arial";"valueType";"text")
OB SET ARRAY:C1227($fontName_obj;"choiceList";$_fontName)
$lab.properties.push(New object:C1471("category";"Text";"property";"fontName";"formula";"TextFontName";"value_object";$fontName_obj))
$lab.properties.push(New object:C1471("category";"Text";"property";"fontSize";"formula";"TextFontSize";"value_object";New object:C1471("value";11;"valueType";"integer";"min";1)))
$lab.properties.push(New object:C1471("category";"Text";"property";"opacity";"formula";"TextOpacity";"value_object";New object:C1471("value";100;"valueType";"integer";"min";0;"max";100)))
ARRAY TEXT:C222($_textRotation;0)
APPEND TO ARRAY:C911($_textRotation;"default")
APPEND TO ARRAY:C911($_textRotation;"left")
APPEND TO ARRAY:C911($_textRotation;"right")
$textRotation_obj:=New object:C1471("value";"default";"valueType";"text")
OB SET ARRAY:C1227($textRotation_obj;"requiredList";$_textRotation)
$lab.properties.push(New object:C1471("category";"Text";"property";"rotation";"formula";"TextRotation";"value_object";$textRotation_obj))

  //Arrow
ARRAY TEXT:C222($_arrowPosition;0)
APPEND TO ARRAY:C911($_arrowPosition;"left")
APPEND TO ARRAY:C911($_arrowPosition;"center")
APPEND TO ARRAY:C911($_arrowPosition;"right")
APPEND TO ARRAY:C911($_arrowPosition;"top")
APPEND TO ARRAY:C911($_arrowPosition;"middle")
APPEND TO ARRAY:C911($_arrowPosition;"bottom")
$arrowPosition_obj:=New object:C1471("value";"center";"valueType";"text")
OB SET ARRAY:C1227($arrowPosition_obj;"requiredList";$_arrowPosition)
$lab.properties.push(New object:C1471("category";"Arrow";"property";"position";"formula";"ArrowPosition";"value_object";$arrowPosition_obj))
$lab.properties.push(New object:C1471("category";"Arrow";"property";"height";"formula";"ArrowHeight";"value_object";New object:C1471("value";10;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Arrow";"property";"width";"formula";"ArrowWidth";"value_object";New object:C1471("value";20;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Arrow";"property";"offset";"formula";"ArrowOffset";"value_object";New object:C1471("value";10;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Arrow";"property";"curved";"formula";"Curved";"value_object";New object:C1471("value";False:C215;"valueType";"boolean")))
$lab.properties.push(New object:C1471("category";"Arrow";"property";"arrowCurve";"formula";"ArrowCurve";"value_object";New object:C1471("value";0.9;"valueType";"real";"min";0;"max";1)))
$lab.properties.push(New object:C1471("category";"Arrow";"property";"cornerCurveStart";"formula";"CornerCurveStart";"value_object";New object:C1471("value";0.2;"valueType";"real";"min";0;"max";1)))
$lab.properties.push(New object:C1471("category";"Arrow";"property";"cornerCurveEnd";"formula";"CornerCurveEnd";"value_object";New object:C1471("value";0.2;"valueType";"real";"min";0;"max";1)))



  //Subform
$lab.properties.push(New object:C1471("category";"Subform";"property";"name";"formula";"SubformName";"value_object";New object:C1471("value";"";"valueType";"text")))

  //Closebox
$lab.properties.push(New object:C1471("category";"Closebox";"property";"display";"formula";"CloseBoxDisplay";"value_object";New object:C1471("value";False:C215;"valueType";"boolean")))
$lab.properties.push(New object:C1471("category";"Closebox";"property";"onClick";"formula";"ActivateOnClickCB";"value_object";New object:C1471("value";False:C215;"valueType";"boolean")))
$lab.properties.push(New object:C1471("category";"Closebox";"property";"size";"formula";"CloseBoxSize";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))

  //Global
$lab.properties.push(New object:C1471("category";"Global";"property";"tipDuration";"formula";"TipDuration";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))

  //Animations
$lab.properties.push(New object:C1471("category";"Animations";"property";"isActive";"formula";"ActivateAnimation";"value_object";New object:C1471("value";True:C214;"valueType";"boolean")))
$lab.properties.push(New object:C1471("category";"Animations";"property";"refresh";"formula";"AnimationRefresh";"value_object";New object:C1471("value";20;"valueType";"integer")))

  //Blink
$lab.properties.push(New object:C1471("category";"Blink";"property";"number";"formula";"BlinkNumber";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Blink";"property";"duration";"formula";"BlinkDuration";"value_object";New object:C1471("value";1000;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Blink";"property";"on";"formula";"BlinkOn";"value_object";New object:C1471("value";50;"valueType";"integer";"min";0;"max";100)))

  //Jump
$lab.properties.push(New object:C1471("category";"Jump";"property";"number";"formula";"JumpNumber";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Jump";"property";"duration";"formula";"JumpDuration";"value_object";New object:C1471("value";1000;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Jump";"property";"offset";"formula";"JumpOffset";"value_object";New object:C1471("value";20;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Jump";"property";"on";"formula";"JumpOn";"value_object";New object:C1471("value";50;"valueType";"integer";"min";0;"max";100)))

  //Fade In and Out
$lab.properties.push(New object:C1471("category";"Fade In & Out";"property";"in";"formula";"ActivateFadeIn";"value_object";New object:C1471("value";False:C215;"valueType";"boolean")))
$lab.properties.push(New object:C1471("category";"Fade In & Out";"property";"timer.in";"formula";"TimerFadeIn";"value_object";New object:C1471("value";1000;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Fade In & Out";"property";"out";"formula";"ActivateFadeOut";"value_object";New object:C1471("value";False:C215;"valueType";"boolean")))
$lab.properties.push(New object:C1471("category";"Fade In & Out";"property";"timer.out";"formula";"TimerFadeOut";"value_object";New object:C1471("value";1000;"valueType";"integer";"min";0)))

$lab.defaultValues:=New AJUI_Tip 

$0:=$lab
