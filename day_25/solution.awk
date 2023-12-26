#!/usr/bin/awk -f

function c(o,p,y){delete o;for(y in p)o[y]=p[y]}{FS="~|[: -^]+"}END{c(g,G)
}function b(f,s){for(a[h[f]=i=e=1]=f;k=(s!=r=a[i++]);)for($0=G[r];d=$++k;)
h[d]||h[a[++e]=d]=r;for(;s=h[r=s];)sub(gsub(s,z,G[r])gsub(r,z,G[s])FS,z,e)
return c(a)c(h)e}{for(i=G[$1]=G[$1].1$0;$++i;)G[f=$i]=G[$i].0$1}END{N=b(f)
for(s in g)A||c(G,g)b(f,s)b(f,s)b(f,s)b(f)+b(s)==N&&(A=b(f)*b(s));print A}
