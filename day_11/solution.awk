#!/usr/bin/awk -f

END{for(;i++<C;V[i]=e+=!X[i])H[i]=f+=!Y[i];for(y in G){x=G[y]
delete G[y];for(k in G){$0=V[x]-V[a=G[k]]" "H[+y]-H[+k]" "x-a
$4=k-y;gsub(/-/,z);B+=$1+$2;A+=$3+$4}}print A+B"\n"A-B+B*1e6}
{for(C=1;$0;C+=sub(/./,z))if(/^#/)Y[NR]=X[G[NR,C]=C]=1;C+=NR}
