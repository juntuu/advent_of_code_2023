#!/usr/bin/awk -f

END{print A"\n"B}function H(e,l,i,x){p="[^#]";u=+l;i=l e;!l&&
C[i]=e!~"#";sub(u c,z,l);for(x=C[i]p"[#?]{"u"}"p;e~"^"p"*"x;)
C[i]+=H(c substr(e=substr(e,1+match(e,x)),i+2),l);return C[i]
}q=$1"?"{c=",";A+=H(c$1c,m=$2c);B+=H(c q q q q$1c,m m m m m)}


# Slightly faster and smaller (except on goawk, which got slow and incorrect)
#
# END{print A"\n"B}function H(e,l,i,x){x=+l;i=l e;l||C[i]=e!~"#";i in C&&e=z;
# for(sub(x c,z,l);e;sub(/^.|^#.*/,z,e))e~"^[#?]{"x"}[^#]"&&C[i]+=H(substr(e,
# i+2),l)y;y=C[i]}q=$1"?"{c=",";A+=H($1c,m=$2c)y;B+=H(q q q q$1c,m m m m m)y}
