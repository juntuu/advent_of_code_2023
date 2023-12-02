#!/usr/bin/awk -f

gsub(/ [WOPrgb]/,i="& "){for(delete C;
NF>i+=3;x[r=C["r"],g=C["g"],b=C["b"]])
if($i>C[k=$(i+1)])C[k]=$i}r<13&&g<14&&
b<15{A+=NR}{B+=r*g*b}END{print A"\n"B}
