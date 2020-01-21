//%attributes = {}
C_TEXT:C284($text_conv_t;$1)

$text_conv_t:=Get text from pasteboard:C524

$text_conv_t:=Replace string:C233($1;"\"";"\\\"")

$text_conv_t:=Replace string:C233($text_conv_t;"<br/>";"\"\rForm.code:=Form.code+\"\\r")

$text_conv_t:="Form.code:=\""+$text_conv_t+"\""

SET TEXT TO PASTEBOARD:C523($text_conv_t)

$0:=$text_conv_t



