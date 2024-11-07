//%attributes = {"invisible":true,"preemptive":"capable"}
#DECLARE() : Collection

$values:=[]

For ($i; 1; 100)
	
	$x:=$i
	$y:=Random:C100
	
	$values.push({x: $x; y: $y})
	
End for 

return $values