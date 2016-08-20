<?php
 	$a = array(1,2,3,"better","good");
	var_dump($a); 	
 	$b = array_reverse($a);
 	echo("array_reverse()");
 	var_dump($b);

 	$c = array_change_key_case($a,CASE_UPPER);
 	echo("array_change_key_case()");
 	var_dump($c);

 	$d = array_chunk($a,2);
 	echo("array_chunk()");
 	var_dump($d);

 	#array_column()
 	#Returns an array of values representing a single column from the input array.

 	#array_combine()
 	#Creates an array by using the values from the keys array as keys and the values from the values array as the corresponding values.

 	$e = array_count_values($a);
 	var_dump($e);

 	echo("sort");
 	sort($a);
 	$len = count($a);
 	for ($i=0; $i < $len; $i++) { 
 		echo $a[$i];
 	}
?>