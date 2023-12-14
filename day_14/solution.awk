#!/usr/bin/awk -f

function f(x){for(n=c;t=$++n;)for(;c=substr($n,++t,1);c>t&&
x+=t);print x}BEGIN{RS=c}{for(i=4e9+1;r[$0]=i--;u&&i%=u-i){
for(o=c;t++<length($1);o=o FS)for(u=NF;u;u--)o=o substr($u,
t,1);$0=o;for(i||f();gsub(/O[.]/,".O");)t=c;n?u=r[$0]:f()}}
