<?php

function levaRotacija($niz, $brojRotacija) 
{
    $zadnji_clan = '';

    for($i = 0; $i < $brojRotacija; $i++) {
        $zadnji_clan = array_pop($niz);
        array_unshift($niz,$zadnji_clan);
    }
    return $niz;
}

print_r(levaRotacija([1,2,3,4,5], 3));