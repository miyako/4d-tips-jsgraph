//%attributes = {"invisible":true,"preemptive":"capable"}
#DECLARE($value : Real; $range : Real) : Collection

$values:=[]

For ($i; 1; 100)
	
	$x:=$i
	$y:=$value+((Random:C100%($range+1))-$range)
	
	$values.push({x: $x; y: $y})
	
End for 

return $values