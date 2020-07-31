<?php

$niz = [1,2,3,4,5];

function deljiviParovi($niz, $deljivSa) 
{
    $res = array(); 
    $tmp = array();
    // Iterate through all pairs 
    for ($i = 0; $i < count($niz); $i++)  
    for ($j = $i + 1; $j < count($niz); $j++)  
              
        if(($niz[$i] + $niz[$j]) % $deljivSa == 0 || ($niz[$j] + $niz[$i]) % $deljivSa == 0 ) {
            array_push($tmp, $niz[$i], $niz[$j]);
            array_push($res, array($niz[$i], $niz[$j]));

        }

     return $res;
} 



var_dump(deljiviParovi($niz, 4));