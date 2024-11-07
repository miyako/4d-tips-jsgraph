//%attributes = {"invisible":true,"preemptive":"capable"}
var $value : Object
$value:=$1.value

If ($1.accumulator=Null:C1517) || (Value type:C1509($1.accumulator)#Is collection:K8:32) || ($1.accumulator.length<2)
	$1.accumulator:=[[]; []]
End if 

$1.accumulator[0].push($value.y)
$1.accumulator[1].push($value.x)