//%attributes = {}

C_TEXT:C284($1;$page_t)
C_TEXT:C284($arrowPosition_t;$targetPosition_t)
C_TEXT:C284($previousPage_t;$defaultTipPosition_t)
C_LONGINT:C283($gotoPage_l)
$page_t:=$1

ASSERT:C1129(Count parameters:C259=1;"please specify \"horizontal\" or \"vertical\" as parameter")

Case of 
	: ($page_t="Horizontal")
		$previousPage_t:="Vertical"
		$defaultTipPosition_t:="top-left"
		$gotoPage_l:=1
	: ($page_t="Vertical")
		$previousPage_t:="Horizontal"
		$defaultTipPosition_t:="right-top"
		$gotoPage_l:=2
	Else 
		TRACE:C157
End case 

$targetPosition_t:=Form:C1466.tip.target.tipPosition
$arrowPosition_t:=Form:C1466.tip.arrow.position  // middle

If (Form:C1466["previous"+$previousPage_t+"Position"]=Null:C1517)
	Form:C1466["previous"+$previousPage_t+"Position"]:=New object:C1471()
	Form:C1466["previous"+$previousPage_t+"Position"].tip:=$targetPosition_t
	Form:C1466["previous"+$previousPage_t+"Position"].arrow:=$arrowPosition_t
	Form:C1466.tip.TipPosition($defaultTipPosition_t)
Else 
	Form:C1466["previous"+$previousPage_t+"Position"].tip:=$targetPosition_t
	Form:C1466["previous"+$previousPage_t+"Position"].arrow:=$arrowPosition_t
	Form:C1466.tip.TipPosition(Form:C1466["previous"+$page_t+"Position"].tip)
	Form:C1466.tip.ArrowPosition(Form:C1466["previous"+$page_t+"Position"].arrow)
End if 
Form:C1466.arrow_left:=0
Form:C1466.arrow_center:=0
Form:C1466.arrow_right:=0
Form:C1466.arrow_top:=0
Form:C1466.arrow_bottom:=0
Form:C1466.arrow_middle:=0
Form:C1466["arrow_"+Form:C1466.tip.arrow.position]:=1  // set rb True

FORM GOTO PAGE:C247($gotoPage_l)