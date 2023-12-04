#!/usr/bin/awk -f

END{print A"\n"B}{for(i=e=FS;$3<"|";
)e+=gsub(i$3"( |$)",i)-1;e&&A+=2^e/2
for(B+=++C[NR];e;e--)C[NR+e]+=C[NR]}
