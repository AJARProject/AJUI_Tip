//%attributes = {}

  // Project Method: ComboBoxHelper
  // Description: Helps the user find a value in a dropdown object (combo box) and prevents non-existent values from being entered
  // Notes: This method should be called from the Object Method to properly retrieve form event, edited text, and pointer, unless you've retrieved these values by other means
  // Notes: Generally the command would look like this: ComboBoxHelper(Self;Form Event;Get Edited Text)
  // Notes: Don't forget to set form events for the objects!
  // Parameter: $1 - pointer to form object of type text array
  // Parameter: $2 - Form Event (numeric value)
  // Parameter: $3 - "edited text" value from the form object - you can pass the command "Get Edited Text" as the third parameter from the object method
C_LONGINT:C283($2;$formEvent;$length;$ArrayLocation;$key)
C_POINTER:C301($1)
C_TEXT:C284($3;$editedText)
$formObjPtr:=$1
$formEvent:=$2
$editedText:=$3

Case of 
	: ($formEvent=On After Keystroke:K2:26)  // processes text after it's been entered into the object
		$key:=Character code:C91(Keystroke:C390)
		  // do not process certain keys
		If ($key#Backspace:K15:36) & ($key#Left arrow key:K12:16) & ($key#Right arrow key:K12:17) & (Not:C34(Shift down:C543))
			  // how many characters are in the edited text (for positioning the highlight area)
			$length:=Length:C16($editedText)
			If ($length#0)
				  //find the closest match to the entered text
				$arrayLocation:=Find in array:C230($formObjPtr->;$editedText+"@")
				If ($arrayLocation#-1)
					  // select the closest matching element in the combo box
					$formObjPtr->{0}:=$formObjPtr->{$arrayLocation}
					  // highlight text that has been added to the "edited text"
					HIGHLIGHT TEXT:C210($formObjPtr->;$length+1;Length:C16($formObjPtr->{0})+1)
				Else 
					$formObjPtr->{0}:=$editedText  // display only the edited text since there is no close match
					$formObjPtr->:=0  // no elements selected
					  // set cursor location to end (no highlight)
					HIGHLIGHT TEXT:C210($formObjPtr->;Length:C16($formObjPtr->{0})+1;Length:C16($formObjPtr->{0})+1)
				End if 
			End if 
		End if 
		
	: ($formEvent=On Data Change:K2:15)
		  // find the closest match in the array and select it
		$arrayLocation:=Find in array:C230($formObjPtr->;$editedText+"@")
		If ($arrayLocation#-1)
			$formObjPtr->{0}:=$formObjPtr->{$arrayLocation}  // select the matching element in the combo box
			$formObjPtr->:=$arrayLocation
		Else 
			$formObjPtr->{0}:="none"  // clear out the combo box text display
			$formObjPtr->:=0  // no elements selected
		End if 
End case 
