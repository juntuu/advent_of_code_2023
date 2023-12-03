#!/usr/bin/awk -f

END{for(;i=I[NR--];n=0)do{$0=G[NR,++n];i~/^[^.0]/&&
A+=$1+$2;i~/^[ma*ic]/&&B+=$1*$2}while(sub(/./,z,i))
print A"\n"B}{for(d="[1-9][0-9]*";n=match(I[NR]=$0,
d);sub(d,substr(10^r,2)))for(k=n-2;k++-n<r=RLENGTH;
)for(j=NR-3;j++<NR;)G[j,k]=G[j,k]substr($0,n,r)OFS}
