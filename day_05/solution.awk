#!/usr/bin/awk -f

function M(i,n){n="<";for(s in i)+s<n&&n=+s;print n}END{M(A)M(B)}RS=Z
function S(u,b){for(i=2;o=Z$++i;){q=$++i;++i;for(s in u){n=u[s];x=q-s
delete u[s];a=0<x;t=s+n>e=q+$i;a+t?+s<e*!a?u[e]=n-(b[o-x]=e-s):0<!t*\
(n-=u[s]=x)?b[o]=n:a*t?u[e]=n-(b[o]=$i):u[s]+=n:b[o-x]=n}}for(s in b)
u[s]=b[s]}/s:/{for(i=2;Z$i;i+=2)A[$i]=A[B[$i]=$(i+1)]=1;next}S(A)S(B)
