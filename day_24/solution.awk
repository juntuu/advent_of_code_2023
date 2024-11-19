#!/usr/bin/awk -f

function E(l,i,m){d=l+4;for(s in P){$0=s;m[++i]=-$6-m[1];m[++i]=$d-m[2];m[++\
i]=$2-m[3];m[++i]=-$l-m[4];m[++i]=$2*$d-$l*$6-m[5]}for(i=0;i++<9;k=0){for(t=\
m[6*i];i<5&&k++<5;)m[5*i+k]/=t;L=i>2?I=9-i:6;for(j=i<5?I=i:0;++j<L;h=0)for(t\
=m[5*j+I];h++<5;)m[5*j+h]-=t*m[5*I+h]}y+=m[10];print--l?int(y+m[15]):A}{O=$-0
b=$2;c=$5;d=$6;for(p in P){$0=p;f=d*p-d*O-c*$2+c*b;f/=c*$6-$5*d+.1;g=p+$5*f-O
A+=(O+g)/2e14"."f g/c"x"(b+d*g/c)/2e14"."~/^1\.[^-^]*x1\./}P[O]}END{E(1)E(3)}
