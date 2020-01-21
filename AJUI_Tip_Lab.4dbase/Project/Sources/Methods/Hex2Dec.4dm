//%attributes = {}
  // given a hex string, return its decimal value equivalent
  // $1 = hex string
  // $0 = longint

C_TEXT:C284($1)
C_LONGINT:C283($result_l;$lLength_l;$lDigitValue_l;$0;$i)

$result_l:=0
$lLength_l:=Length:C16($1)

For ($i;$lLength_l;1;-1)
	
	Case of 
		: ($1[[$i]]="F")
			$lDigitValue_l:=15
		: ($1[[$i]]="E")
			$lDigitValue_l:=14
		: ($1[[$i]]="D")
			$lDigitValue_l:=13
		: ($1[[$i]]="C")
			$lDigitValue_l:=12
		: ($1[[$i]]="B")
			$lDigitValue_l:=11
		: ($1[[$i]]="A")
			$lDigitValue_l:=10
		: ($1[[$i]]="9")
			$lDigitValue_l:=9
		: ($1[[$i]]="8")
			$lDigitValue_l:=8
		: ($1[[$i]]="7")
			$lDigitValue_l:=7
		: ($1[[$i]]="6")
			$lDigitValue_l:=6
		: ($1[[$i]]="5")
			$lDigitValue_l:=5
		: ($1[[$i]]="4")
			$lDigitValue_l:=4
		: ($1[[$i]]="3")
			$lDigitValue_l:=3
		: ($1[[$i]]="2")
			$lDigitValue_l:=2
		: ($1[[$i]]="1")
			$lDigitValue_l:=1
		Else 
			$lDigitValue_l:=0
	End case 
	
	If ($lDigitValue_l>0)
		$result_l:=$result_l+(($lDigitValue_l)*(16^($lLength_l-$i)))
	End if 
	
End for 

$0:=$result_l