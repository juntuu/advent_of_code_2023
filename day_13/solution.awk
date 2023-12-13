#!/usr/bin/awk -f

function d(b){for(y=0;NF>v=t=++b;!q||R[NR,b]++||y=100*b)for(q=1;q*t&&
$++v;t--)q=$t==$v;for(u=0;++u<length($1);q||S[NR,u]++||y=u)for(k=q=0;
!q&&$++k;)for(v=t=u;!q*t&&p=substr($k,++v,1);)q+=substr($k,t--,1)!=p}
{for(A+=d(i=0)y;j=x=$++i;)for(;c=substr($i=x,++j);B+=d($i=substr(x,1,
j-1)c)y)sub(/^#/,".",c)||sub(/^./,"#",c)}BEGIN{RS=z}END{print A"\n"B}
