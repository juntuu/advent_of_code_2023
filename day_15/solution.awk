#!/usr/bin/awk -f

function H(a,s,h){for(;a=C[substr($1,++s,1)];)h=(h+a)*17%256
return h}END{for(i in b)for($0=j=b[i++];$(j+=2);)B+=i*j/2*$j
print A"\n"B}{A+=H();sub(/-|=/,FS)sub(FS$1" .|$",$2?FS$0:FS,
b[H()])}BEGIN{RS=",";for(i=32;++i<127;)C[sprintf("%c",i)]=i}
