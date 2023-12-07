#!/usr/bin/awk -f

function P(o,k,e,r){for(i in o)i>r&&r=i;e+=k*o[r];delete o[r];if(!r||
P(o,k-1,e))print e}{gsub(/T/,"B")gsub(/A/,"S")H(A)H(B,gsub(/J/,"$"))}
function H(a,n,d){gsub(/K/,"R");for(i=split(1e5,b,z);--i;d[substr($1,
i,1)]++);for(j in d)b[d[j]]+=1!~j;for(s=b[5]b[4]b[3]b[2]1;n&&sub(i 1,
10,s);)n--;n&&sub(i 2,11,s);a[sub(/.$/,$1,s)s]=$2}END{P(A,NR)P(B,NR)}
