#!/usr/bin/awk -f

function E(r,l,a,n,g){for(;!g[r,l,a,b=+n]++&&c=G[r,l];l+=n){A+=!g[r,l]++
q=c~/\\/;if(q-=c~"/"){n=q*a;a=q*b}a c!n~/1-|\|0/&&E(r,l,-(a=!a),-(n=!n),
g);r+=a}A>B&&B=A}gsub(z,FS){for(i=1;G[NR,i]=$i;)i++}END{for(;--i;A=E(NR,
i,-1))A=E(1,i,1);for(;NR;NR--)E(NR,NF,A=0,-1)E(NR,1,A=0,1);print A"\n"B}
