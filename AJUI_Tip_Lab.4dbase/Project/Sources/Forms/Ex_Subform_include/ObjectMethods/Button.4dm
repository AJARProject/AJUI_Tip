C_POINTER:C301($_lb_ptr)
C_POINTER:C301($_lb1_ptr)
ARRAY TEXT:C222($_objectNames;0)
FORM GET OBJECTS:C898($_objectNames)

$_lb_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"list0")
ARRAY TEXT:C222($_lb_ptr->;0)

For ($i;1;Size of array:C274($_objectNames))
	APPEND TO ARRAY:C911($_lb_ptr->;$_objectNames{$i})
End for 

$_lb1_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"list1")
ARRAY TEXT:C222($_lb1_ptr->;0)

C_OBJECT:C1216($process;$i_process)
$process:=Get process activity:C1495(Processes only:K5:35)

C_COLLECTION:C1488($colProcess)

$colProcess:=$process.processes

For each ($i_process;$colProcess)
	APPEND TO ARRAY:C911($_lb1_ptr->;$i_process.name)
End for each 
