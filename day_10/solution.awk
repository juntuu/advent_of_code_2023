#!/usr/bin/awk -f

function T(i,e){b=substr(G[Y+--i],e+X,1);return v~V[e+X,i+Y]&&
++e++i b a b~/(01|21.)[-LFS][-7JS]|1(0|2.)[|7FS][J-|]|H&H|co./
}END{for(;T(1,-1)?X--:T(2)?Y++:T(1,1)?X++:T()&&Y--;a=b)A+=V[X,
Y]=1;for(Y in G)for(X=0;a=substr(G[Y],++X,v=1);)V[X,Y]?o+=T(0,
0):B+=o%2;print.5*A,B}X+=match(G[NR]=$0,a="S"){Y?OFS=ORS:Y=NR}
