//%attributes = {}
  // MI 01-Mar-2019 21:31:53 (GMT+1)
C_TEXT:C284($objName_t)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		  // set the shadow ruler
		OBJECT SET FORMAT:C236(*;"shadowRuler_obj";"0;10;2;1;2")
		OBJECT Get pointer:C1124(Object named:K67:5;"shadowRuler_obj")->:=0  // set a default value 0
		
		  // set the opacity global ruler
		OBJECT SET FORMAT:C236(*;"opacityRuler_obj";"0;100;25;1;2")
		OBJECT Get pointer:C1124(Object named:K67:5;"opacityRuler_obj")->:=100  // set a default value 100%
		
		  // set the opacity text ruler
		OBJECT SET FORMAT:C236(*;"opacityTextRuler_obj";"0;100;25;1;2")
		OBJECT Get pointer:C1124(Object named:K67:5;"opacityTextRuler_obj")->:=100  // set a default value 100%
		
		  // set the opacity Background ruler
		OBJECT SET FORMAT:C236(*;"opacityBackgroundRuler_obj";"0;100;25;1;2")
		OBJECT Get pointer:C1124(Object named:K67:5;"opacityBackgroundRuler_obj")->:=100  // set a default value 100%
		
		  // set the opacity Border ruler
		OBJECT SET FORMAT:C236(*;"opacityStrokeRuler_obj";"0;100;25;1;2")
		OBJECT Get pointer:C1124(Object named:K67:5;"opacityStrokeRuler_obj")->:=100  // set a default value 100%
		
	: (Form event code:C388=On Clicked:K2:4) | (Form event code:C388=On Data Change:K2:15)
		
		  // set the current tip
		$objName_t:=OBJECT Get name:C1087(Object current:K67:2)
		
		  // set the specific tip settings
		Case of 
				
			: ($objName_t="shadowRuler_obj")  // shadow example
				Form:C1466.tip.TargetName("shadowRuler_obj")
				  //Form.tip.TipName("SR")
				Form:C1466.tip.TextLabel("Use the left, right, down or up arrow key of the keyboard to change the global opacity of the tip")
				Form:C1466.tip.TargetMargin(12+OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)
				Form:C1466.tip.ActivateShadow(True:C214)
				Form:C1466.tip.ShadowOffset(OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)
				
			: ($objName_t="opacityRuler_obj")  // opacity global example
				Form:C1466.tip.TargetName("opacityRuler_obj")
				Form:C1466.tip.TextLabel("Use the left, right, down or up arrow key of the keyboard to change the global opacity of the tip")
				Form:C1466.tip.TextOpacity(OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)  // value between 0 - 100
				Form:C1466.tip.BackgroundOpacity(OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)  // value between 0 - 100
				Form:C1466.tip.BorderOpacity(OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)  // value between 0 - 100
				
				OBJECT Get pointer:C1124(Object named:K67:5;"opacityTextRuler_obj")->:=OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->
				OBJECT Get pointer:C1124(Object named:K67:5;"opacityBackgroundRuler_obj")->:=OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->
				OBJECT Get pointer:C1124(Object named:K67:5;"opacityStrokeRuler_obj")->:=OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->
				
				
			: ($objName_t="opacityTextRuler_obj")  // opacity text example
				Form:C1466.tip.TargetName("opacityTextRuler_obj")
				Form:C1466.tip.TextLabel("Use the left, right, down or up arrow key of the keyboard to change the text opacity of the tip")
				Form:C1466.tip.TextOpacity(OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)  // value between 0 - 100
				
			: ($objName_t="opacityBackgroundRuler_obj")  // opacity background example
				Form:C1466.tip.TargetName("opacityBackgroundRuler_obj")
				Form:C1466.tip.TextLabel("Use the left, right, down or up arrow key of the keyboard to change the background opacity of the tip")
				Form:C1466.tip.BackgroundOpacity(OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)  // value between 0 - 100
				
			: ($objName_t="opacityStrokeRuler_obj")  // opacity stroke example
				Form:C1466.tip.TargetName("opacityStrokeRuler_obj")
				Form:C1466.tip.TextLabel("Use the left, right, down or up arrow key of the keyboard to change the Border opacity of the tip")
				Form:C1466.tip.BorderOpacity(OBJECT Get pointer:C1124(Object named:K67:5;$objName_t)->)  // value between 0 - 100
				
		End case 
		
		Form:C1466.code:="<span style=\"font-family:'Lucida Grande';font-size:16pt\"><span style=\"color:#A66500\">tip</span>.<span style=\"color:#709D71\">ActivateShadow</span>(<span style=\"color:#009900;font-weight:bold\">True</span>)"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#A66500\">tip</span>.<span style=\"color:#709D71\">ShadowOffset</span>("+String:C10(OBJECT Get pointer:C1124(Object named:K67:5;"shadowRuler_obj")->)+")"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#A66500\">tip</span>.<span style=\"color:#709D71\">TextOpacity</span>("+String:C10(OBJECT Get pointer:C1124(Object named:K67:5;"opacityTextRuler_obj")->)+")"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#A66500\">tip</span>.<span style=\"color:#709D71\">BackgroundOpacity</span>("+String:C10(OBJECT Get pointer:C1124(Object named:K67:5;"opacityBackgroundRuler_obj")->)+")"
		Form:C1466.code:=Form:C1466.code+"\r<span style=\"color:#A66500\">tip</span>.<span style=\"color:#709D71\">BorderOpacity</span>("+String:C10(OBJECT Get pointer:C1124(Object named:K67:5;"opacityStrokeRuler_obj")->)+")</span>"
		
		Form:C1466.tip.Show()
		
End case 

