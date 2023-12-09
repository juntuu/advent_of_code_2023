#!/usr/bin/awk -f

function P(r,e,d){for(e=$1;d+++1<r;)
$d=$(d+1)-$d;r&&$1=P(r-1)e-$1;$2+=$r
}{A+=P(NF)$2;B+=$1}END{print A"\n"B}
