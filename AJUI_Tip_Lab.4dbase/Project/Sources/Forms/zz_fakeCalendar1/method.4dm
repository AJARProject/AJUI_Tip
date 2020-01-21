
Case of 
	: (Form event code:C388=On Load:K2:1)
		OBJECT Get pointer:C1124(Object named:K67:5;"title")->:="New event"
		OBJECT Get pointer:C1124(Object named:K67:5;"place")->:="Enter a place"
		OBJECT Get pointer:C1124(Object named:K67:5;"notes")->:="Notes"
		
		
		OBJECT Get pointer:C1124(Object named:K67:5;"startDate")->:=Current date:C33
		OBJECT Get pointer:C1124(Object named:K67:5;"endDate")->:=Current date:C33
		OBJECT Get pointer:C1124(Object named:K67:5;"startHour")->:=Current time:C178
		OBJECT Get pointer:C1124(Object named:K67:5;"endHour")->:=Current time:C178+3600
		
		GOTO OBJECT:C206(*;"")
		
End case 
